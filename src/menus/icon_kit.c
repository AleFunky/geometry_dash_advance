#include "main.h"
#include "icon_kit.h"
#include "level_select.h"
#include "memory.h"
#include "level_routines.h"
#include "math.h"

void upload_icons(u32 gamemode, u32 page);
void draw_icons(u32 gamemode, u32 page);
void draw_selected_icon(u32 gamemode);
void draw_selected_glyph(u32 selected_x, u32 selected_y);
void update_gamemode_palette(u32 gamemode);
void draw_button_glyphs_icon_kit();

void palette_kit_loop();

const u16 num_icons[GAMEMODE_COUNT] = {
    ICON_COUNT_CUBES,
    ICON_COUNT_SHIPS,
    ICON_COUNT_BALLS,
    ICON_COUNT_UFOS,
    ICON_COUNT_WAVES
};

const COLOR palette_kit_colors[] = {
    //           REDS               |             ORANGES             |             YELLOWS             |             GREENS
    0x675f, 0x3dff, 0x1cff, 0x001f,   0x3adf, 0x227f, 0x01ff, 0x013f,   0x5fff, 0x3fdf, 0x03ff, 0x01ef,   0x4ff7, 0x37f6, 0x03ef, 0x03e0,
    0x0012, 0x000e, 0x000a, 0x0407,   0x0135, 0x2594, 0x1d2e, 0x14ca,   0x4f7f, 0x02df, 0x0192, 0x08ca,   0x1bfa, 0x02a9, 0x024c, 0x26a0,
    0x2415, 0x2950, 0x18cf, 0x108a,   0x00d2, 0x10cc, 0x00ab, 0x0089,   0x3a99, 0x25f4, 0x1d4d, 0x150a,   0x3fe0, 0x0240, 0x0180, 0x0100,
    //       GREENS-BLUES           |              BLUES              |             PURPLES             |              PINKS
    0x6ff7, 0x73f2, 0x5fe0, 0x7fe0,   0x7ff3, 0x7f00, 0x7de0, 0x7c00,   0x7ed7, 0x7def, 0x7c0f, 0x480c,   0x7edf, 0x3c1f, 0x3012, 0x200c,
    0x57ef, 0x4688, 0x31a6, 0x2545,   0x5520, 0x4800, 0x3820, 0x2420,   0x7e16, 0x5409, 0x4427, 0x3027,   0x7c1f, 0x7c16, 0x3c0f, 0x1809,
    0x3240, 0x3de0, 0x3180, 0x2100,   0x4980, 0x3520, 0x24c0, 0x1ca0,   0x4529, 0x512d, 0x3cea, 0x30a8,   0x7dfe, 0x5575, 0x4110, 0x2ccb,
    //                              |             BLUES 2             |         |                  GRAYS/WHITE/BLACK
    0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF,   0x7eee, 0x560a, 0x3946, 0x28e4,   0xFFFF,   0x7fff, 0x6f7b, 0x56b5, 0x4210, 0x2d6b, 0x2108, 0x0000
};

EWRAM_DATA u32 selected_gamemode;
EWRAM_DATA u32 selected_color;
EWRAM_DATA s32 selected_page;
EWRAM_DATA s32 selected_x;
EWRAM_DATA s32 selected_y;

