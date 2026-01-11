#include "memory.h"
#include "color.h"
#include "sprite_loading.h"
#include "chr.h"
#include "level_select.h"
#include "mgba_log.h"
#include "math.h"

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
    dst[BG_OBJ_BLENDING_1 + pal] = blend_clr(dst[pal + BG_COLOR], dst[OBJ_COLOR + pal], 0x03);
    dst[BG_OBJ_BLENDING_2 + pal] = blend_clr(dst[pal + BG_COLOR], dst[OBJ_COLOR + pal], 0x0a);
    dst[BG_OBJ_BLENDING_3 + pal] = blend_clr(dst[pal + BG_COLOR], dst[OBJ_COLOR + pal], 0x10);
}

INLINE void blend_bg_and_col(COLOR *dst, u32 pal) {
    u32 index = (pal - COL_CHN_PAL) >> 4;
    u32 blend_value = 0x1f / (COL_ID_COLOR - BG_COL_BLENDING + 1);
    if(col_channels_flags[index] & COL_CHANNEL_BLENDING_FLAG) {
        for (u32 col = 0; col < 5; col++) {
            COLOR blend_with_black = 0;
            blend_with_black = blend_clr(0, col_channels_color[index], blend_value);
            
            COLOR blended_color = blend_colors(blend_with_black, dst[pal + 0x01]);
            dst[BG_COL_BLENDING + col + pal] = blended_color;

            blend_value += 0x1f / (COL_ID_COLOR - BG_COL_BLENDING + 1);
        }

        dst[COL_ID_COLOR + pal] = blend_colors(col_channels_color[index], dst[pal + 0x01]); // Blend full color
    } else {
        for (u32 col = 0; col < 5; col++) {
            dst[BG_COL_BLENDING + col + pal] = blend_clr(dst[pal + 0x01], dst[COL_ID_COLOR + pal], blend_value);
            blend_value += 0x1f / (COL_ID_COLOR - BG_COL_BLENDING + 1);
        }
    }
}

void blend_p1_with_bg(COLOR *dst) {
    // Blend P1
    dst[PLAYER_BG_PAL + P1_COLOR - 1] = blend_clr(dst[PLAYER_BG_PAL + P1_COLOR], dst[BG_PAL + BG_COLOR], 0x06);
    dst[PLAYER_BG_PAL + P1_COLOR - 2] = blend_clr(dst[PLAYER_BG_PAL + P1_COLOR], dst[BG_PAL + BG_COLOR], 0x0c);
    dst[PLAYER_BG_PAL + P1_COLOR - 3] = blend_clr(dst[PLAYER_BG_PAL + P1_COLOR], dst[BG_PAL + BG_COLOR], 0x13);
    dst[PLAYER_BG_PAL + P1_COLOR - 4] = blend_clr(dst[PLAYER_BG_PAL + P1_COLOR], dst[BG_PAL + BG_COLOR], 0x19);
}

void blend_p2_with_bg(COLOR *dst) {
    // Blend P1
    dst[PLAYER_BG_PAL + P2_COLOR + 1] = blend_clr(dst[PLAYER_BG_PAL + P2_COLOR], dst[BG_PAL + BG_COLOR], 0x06);
    dst[PLAYER_BG_PAL + P2_COLOR + 2] = blend_clr(dst[PLAYER_BG_PAL + P2_COLOR], dst[BG_PAL + BG_COLOR], 0x0c);
    dst[PLAYER_BG_PAL + P2_COLOR + 3] = blend_clr(dst[PLAYER_BG_PAL + P2_COLOR], dst[BG_PAL + BG_COLOR], 0x13);
    dst[PLAYER_BG_PAL + P2_COLOR + 4] = blend_clr(dst[PLAYER_BG_PAL + P2_COLOR], dst[BG_PAL + BG_COLOR], 0x19);
}

void blend_p1_with_p2(COLOR *dst) {
    // Blend P1
    dst[P1_COLOR + 1] = blend_clr(dst[P1_COLOR], dst[P2_COLOR], 0x0c);
    dst[P2_COLOR - 1] = blend_clr(dst[P1_COLOR], dst[P2_COLOR], 0x14);
}

