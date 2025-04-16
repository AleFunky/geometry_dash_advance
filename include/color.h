#include <tonc.h>

#pragma once

#define NUM_COL_ID_CHANNELS 4

#define BG_COLOR  0x01
#define GROUND_COLOR  0x01

#define LINE_COLOR 0x08
#define OBJ_COLOR 0x0B
#define COL_ID_COLOR 0x07
#define BRIGHTER_COLOR 0x0C
#define DARK_COLOR 0x0E
#define BLACK_COLOR 0x0F


#define PORTAL_WHITE_COLOR 0x112
#define PORTAL_GLOW_COLOR 0x117

#define P1_COLOR 0x6
#define P2_COLOR 0x9
#define PLAYER_GLOW_COLOR 0xf

#define BG_OBJ_BLENDING_1 0x08
#define BG_OBJ_BLENDING_2 0x09
#define BG_OBJ_BLENDING_3 0x0a

#define BG_COL_BLENDING 0x02

#define BG_PAL  0x00
#define GROUND_PAL  0x10
#define LIGHTER_BG_PAL 0x20
#define COL_CHN_PAL 0x30
#define COL_CHN_PAL_LAST (COL_CHN_PAL + 0x10 * NUM_COL_ID_CHANNELS)
#define PLAYER_BG_PAL COL_CHN_PAL_LAST

#define P1_SPR_PAL 0x180
#define P2_SPR_PAL 0x190

#define PRACTICE_MENU_PAL 0xe0

#define PLAYER_SPR_PAL 0x100


enum COLOR_CHANNELS {
    COL_1,
    COL_2,
    COL_3,
    COL_4,
    BG_CHANNEL,
    GROUND_CHANNEL,
    OBJ_CHANNEL,
    LINE_CHANNEL,
};

struct RGB555 {
    u8 red;
    u8 green;
    u8 blue;
};

struct HSV {
    FIXED_16 hue;
    FIXED_16 saturation;
    FIXED_16 value;
};

extern const COLOR face_colors[][2];
extern const COLOR menu_bg_colors[9];
extern const u16 pal_bg_to_spr[8];
extern const u16 pal_bg_to_spr_index[8];

ARM_CODE struct HSV rgb_to_hsv(struct RGB555 rgb);
ARM_CODE struct RGB555 hsv_to_rgb(struct HSV hsv);
ARM_CODE COLOR calculate_lbg(COLOR bg, COLOR p1);

void update_lbg_palette(COLOR *dst);
void set_bg_color(COLOR *dst, COLOR color);
void adjust_brighter_color(COLOR *dst, u32 pal);
void menu_set_bg_color(COLOR *dst, COLOR color);
void set_obj_color(COLOR *dst, COLOR color);
void set_ground_color(COLOR *dst, COLOR color);
void set_line_color(COLOR *dst, COLOR color);
void set_color_channel_color(COLOR *dst, COLOR color, u32 channel);
void set_face_palettes(COLOR *dst);
u16 lerp_color(COLOR color1, COLOR color2, FIXED time);
COLOR blend_colors(COLOR col1, COLOR col2);
void set_player_colors(COLOR *dst, COLOR p1, COLOR p2, COLOR glow);
void set_player_colors_spr(COLOR *dst, COLOR p1, COLOR p2, COLOR glow);

void run_col_trigger_changes();