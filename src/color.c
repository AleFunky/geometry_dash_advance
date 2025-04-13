#include "memory.h"
#include "color.h"
#include "sprite_loading.h"
#include "chr.h"
#include "level_select.h"
#include "mgba_log.h"

#define NUM_FACES 6
const COLOR face_colors[][2] = {
    {CLR_CYAN, CLR_BLUE}, // Easy
    {0x03E0, 0x0202}, // Normal
    {0x03FF, 0x01FF}, // Hard
    {0x01DF, 0x001F}, // Harder
    {0x6DFF, 0x785D}, // Insane
    {0x28FF, 0x009C}, // Demon
};

const COLOR menu_bg_colors[] = {
    0x6C00, // Stereo Madness
    0x741D, // Back on Track
    0x3019, // Polargeist
    0x001B, // Dry Out
    0x0177, // Base After Base
    0x02D6, // Can't let go
    0x02C0, // Jumper
    0x5AC0, // Time Machine
    0x5D60, // Cycles
};

const u16 pal_bg_to_spr[] = {
    0x1f0,  // BG
    0xffff, // GROUND
    0x1e0,  // LBG
    0x1d0,  // COL 1
    0x1c0,  // COL 2
    0x1b0,  // COL 3
    0x1a0,  // COL 4
    0x100,  // PLAYER
};

const u16 pal_bg_to_spr_index[] = {
    0xf, // BG
    0xf, // GROUND
    0xe, // LBG
    0xd, // COL 1
    0xc, // COL 2
    0xb, // COL 3
    0xa, // COL 4
    0x0, // PLAYER
};

INLINE void copy_bg_pal_to_spr(COLOR *dst, u32 pal) {
    // Copy palette to the sprite equivalent
    u16 equivalent_palette = pal_bg_to_spr[pal >> 4];
    if (equivalent_palette != 0xffff) memcpy16(&dst[equivalent_palette], &dst[pal], 0x0f);
}

INLINE void blend_bg_and_obj(COLOR *dst, u32 pal) {
    // Blend both BG and OBJ colors and put it on palette slot 0x08, 0x09 and 0x0a
    clr_blend(&dst[pal + BG_COLOR], &dst[OBJ_COLOR + pal], &dst[BG_OBJ_BLENDING_1 + pal], 1, 0x03);
    clr_blend(&dst[pal + BG_COLOR], &dst[OBJ_COLOR + pal], &dst[BG_OBJ_BLENDING_2 + pal], 1, 0x0a);
    clr_blend(&dst[pal + BG_COLOR], &dst[OBJ_COLOR + pal], &dst[BG_OBJ_BLENDING_3 + pal], 1, 0x10);
}

INLINE void blend_bg_and_col(COLOR *dst, u32 pal) {
    u32 index = (pal - COL_CHN_PAL) >> 4;
    if(col_channels_flags[index] & COL_CHANNEL_BLENDING_FLAG) {
        COLOR blended_color = blend_colors(palette_buffer[pal + 0x01], col_channels_color[index]);
        dst[COL_ID_COLOR + pal] = blended_color;
    }

    u32 blend_value = 0x1f / (COL_ID_COLOR - BG_COL_BLENDING + 1);
    for (u32 col = 0; col < 5; col++) {
        clr_blend(&dst[pal + 0x01], &dst[COL_ID_COLOR + pal], &dst[BG_COL_BLENDING + col + pal], 1, blend_value);
        blend_value += 0x1f / (COL_ID_COLOR - BG_COL_BLENDING + 1);
    }
}

void blend_p1_with_bg(COLOR *dst) {
    // Blend P1
    clr_blend(&dst[PLAYER_BG_PAL + P1_COLOR], &dst[BG_PAL + BG_COLOR], &dst[PLAYER_BG_PAL + P1_COLOR - 1], 1, 0x06);
    clr_blend(&dst[PLAYER_BG_PAL + P1_COLOR], &dst[BG_PAL + BG_COLOR], &dst[PLAYER_BG_PAL + P1_COLOR - 2], 1, 0x0c);
    clr_blend(&dst[PLAYER_BG_PAL + P1_COLOR], &dst[BG_PAL + BG_COLOR], &dst[PLAYER_BG_PAL + P1_COLOR - 3], 1, 0x13);
    clr_blend(&dst[PLAYER_BG_PAL + P1_COLOR], &dst[BG_PAL + BG_COLOR], &dst[PLAYER_BG_PAL + P1_COLOR - 4], 1, 0x19);
}

