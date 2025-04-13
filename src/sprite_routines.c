#include "main.h"
#include "sprite_loading.h"
#include "sprite_routines.h"
#include "physics_defines.h"
#include "color.h"
#include "metatiles.h"

// [gamemode][type]

#define YELLOW_ORB_INDEX 0
#define YELLOW_PAD_INDEX 1
#define PINK_ORB_INDEX 2
#define PINK_PAD_INDEX 3
#define BLUE_ORB_PAD_INDEX 4

const s32 orb_pad_bounces[][GAMEMODE_COUNT][5] = {
    { // Big
        /* Cube */ {CUBE_YELLOW_ORB_JUMP_SPEED, CUBE_YELLOW_PAD_JUMP_SPEED, CUBE_PINK_ORB_JUMP_SPEED, CUBE_PINK_PAD_JUMP_SPEED, CUBE_BLUE_ORB_PAD_INITIAL_SPEED},
        /* Ship */ {SHIP_YELLOW_ORB_JUMP_SPEED, SHIP_YELLOW_PAD_JUMP_SPEED, SHIP_PINK_ORB_JUMP_SPEED, SHIP_PINK_PAD_JUMP_SPEED, SHIP_BLUE_ORB_PAD_INITIAL_SPEED},
        /* Ball */ {BALL_YELLOW_ORB_JUMP_SPEED, BALL_YELLOW_PAD_JUMP_SPEED, BALL_PINK_ORB_JUMP_SPEED, BALL_PINK_PAD_JUMP_SPEED, BALL_BLUE_ORB_PAD_INITIAL_SPEED},
        /* Ufo */  {UFO_YELLOW_ORB_JUMP_SPEED,  UFO_YELLOW_PAD_JUMP_SPEED,  UFO_PINK_ORB_JUMP_SPEED,  UFO_PINK_PAD_JUMP_SPEED,  UFO_BLUE_ORB_PAD_INITIAL_SPEED},
        /* Wave */ {0,  0,  0,  0,  0},
    }, { // Mini
        /* Cube */ {CUBE_MINI_YELLOW_ORB_JUMP_SPEED, CUBE_MINI_YELLOW_PAD_JUMP_SPEED, CUBE_MINI_PINK_ORB_JUMP_SPEED, CUBE_MINI_PINK_PAD_JUMP_SPEED, CUBE_BLUE_ORB_PAD_INITIAL_SPEED * 0.8},
        /* Ship */ {SHIP_MINI_YELLOW_ORB_JUMP_SPEED, SHIP_MINI_YELLOW_PAD_JUMP_SPEED, SHIP_MINI_PINK_ORB_JUMP_SPEED, SHIP_MINI_PINK_PAD_JUMP_SPEED, SHIP_BLUE_ORB_PAD_INITIAL_SPEED * 0.8},
        /* Ball */ {BALL_MINI_YELLOW_ORB_JUMP_SPEED, BALL_MINI_YELLOW_PAD_JUMP_SPEED, BALL_MINI_PINK_ORB_JUMP_SPEED, BALL_MINI_PINK_PAD_JUMP_SPEED, BALL_BLUE_ORB_PAD_INITIAL_SPEED * 0.8},
        /* Ufo */  {UFO_MINI_YELLOW_ORB_JUMP_SPEED,  UFO_MINI_YELLOW_PAD_JUMP_SPEED,  UFO_MINI_PINK_ORB_JUMP_SPEED,  UFO_MINI_PINK_PAD_JUMP_SPEED,  UFO_BLUE_ORB_PAD_INITIAL_SPEED * 0.8},
        /* Wave */ {0,  0,  0,  0,  0},
    }
};

#define RST 2 // Reset speed
#define CAP 1
#define _   0
const s32 gamemode_cap_lut[GAMEMODE_COUNT][GAMEMODE_COUNT] = {
    // FROM | TO Cube  Ship  Ball  Ufo Wave
    /* Cube */ { _,    CAP,  _,    CAP, _ },
    /* Ship */ { CAP,  _,    CAP,  CAP, _ },
    /* Ball */ { _,    CAP,  _,    CAP, _ },
    /* Ufo  */ { CAP,  CAP,  CAP,  _,   _ },
    /* Wave */ { RST,  RST,  RST,  RST, _ },
};

void portal_transition_speed(u32 gamemode) {
    if (gamemode_cap_lut[curr_player.gamemode][gamemode] == CAP) curr_player.player_y_speed /= 2;
    else if (gamemode_cap_lut[curr_player.gamemode][gamemode] == RST) curr_player.player_y_speed /= 3;
}

