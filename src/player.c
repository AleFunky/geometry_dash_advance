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

const u16 ship_rot_multiplier[] = {
    0x400,  // x0.5
    0x380,  // x1
    0x300,  // x2
    0x280,  // x3
    0x200,  // x4
};

const u16 ball_rot_multiplier[] = {
    0x100,  // x0.5
    0x250,  // x1
    0x380,  // x2
    0x430,  // x3
    0x5a0,  // x4
};

// Draw player
u8 x_offset;
u8 y_offset;

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
void do_ufo_gravity();

FIXED mirror_scaling;

void player_main() {    
    // Halve steps if dual
    num_steps = (dual == DUAL_ON) ? (NUM_STEPS / 2) : NUM_STEPS;

    if (complete_cutscene) {
        level_complete_cutscene();
    } else {
        // Detect if falling
        if (curr_player.gravity_dir == GRAVITY_DOWN) {
            curr_player.falling = (curr_player.player_y_speed > 0);
        } else {
            curr_player.falling = (curr_player.player_y_speed < 0);
        }

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

        curr_player.old_player_y = curr_player.player_y;
        curr_player.old_player_y_speed = curr_player.player_y_speed;

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

        curr_player.player_y_diff = curr_player.player_y - curr_player.old_player_y;
        
        if (curr_player.slope_counter) {
            if (curr_player.slope_speed_multiplier < 0x10000) {
                curr_player.slope_speed_multiplier += 0x4000;
            }
            if (--curr_player.slope_counter == 0) {
                curr_player.on_slope = FALSE;
                curr_player.slope_speed_multiplier = 0;
            }
        }

        // Check if the level complete cutscene should start
        s64 player_x_limit = ((curr_level_width << 4) - 0x98) << (SUBPIXEL_BITS);
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

        block_object_buffer_offset = 0;

        if (curr_player.changed_size_frames) {
            curr_player.changed_size_frames--;
        }
    }
}

#define scale_inv(s) ((1<<24)/s)>>8