void blend_p2_with_bg(COLOR *dst) {
    // Blend P1
    clr_blend(&dst[PLAYER_BG_PAL + P2_COLOR], &dst[BG_PAL + BG_COLOR], &dst[PLAYER_BG_PAL + P2_COLOR + 1], 1, 0x06);
    clr_blend(&dst[PLAYER_BG_PAL + P2_COLOR], &dst[BG_PAL + BG_COLOR], &dst[PLAYER_BG_PAL + P2_COLOR + 2], 1, 0x0c);
    clr_blend(&dst[PLAYER_BG_PAL + P2_COLOR], &dst[BG_PAL + BG_COLOR], &dst[PLAYER_BG_PAL + P2_COLOR + 3], 1, 0x13);
    clr_blend(&dst[PLAYER_BG_PAL + P2_COLOR], &dst[BG_PAL + BG_COLOR], &dst[PLAYER_BG_PAL + P2_COLOR + 4], 1, 0x19);
}

void blend_p1_with_p2(COLOR *dst) {
    // Blend P1
    clr_blend(&dst[P1_COLOR], &dst[P2_COLOR], &dst[P1_COLOR + 1], 1, 0x0c);
    clr_blend(&dst[P1_COLOR], &dst[P2_COLOR], &dst[P2_COLOR - 1], 1, 0x14);
}

void menu_set_bg_color(COLOR *dst, COLOR color) {
    dst[0x00] = color;
    dst[BG_PAL + BG_COLOR] = color;
    dst[0x121] = color;
    
    COLOR black = 0;
    // Fade to black
    u32 blend_value = 0x1f / (7 - 2 + 1);
    for (u32 index = 2; index < 7; index++) {
        clr_blend(&dst[BG_PAL + BG_COLOR], &black, &dst[index], 1, blend_value);
        blend_value += 0x1f / (7 - 2 + 1);
    }

    dst[0x12] = dst[0x122] = dst[0x24] = dst[0x04];

    if (game_state == STATE_LEVEL_SELECT) {
        for (s32 i = 3; i < NUM_FACES + 3; i++) {
            dst[(i << 4) + 0x0e] = dst[0x04];
        }
    }
}

// Set BG color on the 4 color palettes
void set_bg_color(COLOR *dst, COLOR color) {
    // Set BG color
    dst[0x00] = color;
    dst[BG_PAL + BG_COLOR] = color;
    dst[BG_PAL + DARK_COLOR] = dst[BG_COLOR + 4];

    dst[LIGHTER_BG_PAL + BG_COLOR] = color;
    
    // Adjust brighter color
    adjust_brighter_color(dst, BG_PAL);

    COLOR black = 0;
    
    // Fade to black
    u32 blend_value = 0x1f / (7 - 2 + 1);
    for (u32 index = 2; index < 7; index++) {
        clr_blend(&dst[BG_PAL + BG_COLOR], &black, &dst[index], 1, blend_value);
        blend_value += 0x1f / (7 - 2 + 1);
    }

    blend_bg_and_obj(dst, BG_PAL);
    
    // Copy pal into sprites
    copy_bg_pal_to_spr(dst, BG_PAL);

    // Update lbg
    update_lbg_palette(dst);

    for (u32 pal = COL_CHN_PAL; pal < COL_CHN_PAL_LAST; pal += 0x10) {  
        // Blend col
        dst[BG_COLOR + pal] = color;
        dst[DARK_COLOR + pal] = dst[BG_COLOR + 4];
        blend_bg_and_col(dst, pal);
        blend_bg_and_obj(dst, pal);

        // Adjust brighter color
        adjust_brighter_color(dst, pal);

        // Copy pal into sprites
        copy_bg_pal_to_spr(dst, pal);
    }
    
    // Portal colors also have a glow on them
    clr_blend(&dst[BG_COLOR], &dst[PORTAL_WHITE_COLOR], &dst[PORTAL_GLOW_COLOR], 1, 0x0f);

    u32 loops = (PORTAL_GLOW_COLOR + 0x10) + ((NUM_PORTAL_PALETTES - 1) << 4);
    for (u32 pal = (PORTAL_GLOW_COLOR + 0x10) ; pal < loops; pal += 0x10) {
        dst[pal] = dst[PORTAL_GLOW_COLOR]; 
    }
    
    memcpy16(&dst[PRACTICE_MENU_PAL], &dst[BG_COLOR], 7);

    // Blend BG player colors
    blend_p1_with_bg(dst);
    blend_p2_with_bg(dst);
    blend_p1_with_p2(&dst[PLAYER_BG_PAL]);
}