#undef RST
#undef CAP
#undef _

void cube_portal(struct ObjectSlot *objectSlot) {
    portal_transition_speed(GAMEMODE_CUBE);
    if (curr_player.gamemode != GAMEMODE_CUBE) {
        curr_player.inverse_rotation_flag = FALSE;
        curr_player.trail_on = FALSE;
    }
    curr_player.gamemode = GAMEMODE_CUBE;
    curr_player.on_floor = FALSE;
    curr_player.airborne_jumped = TRUE;

    gamemode_upload_buffer[curr_player_id] = GAMEMODE_CUBE;

    check_for_same_dual_gravity();
    
    objectSlot->activated[curr_player_id] = TRUE;
}

void ship_portal(struct ObjectSlot *objectSlot) {
    portal_transition_speed(GAMEMODE_SHIP);
    curr_player.gamemode = GAMEMODE_SHIP;
    curr_player.on_floor = FALSE;
    curr_player.inverse_rotation_flag = FALSE;
    curr_player.airborne_jumped = TRUE;

    gamemode_upload_buffer[curr_player_id] = GAMEMODE_SHIP;

    check_for_same_dual_gravity();
    set_target_y_scroll(objectSlot->object.y);

    objectSlot->activated[curr_player_id] = TRUE;
}

void ball_portal(struct ObjectSlot *objectSlot) {
    portal_transition_speed(GAMEMODE_BALL);
    curr_player.gamemode = GAMEMODE_BALL;
    curr_player.on_floor = FALSE;
    curr_player.inverse_rotation_flag = FALSE;
    curr_player.airborne_jumped = TRUE;
    
    gamemode_upload_buffer[curr_player_id] = GAMEMODE_BALL;
    
    check_for_same_dual_gravity();
    set_target_y_scroll(objectSlot->object.y);

    objectSlot->activated[curr_player_id] = TRUE;
}

void ufo_portal(struct ObjectSlot *objectSlot) {
    portal_transition_speed(GAMEMODE_UFO);
    curr_player.gamemode = GAMEMODE_UFO;
    curr_player.on_floor = FALSE;
    curr_player.inverse_rotation_flag = FALSE;
    curr_player.airborne_jumped = TRUE;

    gamemode_upload_buffer[curr_player_id] = GAMEMODE_UFO;
    
    check_for_same_dual_gravity();
    set_target_y_scroll(objectSlot->object.y);

    objectSlot->activated[curr_player_id] = TRUE;
}

void wave_portal(struct ObjectSlot *objectSlot) {
    curr_player.gamemode = GAMEMODE_WAVE;
    curr_player.on_floor = FALSE;
    curr_player.inverse_rotation_flag = FALSE;
    curr_player.airborne_jumped = TRUE;

    gamemode_upload_buffer[curr_player_id] = GAMEMODE_WAVE;
    
    check_for_same_dual_gravity();
    set_target_y_scroll(objectSlot->object.y);

    objectSlot->activated[curr_player_id] = TRUE;
}

void blue_gravity_portal(struct ObjectSlot *objectSlot) {
    if (curr_player.gravity_dir == GRAVITY_UP) {
        curr_player.player_y_speed /= 2;
        curr_player.gravity_dir = GRAVITY_DOWN;
        curr_player.on_floor = FALSE;
        if (curr_player.gamemode != GAMEMODE_BALL) curr_player.trail_on = TRUE;
        curr_player.airborne_jumped = TRUE;
        
        curr_player.ball_rotation_direction = -1;
        check_for_same_dual_gravity();
    }

    objectSlot->activated[curr_player_id] = TRUE;
}

void yellow_gravity_portal(struct ObjectSlot *objectSlot) {
    if (curr_player.gravity_dir == GRAVITY_DOWN) {
        curr_player.player_y_speed /= 2;
        curr_player.gravity_dir = GRAVITY_UP;
        curr_player.on_floor = FALSE;
        if (curr_player.gamemode != GAMEMODE_BALL) curr_player.trail_on = TRUE;
        curr_player.airborne_jumped = TRUE;

        curr_player.ball_rotation_direction = 1;
        check_for_same_dual_gravity();
    }

    objectSlot->activated[curr_player_id] = TRUE;
}

void mirror_portal(struct ObjectSlot *objectSlot) {
    mirror_screen();
    objectSlot->activated[curr_player_id] = TRUE;
}

void unmirror_portal(struct ObjectSlot *objectSlot) {
    unmirror_screen();
    objectSlot->activated[curr_player_id] = TRUE;
}