void icon_kit_loop() {
    // Enable BG 0
    REG_DISPCNT = DCNT_MODE0 | DCNT_OBJ | DCNT_OBJ_1D | DCNT_BG0 | DCNT_BG1;

    REG_BG0CNT  = BG_CBB(0) | BG_SBB(26) | BG_REG_32x32 | BG_PRIO(3);
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;

    REG_BG1CNT  = BG_CBB(0) | BG_SBB(27) | BG_REG_32x64 | BG_PRIO(2);
    REG_BG1HOFS = 252;
    REG_BG1VOFS = 154;
    scroll_y = TO_FIXED(154);

    memset32(shadow_oam, ATTR0_HIDE, 256);
    memset16(rotation_buffer, 0x0000, NUM_ROT_SLOTS);

    memset32(palette_buffer, 0, 256);
    memcpy16(palette_buffer, icon_kit_palette, sizeof(icon_kit_palette) / sizeof(COLOR));

    memcpy32(&tile_mem_obj[0][992], &icon_kit_chr[ICON_KIT_SELECTION_INDEX], sizeof(TILE) / 4 * 32);

    memcpy32(&se_mem[26][0], icon_kit_l0_tilemap, sizeof(icon_kit_l0_tilemap) / sizeof(u32));
    memset16(&se_mem[27][0], SE_BUILD(0x33, 0, 0, 0), sizeof(SCREENBLOCK) * 2 / sizeof(u16));
    memcpy32(&se_mem[27][0], palette_kit_tilemap, sizeof(palette_kit_tilemap) / sizeof(u32));
    memcpy32(&tile_mem[0][0], icon_kit_chr, sizeof(icon_kit_chr) / 8);
    
    // Button glyph chr
    memcpy16(&palette_buffer[0x1f0], button_glyph_pal, sizeof(button_glyph_pal) / sizeof(COLOR));
    memcpy32(&tile_mem_obj[0][512], &title_screen_chr[0xf0], 24 * sizeof(TILE8) / 4);

    nextSpr = 0;

    set_player_colors_spr(palette_buffer, CLR_WHITE, CLR_GRAY, CLR_WHITE);
    set_player_colors_spr(&palette_buffer[0x10], palette_kit_colors[save_data.p1_col_selected], palette_kit_colors[save_data.p2_col_selected], palette_kit_colors[save_data.glow_col_selected]);

    selected_gamemode = GAMEMODE_CUBE;
    selected_page = save_data.cube_selected / ICONS_PER_PAGE;
    selected_x = save_data.cube_selected % ICONS_COLUMNS;
    selected_y = (save_data.cube_selected / ICONS_COLUMNS) % ICONS_ROWS;
    selected_color = 0;

    // Draw the cube page
    upload_icons(GAMEMODE_CUBE, selected_page);
    draw_selected_icon(GAMEMODE_CUBE);
    draw_icons(GAMEMODE_CUBE, selected_page);
    draw_selected_glyph(selected_x, selected_y);
    update_gamemode_palette(GAMEMODE_CUBE);
    draw_button_glyphs_icon_kit();
    
    obj_copy(oam_mem, shadow_oam, 128);
    obj_aff_copy(obj_aff_mem, obj_aff_buffer, 32);

    fade_in();

    while (1) {
        key_poll();
        
        nextSpr = 0;
        obj_copy(oam_mem, shadow_oam, 128);
        obj_aff_copy(obj_aff_mem, obj_aff_buffer, 32);
        
        memset32(shadow_oam, ATTR0_HIDE, 256);

        // Title screen
        if (key_hit(KEY_B)) {
            game_state = STATE_TITLE_SCREEN;
            
            // Save icons
            write_save_block();

            fade_out();
            break;
        }

        // Decrement selected gamemode
        if (key_hit(KEY_L)) {
            // If we aren't on the first gamemode, switch pages
            if (selected_gamemode > 0) {
                selected_gamemode--;

                // Select the saved icon
                selected_page = *icon_selection_table[selected_gamemode] / ICONS_PER_PAGE;
                selected_x = *icon_selection_table[selected_gamemode] % ICONS_COLUMNS;
                selected_y = (*icon_selection_table[selected_gamemode] / ICONS_COLUMNS) % ICONS_ROWS;
                upload_icons(selected_gamemode, selected_page);
                update_gamemode_palette(selected_gamemode);
            }
        }

        // Increment selected gamemode
        if (key_hit(KEY_R)) {
            // If we aren't on the last gamemode, switch pages
            if (selected_gamemode < GAMEMODE_COUNT - 1) {
                selected_gamemode++;

                // Select the saved icon
                selected_page = *icon_selection_table[selected_gamemode] / ICONS_PER_PAGE;
                selected_x = *icon_selection_table[selected_gamemode] % ICONS_COLUMNS;
                selected_y = (*icon_selection_table[selected_gamemode] / ICONS_COLUMNS) % ICONS_ROWS;
                upload_icons(selected_gamemode, selected_page);
                update_gamemode_palette(selected_gamemode);
            }
        }

        // Key UP
        if(key_hit(KEY_UP)) {
            selected_y -= 1;

            // Keep y pos positive (in bounds)
            if (selected_y < 0) {
                selected_y = 0;
            } else {
                *icon_selection_table[selected_gamemode] -= ICONS_COLUMNS;
            }
        }

        // Key DOWN
        if(key_hit(KEY_DOWN)) {
            selected_y += 1;

            // Keep y pos in bounds
            if (selected_y >= ICONS_ROWS) {
                selected_y = ICONS_ROWS - 1;
            } else {
                // If moving down would make the selection be out of bounds, don't move
                s32 selection = *icon_selection_table[selected_gamemode] + ICONS_COLUMNS;
                if (selection >= num_icons[selected_gamemode]) selected_y -= 1;
                else *icon_selection_table[selected_gamemode] = selection;
            }
        }

        // Key LEFT
        if(key_hit(KEY_LEFT)) {
            selected_x -= 1;
            // Check if we switched pages by moving left on the first column
            if (selected_x < 0) {
                // If the selected page is not the first one, switch pages
                if (selected_page > 0) {
                    selected_x = ICONS_COLUMNS - 1;
                    selected_page--;
                    *icon_selection_table[selected_gamemode] -= (ICONS_PER_PAGE / 2) + 1;
                    upload_icons(selected_gamemode, selected_page);
                } else {
                    // Else keep in bounds
                    selected_x = 0;
                }
            } else {
                *icon_selection_table[selected_gamemode] -= 1;
            }
        }

        // Key RIGHT
        if(key_hit(KEY_RIGHT)) {
            selected_x += 1;
            // Check if we switched pages by moving right on the last column
            if (selected_x >= ICONS_COLUMNS) {
                // If the selected page not the last one, switch pages
                if (selected_page < (num_icons[selected_gamemode] / ICONS_PER_PAGE)) {
                    selected_x = 0;
                    selected_page++;
                    s32 selection = *icon_selection_table[selected_gamemode] + (ICONS_PER_PAGE / 2) + 1;
                    
                    // If the page switch would make the selection be out of bounds, set it to the first icon on the page
                    if (selection >= num_icons[selected_gamemode]) {
                        // Reset y to 0
                        selected_y = 0;

                        // Go up one row
                        *icon_selection_table[selected_gamemode] = selection - (ICONS_PER_PAGE / 2);
                    } else *icon_selection_table[selected_gamemode] = selection;

                    upload_icons(selected_gamemode, selected_page);
                } else {
                    // Else keep in bounds
                    selected_x = ICONS_COLUMNS - 1;
                }
            } else {  
                // If moving right would make the selection be out of bounds, don't move
                s32 selection = *icon_selection_table[selected_gamemode] + 1;
                if (selection >= num_icons[selected_gamemode]) selected_x -= 1;
                else *icon_selection_table[selected_gamemode] = selection;
            }
        }

        // Draw icons
        draw_icons(selected_gamemode, selected_page);
        draw_selected_icon(selected_gamemode);
        draw_selected_glyph(selected_x, selected_y);
        draw_button_glyphs_icon_kit();

        // Open palette kit
        if (key_hit(KEY_SELECT)) {
            palette_kit_loop();
        }

        // Wait for VSYNC
        VBlankIntrWait();
    }
}


