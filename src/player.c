#include "main.h"
#include "physics_defines.h"
#include <maxmod.h>
#include "soundbank.bin.h"
#include "soundbank.h"
#include "level_select.h"
#include "math.h"

// in subpixels
const u32 speed_constants[] = {
    SPEED_HALF, // x0.5
    SPEED_1x,   // x1
    SPEED_2x,   // x2
    SPEED_3x,   // x3
    SPEED_4x    // x4
};

// 0 : alive, 1 : death
u8 player_death;

// Current speed ID
u8 speed_id = SPEED_X1;

// Dual status
u8 dual = DUAL_OFF;

// Draw player
u8 x_offset;
u8 y_offset;

u8 current_step;

void anim_player_to_wall();
void level_complete_cutscene();

void cube_gamemode();
void ship_gamemode();
void ball_gamemode();
void ufo_gamemode();
void wave_gamemode();

void do_cube_gravity();
void do_ship_gravity(s32 max_y_speed, s32 max_y_speed_holding);
void do_ball_gravity();
void do_ufo_gravity(s32 max_y_speed);

void update_falling();

FIXED mirror_scaling;

void player_main() {    
    // Halve steps if dual
    num_steps = (dual == DUAL_ON) ? NUM_DUAL_STEPS : NUM_STEPS;
    
    shift_trail();

    if (complete_cutscene) {
        level_complete_cutscene();
    } else {
        // Set internal square hitbox size, for wave this is always 1
        if (curr_player.gamemode != GAMEMODE_WAVE) {
            if (curr_player.player_size == SIZE_BIG) {
                curr_player.player_internal_hitbox_width = INTERNAL_HITBOX_WIDTH;
                curr_player.player_internal_hitbox_height = INTERNAL_HITBOX_HEIGHT;
            } else {
                curr_player.player_internal_hitbox_width = MINI_INTERNAL_HITBOX_WIDTH;
                curr_player.player_internal_hitbox_height = MINI_INTERNAL_HITBOX_HEIGHT;
            }
        } else {
            curr_player.player_internal_hitbox_width = 1;
            curr_player.player_internal_hitbox_height = 1;
        }
        
        if (curr_player.player_y < -0x200000) player_death = TRUE;

        if (key_is_down(KEY_A | KEY_UP)) {
            if (curr_player.player_buffering == NO_ORB_BUFFER) {
                curr_player.player_buffering = ORB_BUFFER_READY;
            }
        } else {
            curr_player.player_buffering = NO_ORB_BUFFER;
        }

        curr_player.old_player_x = curr_player.player_x;
        curr_player.old_player_y = curr_player.player_y;
        curr_player.old_player_y_speed = curr_player.player_y_speed;
        s32 dashing_y;
        for (current_step = 0; current_step < num_steps; current_step++) {
            dashing_y = curr_player.player_y;
            

            if (curr_player.dashing) {
                // Calculate y movement
                s32 tan = tan_calc(curr_player.dashing_rot);
                s32 calculated_y = FIXED_MUL_LONG(step_divide(curr_player.player_x_speed, num_steps), (tan << 4));
                curr_player.player_y = dashing_y + calculated_y; // it is Q12 so make it Q16

                curr_player.player_y_speed = 0;
                curr_player.should_check_ceiling = TRUE;

                // Put there so normal gravity makes no effect
                dashing_y = curr_player.player_y;

                // If let go A and UP then stop dashing
                if (!key_is_down(KEY_A | KEY_UP)) {
                    curr_player.dashing = FALSE;
                }
            }
            
            // Gamemode specific routines
            switch (curr_player.gamemode) {
                case GAMEMODE_CUBE:
                    cube_gamemode();
                    break;
                case GAMEMODE_SHIP:
                    ship_gamemode();
                    break;
                case GAMEMODE_BALL:
                    ball_gamemode();
                    break;
                case GAMEMODE_UFO:
                    ufo_gamemode();
                    break;
                case GAMEMODE_WAVE:
                    wave_gamemode();
                    break;
            }

            if (player_death) break;
        }

        if (curr_player.came_from_orb && !key_is_down(KEY_A | KEY_UP)) {
            curr_player.came_from_orb = FALSE;
        }

        if (curr_player.came_from_dash_orb && !key_is_down(KEY_A | KEY_UP)) {
            curr_player.came_from_dash_orb = FALSE;
        }
        

        curr_player.d_block_active = FALSE;
        curr_player.f_block_active = FALSE;

        curr_player.disable_jumping = FALSE;

        curr_player.player_x_diff = curr_player.player_x - curr_player.old_player_x;
        curr_player.player_y_diff = curr_player.player_y - curr_player.old_player_y;
        
        if (curr_player.slope_counter) {
            if (curr_player.slope_speed_multiplier < 0x10000) {
                curr_player.slope_speed_multiplier += 0x4000;
            }
            if (--curr_player.slope_counter == 0) {
                curr_player.on_slope = FALSE;
                curr_player.slope_type = 0xff;
                curr_player.slope_speed_multiplier = 0;
            }
        }

        if (curr_player.horizontal_slope_counter) curr_player.horizontal_slope_counter--;
#ifdef INCLUDE_ENDLESS
        if (loaded_level_id != endless_ID) {
#endif
            // Check if the level complete cutscene should start
            s64 player_x_limit = (s64)((curr_level_width << 4) - 0x98) << (SUBPIXEL_BITS);
            if (curr_player.player_x > player_x_limit) {
                complete_cutscene = TRUE;

                // Copy position for player 1
                curr_player.cutscene_initial_player_x = curr_player.player_x >> SUBPIXEL_BITS;
                curr_player.cutscene_initial_player_y = curr_player.player_y >> SUBPIXEL_BITS;
                
                if (dual == DUAL_ON) {
                    // Copy positions for player 2 as well
                    player_2.cutscene_initial_player_x = curr_player.cutscene_initial_player_x;
                    player_2.cutscene_initial_player_y = player_2.player_y >> SUBPIXEL_BITS;
                }
            }
#ifdef INCLUDE_ENDLESS
        }
#endif

        block_object_buffer_offset = 0;

        if (curr_player.changed_size_frames) {
            curr_player.changed_size_frames--;
        }
    }
}