void cube_gamemode() {
    if (curr_player.player_size == SIZE_BIG) {
        curr_player.player_width = CUBE_WIDTH;
        curr_player.player_height = CUBE_HEIGHT;
    } else {
        curr_player.player_width = MINI_CUBE_WIDTH;
        curr_player.player_height = MINI_CUBE_HEIGHT;
    }

    curr_player.gravity = CUBE_GRAVITY;

    s8 sign = curr_player.gravity_dir ? -1 : 1;
    s8 rotation_sign = curr_player.inverse_rotation_flag ? -1 : 1;
    s8 mirror_sign = screen_mirrored ? -1 : 1;
   
    // If on floor and holding A or UP, jump
    if (curr_player.on_floor && key_is_down(KEY_A | KEY_UP)) {
        if (key_hit(KEY_A | KEY_UP)) {
            curr_player.player_y_speed = -((curr_player.player_size == SIZE_BIG) ? CUBE_FIRST_JUMP_SPEED : CUBE_MINI_FIRST_JUMP_SPEED) * sign;     
        } else {
            curr_player.player_y_speed = -((curr_player.player_size == SIZE_BIG) ? CUBE_JUMP_SPEED : CUBE_MINI_JUMP_SPEED) * sign;       
        }

        curr_player.player_buffering = ORB_BUFFER_END;
        curr_player.on_slope = FALSE;
        curr_player.inverse_rotation_flag = FALSE;
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
    if (!(curr_player.on_floor || curr_player.slope_counter)) {
        curr_player.cube_rotation -= 0x500 * sign * mirror_sign * rotation_sign;
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
                    curr_player.cube_rotation = snap_to_tan_theta_1_2(curr_player.cube_rotation);
                    break;
                case DEGREES_63_5:
                case DEGREES_63_5_UD_DOWN:
                case DEGREES_26_5_DOWN:
                case DEGREES_26_5_UD:
                    curr_player.cube_rotation = snap_to_tan_theta_1_2_rotated_90(curr_player.cube_rotation);
                    break;
            }
        } else {
            curr_player.cube_rotation = (curr_player.cube_rotation + 0x2000) & 0xC000;
        }
    }

    curr_player.on_floor = FALSE;

    for (s32 step = 0; step < num_steps - 1; step++) {
        // Apply half of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed / num_steps;
        curr_player.player_y += curr_player.player_y_speed / num_steps;

        // Do gravity
        do_cube_gravity();

        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_cube();

        // If player is dead, do not advance more half steps
        if (player_death) break;
    }
    
    // If player is dead, do not advance more half steps
    if (!player_death) {
        // Apply last half of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed - ((curr_player.player_x_speed / num_steps) * (num_steps - 1));
        curr_player.player_y += curr_player.player_y_speed - ((curr_player.player_y_speed / num_steps) * (num_steps - 1));
    
        // Do gravity
        do_cube_gravity();

        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_cube();
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
        curr_player.player_buffering = ORB_BUFFER_READY;
    } else {
        curr_player.player_buffering = NO_ORB_BUFFER;
    }

    if (curr_player.snap_cube_rotation) {
        curr_player.cube_rotation = 0;
    } else {
        curr_player.cube_rotation = ArcTan2(curr_player.player_x_speed >> 8, curr_player.player_y_speed >> 8) * mirror_sign;
    }
    
    curr_player.on_floor = FALSE;
    curr_player.snap_cube_rotation = FALSE;
    
    for (s32 step = 0; step < num_steps - 1; step++) {
        // Apply half of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed / num_steps;
        curr_player.player_y += curr_player.player_y_speed / num_steps;
        
        // Do gravity
        do_ship_gravity(max_y_speed, max_y_speed_holding);
        
        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_ship_ball_ufo();

        // If player is dead, do not advance more half steps
        if (player_death) break;
    }

    // If player is dead, do not advance more half steps
    if (!player_death) {
        // Apply last half of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed - ((curr_player.player_x_speed / num_steps) * (num_steps - 1));
        curr_player.player_y += curr_player.player_y_speed - ((curr_player.player_y_speed / num_steps) * (num_steps - 1));

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

    curr_player.gravity = BALL_GRAVITY;

    s8 sign = (curr_player.gravity_dir == GRAVITY_UP) ? -1 : 1;
    s8 mirror_sign = screen_mirrored ? -1 : 1;

    if (curr_player.on_floor) {
        curr_player.ball_rotation_direction = (curr_player.gravity_dir == GRAVITY_DOWN) ? 2 : -2;
    }

    curr_player.cube_rotation -= 0x250 * curr_player.ball_rotation_direction * mirror_sign;

    curr_player.player_y_speed = CLAMP(curr_player.player_y_speed, -BALL_MAX_Y_SPEED, BALL_MAX_Y_SPEED);
    
    curr_player.on_floor = FALSE;

    for (s32 step = 0; step < num_steps - 1; step++) {
        // Apply half of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed / num_steps;
        curr_player.player_y += curr_player.player_y_speed / num_steps;

        // Do gravity
        do_ball_gravity();

        // Do collision with objects
        do_collision_with_objects();
        
        // Run collision
        collision_ship_ball_ufo();
        
        // If player is dead, do not advance more half steps
        if (player_death) break;
    }

    // If player is dead, do not advance more half steps
    if (!player_death) {
        // Apply last half of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed - ((curr_player.player_x_speed / num_steps) * (num_steps - 1));
        curr_player.player_y += curr_player.player_y_speed - ((curr_player.player_y_speed / num_steps) * (num_steps - 1));
        // Do gravity
        do_ball_gravity();
        
        // Do collision with objects
        do_collision_with_objects();
        
        // Run collision
        collision_ship_ball_ufo();


        if (curr_player.on_floor && curr_player.player_buffering == ORB_BUFFER_READY) {
            curr_player.gravity_dir ^= 1;
            curr_player.player_y_speed = BALL_SWITCH_SPEED * -sign; 
            
            curr_player.ball_rotation_direction = (curr_player.gravity_dir == GRAVITY_DOWN) ? -1 : 1;
            
            curr_player.player_buffering = ORB_BUFFER_END;

            if (curr_player.slope_counter) {
                curr_player.player_y_speed += 0x4000 * -sign;
            }
        }
    }
}