void draw_button_glyphs_icon_kit() {
    oam_metaspr( 16, 16, menuButton, FALSE, FALSE, 516, 15, PRIORITY_DONT_DISABLE_0 | 3, 0, TRUE); // B
    oam_metaspr(  8, 72, menuButton, FALSE, FALSE, 528, 15, PRIORITY_DONT_DISABLE_0 | 3, 0, TRUE); // SELECT
    oam_metaspr( 56, 72, menuButton, FALSE, FALSE, 524, 15, PRIORITY_DONT_DISABLE_0 | 3, 0, TRUE); // L
    oam_metaspr(168, 72, menuButton, FALSE, FALSE, 520, 15, PRIORITY_DONT_DISABLE_0 | 3, 0, TRUE); // R
}

void upload_palette_kit_icons();
void draw_palette_kit_icons();
void draw_palette_selection(u32 id);
void draw_palette_kit_buttons();

void palette_kit_loop() {
    // Upload selected icons
    upload_palette_kit_icons();

    // Scroll palette kit down
    while (scroll_y > 0) {
        nextSpr = 0;
        obj_copy(oam_mem, shadow_oam, 128);
        obj_aff_copy(obj_aff_mem, obj_aff_buffer, 32);
    
        REG_BG1VOFS = scroll_y >> SUBPIXEL_BITS;
        scroll_y = approach_value_asymptotic(scroll_y, 0, 0x2000, 0x30000);
        
        draw_palette_kit_icons();
        
        // Draw icons 
        draw_icons(selected_gamemode, selected_page);
        draw_selected_icon(selected_gamemode);
        draw_selected_glyph(selected_x, selected_y);
        draw_palette_selection(*color_selection_table[selected_color]);
        draw_palette_kit_buttons();
        draw_button_glyphs_icon_kit();
    
        sort_oam_by_prio();

        VBlankIntrWait();
    }

    while (1) {
        key_poll();

        nextSpr = 0;
        obj_copy(oam_mem, shadow_oam, 128);
        obj_aff_copy(obj_aff_mem, obj_aff_buffer, 32);
        
        memset32(shadow_oam, ATTR0_HIDE, 256);

        draw_palette_kit_icons();
        draw_palette_selection(*color_selection_table[selected_color]);
        draw_palette_kit_buttons();
        draw_button_glyphs_icon_kit();

        // Switch color page left
        if (key_hit(KEY_L)) {
            if (selected_color > PALETTE_KIT_COL1) selected_color--;
        }

        // Switch color page right
        if (key_hit(KEY_R)) {
            if (selected_color < PALETTE_KIT_GLOW) selected_color++;
        }

        // Go UP
        if (key_hit(KEY_UP)) {
            if (*color_selection_table[selected_color] >= 16) {
                *color_selection_table[selected_color] -= 16;
            
                // Don't move if out of bounds
                if (palette_kit_colors[*color_selection_table[selected_color]] & 0x8000) *color_selection_table[selected_color] += 16;
                
                set_player_colors_spr(&palette_buffer[0x10], palette_kit_colors[save_data.p1_col_selected], palette_kit_colors[save_data.p2_col_selected], palette_kit_colors[save_data.glow_col_selected]);
                memcpy32(pal_bg_mem, palette_buffer, 256);
            }
        }

        // Go DOWN
        if (key_hit(KEY_DOWN)) {
            if (*color_selection_table[selected_color] < NUM_COLORS - 16) {
                *color_selection_table[selected_color] += 16;

                // Don't move if out of bounds
                if (palette_kit_colors[*color_selection_table[selected_color]] & 0x8000) *color_selection_table[selected_color] -= 16;

                set_player_colors_spr(&palette_buffer[0x10], palette_kit_colors[save_data.p1_col_selected], palette_kit_colors[save_data.p2_col_selected], palette_kit_colors[save_data.glow_col_selected]);
                memcpy32(pal_bg_mem, palette_buffer, 256);
            }
        }

        // Go RIGHT
        if (key_hit(KEY_RIGHT)) {
            if (*color_selection_table[selected_color] % 16 < 15) {
                *color_selection_table[selected_color] += 1;
            
                // Don't move if out of bounds
                if (palette_kit_colors[*color_selection_table[selected_color]] & 0x8000) *color_selection_table[selected_color] -= 1;
                
                set_player_colors_spr(&palette_buffer[0x10], palette_kit_colors[save_data.p1_col_selected], palette_kit_colors[save_data.p2_col_selected], palette_kit_colors[save_data.glow_col_selected]);
                memcpy32(pal_bg_mem, palette_buffer, 256);
            }
        }

        // Go LEFT
        if (key_hit(KEY_LEFT)) {
            if (*color_selection_table[selected_color] % 16 > 0) {
                *color_selection_table[selected_color] -= 1;
                
                // Don't move if out of bounds
                if (palette_kit_colors[*color_selection_table[selected_color]] & 0x8000) *color_selection_table[selected_color] += 1;
                
                set_player_colors_spr(&palette_buffer[0x10], palette_kit_colors[save_data.p1_col_selected], palette_kit_colors[save_data.p2_col_selected], palette_kit_colors[save_data.glow_col_selected]);
                memcpy32(pal_bg_mem, palette_buffer, 256);
            }
        }

        // Toggle glow
        if (key_hit(KEY_START)) {
            save_data.glow_enabled ^= 1;
            upload_palette_kit_icons();
        }

        // Close palette kit
        if (key_hit(KEY_SELECT | KEY_B)){
            break;
        }
        
        VBlankIntrWait();
    }

    
    // Scroll palette kit up
    while (scroll_y < TO_FIXED(154)) {
        nextSpr = 0;
        obj_copy(oam_mem, shadow_oam, 128);
        obj_aff_copy(obj_aff_mem, obj_aff_buffer, 32);

        REG_BG1VOFS = scroll_y >> SUBPIXEL_BITS;

        scroll_y = approach_value_asymptotic(scroll_y, TO_FIXED(154), 0x2000, 0x30000);

        draw_palette_kit_icons();

        // Draw icons 
        draw_icons(selected_gamemode, selected_page);
        draw_selected_icon(selected_gamemode);
        draw_selected_glyph(selected_x, selected_y);
        draw_palette_selection(*color_selection_table[selected_color]);
        draw_palette_kit_buttons();
        draw_button_glyphs_icon_kit();
        
        sort_oam_by_prio();

        VBlankIntrWait();
    }
}