ROM_DATA const FIXED_16 jump_speed_mult[SPEED_COUNT] = {
    FLOAT_TO_FIXED(0.95),  // 0.5x
    FLOAT_TO_FIXED(1),    // 1x
    FLOAT_TO_FIXED(1.02), // 2x
    FLOAT_TO_FIXED(1),    // 3x
    FLOAT_TO_FIXED(1),    // 4x
};

void cube_gamemode() {
    if (curr_player.player_size == SIZE_BIG) {
        curr_player.player_width = CUBE_WIDTH;
        curr_player.player_height = CUBE_HEIGHT;
    } else {
        curr_player.player_width = MINI_CUBE_WIDTH;
        curr_player.player_height = MINI_CUBE_HEIGHT;
    }

    curr_player.gravity = FIXED_MUL_LONG(CUBE_GRAVITY, gravity_multiplier);

    s8 sign = curr_player.gravity_dir ? -1 : 1;
    s8 rotation_sign = curr_player.inverse_rotation_flag ? -1 : 1;
    s8 mirror_sign = screen_mirrored ? -1 : 1;

    u32 jumped = FALSE;
   
    // If on floor and holding A or UP, jump
    if (!curr_player.disable_jumping && curr_player.on_floor && key_is_down(KEY_A | KEY_UP) && !curr_player.came_from_spider_orb && !curr_player.came_from_dash_orb) {
        if (key_hit(KEY_A | KEY_UP)) {
            curr_player.player_y_speed = -((curr_player.player_size == SIZE_BIG) ? CUBE_FIRST_JUMP_SPEED : CUBE_MINI_FIRST_JUMP_SPEED) * sign;     
        } else {
            curr_player.player_y_speed = -((curr_player.player_size == SIZE_BIG) ? CUBE_JUMP_SPEED : CUBE_MINI_JUMP_SPEED) * sign;       
        }

        curr_player.player_y_speed = FIXED_MUL_LONG(curr_player.player_y_speed, jump_speed_mult[speed_id]);

        if (curr_player.on_slope) curr_player.slope_counter = 2;

        curr_player.airborne_jumped = TRUE;
        jumped = TRUE;
        curr_player.on_slope = FALSE;
        curr_player.inverse_rotation_flag = FALSE;
    }

    if (curr_player.came_from_spider_orb && !key_is_down(KEY_A | KEY_UP)) {
        curr_player.came_from_spider_orb = FALSE;
    }

    // If player just launched from an slope, set gravity to 0 depending on slope, this makes the cube start falling later
    if (!curr_player.on_floor && curr_player.slope_counter) {
        switch (curr_player.slope_type) {
            case DEGREES_26_5:
            case DEGREES_26_5_UD:
            case DEGREES_45:
            case DEGREES_45_UD:
                curr_player.gravity = 0;
                break;
        }
    }

    // If the cube is on the air and not on slope, rotate, else, snap to nearest 
    if (!(curr_player.snap_cube_rotation || curr_player.slope_counter) || curr_player.dashing) {
        curr_player.cube_rotation -= step_divide(0x500 * sign * mirror_sign * rotation_sign, num_steps);
    } else {
        // If player is on slope, snap the rotation to it, else, snap to normal ground
        if (curr_player.slope_counter) {
            switch (curr_player.slope_type) {
                case DEGREES_45:
                case DEGREES_45_DOWN:
                case DEGREES_45_UD:
                case DEGREES_45_UD_DOWN:
                    curr_player.cube_rotation = snap_to_45(curr_player.cube_rotation);
                    break;
                case DEGREES_26_5:
                case DEGREES_26_5_UD_DOWN:
                case DEGREES_63_5_DOWN:
                case DEGREES_63_5_UD:
                    if (screen_mirrored) curr_player.cube_rotation = snap_to_tan_theta_1_2_rotated_90(curr_player.cube_rotation);
                    else curr_player.cube_rotation = snap_to_tan_theta_1_2(curr_player.cube_rotation);
                    break;
                case DEGREES_63_5:
                case DEGREES_63_5_UD_DOWN:
                case DEGREES_26_5_DOWN:
                case DEGREES_26_5_UD:
                    if (screen_mirrored) curr_player.cube_rotation = snap_to_tan_theta_1_2(curr_player.cube_rotation);
                    else curr_player.cube_rotation = snap_to_tan_theta_1_2_rotated_90(curr_player.cube_rotation);
                    break;
            }
        } else {
            curr_player.cube_rotation = (curr_player.cube_rotation + 0x2000) & 0xC000;
        }
    }

    curr_player.snap_cube_rotation = FALSE;
    curr_player.on_floor = FALSE;

    if (current_step < num_steps - 1) {
        // Apply part of speed
        // Update player x and y
        curr_player.player_x += step_divide(curr_player.player_x_speed, num_steps);
        curr_player.player_y += step_divide(curr_player.player_y_speed, num_steps);

        // Do gravity
        do_cube_gravity();

        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_cube();
        
        // If jumped, stop buffering
        if (jumped) curr_player.player_buffering = ORB_BUFFER_END;
    } else {
        // Apply last part of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed - ((step_divide(curr_player.player_x_speed, num_steps)) * (num_steps - 1));
        curr_player.player_y += curr_player.player_y_speed - ((step_divide(curr_player.player_y_speed, num_steps)) * (num_steps - 1));
    
        // Do gravity
        do_cube_gravity();

        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_cube();

        // If jumped, stop buffering
        if (jumped) curr_player.player_buffering = ORB_BUFFER_END;
    }
}