void mini_portal(struct ObjectSlot *objectSlot) {
    curr_player.player_size = SIZE_MINI;
    curr_player.changed_size_frames = 3;
    objectSlot->activated[curr_player_id] = TRUE;
}

void big_portal(struct ObjectSlot *objectSlot) {
    curr_player.player_size = SIZE_BIG;
    curr_player.changed_size_frames = 3;
    objectSlot->activated[curr_player_id] = TRUE;
}

void speed_portal_half(struct ObjectSlot *objectSlot) {
    speed_id = SPEED_X05;
    objectSlot->activated[curr_player_id] = TRUE;
}

void speed_portal_1x(struct ObjectSlot *objectSlot) {
    speed_id = SPEED_X1;
    objectSlot->activated[curr_player_id] = TRUE;
}

void speed_portal_2x(struct ObjectSlot *objectSlot) {
    speed_id = SPEED_X2;
    objectSlot->activated[curr_player_id] = TRUE;
}

void speed_portal_3x(struct ObjectSlot *objectSlot) {
    speed_id = SPEED_X3;
    objectSlot->activated[curr_player_id] = TRUE;
}

void speed_portal_4x(struct ObjectSlot *objectSlot) {
    speed_id = SPEED_X4;
    objectSlot->activated[curr_player_id] = TRUE;
}

void orange_dual_portal(struct ObjectSlot *objectSlot) {
    set_target_y_scroll(objectSlot->object.y);
    activate_dual();
    objectSlot->activated[curr_player_id] = TRUE;
}

void blue_dual_portal(struct ObjectSlot *objectSlot) {
    deactivate_dual();
    objectSlot->activated[curr_player_id] = TRUE;
}


void col_trigger(struct ObjectSlot *objectSlot) {
    struct Object col_trigger = objectSlot->object;
    
    u32 is_touch_trigger = col_trigger.rotation & COL_TRIGGER_ROT_VAR_TOUCH_MASK;

    // If the trigger is a touch trigger, then behave like a normal object,
    // else if the player is right of the horizontal center of the trigger, activate the color trigger
    if (is_touch_trigger || (curr_player.player_x >> SUBPIXEL_BITS) >= (col_trigger.x + 8)) {
        u32 frames = (col_trigger.attrib1 >> COL_TRIGGER_ATTRIB1_FRAMES_SHIFT) + 1; // +1 because 0 = 1
        u32 channel = col_trigger.attrib1 & COL_TRIGGER_ATTRIB1_CHANNEL_MASK;

        u8 copy = col_trigger.attrib3 & 1;
        
        // Save variables into buffer
        col_trigger_buffer[channel][COL_TRIG_BUFF_OLD_COLOR] = col_channels_color[channel];
        col_trigger_buffer[channel][COL_TRIG_BUFF_ACTIVE] = TRUE;

        COLOR new_color = col_trigger.attrib2;
        if (copy) {
            u8 copied_channel = col_trigger.attrib3 >> 1;

            switch (copied_channel) {
                case BG:
                    new_color = palette_buffer[0x00];
                    break;
                case GROUND:
                    new_color = palette_buffer[GROUND_PAL + BG_COLOR];
                    break;
                case OBJ:
                    new_color = palette_buffer[OBJ_COLOR];
                    break;
                case LINE:
                    new_color = palette_buffer[GROUND_PAL + LINE_COLOR];
                    break;
                case P1:
                    new_color = palette_buffer[PLAYER_SPR_PAL + P1_COLOR];
                    break;
                case P2:
                    new_color = palette_buffer[PLAYER_SPR_PAL + P2_COLOR];
                    break;
                case COL1:
                case COL2:
                case COL3:
                case COL4:
                    new_color = palette_buffer[COL_ID_COLOR + (channel << 4) + COL_CHN_PAL];
                    break;
            }
        }

        if (col_trigger.rotation & COL_TRIGGER_ROT_VAR_BLENDING_MASK) {
            col_channels_flags[channel] |= COL_CHANNEL_BLENDING_FLAG;
        } else {
            col_channels_flags[channel] &= ~COL_CHANNEL_BLENDING_FLAG;
        }

        col_trigger_buffer[channel][COL_TRIG_BUFF_NEW_COLOR] = new_color;
        col_trigger_buffer[channel][COL_TRIG_BUFF_TOTAL_FRAMES] = frames; // Total frames
        col_trigger_buffer[channel][COL_TRIG_BUFF_CURRENT_FRAMES] = 0;      // Current frame

        // Deoccupy slot
        objectSlot->occupied = FALSE;
    }
}