void draw_palette_kit_icons() {
    if (scroll_y < TO_FIXED(80)) {
        for (s32 gamemode = 0; gamemode < GAMEMODE_COUNT; gamemode++) {
            oam_metaspr(PALETTE_KIT_ICONS_X + (gamemode * ICON_STEP), PALETTE_KIT_ICONS_Y - (scroll_y >> SUBPIXEL_BITS), iconKitIcon, FALSE, FALSE, (gamemode << 2) + 64, 1, 2, 0, TRUE);
        }
    }
}

void draw_palette_selection(u32 id) {
    u32 horizontal_column = id % 16;
    u32 x_offset = (horizontal_column * 8);

    // Each 4 columns, move 8 pixels further (there is a gap)
    if (id < 105) x_offset += 8 * (horizontal_column / 4);
    else x_offset += 24; // In case of the grayscale colors, apply 3 columns of offset and don't offset each 4 columns

    u32 vertical_column = id / 16;
    u32 y_offset = (vertical_column * 8);

    // Each 3 rows, move 8 pixels further (there is a gap)
    y_offset += 8 * (vertical_column / 3);

    // Move up if on extra blues
    if (id >= 100 && id <= 103) y_offset -= 8; 

    oam_metaspr(PALETTE_KIT_SELECTION_X + x_offset, PALETTE_KIT_SELECTION_Y + y_offset - (scroll_y >> SUBPIXEL_BITS), paletteKitSelection, FALSE, FALSE, 0, 0, 2, 0, TRUE);
}