void update_lbg_palette(COLOR *dst) {
    // Get LBG color
    COLOR lbg = calculate_lbg(dst[BG_PAL + BG_COLOR], dst[PLAYER_SPR_PAL + P1_COLOR]);
    dst[LIGHTER_BG_PAL + COL_ID_COLOR] = blend_colors(lbg, dst[BG_PAL + BG_COLOR]);
    dst[LIGHTER_BG_PAL + DARK_COLOR] = dst[BG_COLOR + 4];

    // Blend both bg and lbg
    u32 blend_value = 0x1f / (COL_ID_COLOR - BG_COL_BLENDING + 1);
    for (u32 col = 0; col < 5; col++) {
        clr_blend(&dst[BG_PAL + BG_COLOR], &dst[LIGHTER_BG_PAL + COL_ID_COLOR], &dst[LIGHTER_BG_PAL + BG_COL_BLENDING + col], 1, blend_value);
        blend_value += 0x1f / (COL_ID_COLOR - BG_COL_BLENDING + 1);
    }

    // Adjust brighter color
    adjust_brighter_color(dst, LIGHTER_BG_PAL);
    
    // Blend BG and OBJ
    blend_bg_and_obj(dst, LIGHTER_BG_PAL);

    // Copy pal into sprites
    copy_bg_pal_to_spr(dst, LIGHTER_BG_PAL);
}

void adjust_brighter_color(COLOR *dst, u32 pal) {
    clr_blend(&dst[BG_PAL + BG_COLOR], &dst[PORTAL_WHITE_COLOR], &dst[pal + BRIGHTER_COLOR], 1, 0x0a);
    clr_blend(&dst[BG_PAL + BG_COLOR], &dst[PORTAL_WHITE_COLOR], &dst[pal + BRIGHTER_COLOR + 1], 1, 0x10);
}

void set_player_colors(COLOR *dst, COLOR p1, COLOR p2, COLOR glow) {
    COLOR black = 0x0000;

    // Modify sprite colors
    dst[PLAYER_SPR_PAL + P1_COLOR] = p1;
    dst[PLAYER_SPR_PAL + P2_COLOR] = p2;
    dst[PLAYER_SPR_PAL + PLAYER_GLOW_COLOR] = glow;

    // Modify bg colors
    dst[PLAYER_BG_PAL + P1_COLOR] = p1;
    dst[PLAYER_BG_PAL + P2_COLOR] = p2;
    dst[PLAYER_BG_PAL + PLAYER_GLOW_COLOR] = glow;

    // Blend P1
    clr_blend(&dst[PLAYER_SPR_PAL + P1_COLOR], &black, &dst[PLAYER_SPR_PAL + P1_COLOR - 1], 1, 0x06);
    clr_blend(&dst[PLAYER_SPR_PAL + P1_COLOR], &black, &dst[PLAYER_SPR_PAL + P1_COLOR - 2], 1, 0x0c);
    clr_blend(&dst[PLAYER_SPR_PAL + P1_COLOR], &black, &dst[PLAYER_SPR_PAL + P1_COLOR - 3], 1, 0x13);
    clr_blend(&dst[PLAYER_SPR_PAL + P1_COLOR], &black, &dst[PLAYER_SPR_PAL + P1_COLOR - 4], 1, 0x19);

    // Blend P2
    clr_blend(&dst[PLAYER_SPR_PAL + P2_COLOR], &black, &dst[PLAYER_SPR_PAL + P2_COLOR + 1], 1, 0x06);
    clr_blend(&dst[PLAYER_SPR_PAL + P2_COLOR], &black, &dst[PLAYER_SPR_PAL + P2_COLOR + 2], 1, 0x0c);
    clr_blend(&dst[PLAYER_SPR_PAL + P2_COLOR], &black, &dst[PLAYER_SPR_PAL + P2_COLOR + 3], 1, 0x13);
    clr_blend(&dst[PLAYER_SPR_PAL + P2_COLOR], &black, &dst[PLAYER_SPR_PAL + P2_COLOR + 4], 1, 0x19);

    // Blend P1 with P2
    blend_p1_with_p2(&dst[PLAYER_SPR_PAL]);

    // Blend P1 and P2 on BG pal
    blend_p1_with_bg(dst);
    blend_p2_with_bg(dst);
    blend_p1_with_p2(&dst[PLAYER_BG_PAL]);
}