void ship_gamemode() {
    s32 max_y_speed;
    s32 max_y_speed_holding;

    if (curr_player.player_size == SIZE_BIG) {
        curr_player.player_width = SHIP_WIDTH;
        curr_player.player_height = SHIP_HEIGHT;

        max_y_speed = SHIP_MAX_Y_SPEED;
        max_y_speed_holding = SHIP_MAX_Y_SPEED_HOLDING;
    } else {
        curr_player.player_width = MINI_SHIP_WIDTH;
        curr_player.player_height = MINI_SHIP_HEIGHT;
        
        max_y_speed = SHIP_MINI_MAX_Y_SPEED;
        max_y_speed_holding = SHIP_MINI_MAX_Y_SPEED_HOLDING;
    }

    s8 mirror_sign = screen_mirrored ? 1 : -1;

    if (key_hit(KEY_A | KEY_UP)) {
        curr_player.came_from_black_orb = FALSE;
        curr_player.player_buffering = ORB_BUFFER_READY;
    } else {
        curr_player.player_buffering = NO_ORB_BUFFER;
    }

    if (curr_player.snap_cube_rotation) {
        curr_player.cube_rotation = 0;
    } else if (curr_player.dashing) {
        curr_player.cube_rotation = curr_player.dashing_rot;
    } else { 
        curr_player.cube_rotation = ArcTan2(curr_player.player_x_diff >> 8, curr_player.player_y_diff >> 8) * mirror_sign;
    }
    
    curr_player.snap_cube_rotation = FALSE;
    curr_player.on_floor = FALSE;
    
    if (current_step < num_steps - 1) {
        // Apply half of speed
        // Update player x and y
        curr_player.player_x += step_divide(curr_player.player_x_speed, num_steps);
        curr_player.player_y += step_divide(curr_player.player_y_speed, num_steps);
        
        // Do gravity
        do_ship_gravity(max_y_speed, max_y_speed_holding);
        
        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_ship_ball_ufo();
    } else {
        // Apply last half of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed - ((step_divide(curr_player.player_x_speed, num_steps)) * (num_steps - 1));
        curr_player.player_y += curr_player.player_y_speed - ((step_divide(curr_player.player_y_speed, num_steps)) * (num_steps - 1));

        // Do gravity
        do_ship_gravity(max_y_speed, max_y_speed_holding);
        
        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_ship_ball_ufo();
    }
}