void draw_palette_kit_buttons() {
    // Return if not on screen yet
    if (scroll_y >= TO_FIXED(32)) return;

    for (s32 button = 0; button < 3; button++) {
        u32 palette = 3;
        if (button == (s32) selected_color) palette = 2;
        
        oam_metaspr(PALETTE_KIT_BUTTON_X + (button * 28), PALETTE_KIT_BUTTON_Y - (scroll_y >> SUBPIXEL_BITS), paletteKitButton, FALSE, FALSE, PALETTE_KIT_BUTTON_ID + (button << 2), palette, 2, 0, TRUE);
    }
}

void upload_palette_kit_icons() {
    for (s32 gamemode = 0; gamemode < GAMEMODE_COUNT; gamemode++) {
        u32 icon_index = *icon_selection_table[gamemode];

        // Get lower nybble, this is inside the row of icons
        u32 lower = (icon_index & 0b111) << 1;

        // Get the rest of bits, shift twice to get the proper even 16 tile line
        u32 higher = (icon_index & ~0b111) << 2;

        u32 index = higher | lower;

        // Copy player sprite into VRAM
        if (save_data.glow_enabled) {
            memcpy32(&tile_mem_obj[0][(gamemode << 2) + 64], &icon_kit[gamemode][index], PLAYER_CHR_SIZE);
            memcpy32(&tile_mem_obj[0][(gamemode << 2) + 2 + 64], &icon_kit[gamemode][index + 0x10], PLAYER_CHR_SIZE);
        } else {
            remove_glow_pixels(vram_copy_buffer, (u8*)(&icon_kit[gamemode][index]), 2);
            memcpy32(&tile_mem_obj[0][(gamemode << 2) + 64], vram_copy_buffer, PLAYER_CHR_SIZE);

            remove_glow_pixels(vram_copy_buffer, (u8*)(&icon_kit[gamemode][index + 0x10]), 2);
            memcpy32(&tile_mem_obj[0][(gamemode << 2) + 2 + 64], vram_copy_buffer, PLAYER_CHR_SIZE);
        }
    }
}

