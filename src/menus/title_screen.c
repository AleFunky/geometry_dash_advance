#include <tonc.h>
#include "main.h"
#include "level_select.h"
#include "tonc_tte.h"
#include "pusab.h"
#include "posprintf.h"
#include <maxmod.h>
#include "soundbank.bin.h"
#include "soundbank.h"
#include "physics_defines.h"
#include <string.h>
#include <ctype.h>
#include "color.h"
#include "icon_kit.h"

EWRAM_DATA u32 title_screen_color_index = 0;
EWRAM_DATA u16 title_screen_color_transition_backup[6];
EWRAM_DATA u8 title_screen_player_hold;
EWRAM_DATA u32 title_screen_scroll_x;

void title_screen_players();
void reset_title_screen_player();
void draw_button_glyphs_title_screen();

extern u16 __key_curr;

INLINE void do_button_draw() {
    nextSpr = 0;
    
    draw_button_glyphs_title_screen();
    
    obj_copy(oam_mem, shadow_oam, 128);
    obj_aff_copy(obj_aff_mem, obj_aff_buffer, 32);
}

void title_screen_loop() {
    REG_DISPCNT = DCNT_MODE0 | DCNT_OBJ | DCNT_OBJ_1D | DCNT_BG0 | DCNT_BG1 | DCNT_BG2;

    REG_BG0CNT  = BG_CBB(0) | BG_SBB(26) | BG_REG_32x32 | BG_PRIO(0);
    REG_BG0HOFS = 8;
    REG_BG0VOFS = 0;

    REG_BG1CNT  = BG_CBB(0) | BG_SBB(27) | BG_REG_32x32 | BG_PRIO(1);
    REG_BG1HOFS = 0;
    REG_BG1VOFS = 0;

    REG_BG2CNT  = BG_CBB(0) | BG_SBB(28) | BG_REG_32x32 | BG_PRIO(2);
    REG_BG2HOFS = 0;
    REG_BG2VOFS = 96;

    memset32(palette_buffer, 0, 256);
    memcpy16(palette_buffer, menu_palette, sizeof(menu_palette) / sizeof(COLOR));
    palette_buffer[0x24] = palette_buffer[0];

    memcpy32(&tile_mem[0][0], square_background_chr, sizeof(square_background_chr) / 8);
    memcpy32(&tile_mem[0][256], title_screen_chr, sizeof(title_screen_chr) / 8);
    memcpy32(&tile_mem_obj[0][992], level_text_chr, sizeof(level_text_chr) / 4);
    memcpy32(&se_mem[26][0], title_screen_l0_tilemap, sizeof(title_screen_l0_tilemap) / sizeof(u32));
    memcpy32(&se_mem[27][0], title_screen_l1_tilemap, sizeof(title_screen_l1_tilemap) / sizeof(u32));
    memcpy32(&se_mem[28][0], square_background_tilemap, sizeof(square_background_tilemap) / sizeof(u32));

    // Button glyph chr
    memcpy16(&palette_buffer[0x1f0], button_glyph_pal, sizeof(button_glyph_pal) / sizeof(COLOR));
    memcpy32(&tile_mem_obj[0][512], &title_screen_chr[0xf0], 24 * sizeof(TILE8) / 4);
    
    // Restore bg color
    memcpy16(&col_trigger_buffer[0], title_screen_color_transition_backup, 6);
    do_menu_color_transition();

    scroll_x = 0;
    scroll_y = BOTTOM_SCROLL_LIMIT + TO_FIXED(14);
    title_screen_scroll_x = 0;

    memset32(shadow_oam, ATTR0_HIDE, 256);
    memset16(rotation_buffer, 0x0000, NUM_ROT_SLOTS);
    
    do_button_draw();
    
    fade_in();

    memset32(&player_1, 0, sizeof(player_1) / sizeof(u32));
    memset32(level_buffer, 0x0000, sizeof(level_buffer) / sizeof(u32));
    memset32(object_buffer, 0x0000, sizeof(object_buffer) / 4);
    

    // Set default player colors
    set_player_colors(palette_buffer, palette_kit_colors[save_data.p1_col_selected], palette_kit_colors[save_data.p2_col_selected], palette_kit_colors[save_data.glow_col_selected]);
    palette_buffer[0x10e] = CLR_WHITE;

    reset_title_screen_player();

    put_ground();

    mirror_scaling = float2fx(1.0);
    
    while (1) {
        key_poll();
    
        REG_BG1HOFS = title_screen_scroll_x >> SUBPIXEL_BITS;
        REG_BG2HOFS = title_screen_scroll_x >> (2+SUBPIXEL_BITS);
        
        obj_copy(oam_mem, shadow_oam, 128);
        obj_aff_copy(obj_aff_mem, obj_aff_buffer, 32);

        // Level select
        if (key_hit(KEY_A) | key_hit(KEY_START)) {
            game_state = STATE_LEVEL_SELECT;
            break;
        }

        // Icon kit
        if (key_hit(KEY_L)) {
            game_state = STATE_ICON_KIT;
            break;
        }

        // Sound test
        if (key_hit(KEY_SELECT)) {
            game_state = STATE_SOUND_TEST;
            break;
        }

        // Do scroll
        title_screen_scroll_x += SPEED_1x;

        do_menu_color_transition();
        
        // Copy palette from buffer
        memcpy32(pal_bg_mem, palette_buffer, 256);

        // If the current transition ended, start a new one to the next color
        if (!col_trigger_buffer[0][COL_TRIG_BUFF_ACTIVE]) {
            col_trigger_buffer[0][COL_TRIG_BUFF_ACTIVE] = TRUE;
            col_trigger_buffer[0][COL_TRIG_BUFF_OLD_COLOR] = palette_buffer[BG_COLOR];
            col_trigger_buffer[0][COL_TRIG_BUFF_NEW_COLOR] = menu_bg_colors[title_screen_color_index % (sizeof(menu_bg_colors) / sizeof(COLOR))];
            col_trigger_buffer[0][COL_TRIG_BUFF_TOTAL_FRAMES] = 240;
            col_trigger_buffer[0][COL_TRIG_BUFF_CURRENT_FRAMES] = 0;
            title_screen_color_index++;
        }

        memset32(shadow_oam, ATTR0_HIDE, 256);
        memset16(rotation_buffer, 0x0000, NUM_ROT_SLOTS);

        nextSpr = 0;

        // Handle title screen players
        title_screen_players();

        draw_button_glyphs_title_screen();
        
        sort_oam_by_prio();
        
        // Wait for VSYNC
        VBlankIntrWait();
    }
    
    memcpy16(title_screen_color_transition_backup, &col_trigger_buffer[0], 6);
    fade_out();
}