void ball_gamemode() {
    if (curr_player.player_size == SIZE_BIG) {
        curr_player.player_width = BALL_WIDTH;
        curr_player.player_height = BALL_HEIGHT;
    } else {
        curr_player.player_width = MINI_BALL_WIDTH;
        curr_player.player_height = MINI_BALL_HEIGHT;
    }

    curr_player.gravity = FIXED_MUL_LONG(BALL_GRAVITY, gravity_multiplier);;

    s8 sign = (curr_player.gravity_dir == GRAVITY_UP) ? -1 : 1;
    s8 mirror_sign = screen_mirrored ? -1 : 1;

    curr_player.cube_rotation -= step_divide((curr_player.player_x_speed >> 8) * curr_player.ball_rotation_direction * mirror_sign, num_steps);

    curr_player.player_y_speed = CLAMP(curr_player.player_y_speed, -BALL_MAX_Y_SPEED, BALL_MAX_Y_SPEED);

    if (current_step < num_steps - 1) {
        // Apply half of speed
        // Update player x and y
        curr_player.player_x += step_divide(curr_player.player_x_speed, num_steps);
        curr_player.player_y += step_divide(curr_player.player_y_speed, num_steps);

        // Do gravity
        do_ball_gravity();

        // Do collision with objects
        do_collision_with_objects();
        
        // Run collision
        collision_ship_ball_ufo();
    } else {
        // Apply last half of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed - ((step_divide(curr_player.player_x_speed, num_steps)) * (num_steps - 1));
        curr_player.player_y += curr_player.player_y_speed - ((step_divide(curr_player.player_y_speed, num_steps)) * (num_steps - 1));
        // Do gravity
        do_ball_gravity();
        
        // Do collision with objects
        do_collision_with_objects();
        
        // Run collision
        collision_ship_ball_ufo();


        if (!curr_player.disable_jumping && curr_player.on_floor && curr_player.player_buffering == ORB_BUFFER_READY) {
            curr_player.gravity_dir ^= 1;
            curr_player.player_y_speed = BALL_SWITCH_SPEED * -sign; 
            
            curr_player.ball_rotation_direction = (curr_player.gravity_dir == GRAVITY_DOWN) ? -1 : 1;
            
            curr_player.player_buffering = ORB_BUFFER_END;

            if (curr_player.slope_counter) {
                curr_player.player_y_speed += 0x4000 * -sign;
            }
        } else if (curr_player.on_floor) {
            curr_player.ball_rotation_direction = (curr_player.gravity_dir == GRAVITY_DOWN) ? 2 : -2;
        }
        
        curr_player.on_floor = FALSE;
    }
}

void ufo_gamemode() {
    s32 max_y_speed;

    if (curr_player.player_size == SIZE_BIG) {
        curr_player.player_width = UFO_WIDTH;
        curr_player.player_height = UFO_HEIGHT;

        max_y_speed = UFO_MAX_Y_SPEED;
    } else {
        curr_player.player_width = MINI_UFO_WIDTH;
        curr_player.player_height = MINI_UFO_HEIGHT;
        
        max_y_speed = UFO_MINI_MAX_Y_SPEED;
    }

    s8 sign = curr_player.gravity_dir ? -1 : 1;
    s8 mirror_sign = screen_mirrored ? -1 : 1;

    if (curr_player.falling) {
        curr_player.cube_rotation = ((curr_player.player_y_speed / 2) * mirror_sign) / (1 << (SUBPIXEL_BITS - 1)) * 0x40; 
    } else {
        curr_player.cube_rotation = ((curr_player.player_y_speed) * mirror_sign) / (1 << (SUBPIXEL_BITS - 1)) * 0x180; 
    }
    
    curr_player.on_floor = FALSE;

    if (current_step < num_steps - 1) {
        // Apply half of speed
        // Update player x and y
        curr_player.player_x += step_divide(curr_player.player_x_speed, num_steps);
        curr_player.player_y += step_divide(curr_player.player_y_speed, num_steps);

        // Do gravity
        do_ufo_gravity(max_y_speed);
        
        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_ship_ball_ufo();
    } else {
        // Apply last half of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed - ((step_divide(curr_player.player_x_speed, num_steps)) * (num_steps - 1));
        curr_player.player_y += curr_player.player_y_speed - ((step_divide(curr_player.player_y_speed, num_steps)) * (num_steps - 1));
        
        // Do gravity
        do_ufo_gravity(max_y_speed);
    
        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_ship_ball_ufo();
        // If on floor and holding A or UP, jump
        if (!curr_player.disable_jumping && (key_is_down(KEY_A | KEY_UP) && curr_player.player_buffering == ORB_BUFFER_READY)) {
            if (curr_player.player_size == SIZE_BIG) {
                curr_player.player_y_speed = -UFO_JUMP_SPEED * sign;     
            } else {
                curr_player.player_y_speed = -UFO_MINI_JUMP_SPEED * sign;     
            }
            curr_player.player_buffering = ORB_BUFFER_END;
            curr_player.came_from_black_orb = FALSE;
        }
    }
}