void upload_icons(u32 gamemode, u32 page) {
    for (s32 icon = 0; icon < ICONS_PER_PAGE; icon++) {
        u32 icon_index = icon + (page * ICONS_PER_PAGE);

        // Get lower nybble, this is inside the row of icons
        u32 lower = (icon_index & 0b111) << 1;

        // Get the rest of bits, shift twice to get the proper even 16 tile line
        u32 higher = (icon_index & ~0b111) << 2;

        u32 index = higher | lower;

        // Copy player sprite into VRAM
        memcpy32(&tile_mem_obj[0][(icon << 2) + VRAM_ICON_OFFSET], &icon_kit[gamemode][index], PLAYER_CHR_SIZE);
        memcpy32(&tile_mem_obj[0][(icon << 2) + 2 + VRAM_ICON_OFFSET], &icon_kit[gamemode][index + 0x10], PLAYER_CHR_SIZE);
    }
}

void draw_icons(u32 gamemode, u32 page) {
    u32 x_pos = ICON_X;
    u32 y_pos = ICON_Y;
    s32 icon = 0;
    
    for (s32 y = 0; y < ICONS_ROWS; y++) {
        for (s32 x = 0; x < ICONS_COLUMNS; x++) {
            // Draw icon following a grid pattern
            oam_metaspr(x_pos + (x * ICON_STEP), y_pos + (y * ICON_STEP), iconKitIcon, FALSE, FALSE, (icon << 2) + VRAM_ICON_OFFSET, 0, 3, 0, TRUE);

            icon++;

            // Exit if we ran out of icons to draw (only on last page)
            if (icon + (page * ICONS_PER_PAGE) >= num_icons[gamemode]) return;
        }
    }
}

void draw_selected_icon(u32 gamemode) {
    upload_player_chr(gamemode, ID_PLAYER_1);
    oam_metaspr(SELECTED_ICON_X, SELECTED_ICON_Y, player1Spr, FALSE, FALSE, 0, 1, 3, 0, TRUE);   
    obj_aff_scale_inv(&obj_aff_buffer[0], float2fx(2.0), float2fx(2.0));
}

void draw_selected_glyph(u32 selected_x, u32 selected_y) {
    oam_metaspr(ICON_X + (selected_x * ICON_STEP) - 8, ICON_Y + (selected_y * ICON_STEP) - 8, iconKitSelection, FALSE, FALSE, 0, 0, 3, 0, TRUE);
}

void set_tab_palette(u32 pal, u32 x, u32 y);

void update_gamemode_palette(u32 gamemode) {
    u32 x = ICON_TAB_X;
    u32 y = ICON_TAB_Y;

    for (u32 gamemode_tab = 0; gamemode_tab < GAMEMODE_COUNT; gamemode_tab++) {
        u32 gamemode_x = x + gamemode_tab * 2;
        u32 gamemode_y = y;
        
        // If the current gamemode is this gamemode, make it blue
        if (gamemode_tab == gamemode) {
            set_tab_palette(5, gamemode_x, gamemode_y);
        } else {
            set_tab_palette(4, gamemode_x, gamemode_y);
        }
    }
}

void set_tab_palette(u32 pal, u32 x, u32 y) {
    u16 *tile = &se_mem[26][x + (y * 32)];
    *tile = SE_BUILD(*tile & SE_ID_MASK, pal, (*tile & SE_HFLIP) >> SE_FLIP_SHIFT, 0);

    tile++;

    *tile = SE_BUILD(*tile & SE_ID_MASK, pal, (*tile & SE_HFLIP) >> SE_FLIP_SHIFT, 0);

    tile += 31;
    
    *tile = SE_BUILD(*tile & SE_ID_MASK, pal, (*tile & SE_HFLIP) >> SE_FLIP_SHIFT, 0);

    tile++;

    *tile = SE_BUILD(*tile & SE_ID_MASK, pal, (*tile & SE_HFLIP) >> SE_FLIP_SHIFT, 0);
}