void yellow_orb(struct ObjectSlot *objectSlot) {
    if (curr_player.player_buffering == ORB_BUFFER_READY) {
        s32 sign = (curr_player.gravity_dir == GRAVITY_UP) ? 1 : -1;
        curr_player.player_y_speed = orb_pad_bounces[curr_player.player_size][curr_player.gamemode][YELLOW_ORB_INDEX] * sign;
        curr_player.inverse_rotation_flag = FALSE;
        curr_player.trail_on = TRUE;

        curr_player.ball_rotation_direction = sign;

        objectSlot->activated[curr_player_id] = TRUE;
        curr_player.on_floor = FALSE;
        curr_player.player_buffering = ORB_BUFFER_END;
    }
}

void yellow_pad(struct ObjectSlot *objectSlot) {
    s32 sign = (curr_player.gravity_dir == GRAVITY_UP) ? 1 : -1;
    curr_player.player_y_speed = orb_pad_bounces[curr_player.player_size][curr_player.gamemode][YELLOW_PAD_INDEX] * sign;
    curr_player.inverse_rotation_flag = FALSE;
    curr_player.trail_on = TRUE;
    curr_player.on_floor = FALSE;
    curr_player.airborne_jumped = TRUE;
    objectSlot->activated[curr_player_id] = TRUE;
}

void blue_orb(struct ObjectSlot *objectSlot) {
    if (curr_player.player_buffering == ORB_BUFFER_READY) {
        curr_player.gravity_dir ^= 1;
        s32 sign = (curr_player.gravity_dir == GRAVITY_UP) ? -1 : 1;
        curr_player.inverse_rotation_flag = FALSE;
        curr_player.trail_on = TRUE;
        curr_player.airborne_jumped = TRUE;
        
        curr_player.ball_rotation_direction = sign;
        
        curr_player.player_y_speed = orb_pad_bounces[curr_player.player_size][curr_player.gamemode][BLUE_ORB_PAD_INDEX] * sign;

        check_for_same_dual_gravity();

        objectSlot->activated[curr_player_id] = TRUE;
        curr_player.on_floor = FALSE;
        curr_player.player_buffering = ORB_BUFFER_END;
    }
}

void blue_pad(struct ObjectSlot *objectSlot) {
    u32 enabled_rotation = (objectSlot->object.attrib1 & ENABLE_ROTATION_FLAG);
    if (!enabled_rotation) {
        // Object is not rotated
        if (curr_player.gravity_dir != (objectSlot->object.attrib1 & V_FLIP_FLAG)) {
            return;
        }
    } else {
        // Object is rotated
        u16 rotation = (objectSlot->object.rotation);
        if (!curr_player.gravity_dir) {
            // Gravity goes down
            if (rotation >= 0x4000 && rotation < 0xc000) {
                // Object rotation is between 90 and 270 degrees
                return;
            }
        } else {
            // Gravity goes up
            if (rotation < 0x4000 || rotation >= 0xc000) {
                // Object rotation is less than 90 or greater than 270 degrees
                return;
            }
        }
    }

    // Gravity should change 
    curr_player.gravity_dir ^= 1;
    s32 sign = (curr_player.gravity_dir == GRAVITY_UP) ? -1 : 1;

    curr_player.ball_rotation_direction = sign;
    curr_player.inverse_rotation_flag = FALSE;
    curr_player.trail_on = TRUE;
    curr_player.airborne_jumped = TRUE;
        
    curr_player.player_y_speed = orb_pad_bounces[curr_player.player_size][curr_player.gamemode][BLUE_ORB_PAD_INDEX] * sign;
    
    check_for_same_dual_gravity();
    
    curr_player.on_floor = FALSE;
    objectSlot->activated[curr_player_id] = TRUE;
}


void pink_orb(struct ObjectSlot *objectSlot) {
    if (curr_player.player_buffering == ORB_BUFFER_READY) {
        s32 sign = (curr_player.gravity_dir == GRAVITY_UP) ? 1 : -1;
        curr_player.player_y_speed = orb_pad_bounces[curr_player.player_size][curr_player.gamemode][PINK_ORB_INDEX] * sign;
        
        curr_player.ball_rotation_direction = sign;
        curr_player.inverse_rotation_flag = FALSE;
        curr_player.trail_on = TRUE;
        
        objectSlot->activated[curr_player_id] = TRUE;
        curr_player.on_floor = FALSE;
        curr_player.player_buffering = ORB_BUFFER_END;
    }
}