void ufo_gamemode() {
    if (curr_player.player_size == SIZE_BIG) {
        curr_player.player_width = UFO_WIDTH;
        curr_player.player_height = UFO_HEIGHT;
    } else {
        curr_player.player_width = MINI_UFO_WIDTH;
        curr_player.player_height = MINI_UFO_HEIGHT;
    }

    curr_player.gravity = UFO_GRAVITY;

    s8 sign = curr_player.gravity_dir ? -1 : 1;
    s8 mirror_sign = screen_mirrored ? -1 : 1;

    if (curr_player.falling) {
        curr_player.cube_rotation = ((curr_player.player_y_speed / 2) * mirror_sign) / (1 << (SUBPIXEL_BITS - 1)) * 0x40; 
    } else {
        curr_player.cube_rotation = ((curr_player.player_y_speed) * mirror_sign) / (1 << (SUBPIXEL_BITS - 1)) * 0x180; 
    }

    // If on floor and holding A or UP, jump
    if (key_hit(KEY_A | KEY_UP) || curr_player.player_buffering == ORB_BUFFER_READY) {
        if (curr_player.player_size == SIZE_BIG) {
            curr_player.player_y_speed = -UFO_JUMP_SPEED * sign;     
        } else {
            curr_player.player_y_speed = -UFO_MINI_JUMP_SPEED * sign;     
        }
    }
    
    curr_player.on_floor = FALSE;

    for (s32 step = 0; step < num_steps - 1; step++) {
        // Apply half of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed / num_steps;
        curr_player.player_y += curr_player.player_y_speed / num_steps;

        // Do gravity
        do_ufo_gravity();
        
        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_ship_ball_ufo();

        // If player is dead, do not advance more half steps
        if (player_death) break;
    }
    
    // If player is dead, do not advance more half steps
    if (!player_death) {
        // Apply last half of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed - ((curr_player.player_x_speed / num_steps) * (num_steps - 1));
        curr_player.player_y += curr_player.player_y_speed - ((curr_player.player_y_speed / num_steps) * (num_steps - 1));
        
        // Do gravity
        do_ufo_gravity();
    
        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_ship_ball_ufo();
        
        // Stop buffering
        if (curr_player.player_buffering == ORB_BUFFER_READY) curr_player.player_buffering = ORB_BUFFER_END;
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
    s8 hold_sign = key_is_down(KEY_A | KEY_UP) ? -1 : 1;
    s8 mirror_sign = screen_mirrored ? 1 : -1;

    curr_player.cube_rotation = ArcTan2(curr_player.player_x_speed >> 8, curr_player.player_y_speed >> 8) * mirror_sign;

    if (curr_player.player_size == SIZE_BIG) {
        curr_player.player_y_speed = curr_player.player_x_speed * sign * hold_sign;     
    } else {
        curr_player.player_y_speed = curr_player.player_x_speed * 2 * sign * hold_sign;     
    }
    
    wave_set_new_point();
    
    curr_player.on_floor = FALSE;

    for (s32 step = 0; step < num_steps - 1; step++) {
        // Apply half of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed / num_steps;
        curr_player.player_y += curr_player.player_y_speed / num_steps;
        
        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_wave();

        // If player is dead, do not advance more half steps
        if (player_death) break;
    }
    
    // If player is dead, do not advance more half steps
    if (!player_death) {
        // Apply last half of speed
        // Update player x and y
        curr_player.player_x += curr_player.player_x_speed - ((curr_player.player_x_speed / num_steps) * (num_steps - 1));
        curr_player.player_y += curr_player.player_y_speed - ((curr_player.player_y_speed / num_steps) * (num_steps - 1));
    
        // Do collision with objects
        do_collision_with_objects();

        // Run collision
        collision_wave();
        
        // Stop buffering
        if (curr_player.player_buffering == ORB_BUFFER_READY) curr_player.player_buffering = ORB_BUFFER_END;
    }
}

void do_cube_gravity() {
    // Depending on which direction the curr_player.gravity points, apply curr_player.gravity and cap speed in one direction or in the other
    if (curr_player.gravity_dir) {
        curr_player.player_y_speed -= curr_player.gravity / num_steps;
        if (curr_player.player_y_speed < -CUBE_MAX_Y_SPEED) curr_player.player_y_speed = -CUBE_MAX_Y_SPEED;
    } else {
        curr_player.player_y_speed += curr_player.gravity / num_steps;
        if (curr_player.player_y_speed > CUBE_MAX_Y_SPEED) curr_player.player_y_speed = CUBE_MAX_Y_SPEED;
    }
}

void do_ship_gravity(s32 max_y_speed, s32 max_y_speed_holding) {
    u32 holding = key_is_down(KEY_A | KEY_UP);

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
    
    if (holding) {
        if (curr_player.gravity_dir == GRAVITY_DOWN) {
            curr_player.player_y_speed -= curr_player.gravity / num_steps;
            if (curr_player.player_y_speed < -max_y_speed_holding) curr_player.player_y_speed = -max_y_speed_holding;  
        } else {    
            curr_player.player_y_speed += curr_player.gravity / num_steps;
            if (curr_player.player_y_speed > max_y_speed_holding) curr_player.player_y_speed = max_y_speed_holding;  
        }
    } else {
        if (curr_player.gravity_dir == GRAVITY_DOWN) {
            curr_player.player_y_speed += curr_player.gravity / num_steps;
            if (curr_player.player_y_speed > max_y_speed) curr_player.player_y_speed = max_y_speed;    
        } else {    
            curr_player.player_y_speed -= curr_player.gravity / num_steps;
            if (curr_player.player_y_speed < -max_y_speed) curr_player.player_y_speed = -max_y_speed;
        }
    }
}

void do_ball_gravity() {
    s8 sign = (curr_player.gravity_dir == GRAVITY_UP) ? -1 : 1;
    curr_player.player_y_speed += (curr_player.gravity / num_steps) * sign;
}

void do_ufo_gravity() {
    s32 ufo_max_y_speed = (curr_player.player_size == SIZE_BIG) ? UFO_MAX_Y_SPEED : UFO_MINI_MAX_Y_SPEED;
    // Depending on which direction the curr_player.gravity points, apply curr_player.gravity and cap speed in one direction or in the other
    if (curr_player.gravity_dir) {
        curr_player.player_y_speed -= curr_player.gravity / num_steps;
        if (curr_player.player_y_speed < -ufo_max_y_speed) curr_player.player_y_speed = -ufo_max_y_speed;
    } else {
        curr_player.player_y_speed += curr_player.gravity / num_steps;
        if (curr_player.player_y_speed > ufo_max_y_speed) curr_player.player_y_speed = ufo_max_y_speed;
    }
}

void draw_player() {
    curr_player.old_relative_player_y = curr_player.relative_player_y;

    curr_player.relative_player_x = FROM_FIXED(curr_player.player_x - scroll_x);
    curr_player.relative_player_y = FROM_FIXED(curr_player.player_y) - FROM_FIXED(scroll_y);

    // Draw only if on screen vertically
    if (curr_player.relative_player_y > -48 && curr_player.relative_player_y < SCREEN_HEIGHT + 48) {
        s8 sign = 1;

        // Get player sprite depending
        const u16 *player_sprite = (curr_player_id == ID_PLAYER_1) ? player1Spr : player2Spr;

        curr_player.lerped_cube_rotation = lerp_angle(curr_player.lerped_cube_rotation, curr_player.cube_rotation, (curr_player.gamemode == GAMEMODE_WAVE ? float2fx(1.75) : float2fx(2)), curr_player.gamemode != GAMEMODE_WAVE);
        
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
        } else if (!complete_cutscene) {
            // Else, if it's a wave and the complete cutscene is not playing, draw the wave trail
            handle_wave_trail();
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
                
                oam_metaspr(curr_player.relative_player_x - x_offset, curr_player.relative_player_y - y_offset, player_sprite, FALSE, FALSE, 0, -1, priority, 0, FALSE);
                break;
            case GAMEMODE_SHIP:
                sign = curr_player.gravity_dir ? -1 : 1;

                y_offset = curr_player.gravity_dir ? 9 : 7;

                oam_metaspr(curr_player.relative_player_x - 8, curr_player.relative_player_y - y_offset, player_sprite, FALSE, FALSE, 0, -1, priority, 0, FALSE);
                break;
            case GAMEMODE_BALL:
                oam_metaspr(curr_player.relative_player_x - 8, curr_player.relative_player_y - 8, player_sprite, FALSE, FALSE, 0, -1, priority, 0, FALSE); 
                break;
            case GAMEMODE_UFO:
                sign = curr_player.gravity_dir ? -1 : 1;
                
                oam_metaspr(curr_player.relative_player_x - 8, curr_player.relative_player_y - 8, player_sprite, FALSE, FALSE, 0, -1, priority, 0, FALSE); 
                break;
            case GAMEMODE_WAVE:
                oam_metaspr(curr_player.relative_player_x - 8, curr_player.relative_player_y - 8, player_sprite, FALSE, FALSE, 0, -1, priority, 0, FALSE); 
                break;
        }
        
        obj_aff_identity(&obj_aff_buffer[curr_player_id]);

        /// Change sprite size depending on player size and screen mirror status
        if (curr_player.player_size == SIZE_BIG) {
            obj_aff_rotscale(&obj_aff_buffer[curr_player_id], mirror_scaling, float2fx(1.0) * sign, curr_player.lerped_cube_rotation);
        } else {
            obj_aff_rotscale(&obj_aff_buffer[curr_player_id], scale_inv(fxmul(mirror_scaling, float2fx(MINI_SIZE))), scale_inv(float2fx(MINI_SIZE) * sign), curr_player.lerped_cube_rotation); 
        }
    }
}