void wave_gamemode() {
    if (curr_player.player_size == SIZE_BIG) {
        curr_player.player_width = WAVE_WIDTH;
        curr_player.player_height = WAVE_HEIGHT;
    } else {
        curr_player.player_width = MINI_WAVE_WIDTH;
        curr_player.player_height = MINI_WAVE_HEIGHT;
    }

    s8 sign = curr_player.gravity_dir ? -1 : 1;
    s8 hold_sign = key_is_down(KEY_A | KEY_UP) && !curr_player.came_from_dash_orb ? -1 : 1;
    s8 mirror_sign = screen_mirrored ? 1 : -1;

    curr_player.cube_rotation = ArcTan2(curr_player.player_x_speed >> 8, curr_player.player_y_speed >> 8) * mirror_sign;

    if (!curr_player.dashing) {
        if (curr_player.player_size == SIZE_BIG) {
            curr_player.player_y_speed = curr_player.player_x_speed * sign * hold_sign;     
        } else {
            curr_player.player_y_speed = curr_player.player_x_speed * 2 * sign * hold_sign;     
        }
    } else {
        curr_player.cube_rotation = -curr_player.dashing_rot;
    }
    
    curr_player.on_floor = FALSE;
    
    if (current_step < num_steps - 1) {
        // Apply half of speed
        // Update player x and y
        curr_player.player_x += step_divide(curr_player.player_x_speed, num_steps);
        curr_player.player_y += step_divide(curr_player.player_y_speed, num_steps);
        
        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_wave();

        if (speed_id > SPEED_X2 && current_step == 1) wave_set_new_point();
    } else {
        // Apply last half of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed - ((step_divide(curr_player.player_x_speed, num_steps)) * (num_steps - 1));
        curr_player.player_y += curr_player.player_y_speed - ((step_divide(curr_player.player_y_speed, num_steps)) * (num_steps - 1));
    
        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_wave();
        
        wave_set_new_point();
        
        // Stop buffering
        if (curr_player.player_buffering == ORB_BUFFER_READY) curr_player.player_buffering = ORB_BUFFER_END;
    }
}

void do_cube_gravity() {
    update_falling();

    // Depending on which direction the curr_player.gravity points, apply curr_player.gravity and cap speed in one direction or in the other
    if (curr_player.gravity_dir) {
        curr_player.player_y_speed -= step_divide(curr_player.gravity, num_steps);
        if (curr_player.player_y_speed < -CUBE_MAX_Y_SPEED) curr_player.player_y_speed = -CUBE_MAX_Y_SPEED;
    } else {
        curr_player.player_y_speed += step_divide(curr_player.gravity, num_steps);
        if (curr_player.player_y_speed > CUBE_MAX_Y_SPEED) curr_player.player_y_speed = CUBE_MAX_Y_SPEED;
    }
}