void menu_set_bg_color(COLOR *dst, COLOR color) {
    dst[0x00] = color;
    dst[BG_PAL + BG_COLOR] = color;
    dst[0x121] = color;

    // Fade to black
    u32 blend_value = 0x1f / (7 - 2 + 1);
    for (u32 index = 2; index < 7; index++) {
        dst[index] = blend_clr(dst[BG_PAL + BG_COLOR], 0, blend_value);
        blend_value += 0x1f / (7 - 2 + 1);
    }

    dst[0x12] = dst[0x122] = dst[0x24] = dst[0x04];

    if (game_state == STATE_LEVEL_SELECT) {
        for (s32 i = 3; i < 5; i++) {
            dst[(i << 4) + 0x0e] = dst[0x04];
        }
    }
}

// Set BG color on the 4 color palettes
void set_bg_color(COLOR *dst, COLOR color) {
    // Set BG color
    dst[0x00] = color;
    dst[BG_PAL + BG_COLOR] = color;

    dst[LIGHTER_BG_PAL + BG_COLOR] = color;
    
    // Adjust brighter color
    adjust_brighter_color(dst, BG_PAL);
    
    // Fade to black
    u32 blend_value = 0x1f / (7 - 2 + 1);
    for (u32 index = 2; index < 7; index++) {
        dst[index] = blend_clr(dst[BG_PAL + BG_COLOR], 0, blend_value);
        blend_value += 0x1f / (7 - 2 + 1);
    }
    
    dst[BG_PAL + DARK_COLOR] = dst[BG_COLOR + 5];
    dst[BG_PAL + DARK_COLOR - 1] = dst[BG_COLOR + 4];

    blend_bg_and_obj(dst, BG_PAL);
    
    // Copy pal into sprites
    copy_bg_pal_to_spr(dst, BG_PAL);

    // Update lbg
    update_lbg_palette(dst);

    for (u32 pal = COL_CHN_PAL; pal < COL_CHN_PAL_LAST; pal += 0x10) {  
        // Blend col
        dst[BG_COLOR + pal] = color;
        dst[DARK_COLOR + pal] = dst[BG_COLOR + 5];
        dst[DARK_COLOR - 1 + pal] = dst[BG_COLOR + 4];
        blend_bg_and_col(dst, pal);
        blend_bg_and_obj(dst, pal);

        // Adjust brighter color
        adjust_brighter_color(dst, pal);

        // Copy pal into sprites
        copy_bg_pal_to_spr(dst, pal);
    }
    
    // Portal colors also have a glow on them
    dst[PORTAL_GLOW_COLOR] = blend_clr(dst[BG_COLOR], dst[PORTAL_WHITE_COLOR], 0x0f);

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
    dst[LIGHTER_BG_PAL + DARK_COLOR] = dst[BG_COLOR + 5];
    dst[LIGHTER_BG_PAL + DARK_COLOR - 1] = dst[BG_COLOR + 4];
    
    // Blend both bg and lbg
    u32 blend_value = 0x1f / (COL_ID_COLOR - BG_COL_BLENDING + 1);
    for (u32 col = 0; col < 5; col++) {
        COLOR blend_with_black = 0;
        blend_with_black = blend_clr(0, lbg, blend_value);
        
        COLOR blended_color = blend_colors(blend_with_black, dst[BG_PAL + BG_COLOR]);
        dst[LIGHTER_BG_PAL + BG_COL_BLENDING + col] = blended_color;

        blend_value += 0x1f / (COL_ID_COLOR - BG_COL_BLENDING + 1);
    }

    dst[LIGHTER_BG_PAL + COL_ID_COLOR] = blend_colors(lbg, dst[BG_PAL + BG_COLOR]); // Blend full color
    

    // Adjust brighter color
    adjust_brighter_color(dst, LIGHTER_BG_PAL);
    
    // Blend BG and OBJ
    blend_bg_and_obj(dst, LIGHTER_BG_PAL);

    // Copy pal into sprites
    copy_bg_pal_to_spr(dst, LIGHTER_BG_PAL);
}