#undef scale_inv

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
    u32 t_fixed = FIXED_DIV(FIXED_MUL(cutscene_frame * SUBPIXEL_MULTIPLIER, cutscene_frame * SUBPIXEL_MULTIPLIER), FIXED_MUL(TOTAL_CUTSCENE_FRAMES * SUBPIXEL_MULTIPLIER, TOTAL_CUTSCENE_FRAMES * SUBPIXEL_MULTIPLIER));

    // Calculate (1 - t) and powers
    u32 one_minus_t = SUBPIXEL_MULTIPLIER - t_fixed;
    u32 one_minus_t_squared = FIXED_MUL(one_minus_t, one_minus_t);
    u32 t_squared = FIXED_MUL(t_fixed, t_fixed);

    u32 final_x = (scroll_x >> SUBPIXEL_BITS) + SCREEN_WIDTH + 0x10;
    u32 final_y = (scroll_y >> SUBPIXEL_BITS) + (SCREEN_HEIGHT/2) - 8;

    // Calculate points
    u16 height_diff = curr_player.cutscene_initial_player_y - (scroll_y >> SUBPIXEL_BITS);
    u32 offset = height_diff >> 1;

    u32 top_x = curr_player.cutscene_initial_player_x + offset; 
    u32 top_y = curr_player.cutscene_initial_player_y - offset; 
    
    // Update player position
    curr_player.player_x = (
                FIXED_MUL(one_minus_t_squared, curr_player.cutscene_initial_player_x * SUBPIXEL_MULTIPLIER) +
                FIXED_MUL(FIXED_MUL(2 * SUBPIXEL_MULTIPLIER, one_minus_t), t_fixed) * top_x +
                FIXED_MUL(t_squared, final_x * SUBPIXEL_MULTIPLIER)
    );

    curr_player.player_y = (
                FIXED_MUL(one_minus_t_squared, curr_player.cutscene_initial_player_y * SUBPIXEL_MULTIPLIER) +
                FIXED_MUL(FIXED_MUL(2 * SUBPIXEL_MULTIPLIER, one_minus_t), t_fixed) * top_y +
                FIXED_MUL(t_squared, final_y * SUBPIXEL_MULTIPLIER)
    );
}