void do_ship_gravity(s32 max_y_speed, s32 max_y_speed_holding) {
    update_falling();

    u32 holding = key_is_down(KEY_A | KEY_UP) && !curr_player.came_from_dash_orb;

    if (holding) {
        curr_player.gravity = ((curr_player.player_size == SIZE_BIG) ? SHIP_GRAVITY_BASE : SHIP_MINI_GRAVITY_BASE);
    } else if (!holding && !curr_player.falling) {
        curr_player.gravity = ((curr_player.player_size == SIZE_BIG) ? SHIP_GRAVITY_AFTER_HOLD : SHIP_MINI_GRAVITY_AFTER_HOLD);
    } else {
        curr_player.gravity = ((curr_player.player_size == SIZE_BIG) ? SHIP_GRAVITY : SHIP_MINI_GRAVITY);
    }

    if (holding && curr_player.falling) {
        curr_player.gravity = ((curr_player.player_size == SIZE_BIG) ? SHIP_GRAVITY_HOLD_FALL : SHIP_MINI_GRAVITY_HOLD_FALL);
    }

    curr_player.gravity = FIXED_MUL_LONG(curr_player.gravity, gravity_multiplier);
    
    if (holding) {
        if (curr_player.gravity_dir == GRAVITY_DOWN) {
            curr_player.player_y_speed -= step_divide(curr_player.gravity, num_steps);
            if (!curr_player.came_from_black_orb && curr_player.player_y_speed < -max_y_speed_holding) curr_player.player_y_speed = -max_y_speed_holding;  
        } else {    
            curr_player.player_y_speed += step_divide(curr_player.gravity, num_steps);
            if (!curr_player.came_from_black_orb && curr_player.player_y_speed > max_y_speed_holding) curr_player.player_y_speed = max_y_speed_holding;  
        }
    } else {
        if (curr_player.gravity_dir == GRAVITY_DOWN) {
            curr_player.player_y_speed += step_divide(curr_player.gravity, num_steps);
            if (!curr_player.came_from_black_orb && curr_player.player_y_speed > max_y_speed) curr_player.player_y_speed = max_y_speed;    
        } else {    
            curr_player.player_y_speed -= step_divide(curr_player.gravity, num_steps);
            if (!curr_player.came_from_black_orb && curr_player.player_y_speed < -max_y_speed) curr_player.player_y_speed = -max_y_speed;
        }
    }
}

void do_ball_gravity() {
    update_falling();

    s8 sign = (curr_player.gravity_dir == GRAVITY_UP) ? -1 : 1;
    curr_player.player_y_speed += (step_divide(curr_player.gravity, num_steps)) * sign;
}

void do_ufo_gravity(s32 max_y_speed) {
    update_falling();

    if (curr_player.falling) {
        curr_player.gravity = (curr_player.player_size == SIZE_BIG) ? UFO_GRAVITY_FALLING : UFO_MINI_GRAVITY_FALLING;
    } else {
        curr_player.gravity = (curr_player.player_size == SIZE_BIG) ? UFO_GRAVITY_RAISING : UFO_MINI_GRAVITY_RAISING;
    }
    
    curr_player.gravity = FIXED_MUL_LONG(curr_player.gravity, gravity_multiplier);

    // Depending on which direction the curr_player.gravity points, apply curr_player.gravity and cap speed in one direction or in the other
    if (curr_player.gravity_dir) {
        curr_player.player_y_speed -= step_divide(curr_player.gravity, num_steps);
        if (!curr_player.came_from_black_orb && curr_player.player_y_speed < -max_y_speed) curr_player.player_y_speed = -max_y_speed;
    } else {
        curr_player.player_y_speed += step_divide(curr_player.gravity, num_steps);
        if (!curr_player.came_from_black_orb && curr_player.player_y_speed > max_y_speed) curr_player.player_y_speed = max_y_speed;
    }
}

void update_falling() {
    // Detect if falling
    if (curr_player.gravity_dir == GRAVITY_DOWN) {
        curr_player.falling = (curr_player.player_y_speed > 0);
    } else {
        curr_player.falling = (curr_player.player_y_speed < 0);
    }
}