void set_player_colors_spr(COLOR *dst, COLOR p1, COLOR p2, COLOR glow) {
    COLOR black = 0x0000;

    // Modify sprite colors
    dst[PLAYER_SPR_PAL + P1_COLOR] = p1;
    dst[PLAYER_SPR_PAL + P2_COLOR] = p2;
    dst[PLAYER_SPR_PAL + PLAYER_GLOW_COLOR] = glow;

    // Blend P1
    clr_blend(&dst[PLAYER_SPR_PAL + P1_COLOR], &black, &dst[PLAYER_SPR_PAL + P1_COLOR - 1], 1, 0x06);
    clr_blend(&dst[PLAYER_SPR_PAL + P1_COLOR], &black, &dst[PLAYER_SPR_PAL + P1_COLOR - 2], 1, 0x0c);
    clr_blend(&dst[PLAYER_SPR_PAL + P1_COLOR], &black, &dst[PLAYER_SPR_PAL + P1_COLOR - 3], 1, 0x13);
    clr_blend(&dst[PLAYER_SPR_PAL + P1_COLOR], &black, &dst[PLAYER_SPR_PAL + P1_COLOR - 4], 1, 0x19);

    // Blend P2
    clr_blend(&dst[PLAYER_SPR_PAL + P2_COLOR], &black, &dst[PLAYER_SPR_PAL + P2_COLOR + 1], 1, 0x06);
    clr_blend(&dst[PLAYER_SPR_PAL + P2_COLOR], &black, &dst[PLAYER_SPR_PAL + P2_COLOR + 2], 1, 0x0c);
    clr_blend(&dst[PLAYER_SPR_PAL + P2_COLOR], &black, &dst[PLAYER_SPR_PAL + P2_COLOR + 3], 1, 0x13);
    clr_blend(&dst[PLAYER_SPR_PAL + P2_COLOR], &black, &dst[PLAYER_SPR_PAL + P2_COLOR + 4], 1, 0x19);

    // Blend P1 with P2
    blend_p1_with_p2(&dst[PLAYER_SPR_PAL]);
}

