#include <tonc.h>
#include "memory.h"

#pragma once

#define TOTAL_CUTSCENE_FRAMES 60
#define EXIT_CUTSCENE_FRAME 240

// Gamemode IDs
enum GamemodeType {
    GAMEMODE_CUBE,
    GAMEMODE_SHIP,
    GAMEMODE_BALL,
    GAMEMODE_UFO,
    GAMEMODE_WAVE,
    GAMEMODE_COUNT
};

// Portal speed IDs
enum SpeedID {
    SPEED_X05,
    SPEED_X1,
    SPEED_X2,
    SPEED_X3,
    SPEED_X4,
    SPEED_COUNT
};

enum GravityDir {
    GRAVITY_DOWN,
    GRAVITY_UP
};

enum PlayerSize {
    SIZE_BIG,
    SIZE_MINI
};

enum DualStatus {
    DUAL_OFF,
    DUAL_ON
};

enum PlayerID {
    ID_PLAYER_1,
    ID_PLAYER_2,
    PLAYER_COUNT,
};

struct Player {
    // Position variables, in subpixels
    s64 player_x; // gota love giant levels
    s64 player_y;
    s64 old_player_y;
    s32 player_y_diff;

    // Player dimensions, in pixels
    u8 player_width;
    u8 player_height;

    u8 player_internal_hitbox_width;
    u8 player_internal_hitbox_height;

    // Speed variables, in subpixels/frame
    s32 player_x_speed;
    s32 player_y_speed;
    s32 old_player_y_speed;

    // Relative position on screen in pixels
    s16 relative_player_x;
    s16 relative_player_y;
    s16 old_relative_player_y;

    // Change of y speed
    s16 gravity;

    // Direction of the gravity. 0 : down, 1 : up
    u8 gravity_dir;

    // 0 : big, 1 : mini
    u8 player_size;

    // 0 : on air, 1 : on floor
    u8 on_floor_step;
    u8 on_floor;

    // 0 : no snap, 1 : snapping
    u8 snap_cube_rotation;
    u8 inverse_rotation_flag;

    // TRUE if player is on slope
    u8 on_slope;
    u8 slope_counter;
    FIXED slope_speed_multiplier;

    // 0 : not buffering, 1 : buffering
    u8 player_buffering;

    // Current player gamemode
    u8 gamemode;

    // Cube rotation angle
    u16 cube_rotation;
    u16 lerped_cube_rotation;

    // - : left | + : right
    s8 ball_rotation_direction;

    // Initial position of player for the curve. In pixels
    u32 cutscene_initial_player_x;
    u32 cutscene_initial_player_y;

    // Only used for cube. If 1, then ceiling doesn't kill player
    u8 should_check_ceiling;

    // Set at the frame the cube changed size
    u8 changed_size_frames;

    // TRUE if player is falling
    u8 falling;

    // 0 : 45º, 1 : 26.5º, 2 : 26.5 + 90º
    u8 slope_type;

    // Put a trail point in this frame
    // 0 : do not, 1 : do
    u8 trail_on;

    // If player airborne was because of jumping
    u8 airborne_jumped;
};

extern u8 player_death;

extern u8 speed_id;

extern u8 dual;

extern FIXED mirror_scaling;

extern const u32 speed_constants[SPEED_COUNT];

void player_main();
void draw_player();
void set_player_speed();