void pink_pad(struct ObjectSlot *objectSlot) {
    s32 sign = (curr_player.gravity_dir == GRAVITY_UP) ? 1 : -1;
    curr_player.player_y_speed = orb_pad_bounces[curr_player.player_size][curr_player.gamemode][PINK_PAD_INDEX] * sign;
    curr_player.inverse_rotation_flag = FALSE;
    curr_player.trail_on = TRUE;
    curr_player.airborne_jumped = TRUE;
    curr_player.on_floor = FALSE;
    objectSlot->activated[curr_player_id] = TRUE;
}

void block(UNUSED struct ObjectSlot *objectSlot) {
    // Check if this object is already in the buffer
    for (s32 i = block_object_buffer_offset; i > 0; i--) {
        if (block_object_buffer[i - 1] == (s32 *) objectSlot) {
            return;
        }
    }
    
    u16 metatile_ID = objectSlot->object.attrib3;

    u16 collision = metatiles[metatile_ID][4];

    // If no collision, don't add it
    if (collision == COL_NONE) return;
    
    // If not, add it
    block_object_buffer[block_object_buffer_offset] = (s32 *) objectSlot;

    block_object_buffer_flags[block_object_buffer_offset++] = collision;
}

void slab(UNUSED struct ObjectSlot *objectSlot) {
    // Check if this object is already in the buffer
    for (s32 i = block_object_buffer_offset; i > 0; i--) {
        if (block_object_buffer[i - 1] == (s32 *) objectSlot) {
            return;
        }
    }
    
    u16 metatile_ID = objectSlot->object.attrib3;
    
    u16 collision = metatiles[metatile_ID][4];

    // If no collision, don't add it
    if (collision == COL_NONE) return;

    // If not, add it
    block_object_buffer[block_object_buffer_offset] = (s32 *) objectSlot;
    
    block_object_buffer_flags[block_object_buffer_offset++] = collision;
}

void coin(UNUSED struct ObjectSlot *objectSlot) {
    if (!in_practice_mode) {
        u32 coin_id = (objectSlot->object.attrib1 & COIN_ID_FLAG) >> COIN_ID_SHIFT;

        coin_y_pos[coin_id] = objectSlot->object.y << SUBPIXEL_BITS;
        coin_speed[coin_id] = INITIAL_COIN_SPEED;

        coin_buffer[coin_id] = 1;

        objectSlot->activated[ID_PLAYER_1] = objectSlot->activated[ID_PLAYER_2] = TRUE;
    }
}

void do_nothing(UNUSED struct ObjectSlot *objectSlot) {
    // No routine defined
}

void kill_player(struct ObjectSlot *objectSlot) {
#ifdef DEBUG
    if (!noclip) player_death = TRUE;
#else
    player_death = TRUE;
#endif
    objectSlot->activated[curr_player_id] = TRUE;
}

const jmp_table routines_jump_table[] = {
    do_nothing,
    ship_portal,
    cube_portal,
    col_trigger,
    do_nothing,
    do_nothing,
    do_nothing,
    do_nothing,
    do_nothing,
    yellow_orb,
    yellow_pad,
    do_nothing,
    do_nothing,
    do_nothing,
    blue_gravity_portal,
    yellow_gravity_portal,
    blue_orb,
    blue_pad,
    pink_orb,
    pink_pad,
    do_nothing,
    do_nothing,
    do_nothing,
    do_nothing,
    do_nothing,
    do_nothing,
    ball_portal,
    do_nothing,
    mini_portal,
    big_portal,

    // Spikes
    
    kill_player,
    kill_player,
    kill_player,
    kill_player,
    kill_player,
    kill_player,
    kill_player,
    kill_player,
    kill_player,
    kill_player,

    // Saws

    kill_player,
    kill_player,
    kill_player,

    // Block and slab
    block,
    slab,

    mirror_portal,
    unmirror_portal,

    do_nothing,
    do_nothing,
    do_nothing,
    do_nothing,

    do_nothing,

    // Speeeeed
    speed_portal_half,
    speed_portal_1x,
    speed_portal_2x,
    speed_portal_3x,
    speed_portal_4x,

    ufo_portal,

    // Square deco   
    do_nothing,
    do_nothing,
    do_nothing,

    do_nothing,
    do_nothing,
    do_nothing,

    // Spike bushes

    kill_player,
    kill_player,
    kill_player,
    kill_player,
    kill_player,
    kill_player,
    kill_player,
    kill_player,

    orange_dual_portal,
    blue_dual_portal,

    // Toe deco
    do_nothing,
    do_nothing,
    do_nothing,

    do_nothing,
    do_nothing,
    do_nothing,

    do_nothing,
    do_nothing,
    do_nothing,

    
    do_nothing,
    do_nothing,
    do_nothing,
    do_nothing,
    do_nothing,
    do_nothing,

    coin,

    // 1.6
    do_nothing,

    do_nothing,
    do_nothing,
    do_nothing,

    do_nothing,
    do_nothing,
    do_nothing,

    kill_player,
    kill_player,
    kill_player,

    do_nothing,
    do_nothing,
    do_nothing,

    do_nothing,
    
    kill_player,
    kill_player,
    kill_player,
    
    do_nothing,

    kill_player,
    kill_player,
    kill_player,
    kill_player,
    kill_player,
    kill_player,

    wave_portal,

    do_nothing,
    do_nothing,
    do_nothing,
    do_nothing,

    kill_player,
    kill_player,
    kill_player,

};