ARM_CODE COLOR calculate_lbg(COLOR bg, COLOR p1) {
    // Get RGB structs
    struct RGB555 bg_rgb;
    struct RGB555 p1_rgb;

    // Set color components to both structs
    BGR_TO_STRUCT(bg, bg_rgb)
    BGR_TO_STRUCT(p1, p1_rgb)
    
    // Convert into HSV
    struct HSV hsv = rgb_to_hsv(bg_rgb);

    // Subtract 0.20 to saturation
    hsv.saturation -= FLOAT_TO_FIXED(0.20f);
    hsv.saturation = CLAMP(hsv.saturation, 0, FIXED_MULTIPLIER + 1);
    
    // Add 0.20 to saturation
    hsv.value += FLOAT_TO_FIXED(0.20f);
    hsv.value = CLAMP(hsv.value, 0, FIXED_MULTIPLIER + 1);

    // Convert back to RGB
    struct RGB555 lbg_rgb = hsv_to_rgb(hsv);

    // Get multiplier
    FIXED_16 multiplier = FIXED_DIV(bg_rgb.red + bg_rgb.green + bg_rgb.blue, 18);
    
    // If below 1.0, don't modify LBG
    if (multiplier < FIXED_MULTIPLIER) {
        lbg_rgb.red = FROM_FIXED(FIXED_MUL(TO_FIXED(lbg_rgb.red), multiplier) + FIXED_MUL(TO_FIXED(p1_rgb.red), FIXED_MULTIPLIER - multiplier));
        lbg_rgb.green = FROM_FIXED(FIXED_MUL(TO_FIXED(lbg_rgb.green), multiplier) + FIXED_MUL(TO_FIXED(p1_rgb.green), FIXED_MULTIPLIER - multiplier));
        lbg_rgb.blue = FROM_FIXED(FIXED_MUL(TO_FIXED(lbg_rgb.blue), multiplier) + FIXED_MUL(TO_FIXED(p1_rgb.blue), FIXED_MULTIPLIER - multiplier));
    }

    // Return BGR555 color
    return RGB15_SAFE(lbg_rgb.red, lbg_rgb.green, lbg_rgb.blue);
}

void set_obj_color(COLOR *dst, COLOR color) {
    // BG
    dst[OBJ_COLOR] = color;
    blend_bg_and_obj(dst, BG_PAL);
    copy_bg_pal_to_spr(dst, BG_PAL);

    // LBG
    dst[LIGHTER_BG_PAL + OBJ_COLOR] = color;
    blend_bg_and_obj(dst, LIGHTER_BG_PAL);
    copy_bg_pal_to_spr(dst, LIGHTER_BG_PAL);

    for (u32 pal = COL_CHN_PAL; pal < COL_CHN_PAL_LAST; pal += 0x10) {
        // Set BG color
        dst[OBJ_COLOR + pal] = color;
        
        blend_bg_and_obj(dst, pal);
        
        // Copy pal into sprites
        copy_bg_pal_to_spr(dst, pal);
    }
}

// Set ground color on the ground palette
void set_ground_color(COLOR *dst, COLOR color) {
    // Set ground color
    dst[GROUND_PAL + GROUND_COLOR] = color;

    COLOR black = 0;

    // Fade to black
    u32 blend_value = 0x1f / (7 - 2 + 1);
    for (u32 index = 2; index < 7; index++) {
        clr_blend(&dst[GROUND_PAL + GROUND_COLOR], &black, &dst[index + GROUND_PAL], 1, blend_value);
        blend_value += 0x1f / (7 - 2 + 1);
    }
}

// Set line color
void set_line_color(COLOR *dst, COLOR color) {
    dst[GROUND_PAL + LINE_COLOR] = color;
}


// Set color channel of an specific palette
void set_color_channel_color(COLOR *dst, COLOR color, u32 channel) {
    // Set col
    u32 pal = (channel << 4) + COL_CHN_PAL;
    dst[COL_ID_COLOR + pal] = color;

    blend_bg_and_col(dst, pal);
    
    copy_bg_pal_to_spr(dst, pal);
}


// Lerp between two BGR555 colors. Time is a value between 0 and 65536 (both inclusive) and it is a fixed point value so 0 = 0.0, 32768 = 0.5 and 65536 = 1.0
u16 lerp_color(COLOR color1, COLOR color2, FIXED time) {
    // Cap value to 1.0
    if (time > TO_FIXED(1)) time = TO_FIXED(1);

    // Extract components
    u32 r1 = color1 & 0x1F;
    u32 g1 = (color1 >> 5) & 0x1F;
    u32 b1 = (color1 >> 10) & 0x1F;
    
    u32 r2 = color2 & 0x1F;
    u32 g2 = (color2 >> 5) & 0x1F;
    u32 b2 = (color2 >> 10) & 0x1F;

    // Interpolate components
    u32 red_lerp   = FROM_FIXED(r1 * (TO_FIXED(1) - time) + r2 * time);
    u32 green_lerp = FROM_FIXED(g1 * (TO_FIXED(1) - time) + g2 * time);
    u32 blue_lerp  = FROM_FIXED(b1 * (TO_FIXED(1) - time) + b2 * time);

    // Combine into a single BGR555 value
    return (blue_lerp << 10) | (green_lerp << 5) | red_lerp;
}