void draw_button_glyphs_title_screen() {
    oam_metaspr(112, 100, menuButton, FALSE, FALSE, 512, 15, PRIORITY_DONT_DISABLE_0 | 0, 0, TRUE); // A
    oam_metaspr(112, 140, menuButton, FALSE, FALSE, 528, 15, PRIORITY_DONT_DISABLE_0 | 0, 0, TRUE); // SELECT
    oam_metaspr( 56,  94, menuButton, FALSE, FALSE, 524, 15, PRIORITY_DONT_DISABLE_0 | 0, 0, TRUE); // L
    oam_metaspr(168,  94, menuButton, FALSE, FALSE, 520, 15, PRIORITY_DONT_DISABLE_0 | 0, 0, TRUE); // R
}

void reset_title_screen_player() {
    player_1.player_x = TO_FIXED(-16);
    player_1.player_y = ((GROUND_HEIGHT - 1) << (4 + SUBPIXEL_BITS)) + (0x2 << SUBPIXEL_BITS);
    player_1.player_y_speed = 0;

    memset16(trail_enabled, 0x0000, sizeof(trail_enabled) / sizeof(u16));

    // Get random gamemode
    player_1.gamemode = qran() % GAMEMODE_COUNT;
    
    // 1/4 chance for player to be mini
    if (!(qran() & 0b11)) player_1.player_size = SIZE_MINI;
    else player_1.player_size = SIZE_BIG;
    
    upload_player_chr(player_1.gamemode, ID_PLAYER_1);

    // Get random speed
    speed_id = qran() % SPEED_COUNT;

    wave_trail_pointer[ID_PLAYER_1] = 0;
}

void title_screen_players() {
    curr_player_id = ID_PLAYER_1;
    curr_player = player_1;
    
    curr_player.player_x_speed = speed_constants[speed_id];
    
    curr_player.relative_player_x = FROM_FIXED(curr_player.player_x) - 32;
    curr_player.relative_player_y = FROM_FIXED(curr_player.player_y) - FROM_FIXED(scroll_y) - 14;

    // Disable input
    __key_curr = 0;
    __key_prev = 0;

    // Set movement depending on gamemode
    switch (curr_player.gamemode) {
        case GAMEMODE_CUBE:
            // Press A 1/16 of time
            if (!(qran() & 0b1111)) __key_curr = KEY_A;
            break;
        case GAMEMODE_UFO:
            // Press A 1/32 of time
            if (!(qran() & 0b11111)) __key_curr = KEY_A;
            break;
        case GAMEMODE_WAVE:
            // Switch holding A 1/16 of time
            if (!(qran() & 0b1111)) title_screen_player_hold ^= 1;

            if (title_screen_player_hold) {
                __key_curr = KEY_A;
            }
            break;
        case GAMEMODE_SHIP:
            // Switch holding A 1/16 of time
            if (!(qran() & 0b1111)) title_screen_player_hold ^= 1;

            if (title_screen_player_hold) {
                __key_curr = KEY_A;
            }
            break;
    }

    player_main();
    draw_player();

    // Cap y position
    if (curr_player.player_y < TO_FIXED(0x728)) {
        curr_player.player_y = TO_FIXED(0x728);
        curr_player.player_y_speed = 0;
    }

    player_1 = curr_player;
    
    // Reset player if offscreen
    if (player_1.relative_player_x > 256) {
        reset_title_screen_player();
    }
}