void adjust_brighter_color(COLOR *dst, u32 pal) {
    dst[pal + BRIGHTER_COLOR]     = blend_clr(dst[BG_PAL + BG_COLOR], dst[PORTAL_WHITE_COLOR], 0x0a);
}

void set_player_colors(COLOR *dst, COLOR p1, COLOR p2, COLOR glow) {
    // Modify sprite colors
    dst[PLAYER_SPR_PAL + P1_COLOR] = p1;
    dst[PLAYER_SPR_PAL + P2_COLOR] = p2;
    dst[PLAYER_SPR_PAL + PLAYER_GLOW_COLOR] = glow;

    // Modify bg colors
    dst[PLAYER_BG_PAL + P1_COLOR] = p1;
    dst[PLAYER_BG_PAL + P2_COLOR] = p2;
    dst[PLAYER_BG_PAL + PLAYER_GLOW_COLOR] = glow;

    // Blend P1
    dst[PLAYER_SPR_PAL + P1_COLOR - 1] = blend_clr(dst[PLAYER_SPR_PAL + P1_COLOR], 0, 0x06);
    dst[PLAYER_SPR_PAL + P1_COLOR - 2] = blend_clr(dst[PLAYER_SPR_PAL + P1_COLOR], 0, 0x0c);
    dst[PLAYER_SPR_PAL + P1_COLOR - 3] = blend_clr(dst[PLAYER_SPR_PAL + P1_COLOR], 0, 0x13);
    dst[PLAYER_SPR_PAL + P1_COLOR - 4] = blend_clr(dst[PLAYER_SPR_PAL + P1_COLOR], 0, 0x19);

    // Blend P2
    dst[PLAYER_SPR_PAL + P2_COLOR + 1] = blend_clr(dst[PLAYER_SPR_PAL + P2_COLOR], 0, 0x06);
    dst[PLAYER_SPR_PAL + P2_COLOR + 2] = blend_clr(dst[PLAYER_SPR_PAL + P2_COLOR], 0, 0x0c);
    dst[PLAYER_SPR_PAL + P2_COLOR + 3] = blend_clr(dst[PLAYER_SPR_PAL + P2_COLOR], 0, 0x13);
    dst[PLAYER_SPR_PAL + P2_COLOR + 4] = blend_clr(dst[PLAYER_SPR_PAL + P2_COLOR], 0, 0x19);

    COLOR p1_mod = (p1 == CLR_BLACK) ? CLR_WHITE : p1;
    COLOR p2_mod = (p2 == CLR_BLACK) ? CLR_WHITE : p2;

    // SPR PALS
    // P1
    dst[P1_SPR_PAL + COL_ID_COLOR] = p1_mod;
    dst[P1_SPR_PAL + COL_ID_COLOR - 1] = blend_clr(p1_mod, 0, 0x06);
    dst[P1_SPR_PAL + COL_ID_COLOR - 2] = blend_clr(p1_mod, 0, 0x0c);
    dst[P1_SPR_PAL + COL_ID_COLOR - 3] = blend_clr(p1_mod, 0, 0x13);
    dst[P1_SPR_PAL + COL_ID_COLOR - 4] = blend_clr(p1_mod, 0, 0x19);
    
    // P2
    dst[P2_SPR_PAL + COL_ID_COLOR] = p2_mod;
    dst[P2_SPR_PAL + COL_ID_COLOR - 1] = blend_clr(p2_mod, 0, 0x06);
    dst[P2_SPR_PAL + COL_ID_COLOR - 2] = blend_clr(p2_mod, 0, 0x0c);
    dst[P2_SPR_PAL + COL_ID_COLOR - 3] = blend_clr(p2_mod, 0, 0x13);
    dst[P2_SPR_PAL + COL_ID_COLOR - 4] = blend_clr(p2_mod, 0, 0x19);

    // Blend P1 with P2
    blend_p1_with_p2(&dst[PLAYER_SPR_PAL]);

    // Blend P1 and P2 on BG pal
    blend_p1_with_bg(dst);
    blend_p2_with_bg(dst);
    blend_p1_with_p2(&dst[PLAYER_BG_PAL]);
}