// In pixels
#define Object_Hitbox_Rectangle(name, hw, hh, hxoff, hyoff, center_x, center_y) {hw, hh, hxoff, hyoff, center_x, center_y},
#define Object_Hitbox_Circle(name, is_saw, radius, hxoff, hyoff, center_x, center_y) {0x8000 | is_saw, radius, hxoff, hyoff, center_x, center_y},

const s16 obj_hitbox[][6] = {
    Object_Hitbox_Rectangle("NONE", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("SHIP_PORTAL", 20, 46, -2, -15, 8, 8)
    Object_Hitbox_Rectangle("CUBE_PORTAL", 20, 46, -2, -15, 8, 8)
    Object_Hitbox_Rectangle("COL_TRIGGER", 16, 16, 0, 0, 8, 8)
    Object_Hitbox_Rectangle("BIG_BG_SPIKES", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("MEDIUM_BG_SPIKES", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("SMALL_BG_SPIKES", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("TINY_BG_SPIKES", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("BG_CHAIN", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("YELLOW_ORB", 20, 20, -2, -2, 8, 8)
    Object_Hitbox_Rectangle("YELLOW_PAD", 12, 2, 2, 14, 8, 8)
    Object_Hitbox_Rectangle("MEDIUM_PULSING_CIRCLE", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("SMALL_PULSING_CIRCLE", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("LARGE_PULSING_CIRCLE", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("BLUE_GRAVITY_PORTAL", 14, 40, 1, -12, 8, 8)
    Object_Hitbox_Rectangle("YELLOW_GRAVITY_PORTAL", 14, 40, 1, -12, 8, 8)
    Object_Hitbox_Rectangle("BLUE_ORB", 20, 20, -2, -2, 8, 8)
    Object_Hitbox_Rectangle("BLUE_PAD", 12, 3, 2, 13, 8, 8)
    Object_Hitbox_Rectangle("PINK_ORB", 20, 20, -2, -2, 8, 8)
    Object_Hitbox_Rectangle("PINK_PAD", 12, 2, 2, 14, 8, 8)
    Object_Hitbox_Rectangle("PULSING_CIRCLE", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("PULSING_CIRCUNFERENCE", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("PULSING_DIAMOND", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("PULSING_STAR", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("BIG_BG_CLOUDS", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("SMALL_BG_CLOUDS", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("BALL_PORTAL", 20, 46, -2, -15, 8, 8)
    Object_Hitbox_Rectangle("PULSING_SQUARE", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("MINI_PORTAL", 16, 48, 0, -16, 8, 8)
    Object_Hitbox_Rectangle("BIG_PORTAL",  16, 48, 0, -16, 8, 8)

    Object_Hitbox_Rectangle("SPIKE_V", 2, 6, 7, 5, 8, 8)
    Object_Hitbox_Rectangle("SPIKE_H", 6, 2, 5, 7, 8, 8)
    Object_Hitbox_Rectangle("HALF_SPIKE_V", 4, 3, 6, 11, 8, 8)
    Object_Hitbox_Rectangle("HALF_SPIKE_H", 3, 4, 2, 6, 8, 8)
    Object_Hitbox_Rectangle("MEDIUM_SPIKE_V", 2, 4, 7, 9, 8, 8)
    Object_Hitbox_Rectangle("MEDIUM_SPIKE_H", 4, 2, 2, 7, 8, 8)
    Object_Hitbox_Rectangle("GROUND_SPIKE_V", 4, 6, 6, 12, 8, 8)
    Object_Hitbox_Rectangle("GROUND_SPIKE_H", 6, 4, -2, 6, 8, 8)
    Object_Hitbox_Rectangle("GROUND_WAVY_SPIKE_V", 4, 4, 6, 12, 8, 8)
    Object_Hitbox_Rectangle("GROUND_WAVY_SPIKE_H", 4, 4, 0, 6, 8, 8)

    Object_Hitbox_Circle("SAW_BIG", TRUE, 16, 0, 0, 8, 8)
    Object_Hitbox_Circle("SAW_MEDIUM", TRUE, 12, 0, 0, 8, 8)
    Object_Hitbox_Circle("SAW_SMALL", TRUE, 7, 0, 0, 8, 8)

    Object_Hitbox_Rectangle("BASIC_BLOCK", 16, 16, 0, 0, 8, 8)
    Object_Hitbox_Rectangle("BASIC_SLAB", 16, 8, 0, 0, 8, 8)
    
    Object_Hitbox_Rectangle("ORANGE_MIRROR_PORTAL", 26, 48, -3, -16, 8, 8)
    Object_Hitbox_Rectangle("BLUE_MIRROR_PORTAL"  , 26, 48, -3, -16, 8, 8)
    
    Object_Hitbox_Circle("SAW_DECO_BIG", TRUE, 0, 0, 0, 0, 0)
    Object_Hitbox_Circle("SAW_DECO_MEDIUM", TRUE, 0, 0, 0, 0, 0)
    Object_Hitbox_Circle("SAW_DECO_SMALL", TRUE, 0, 0, 0, 0, 0)
    Object_Hitbox_Circle("SAW_DECO_TINY", TRUE, 0, 0, 0, 0, 0)

    Object_Hitbox_Rectangle("PULSING_NOTE", 0, 0, 0, 0, 0, 0)

    Object_Hitbox_Rectangle("SPEED_PORTAL_HALF", 18, 24, -1, -4,  8, 8)
    Object_Hitbox_Rectangle("SPEED_PORTAL_1x", 16, 30, 0, -7, 8, 8)
    Object_Hitbox_Rectangle("SPEED_PORTAL_2x",  28, 30, -6, -7, 8, 8)
    Object_Hitbox_Rectangle("SPEED_PORTAL_3x",  34, 34, -9, -9, 8, 8)
    Object_Hitbox_Rectangle("SPEED_PORTAL_4x",  36, 30, -10, -7, 8, 8)

    Object_Hitbox_Rectangle("UFO_PORTAL", 20, 46, -2, -15, 8, 8)

    Object_Hitbox_Rectangle("BIG_BG_SQUARES", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("MEDIUM_BG_SQUARES", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("SMALL_BG_SQUARES", 0, 0, 0, 0, 0, 0)

    Object_Hitbox_Rectangle("PULSING_ARROW", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("PULSING_EXCLAMATION", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("PULSING_INTERROGATION", 0, 0, 0, 0, 0, 0)
    
    Object_Hitbox_Rectangle("GROUND_BUSH_SPIKE_1_V", 8, 10, 4, 9, 8, 8)
    Object_Hitbox_Rectangle("GROUND_BUSH_SPIKE_2_V", 8, 10, 4, 9, 8, 8)
    Object_Hitbox_Rectangle("GROUND_BUSH_SPIKE_3_V", 8, 10, 4, 9, 8, 8)
    Object_Hitbox_Rectangle("GROUND_BUSH_SPIKE_4_V", 8, 10, 4, 9, 8, 8)

    Object_Hitbox_Rectangle("GROUND_BUSH_SPIKE_1_H", 10, 8, -3, 4, 8, 8)
    Object_Hitbox_Rectangle("GROUND_BUSH_SPIKE_2_H", 10, 8, -3, 4, 8, 8)
    Object_Hitbox_Rectangle("GROUND_BUSH_SPIKE_3_H", 10, 8, -3, 4, 8, 8)
    Object_Hitbox_Rectangle("GROUND_BUSH_SPIKE_4_H", 10, 8, -3, 4, 8, 8)

    Object_Hitbox_Rectangle("ORANGE_DUAL_PORTAL", 22, 48, -3, -16, 8, 8)
    Object_Hitbox_Rectangle("BLUE_DUAL_PORTAL", 22, 48, -3, -16, 8, 8)

    Object_Hitbox_Circle("BIG_CIRCUNFERENCE_SAW_DECO", TRUE, 0, 0, 0, 0, 0)
    Object_Hitbox_Circle("MED_CIRCUNFERENCE_SAW_DECO", TRUE, 0, 0, 0, 0, 0)
    Object_Hitbox_Circle("SMA_CIRCUNFERENCE_SAW_DECO", TRUE, 0, 0, 0, 0, 0)

    Object_Hitbox_Rectangle("SMALL_BG_CHAINS", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("SMALL_WIDE_BG_CHAINS", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("BIG_WIDE_BG_CHAINS", 0, 0, 0, 0, 0, 0)

    Object_Hitbox_Rectangle("BIG_CLOUD", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("MEDIUM_CLOUD", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("SMALL_CLOUD", 0, 0, 0, 0, 0, 0)

    Object_Hitbox_Rectangle("BUSH_DECO_1", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("BUSH_DECO_2", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("BUSH_DECO_3", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("BUSH_DECO_4", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("BUSH_DECO_5", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("BUSH_DECO_6", 0, 0, 0, 0, 0, 0)

    Object_Hitbox_Rectangle("COIN", 22, 22, -3, -3, 8, 8)
    
    // 1.6

    Object_Hitbox_Rectangle("PULSING_HEARTH", 0, 0, 0, 0, 0, 0)

    Object_Hitbox_Rectangle("BIG_DECO_TRIANGLE", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("MEDIUM_DECO_TRIANGLE", 0, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("SMALL_DECO_TRIANGLE", 0, 0, 0, 0, 0, 0)

    Object_Hitbox_Circle("BIG_CIRCLE_SAW_DECO", TRUE, 0, 0, 0, 0, 0)
    Object_Hitbox_Circle("MEDIUM_CIRCLE_SAW_DECO", TRUE, 0, 0, 0, 0, 0)
    Object_Hitbox_Circle("SMALL_CIRCLE_SAW_DECO", TRUE, 0, 0, 0, 0, 0)
    
    Object_Hitbox_Circle("BIG_OUTLINE_SAW", TRUE, 16, 0, 0, 8, 8)
    Object_Hitbox_Circle("MEDIUM_OUTLINE_SAW", TRUE, 12, 0, 0, 8, 8)
    Object_Hitbox_Circle("SMALL_OUTLINE_SAW", TRUE, 7, 0, 0, 8, 8)

    Object_Hitbox_Circle("BIG_SPIKE_SAW_DECO", TRUE, 0, 0, 0, 0, 0)
    Object_Hitbox_Circle("MEDIUM_SPIKE_SAW_DECO", TRUE, 0, 0, 0, 0, 0)
    Object_Hitbox_Circle("SMALL_SPIKE_SAW_DECO", TRUE, 0, 0, 0, 0, 0)

    Object_Hitbox_Rectangle("DIAMOND_BG_CHAINS", 0, 0, 0, 0, 0, 0)

    Object_Hitbox_Circle("ALT_BIG_OUTLINE_SAW", TRUE, 8, 0, 0, 8, 8)
    Object_Hitbox_Circle("ALT_MEDIUM_OUTLINE_SAW", TRUE, 10, 0, 0, 8, 8)
    Object_Hitbox_Circle("ALT_SMALL_OUTLINE_SAW", TRUE, 2, 0, 0, 8, 8)
    
    Object_Hitbox_Rectangle("PULSING_X", 0, 0, 0, 0, 0, 0)

    Object_Hitbox_Rectangle("1.6_SPIKE_V", 2, 6, 7, 5, 8, 8)
    Object_Hitbox_Rectangle("1.6_SPIKE_H", 6, 2, 5, 7, 8, 8)
    Object_Hitbox_Rectangle("1.6_HALF_SPIKE_V", 4, 3, 6, 11, 8, 8)
    Object_Hitbox_Rectangle("1.6_HALF_SPIKE_H", 3, 4, 2, 6, 8, 8)
    Object_Hitbox_Rectangle("1.6_MEDIUM_SPIKE_V", 2, 4, 7, 9, 8, 8)
    Object_Hitbox_Rectangle("1.6_MEDIUM_SPIKE_H", 4, 2, 2, 7, 8, 8)

    Object_Hitbox_Rectangle("WAVE_PORTAL", 20, 46, -2, -15, 8, 8)

    Object_Hitbox_Circle("BIG_ROTATING_FLOWER", TRUE, 0, 0, 0, 0, 0)
    Object_Hitbox_Circle("MEDIUM_ROTATING_FLOWER", TRUE, 0, 0, 0, 0, 0)
    Object_Hitbox_Circle("SMALL_ROTATING_FLOWER", TRUE, 0, 0, 0, 0, 0)
    Object_Hitbox_Rectangle("BIG_PULSING_CIRCUNFERENCE", 0, 0, 0, 0, 0, 0)

    Object_Hitbox_Circle("COLORED_SAW_BIG", TRUE, 13, 0, 0, 8, 8)
    Object_Hitbox_Circle("COLORED_SAW_MEDIUM", TRUE, 10, 0, 0, 8, 8)
    Object_Hitbox_Circle("COLORED_SAW_SMALL", TRUE, 6, 0, 0, 8, 8)
};

#undef Object_Hitbox