void draw_player() {
    curr_player.old_relative_player_y = curr_player.relative_player_y;

    curr_player.relative_player_x = FROM_FIXED_LONG(curr_player.player_x - scroll_x);
    curr_player.relative_player_y = FROM_FIXED(curr_player.player_y) - FROM_FIXED(scroll_y);

    // Draw only if on screen vertically
    if (curr_player.relative_player_y > -48 && curr_player.relative_player_y < SCREEN_HEIGHT + 48) {
        s8 sign = 1;
        
        u16 rotation;

        // Get player sprite depending
        const u16 *player_sprite = (curr_player_id == ID_PLAYER_1) ? player1Spr : player2Spr;

        if (curr_player.gamemode != GAMEMODE_SHIP) {
            FIXED lerp_value = (curr_player.gamemode == GAMEMODE_WAVE ? float2fx(1.75) : float2fx(2));
            curr_player.lerped_cube_rotation = lerp_angle(curr_player.lerped_cube_rotation, curr_player.cube_rotation, lerp_value, curr_player.gamemode != GAMEMODE_WAVE);

            rotation = curr_player.lerped_cube_rotation;
        } else {
            FIXED_16 lerped = TO_FIXED_LONG(curr_player.lerped_cube_rotation);
            FIXED_16 normal = TO_FIXED_LONG(curr_player.cube_rotation);

            curr_player.lerped_cube_rotation = FROM_FIXED_LONG(slerp(lerped, normal, FLOAT_TO_FIXED(0.2f)));

            if (ABS((s16)curr_player.lerped_cube_rotation) < 0x100) rotation = 0;
            else rotation = curr_player.lerped_cube_rotation;
        }
        
        u8 priority = (cutscene_frame > TOTAL_CUTSCENE_FRAMES - 20) ? 2 : 0;

        // Draw normal trail if not a wave
        if (curr_player.gamemode != GAMEMODE_WAVE) {
            // If gamemode is a cube or ball, draw when trail_on is TRUE, if not a cube or ball, always draw the trail
            if (curr_player.gamemode == GAMEMODE_CUBE || curr_player.gamemode == GAMEMODE_BALL) {
                if (curr_player.trail_on) {
                    set_trail_point();
                } else {
                    trail_enabled[curr_player_id][TRAIL_LENGTH - 1] = FALSE;
                }
            } else {
                set_trail_point();
            }

            handle_trail();
            wave_trail_pointer[curr_player_id] = 0;
        } else if (!complete_cutscene) {
            // Else, if it's a wave and the complete cutscene is not playing, draw the wave trail and set main trail to 0
            handle_wave_trail();
            trail_enabled[curr_player_id][TRAIL_LENGTH - 1] = FALSE;
        }

        if (curr_player.dashing || curr_player.dashing_anim_scale) {
            if (curr_player.dashing) {
                curr_player.dashing_anim_scale += float2fx(0.25);
                if (curr_player.dashing_anim_scale > int2fx(1)) {
                    curr_player.dashing_anim_scale = int2fx(1);
                }
            } else {
                curr_player.dashing_anim_scale -= float2fx(0.25);
                if (curr_player.dashing_anim_scale < 0) {
                    curr_player.dashing_anim_scale = 0;
                }
            }

            if (curr_player.dashing_anim_scale > 0) {
                u16 rotation = curr_player.dashing_rot;
                s32 slot = AFF_SLOT_DASH_FIRE_P1 + curr_player_id;

                // Draw affine sprite
                oam_affine_metaspr(curr_player.relative_player_x - 8, curr_player.relative_player_y - 8, dashFireSpr, rotation, slot, 
                    1, 0, -1, 2, 0, FALSE, FALSE);
                obj_aff_identity(&obj_aff_buffer[slot]);
                obj_aff_rotscale(&obj_aff_buffer[slot], scale_inv(fxmul(mirror_scaling, curr_player.dashing_anim_scale)), scale_inv(curr_player.dashing_anim_scale), -rotation);
            }
        }

        switch (curr_player.gamemode) {
            case GAMEMODE_CUBE:
                if (curr_player.player_size == SIZE_BIG && !curr_player.slope_counter) {
                    // Offset depending on screen mirror status
                    if (screen_mirrored) {
                        x_offset = ((curr_player.lerped_cube_rotation >= 0x2000 && curr_player.lerped_cube_rotation < 0xa000) ? 9 : 8);
                        y_offset = ((curr_player.lerped_cube_rotation >= 0x6000 && curr_player.lerped_cube_rotation < 0xe000) ? 9 : 8);
                    } else {
                        x_offset = ((curr_player.lerped_cube_rotation >= 0x6000 && curr_player.lerped_cube_rotation < 0xe000) ? 9 : 8);
                        y_offset = ((curr_player.lerped_cube_rotation >= 0x2000 && curr_player.lerped_cube_rotation < 0xa000) ? 9 : 8);
                    }
                } else {
                    x_offset = 9;
                    y_offset = 9;
                }
                
                oam_metaspr(curr_player.relative_player_x - x_offset, curr_player.relative_player_y - y_offset, player_sprite, FALSE, FALSE, 0, -1, priority, 0, FALSE, FALSE);
                break;
            case GAMEMODE_SHIP:
                sign = curr_player.gravity_dir ? -1 : 1;

                y_offset = curr_player.gravity_dir ? 10 : 7;

                oam_metaspr(curr_player.relative_player_x - 8, curr_player.relative_player_y - y_offset, player_sprite, FALSE, FALSE, 0, -1, priority, 0, FALSE, FALSE);
                break;
            case GAMEMODE_BALL:
                oam_metaspr(curr_player.relative_player_x - 8, curr_player.relative_player_y - 9, player_sprite, FALSE, FALSE, 0, -1, priority, 0, FALSE, FALSE); 
                break;
            case GAMEMODE_UFO:
                sign = curr_player.gravity_dir ? -1 : 1;
                
                oam_metaspr(curr_player.relative_player_x - 8, curr_player.relative_player_y - 8, player_sprite, FALSE, FALSE, 0, -1, priority, 0, FALSE, FALSE); 
                break;
            case GAMEMODE_WAVE:
                oam_metaspr(curr_player.relative_player_x - 8, curr_player.relative_player_y - 8, player_sprite, FALSE, FALSE, 0, -1, priority, 0, FALSE, FALSE); 
                break;
        }
        
        obj_aff_identity(&obj_aff_buffer[curr_player_id]);

        /// Change sprite size depending on player size and screen mirror status
        if (curr_player.player_size == SIZE_BIG) {
            obj_aff_rotscale(&obj_aff_buffer[curr_player_id], mirror_scaling, float2fx(1.0) * sign, rotation);
        } else {
            obj_aff_rotscale(&obj_aff_buffer[curr_player_id], scale_inv(fxmul(mirror_scaling, float2fx(MINI_SIZE))), scale_inv(float2fx(MINI_SIZE) * sign), rotation); 
        }
    }
}

