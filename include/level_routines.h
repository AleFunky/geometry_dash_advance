#include <tonc.h>
#include "memory.h"

#pragma once

#define SCREEN_TRANSITION_FRAMES 31 // 15 + 1 middle + 15
#define SCREEN_TRANSITION_SWITCH_FRAME (SCREEN_TRANSITION_FRAMES >> 1)
#define SCREEN_TRANSITION_HALF SCREEN_TRANSITION_SWITCH_FRAME

#define BOTTOM_SCROLL_LIMIT ((((GROUND_HEIGHT - 1) << (4 + SUBPIXEL_BITS)) + (0x2 << SUBPIXEL_BITS)) - (0x78 << (SUBPIXEL_BITS)))

#define FIRST_PRACTICE_GUI_TILE_ID 583
#define PRACTICE_GUI_X 11
#define PRACTICE_GUI_Y 16
#define PRACTICE_GUI_W 7
#define PRACTICE_GUI_H 4

#define PLAYER_CHR_SIZE (4 * (sizeof(TILE) / sizeof(u32)))
#define PLAYER_CHR_SIZE_BYTES (4 * sizeof(TILE))

#define TOP_SCROLL_Y 0x24
#define BOTTOM_SCROLL_Y SCREEN_HEIGHT-0x24

extern s32 seam_x;
extern s32 seam_y;

extern u8 decompressed_column;

extern const u32 endless_stars[][2];

u32 get_endless_star_value();

void decompress_first_screen();
void load_level(u32 level_ID);
void screen_scroll_load();
void reset_level();

void fade_out();
void fade_in();
void fade_out_level();
void fade_in_level();
void fade_in_menu();

ARM_CODE void scroll_H(u32 layer, s32 mt_count);
ARM_CODE void scroll_V(u32 layer);

ARM_CODE void load_camera_screen();

void scroll_screen_vertically();
void scroll_screen_horizontally();
void set_target_y_scroll(u32 object_y);

void mirror_screen();
void unmirror_screen();
void swap_screen_dir();

void draw_percentage(u32 x, u32 y, u32 percentage, const u16* number_sprite, u16 priority);
void draw_endless_distance(u32 x, u32 y, u32 distance, const u16* number_sprite, u16 priority);
void draw_attempt_counter();
void set_attempt_x();
u32 get_level_progress();
void set_new_best(u32 new_best, u32 mode);

void mirror_transition();

void activate_dual();
void deactivate_dual();
void check_for_same_dual_gravity();
void set_ceil_invulnerability();
void draw_both_players();
void player_code();

void break_brick(u32 x, u32 y, u32 layer);
ARM_CODE void handle_fading_blocks();
u32 get_sprite_fade_index(struct Object curr_object);

void store_practice_vars();
void delete_last_checkpoint();
void put_ground();
void draw_checkpoints();
void clear_checkpoints();
void handle_gamemode_uploads(); 

void handle_wave_trail();
void set_trail_point();
void handle_trail();
void wave_set_new_point();
void update_scroll();
void shift_trail();

void set_background(u16 background_ID);
void set_ground(u16 ground_ID);
void put_practice_gui();

void spawn_use_effect(s32 x, s32 y, s32 type, s32 palette);
void get_pad_x_y_center(s32 x, s32 y, s32 rotation, s32 *out_x, s32 *out_y);
ARM_CODE void run_use_effects();

u32 handle_key_holding(u16 keys);

enum BG_types {
    BG_SQUARES,
    BG_CIRCLES,
    BG_LINES,
    BG_CHECKERBOARD,
    BG_HEXAGON,

    BG_COUNT
};