void set_player_colors_spr(COLOR *dst, COLOR p1, COLOR p2, COLOR glow) {
    // Modify sprite colors
    dst[PLAYER_SPR_PAL + P1_COLOR] = p1;
    dst[PLAYER_SPR_PAL + P2_COLOR] = p2;
    dst[PLAYER_SPR_PAL + PLAYER_GLOW_COLOR] = glow;

    // Blend P1
    dst[PLAYER_SPR_PAL + P1_COLOR - 1] = blend_clr(dst[PLAYER_SPR_PAL + P1_COLOR], 0, 0x06);
    dst[PLAYER_SPR_PAL + P1_COLOR - 2] = blend_clr(dst[PLAYER_SPR_PAL + P1_COLOR], 0, 0x0c);
    dst[PLAYER_SPR_PAL + P1_COLOR - 3] = blend_clr(dst[PLAYER_SPR_PAL + P1_COLOR], 0, 0x13);
    dst[PLAYER_SPR_PAL + P1_COLOR - 4] = blend_clr(dst[PLAYER_SPR_PAL + P1_COLOR], 0, 0x19);

    // Blend P2
    dst[PLAYER_SPR_PAL + P2_COLOR + 1] = blend_clr(dst[PLAYER_SPR_PAL + P2_COLOR], 0, 0x06);
    dst[PLAYER_SPR_PAL + P2_COLOR + 2] = blend_clr(dst[PLAYER_SPR_PAL + P2_COLOR], 0, 0x0c);
    dst[PLAYER_SPR_PAL + P2_COLOR + 3] = blend_clr(dst[PLAYER_SPR_PAL + P2_COLOR], 0, 0x13);
    dst[PLAYER_SPR_PAL + P2_COLOR + 4] = blend_clr(dst[PLAYER_SPR_PAL + P2_COLOR], 0, 0x19);

    // Blend P1 with P2
    blend_p1_with_p2(&dst[PLAYER_SPR_PAL]);
}