void set_player_speed() {
    player_1.player_x_speed = speed_constants[speed_id];
    player_2.player_x_speed = speed_constants[speed_id];    
}

void level_complete_cutscene() {
    curr_player.cube_rotation -= 0x500;
    if (cutscene_frame <= TOTAL_CUTSCENE_FRAMES) {
        anim_player_to_wall();
    }

    if (cutscene_frame == TOTAL_CUTSCENE_FRAMES - 2) {
        set_new_best(100, in_practice_mode); // Complete level
        mmEffect(SFX_LEVEL_COMPLETE);
    }

    if (cutscene_frame < EXIT_CUTSCENE_FRAME) {
        // Only player 1 can increment the cutscene frame
        if (curr_player_id == ID_PLAYER_1) cutscene_frame++;
    }
}

void anim_player_to_wall() {
    // This uses a Bézier Cuadratic formula:  P = ((1−t)^2)*P1 + 2*(1−t)*t*P2 + (t^2)*P3
    // Calculate t
    u32 t_fixed = FIXED_DIV_LONG(FIXED_MUL_LONG(cutscene_frame * SUBPIXEL_MULTIPLIER, cutscene_frame * SUBPIXEL_MULTIPLIER), FIXED_MUL_LONG(TOTAL_CUTSCENE_FRAMES * SUBPIXEL_MULTIPLIER, TOTAL_CUTSCENE_FRAMES * SUBPIXEL_MULTIPLIER));

    // Calculate (1 - t) and powers
    u32 one_minus_t = SUBPIXEL_MULTIPLIER - t_fixed;
    u32 one_minus_t_squared = FIXED_MUL_LONG(one_minus_t, one_minus_t);
    u32 t_squared = FIXED_MUL_LONG(t_fixed, t_fixed);

    u64 final_x = (scroll_x >> SUBPIXEL_BITS) + SCREEN_WIDTH + 0x10;
    u32 final_y = (scroll_y >> SUBPIXEL_BITS) + (SCREEN_HEIGHT/2) - 8;

    // Calculate points
    s16 height_diff = curr_player.cutscene_initial_player_y - (scroll_y >> SUBPIXEL_BITS);
    s32 offset = height_diff >> 1;

    u64 top_x = curr_player.cutscene_initial_player_x + offset; 
    u32 top_y = curr_player.cutscene_initial_player_y - offset; 
    
    // Update player position
    curr_player.player_x = (
                FIXED_MUL_LONG(one_minus_t_squared, curr_player.cutscene_initial_player_x * SUBPIXEL_MULTIPLIER) +
                FIXED_MUL_LONG(FIXED_MUL_LONG(2 * SUBPIXEL_MULTIPLIER, one_minus_t), t_fixed) * top_x +
                FIXED_MUL_LONG(t_squared, final_x * SUBPIXEL_MULTIPLIER)
    );

    curr_player.player_y = (
                FIXED_MUL_LONG(one_minus_t_squared, curr_player.cutscene_initial_player_y * SUBPIXEL_MULTIPLIER) +
                FIXED_MUL_LONG(FIXED_MUL_LONG(2 * SUBPIXEL_MULTIPLIER, one_minus_t), t_fixed) * top_y +
                FIXED_MUL_LONG(t_squared, final_y * SUBPIXEL_MULTIPLIER)
    );
}