// This function runs col triggers. It is important that it is done in VBLANK because it acceses palette memory
void run_col_trigger_changes() {
    for (s32 channel = 0; channel < CHANNEL_COUNT; channel++) {
        if (col_trigger_buffer[channel][COL_TRIG_BUFF_ACTIVE]) {
            COLOR old_color      = col_trigger_buffer[channel][COL_TRIG_BUFF_OLD_COLOR];
            COLOR new_color      = col_trigger_buffer[channel][COL_TRIG_BUFF_NEW_COLOR];
            u16 frames           = col_trigger_buffer[channel][COL_TRIG_BUFF_TOTAL_FRAMES];
            u16 curr_frame       = col_trigger_buffer[channel][COL_TRIG_BUFF_CURRENT_FRAMES];

            COLOR lerped_color;

            // Calculate lerped color. If the value is less than 2, then it is an instant color change
            if (frames > 1) {
                u32 lerp_value = TO_FIXED(curr_frame) / (frames - 1); // Division, scary stuff
                lerped_color = lerp_color(old_color, new_color, lerp_value);
            } else {
                lerped_color = new_color;
            } 

            col_channels_color[channel] = lerped_color;

            // Run code depending on which channel is the trigger modifying
            switch (channel) {
                case BG:
                    set_bg_color(palette_buffer, lerped_color);
                    break;
                case GROUND:
                    set_ground_color(palette_buffer, lerped_color);
                    break;
                case OBJ:
                    set_obj_color(palette_buffer, lerped_color);
                    break;
                case LINE:
                    set_line_color(palette_buffer, lerped_color);
                    break;
                case COL1:
                case COL2:
                case COL3:
                case COL4:
                    set_color_channel_color(palette_buffer, lerped_color, channel);
                    break;
            }

            col_trigger_buffer[channel][COL_TRIG_BUFF_CURRENT_FRAMES] = ++curr_frame;

            // If we reached total frames, then deactivate color change
            if (curr_frame >= frames) {
                col_trigger_buffer[channel][COL_TRIG_BUFF_ACTIVE] = FALSE;
            }
        }
    }
}

#define FIRST_FACE_PAL 0x30
#define FIRST_FACE_COLOR 0x2
#define LAST_FACE_COLOR  0xb

void set_face_palettes(COLOR *dst) {
    s32 difficulty = 0;
    for (s32 pal = FIRST_FACE_PAL; pal < (FIRST_FACE_PAL + (NUM_FACES * 0x10)); pal += 0x10) {    
        s32 value = 0;
        dst[pal + 0x01] = CLR_WHITE;

        // Demon face uses green instead of red
        if (pal == 0x80) dst[pal + 0x0d] = CLR_LIME;
        else dst[pal + 0x0d] = CLR_RED;

        for (s32 id = FIRST_FACE_COLOR; id <= LAST_FACE_COLOR; id++) {
            clr_blend(&face_colors[difficulty][0], &face_colors[difficulty][1], &dst[pal + id], 1, value);
            value += 0x1f / (LAST_FACE_COLOR - FIRST_FACE_COLOR + 1);
        }
        difficulty++;
    }
}

#define MAX_3(a,b,c) ((a > b) ? ((a > c) ? a : c) : ((b > c) ? b : c));
#define MIN_3(a,b,c) ((a < b) ? ((a < c) ? a : c) : ((b < c) ? b : c));