COLOR calculate_lbg(COLOR bg, COLOR p1) {
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
    FIXED_16 multiplier = FIXED_DIV_LONG(bg_rgb.red + bg_rgb.green + bg_rgb.blue, 18);
    
    // If below 1.0, don't modify LBG
    if (multiplier < FIXED_MULTIPLIER) {
        lbg_rgb.red =   FROM_FIXED_LONG(FIXED_MUL_LONG(TO_FIXED(lbg_rgb.red), multiplier)   + FIXED_MUL_LONG(TO_FIXED(p1_rgb.red), FIXED_MULTIPLIER - multiplier));
        lbg_rgb.green = FROM_FIXED_LONG(FIXED_MUL_LONG(TO_FIXED(lbg_rgb.green), multiplier) + FIXED_MUL_LONG(TO_FIXED(p1_rgb.green), FIXED_MULTIPLIER - multiplier));
        lbg_rgb.blue =  FROM_FIXED_LONG(FIXED_MUL_LONG(TO_FIXED(lbg_rgb.blue), multiplier)  + FIXED_MUL_LONG(TO_FIXED(p1_rgb.blue), FIXED_MULTIPLIER - multiplier));
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

    // Fade to black
    u32 blend_value = 0x1f / (7 - 2 + 1);
    for (u32 index = 2; index < 7; index++) {
        dst[index + GROUND_PAL] = blend_clr(dst[GROUND_PAL + GROUND_COLOR], 0, blend_value);
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
ARM_CODE u16 lerp_color(COLOR color1, COLOR color2, FIXED time) {
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
    u32 red_lerp   = FROM_FIXED_LONG(r1 * (TO_FIXED(1) - time) + r2 * time);
    u32 green_lerp = FROM_FIXED_LONG(g1 * (TO_FIXED(1) - time) + g2 * time);
    u32 blue_lerp  = FROM_FIXED_LONG(b1 * (TO_FIXED(1) - time) + b2 * time);

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

#define MAX_3(a,b,c) ((a > b) ? ((a > c) ? a : c) : ((b > c) ? b : c));
#define MIN_3(a,b,c) ((a < b) ? ((a < c) ? a : c) : ((b < c) ? b : c));

struct HSV rgb_to_hsv(struct RGB555 rgb) {
    struct HSV hsv_return;
    FIXED_16 r = TO_FIXED_LONG(rgb.red) / 31;
    FIXED_16 g = TO_FIXED_LONG(rgb.green) / 31;
    FIXED_16 b = TO_FIXED_LONG(rgb.blue) / 31;

    FIXED_16 max = MAX_3(r, g, b);
    FIXED_16 min = MIN_3(r, g, b);
    FIXED_16 delta = max - min;

    FIXED_16 hue, saturation, value;

    // Calculate hue
    if (delta == 0) {
        hue = 0;
    } else {
        if (max == r) {
            hue = FIXED_DIV_LONG(g - b, delta) * 60;
        } else if (max == g) {
            hue = FIXED_DIV_LONG(b - r, delta) * 60 + TO_FIXED_LONG(120);
        } else { // max == b
            hue = FIXED_DIV_LONG(r - g, delta) * 60 + TO_FIXED_LONG(240);
        }
    }

    // Normalize hue to 0-360
    if (hue < 0) hue += TO_FIXED_LONG(360);

    // Calculate saturation
    if (max == 0) {
        saturation = 0;
    } else {
        saturation = FIXED_MULTIPLIER - FIXED_DIV_LONG(min, max);
    }


    // Calculate value (simply max)
    value = max;

    hsv_return.hue = hue;
    hsv_return.saturation = saturation;
    hsv_return.value = value;
    return hsv_return;
}   

#define MAX_MULT_VALUE (FIXED_MULTIPLIER - 1)
struct RGB555 hsv_to_rgb(struct HSV hsv) {
    struct RGB555 rgb_struct;
    if (hsv.saturation == 0) {
        u8 value_5 = FROM_FIXED_LONG(hsv.value * 31);
        rgb_struct.red = value_5;
        rgb_struct.green = value_5;
        rgb_struct.blue = value_5;
        return rgb_struct;
    }

    FIXED_16 r,g,b;
    FIXED hue_mult = hsv.hue / 360;
    
    // Get sector [0-5]
    FIXED_16 sector = FROM_FIXED_LONG(hue_mult * 6);

    // Get fraction by subtracting original value to floored value [0-1]
    FIXED_16 fraction = (hue_mult * 6) - TO_FIXED_LONG(sector);

    // Get some values
    FIXED_16 p = FIXED_MUL_LONG(hsv.value, FIXED_MULTIPLIER - hsv.saturation);
    FIXED_16 q = FIXED_MUL_LONG(hsv.value, FIXED_MULTIPLIER - FIXED_MUL_LONG(hsv.saturation, fraction));
    FIXED_16 t = FIXED_MUL_LONG(hsv.value, FIXED_MULTIPLIER - FIXED_MUL_LONG(hsv.saturation, FIXED_MULTIPLIER - fraction));

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
    rgb_struct.red = FROM_FIXED_LONG(r * 31);
    rgb_struct.green = FROM_FIXED_LONG(g * 31);
    rgb_struct.blue = FROM_FIXED_LONG(b * 31);

    return rgb_struct;
}

COLOR blend_colors(COLOR col1, COLOR col2) {
    // Get structs
    struct RGB555 col1_struct;
    BGR_TO_STRUCT(col1, col1_struct)
    struct RGB555 col2_struct; 
    BGR_TO_STRUCT(col2, col2_struct)

    // Add color components
    u32 red = col1_struct.red + col2_struct.red;
    u32 green = col1_struct.green + col2_struct.green;
    u32 blue = col1_struct.blue + col2_struct.blue;

    // Cap to max number
    if (red > 31)   red = 31;
    if (green > 31) green = 31;
    if (blue > 31)  blue = 31;

    // Return new color
    return RGB15(red, green, blue);
}