ARM_CODE struct HSV rgb_to_hsv(struct RGB555 rgb) {
    struct HSV hsv_return;
    FIXED_16 r = TO_FIXED(rgb.red) / 31;
    FIXED_16 g = TO_FIXED(rgb.green) / 31;
    FIXED_16 b = TO_FIXED(rgb.blue) / 31;

    FIXED_16 max = MAX_3(r, g, b);
    FIXED_16 min = MIN_3(r, g, b);
    FIXED_16 delta = max - min;

    FIXED_16 hue, saturation, value;

    // Calculate hue
    if (delta == 0) {
        hue = 0;
    } else {
        if (max == r) {
            hue = FIXED_DIV(g - b, delta) * 60;
        } else if (max == g) {
            hue = FIXED_DIV(b - r, delta) * 60 + TO_FIXED(120);
        } else { // max == b
            hue = FIXED_DIV(r - g, delta) * 60 + TO_FIXED(240);
        }
    }

    // Normalize hue to 0-360
    if (hue < 0) hue += TO_FIXED(360);

    // Calculate saturation
    if (max == 0) {
        saturation = 0;
    } else {
        saturation = FIXED_MULTIPLIER - FIXED_DIV(min, max);
    }


    // Calculate value (simply max)
    value = max;

    hsv_return.hue = hue;
    hsv_return.saturation = saturation;
    hsv_return.value = value;
    return hsv_return;
}   

#define MAX_MULT_VALUE (FIXED_MULTIPLIER - 1)
ARM_CODE struct RGB555 hsv_to_rgb(struct HSV hsv) {
    struct RGB555 rgb_struct;
    if (hsv.saturation == 0) {
        u8 value_5 = FROM_FIXED(hsv.value * 31);
        rgb_struct.red = value_5;
        rgb_struct.green = value_5;
        rgb_struct.blue = value_5;
        return rgb_struct;
    }

    FIXED_16 r,g,b;
    FIXED hue_mult = hsv.hue / 360;
    
    // Get sector [0-5]
    FIXED_16 sector = FROM_FIXED(hue_mult * 6);

    // Get fraction by subtracting original value to floored value [0-1]
    FIXED_16 fraction = (hue_mult * 6) - TO_FIXED(sector);

    // Get some values
    FIXED_16 p = FIXED_MUL(hsv.value, FIXED_MULTIPLIER - hsv.saturation);
    FIXED_16 q = FIXED_MUL(hsv.value, FIXED_MULTIPLIER - FIXED_MUL(hsv.saturation, fraction));
    FIXED_16 t = FIXED_MUL(hsv.value, FIXED_MULTIPLIER - FIXED_MUL(hsv.saturation, FIXED_MULTIPLIER - fraction));

    // Assign RGB based on sector
    switch (sector) {
        case 0: // Red to Yellow
            r = hsv.value; g = t; b = p;
            break;
        case 1: // Yellow to Green
            r = q; g = hsv.value; b = p;
            break;
        case 2: // Green to Cyan
            r = p; g = hsv.value; b = t;
            break;
        case 3: // Cyan to Blue
            r = p; g = q; b = hsv.value;
            break;
        case 4: // Blue to Magenta
            r = t; g = p; b = hsv.value;
            break;
        case 5: // Magenta to Red
            r = hsv.value; g = p; b = q;
            break;
        default:
            r = 0; g = 0; b = 0; // Shouldn't happen
            break;
    }

    // Convert 0-1 scale to 0-31
    rgb_struct.red = FROM_FIXED(r * 31);
    rgb_struct.green = FROM_FIXED(g * 31);
    rgb_struct.blue = FROM_FIXED(b * 31);

    return rgb_struct;
}

COLOR blend_colors(COLOR col1, COLOR col2) {
    // Get structs
    struct RGB555 col1_struct;
    BGR_TO_STRUCT(col1, col1_struct)
    struct RGB555 col2_struct; 
    BGR_TO_STRUCT(col2, col2_struct)

    // Add color components
    u8 red = col1_struct.red + col2_struct.red;
    u8 green = col1_struct.green + col2_struct.green;
    u8 blue = col1_struct.blue + col2_struct.blue;

    // Cap to max number
    if (red > 31)   red = 31;
    if (green > 31) green = 31;
    if (blue > 31)  blue = 31;

    // Return new color
    return RGB15_SAFE(red, green, blue);
}
