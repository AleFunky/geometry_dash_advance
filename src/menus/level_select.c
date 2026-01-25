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
#include "math.h"

u16 game_state;

#define LEVEL_NAME_POS_X 120
#define LEVEL_NAME_POS_Y 40

#define TEXT_SCREEN_BLOCK 28

void print_level_info(u16 level_id);
void do_page_change(u16 level_id);
void draw_endless_distance_menu(s32 x, s32 y, s32 page, u32 value);

#define HALF_U64 ((u64)1 << 63)

EWRAM_DATA u16 bg_lvl_select_color;
EWRAM_DATA u16 bg_lvl_select_color_target;

u64 target_scroll_x;
#define scroll_page intended_scroll_y // REPURPOSED FOR MENU

struct FaceDefinition {
    u16 tiles[4*4];
    COLOR color[3]; // 0 = lighter, 1 = darker, 2 = eye/tongue color
};

ROM_DATA const struct FaceDefinition faces[DIFF_COUNT] = {
    // Easy
    {
        .tiles = {
            0x5F, 0x5F, 0x5F, 0x5F,
            0x5F, 0xA0, 0xA1, 0x5F,
            0x5F, 0xB0, 0xB1, 0x5F,
            0x5F, 0x5F, 0x5F, 0x5F,
        },
        .color = {
            CLR_CYAN, CLR_BLUE, CLR_RED
        }
    },
    // Normal
    {
        .tiles = {
            0x5F, 0x5F, 0x5F, 0x5F,
            0x5F, 0xA2, 0xA3, 0x5F,
            0x5F, 0xB2, 0xB3, 0x5F,
            0x5F, 0x5F, 0x5F, 0x5F,
        },
        .color = {
            0x03E0, 0x0202, CLR_RED
        }
    },
    // Hard
    {
        .tiles = {
            0x5F, 0x5F, 0x5F, 0x5F,
            0x5F, 0xA4, 0xA5, 0x5F,
            0x5F, 0xB4, 0xB5, 0x5F,
            0x5F, 0x5F, 0x5F, 0x5F,
        },
        .color = {
            0x03FF, 0x01FF, CLR_RED
        }
    },
    // Harder
    {
        .tiles = {
            0x5F, 0x5F, 0x5F, 0x5F,
            0x5F, 0xA6, 0xA7, 0x5F,
            0x5F, 0xB6, 0xB7, 0x5F,
            0x5F, 0x5F, 0x5F, 0x5F,
        },
        .color = {
            0x01DF, 0x001F, CLR_RED
        }
    },
    // Insane
    {
        .tiles = {
            0x5F, 0x5F, 0x5F, 0x5F,
            0x5F, 0xA8, 0xA9, 0x5F,
            0x5F, 0xB8, 0xB9, 0x5F,
            0x5F, 0x5F, 0x5F, 0x5F,
        },
        .color = {
            0x6DFF, 0x785D, CLR_RED
        }
    },
    // Demon
    {
        .tiles = {
            0xC8, 0xC9, 0xCA, 0xCB,
            0xD8, 0xD9, 0xDA, 0xDB,
            0xE8, 0xE9, 0xEA, 0xEB,
            0xF8, 0xF9, 0xFA, 0xFB,
        },
        .color = {
            0x28FF, 0x009C, CLR_LIME
        }
    },
    // Auto
    {
        .tiles = {
            0x5F, 0x5F, 0x5F, 0x5F,
            0x5F, 0xAC, 0xAD, 0x5F,
            0x5F, 0xBC, 0xBD, 0x5F,
            0x5F, 0x5F, 0x5F, 0x5F,
        },
        .color = {
            0x03FF, 0x01FF, CLR_CYAN
        }
    },
    // NA
    {
        .tiles = {
            0x5F, 0x5F, 0x5F, 0x5F,
            0x5F, 0xAA, 0xAB, 0x5F,
            0x5F, 0xBA, 0xBB, 0x5F,
            0x5F, 0x5F, 0x5F, 0x5F,
        },
        .color = {
            0x4A52, 0x35AD, CLR_BLACK
        }
    },
    // Easy Demon
    {
        .tiles = {
            0x5F, 0x5F, 0x5F, 0x5F,
            0x5F, 0xD1, 0xD2, 0x5F,
            0x5F, 0xE1, 0xE2, 0x5F,
            0x5F, 0x5F, 0x5F, 0x5F,
        },
        .color = {
            0x7D12, 0x3C4B, CLR_CYAN
        }
    },
    // Medium Demon
    {
        .tiles = {
            0x5F, 0xC5, 0xC6, 0x5F,
            0x5F, 0xD5, 0xD6, 0x5F,
            0x5F, 0xE5, 0xE6, 0x5F,
            0x5F, 0x5F, 0x5F, 0x5F,
        },
        .color = {
            0x64FB, 0x284F, 0x53C2
        }
    },
    // Hard Demon
    {
        .tiles = {
            0xC8, 0xC9, 0xCA, 0xCB,
            0xD8, 0xD9, 0xDA, 0xDB,
            0xE8, 0xE9, 0xEA, 0xEB,
            0xF8, 0xF9, 0xFA, 0xFB,
        },
        .color = {
            0x28FF, 0x009C, CLR_LIME
        }
    },
    // Insane demon
    {
        .tiles = {
            0xCC, 0xCD, 0xCE, 0xCF,
            0xDC, 0xDD, 0xDE, 0xDF,
            0xEC, 0xED, 0xEE, 0xEF,
            0xFC, 0xFD, 0xFE, 0xFF,
        },
        .color = {
            0x0C9E, 0x000F, CLR_YELLOW
        }
    },
    // Extreme demon
    {
        .tiles = {
            0x100, 0x101, 0x102, 0x103,
            0x110, 0x111, 0x112, 0x113,
            0x120, 0x121, 0x122, 0x123,
            0x130, 0x131, 0x132, 0x133,
        },
        .color = {
            0x0416, 0x0008, CLR_YELLOW
        }
    },
};

#define NORMAL_MODE_X 9
#define NORMAL_MODE_Y 10

#define PRACTICE_MODE_X 8
#define PRACTICE_MODE_Y 13

#define BEST_DISTANCE_X 8
#define BEST_DISTANCE_Y 10

ROM_DATA const char normal_mode_text[] = { 0x14, 0x1e, 0x18, 0x15, 0x19, 0x16, 0x00, 0x00, 0x15, 0x1e, 0x1f, 0x1d };
ROM_DATA const char practice_mode_text[] = { 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1a, 0x1d, 0x00, 0x00, 0x15, 0x1e, 0x1f, 0x1d };
ROM_DATA const char best_distance_text[] = { 0x11, 0x1d, 0x13, 0x1b, 0x00, 0x00, 0x1f, 0x1c, 0x13, 0x1b, 0x19, 0x14, 0x1a, 0x1d };

#define FIRST_FACE_PAL 0x30
#define FIRST_FACE_COLOR 0x2
#define LAST_FACE_COLOR  0xb

void make_face_palette(u16 difficulty, u16 pal) {
    struct FaceDefinition face = faces[difficulty];
    
    palette_buffer[pal + 0x01] = CLR_WHITE;
    palette_buffer[pal + 0x0d] = face.color[2];
    
    s32 value = 0;
    for (s32 id = FIRST_FACE_COLOR; id <= LAST_FACE_COLOR; id++) {
        palette_buffer[pal + id] = blend_clr(face.color[0], face.color[1], value);
        value += 0x1f / (LAST_FACE_COLOR - FIRST_FACE_COLOR + 1);
    }
}

ARM_CODE void hblank_lvl_select_handler() {
    u32 vcount = REG_VCOUNT;
    if (vcount < 128) {
        u16 blended = blend_clr(bg_lvl_select_color, bg_lvl_select_color_target, vcount >> 2);
        u16 blended_darker = blend_clr(blended, 0, 0x10);
        pal_bg_mem[0] = blended;
        if (game_state == STATE_LEVEL_SELECT) {
            pal_bg_mem[0x121] = blended;
            pal_bg_mem[0x12] = blended_darker;
            pal_bg_mem[0x24] = blended_darker;
            pal_bg_mem[0x3e] = blended_darker;
            pal_bg_mem[0x4e] = blended_darker;
            pal_bg_mem[0x122] = blended_darker;
        } else {
            pal_bg_mem[0x2] = blended_darker;
            pal_bg_mem[0x10f] = blended_darker;
        }
    }
}

void level_select_loop() {
    // Failsafes in case of 0 levels in a menu
    if (custom_levels && NUM_ROBTOP_LEVELS == LEVEL_COUNT) {
        game_state = STATE_TITLE_SCREEN;
        return;
    } else if (!custom_levels && NUM_ROBTOP_LEVELS == 0) {
        game_state = STATE_TITLE_SCREEN;
        return;
    }

    // Enable all BGs, also enable sprites
    REG_DISPCNT = DCNT_OBJ | DCNT_OBJ_1D | DCNT_MODE0 | DCNT_BG0 | DCNT_BG1 | DCNT_BG2 | DCNT_BG3;

    REG_BG0CNT  = BG_CBB(0) | BG_SBB(26) | BG_REG_32x32 | BG_PRIO(1);
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;

    REG_BG1CNT  = BG_CBB(0) | BG_SBB(27) | BG_REG_32x32 | BG_PRIO(2);
    REG_BG1HOFS = 0;
    REG_BG1VOFS = 0;

    REG_BG3CNT  = BG_CBB(0) | BG_SBB(30) | BG_REG_32x64 | BG_PRIO(0);
    REG_BG2VOFS = 0;

    memset32(palette_buffer, 0, 256);
    memcpy16(palette_buffer, menu_palette, sizeof(menu_palette) / sizeof(COLOR));

    memcpy16(&palette_buffer[256], menu_spr_palette, sizeof(menu_spr_palette) / sizeof(COLOR));

    if (custom_levels) {
        memcpy16(&palette_buffer[256], menu_user_coin_palette, sizeof(menu_user_coin_palette) / sizeof(COLOR));
    } else {
        memcpy16(&palette_buffer[256], menu_secret_coin_palette, sizeof(menu_secret_coin_palette) / sizeof(COLOR));
    }

    // Init PUSAB font
    tte_init_se(
        2,                                     // Background number (BG 2)
        BG_CBB(0) | BG_SBB(TEXT_SCREEN_BLOCK) | BG_REG_64x32 | BG_PRIO(3), // BG control (for REG_BGxCNT)
        0,                                     // Tile offset (special cattr)
        0,                                     // Ink color
        0,                                     // BitUnpack offset (on-pixel = 15)
        &pusabFont,                            // Default font (sys8)
        NULL);                                 // Default renderer (se_drawg_s)


    tte_set_special(0x2000);

    memcpy32(&tile_mem[0][0], level_select_chr, sizeof(level_select_chr) / 4);
    memcpy32(&tile_mem_obj[0][0], &level_select_chr[0x180], sizeof(level_select_chr) / 8);
    memcpy32(&tile_mem_obj[0][992], level_text_chr, sizeof(TILE) * 32 / 4);

    memcpy32(&se_mem[26][0], level_select_l0_tilemap, sizeof(level_select_l0_tilemap) / 4);
    memcpy32(&se_mem[27][0], level_select_l1_tilemap, sizeof(level_select_l1_tilemap) / 4);
    memcpy32(&se_mem[28][0], level_select_l2_tilemap, sizeof(level_select_l2_tilemap) / 4);
    memcpy32(&se_mem[29][0], level_select_l2_tilemap, sizeof(level_select_l2_tilemap) / 4);
    memset32(&se_mem[30][0], dup16(SE_BUILD(0x00, 0, 0, 0)), sizeof(SCREENBLOCK) / 2);

    // Button glyph chr
    memcpy16(&palette_buffer[0x1f0], button_glyph_pal, sizeof(button_glyph_pal) / sizeof(COLOR));
    memcpy32(&tile_mem_obj[0][512], &title_screen_chr[0xf0], 24 * sizeof(TILE8) / 4);


    if (loaded_level_id < NUM_ROBTOP_LEVELS && custom_levels) loaded_level_id = NUM_ROBTOP_LEVELS;
    else if (loaded_level_id >= NUM_ROBTOP_LEVELS && !custom_levels) loaded_level_id = 0;

    s32 level_id = loaded_level_id;
    
    // Set BG color and disable any prior transition
    col_trigger_buffer[0][COL_TRIG_BUFF_ACTIVE] = FALSE;
    menu_set_bg_color(palette_buffer, menu_bg_colors[level_id % (sizeof(menu_bg_colors) / sizeof(COLOR))]);

    // Page wraps with the approach function are weird, so I just make it all continuous by placing it in the middle of an u64
    // It would take 290 and a half years of non stop pressing right/left every frame to get an overflow
    target_scroll_x = HALF_U64 + ((level_id * 256) << SUBPIXEL_BITS);
    scroll_x = target_scroll_x;
    scroll_page = HALF_U64 + level_id; 

    REG_BG2HOFS = REG_BG3HOFS = scroll_x >> SUBPIXEL_BITS;

    // Do page change
    do_page_change(level_id);
    
    // Init OAM
    memset32(shadow_oam, ATTR0_HIDE, 256);
    obj_copy(oam_mem, shadow_oam, 128);

    irq_enable(II_HBLANK);
    
    s32 min, max;

    if (custom_levels) {
        min = NUM_ROBTOP_LEVELS;
        max = LEVEL_COUNT;
    } else {
        min = 0;
        max = NUM_ROBTOP_LEVELS;
    }

    fade_in_menu();
    while (1) {
        key_poll();
        
        // Approach target value
        scroll_x = approach_value_asymptotic(scroll_x, target_scroll_x, 0x2800, 0x300000);
        
        // Copy palette from buffer
        memcpy32(pal_bg_mem, palette_buffer, 256);

        do_menu_color_transition();
        bg_lvl_select_color = palette_buffer[0];
        bg_lvl_select_color_target = blend_clr(palette_buffer[0], 0, MENU_GRADIENT_DARKER_FACTOR);

        // Draw sprites
        put_level_info_sprites(level_id, min, max);
        draw_button_glyphs_level_select();

        REG_BG2HOFS = REG_BG3HOFS = scroll_x >> SUBPIXEL_BITS;

        // Copy to OAM
        obj_copy(oam_mem, shadow_oam, 128);

        // Clear OAM
        memset32(shadow_oam, ATTR0_HIDE, 256);
        
        nextSpr = 0;

#ifdef DEBUG
        if (key_hit(KEY_L)) {
            noclip ^= 1;
        }
#endif

        // Go right
        if (key_hit(KEY_RIGHT)) {
            // Increment level ID
            level_id++;
            scroll_page++;
            level_id = WRAP(level_id, min, max);

            do_page_change(level_id);
        }

        // Go left
        if (key_hit(KEY_LEFT)) {
            // Decrement level ID
            level_id--;
            scroll_page--;
            level_id = WRAP(level_id, min, max);

            do_page_change(level_id);
        }

        if (key_hit(KEY_A | KEY_START)) {
            // Start the level
            loaded_level_id = level_id;
            mmStop();
            mmEffect(SFX_LEVEL_ENTER);
            for (s32 i = 0; i < 30; i++) {
                VBlankIntrWait();
            }
            fade_out();
            game_state = STATE_PLAYING;
            irq_disable(II_HBLANK);
            break;
        }

        // Title screen
        if (key_hit(KEY_B)) {
            fade_out();
            game_state = STATE_TITLE_SCREEN;
            irq_disable(II_HBLANK);
            break;
        }

        // Wait for VSYNC
        VBlankIntrWait();
    }
}


void draw_button_glyphs_level_select() {
    oam_metaspr(16, 16, menuButton, FALSE, FALSE, 516, 15, PRIORITY_DONT_DISABLE_0 | 0, 0, TRUE, FALSE); // B
}

void do_menu_color_transition() {
    if (col_trigger_buffer[0][COL_TRIG_BUFF_ACTIVE]) {
        COLOR old_color = col_trigger_buffer[0][COL_TRIG_BUFF_OLD_COLOR];
        COLOR new_color = col_trigger_buffer[0][COL_TRIG_BUFF_NEW_COLOR];
        u16 frames      = col_trigger_buffer[0][COL_TRIG_BUFF_TOTAL_FRAMES];
        u16 curr_frame  = col_trigger_buffer[0][COL_TRIG_BUFF_CURRENT_FRAMES];

        u32 lerp_value = (TO_FIXED(curr_frame) / (frames - 1)); //  GBA DOESN'T HAVE DIVISION !!!!!
        COLOR lerped_color = lerp_color(old_color, new_color, lerp_value);

        // Set BG color
        menu_set_bg_color(palette_buffer, lerped_color);

        col_trigger_buffer[0][COL_TRIG_BUFF_CURRENT_FRAMES] = ++curr_frame;

        // If we reached total frames, then deactivate color change
        if (curr_frame >= frames) {
            col_trigger_buffer[0][COL_TRIG_BUFF_ACTIVE] = FALSE;
        }
    }
}

void do_page_change(u16 level_id) {
    // Erase written text depending on page
    if (scroll_page & 1) {
        tte_erase_rect(0, 256, 240, 512);
    } else {
        tte_erase_rect(0, 0, 240, 256);
    }

    // Write level name
    print_level_info(level_id);

    // Set transition variables
    col_trigger_buffer[0][COL_TRIG_BUFF_ACTIVE] = TRUE;
    col_trigger_buffer[0][COL_TRIG_BUFF_OLD_COLOR] = palette_buffer[BG_COLOR];
    col_trigger_buffer[0][COL_TRIG_BUFF_NEW_COLOR] = menu_bg_colors[level_id % (sizeof(menu_bg_colors) / sizeof(COLOR))];
    col_trigger_buffer[0][COL_TRIG_BUFF_TOTAL_FRAMES] = 15;
    col_trigger_buffer[0][COL_TRIG_BUFF_CURRENT_FRAMES] = 0;
    
    // Set target scroll x
    target_scroll_x = HALF_U64 + ((scroll_page * 256) << SUBPIXEL_BITS);
}


// --- Constants (in tiles) ---
#define AREA_WIDTH            18
#define AREA_HEIGHT           6
#define MARGIN                1
#define FACE_WIDTH            2
#define FACE_HEIGHT           2
#define FACE_TILE_ID_OFFSET   0xA0
#define GAP                   1
#define OFFSET_X              6
#define OFFSET_Y              3 

// The usable width inside margins
#define USABLE_WIDTH          (AREA_WIDTH - 2 * MARGIN)
// Maximum allowed text width per line (face is on the left, then gap, then text)
#define MAX_TEXT_WIDTH_ALLOWED (USABLE_WIDTH - (FACE_WIDTH + GAP))

// Maximum number of lines we can wrap into
#define MAX_LINES             4

// --- Word Wrapping Function ---
// This function splits the input text into lines so that each line is no longer
// than 'max_width' characters (tiles). It respects word boundaries when possible.
// If a word is longer than max_width, it will be split
s32 word_wrap(const char *text, s32 max_width, char lines[][max_width + 1], s32 max_lines) {
    s32 line_count = 0;
    s32 i = 0;
    s32 len = strlen(text);
    char current_line[max_width + 1];
    s32 current_length = 0;

    while (i < len) {
        // Skip any leading spaces.
        while (i < len && isspace((unsigned char)text[i])) {
            i++;
        }
        if (i >= len) break;

        // Identify the next word.
        s32 word_start = i;
        while (i < len && !isspace((unsigned char)text[i])) {
            i++;
        }
        s32 word_len = i - word_start;

        // If the word is longer than max_width, break it into pieces.
        if (word_len > max_width) {
            s32 word_pos = 0;
            while (word_pos < word_len) {
                s32 chunk = (word_len - word_pos < max_width) ? (word_len - word_pos) : max_width;
                // If there is already text in current_line, end that line first.
                if (current_length > 0) {
                    current_line[current_length] = '\0';
                    if (line_count < max_lines) {
                        strcpy(lines[line_count], current_line);
                        line_count++;
                    }
                    current_length = 0;
                }
                // Copy a chunk of the word into current_line.
                strncpy(current_line, text + word_start + word_pos, chunk);
                current_line[chunk] = '\0';
                if (line_count < max_lines) {
                    strcpy(lines[line_count], current_line);
                    line_count++;
                }
                word_pos += chunk;
            }
            continue; // Word has been processed.
        }

        // If adding this word would exceed the current line's limit, finish the line.
        if (current_length > 0 && current_length + 1 + word_len > max_width) {
            current_line[current_length] = '\0';
            if (line_count < max_lines) {
                strcpy(lines[line_count], current_line);
                line_count++;
            }
            current_length = 0;
        }

        // If this isn’t the first word on the line, add a space.
        if (current_length > 0) {
            current_line[current_length] = ' ';
            current_length++;
        }
        // Append the word.
        strncpy(current_line + current_length, text + word_start, word_len);
        current_length += word_len;
    }

    // Add any remaining text as the last line.
    if (current_length > 0) {
        current_line[current_length] = '\0';
        if (line_count < max_lines) {
            strcpy(lines[line_count], current_line);
            line_count++;
        }
    }

    return line_count;
}


void print_level_info(u16 level_id) {
    // Get level name
    char *level_name = (char *) level_names[level_id];
    
    // Buffer for wrapped lines
    char lines[MAX_LINES][MAX_TEXT_WIDTH_ALLOWED + 1];
    
    // Add terminator character for all lines
    for (s32 line = 0; line < MAX_LINES; line++) {
        lines[line][0] = '\0';
    }

    // Obtain number of lines and fill the lines buffer
    s32 num_lines = word_wrap(level_name, MAX_TEXT_WIDTH_ALLOWED, lines, MAX_LINES);

    // Determine the maximum line length
    s32 max_line_length = 0;
    for (s32 i = 0; i < num_lines; i++) {
        s32 line_len = strlen(lines[i]);

        if (line_len > max_line_length) {   
            // Update maximum line length
            max_line_length = line_len;
        }
    }

    // Compute the width of the combined block (text + gap + face)
    s32 block_width = max_line_length + GAP + FACE_WIDTH;

    // Calculate the starting X coordinate for the block within the usable area
    s32 start_x = OFFSET_X + MARGIN + (USABLE_WIDTH - block_width) / 2;
    // Center the text block vertically within the area (ignoring the margins)
    s32 start_y = OFFSET_Y + MARGIN + (AREA_HEIGHT - 2 * MARGIN - num_lines) / 2;
    
    // Face position:
    // Since the face is to the left, its left edge is at start_x
    s32 face_x = start_x;
    // Vertically center the 2-tile-high face relative to the text block
    s32 face_y = start_y + (num_lines - FACE_HEIGHT) / 2;

    // Text position:
    // The text should start to the right of the face plus the GAP
    s32 text_start_x = start_x + FACE_WIDTH + GAP;

    // Shift down one tile if odd line count
    if (num_lines & 1) start_y++;

    // Get target screen block number
    s32 sb_number = TEXT_SCREEN_BLOCK;

    // Add SCREENBLOCK_H to start_y to print on the second screen block
    if (scroll_page & 1) {
        sb_number++;
        start_y += SCREENBLOCK_H;
    }

    memcpy32(&se_mem[sb_number][0], level_select_l2_tilemap, sizeof(level_select_l2_tilemap) / 4);

    // Print all lines
    for (s32 line = 0; line < MAX_LINES; line++) {
        tte_set_pos(text_start_x << 3, (start_y + line) << 3);
        tte_write(lines[line]);
    }
        
    // Now place the face
    u32 *properties_pointer = (u32*) level_defines[level_id][LEVEL_PROPERTIES_INDEX];
    u32 difficulty = properties_pointer[LEVEL_DIFFICULTY];
    
    u32 palette = 3 + (scroll_page & 1);

    make_face_palette(difficulty, palette << 4);

    // Plot tiles
    for (s32 x = 0; x < 4; x++) { 
        for (s32 y = 0; y < 4; y++) {
            u32 face_index = x + (y << 2);
            u16 tile = faces[difficulty].tiles[face_index];
            se_plot(&se_mem[sb_number][0], x + face_x - 1, y + face_y - 1, SE_BUILD(tile, palette, 0, 0));
        }
    }
    // Put progress bar text
#ifdef INCLUDE_ENDLESS
    if (level_id != endless_ID) {
#endif
        // Non endless have normal mode and practice mode texts
        for (u32 i = 0; i < sizeof(normal_mode_text); i++) {
            se_plot(&se_mem[sb_number][0], NORMAL_MODE_X + i, NORMAL_MODE_Y, SE_BUILD(normal_mode_text[i], 2, 0, 0));
        }

        for (u32 i = 0; i < sizeof(practice_mode_text); i++) {
            se_plot(&se_mem[sb_number][0], PRACTICE_MODE_X + i, PRACTICE_MODE_Y, SE_BUILD(practice_mode_text[i], 2, 0, 0));
        }
#ifdef INCLUDE_ENDLESS
    } else {
        // Endless only has a bar, called best distance
        for (u32 i = 0; i < sizeof(best_distance_text); i++) {
            se_plot(&se_mem[sb_number][0], BEST_DISTANCE_X + i, BEST_DISTANCE_Y, SE_BUILD(best_distance_text[i], 2, 0, 0));
        }
        
        se_rect(&se_mem[sb_number][0], 6, 13, 24, 15, SE_BUILD(0x00, 0, 0, 0));
    }
#endif
}

#define PROGRESS_BAR_POS_X 6
#define NORMAL_PROGRESS_BAR_POS_Y 11
#define PRACTICE_PROGRESS_BAR_POS_Y 14
#define BAR_WIDTH_PX 144

#define EVEN_PAGE_BAR_SB 28
#define ODD_PAGE_BAR_SB  29

void put_level_info_sprites(u16 level_id, s32 min, s32 max) {
    s32 adjacent_level_id;

    if (scroll_x < target_scroll_x) {
        // Going to the right
        adjacent_level_id = WRAP((level_id - 1), min, max);
    } else {
        // Going to the left
        adjacent_level_id = WRAP((level_id + 1), min, max);
    }

    // Current page
    struct SaveLevelData *level_properties = obtain_level_data(level_id);

    u8 page = (scroll_page & 1);
    u32 sb = page ? ODD_PAGE_BAR_SB : EVEN_PAGE_BAR_SB;

    put_star_number(level_id, page);
    put_coin_sprites(level_id, page);
#ifdef INCLUDE_ENDLESS
    if (level_id != endless_ID) {
#endif
        draw_progress_bar(PROGRESS_BAR_POS_X, NORMAL_PROGRESS_BAR_POS_Y, sb, page, level_properties->normal_progress, 100, BAR_WIDTH_PX, BAR_TYPE_NORMAL_MODE);
        draw_progress_bar(PROGRESS_BAR_POS_X, PRACTICE_PROGRESS_BAR_POS_Y, sb, page, level_properties->practice_progress, 100, BAR_WIDTH_PX, BAR_TYPE_PRACTICE_MODE);
#ifdef INCLUDE_ENDLESS
    } else {
        draw_endless_distance_menu(PROGRESS_BAR_POS_X, NORMAL_PROGRESS_BAR_POS_Y, page, save_data.endless_distance);
    }
#endif

    // Adjacent page (going to that one when switching)
    struct SaveLevelData *adjacent_properties = obtain_level_data(adjacent_level_id);

    u32 adjacent_sb = (page ^ 1) ? ODD_PAGE_BAR_SB : EVEN_PAGE_BAR_SB;

    put_star_number(adjacent_level_id, page ^ 1);
    put_coin_sprites(adjacent_level_id, page ^ 1);
#ifdef INCLUDE_ENDLESS
    if (adjacent_level_id != endless_ID) {
#endif
        draw_progress_bar(PROGRESS_BAR_POS_X, NORMAL_PROGRESS_BAR_POS_Y, adjacent_sb, page ^ 1, adjacent_properties->normal_progress, 100, BAR_WIDTH_PX, BAR_TYPE_NORMAL_MODE);
        draw_progress_bar(PROGRESS_BAR_POS_X, PRACTICE_PROGRESS_BAR_POS_Y, adjacent_sb, page ^ 1, adjacent_properties->practice_progress, 100, BAR_WIDTH_PX, BAR_TYPE_PRACTICE_MODE);
#ifdef INCLUDE_ENDLESS
    } else {
        draw_endless_distance_menu(PROGRESS_BAR_POS_X, NORMAL_PROGRESS_BAR_POS_Y, page ^ 1, save_data.endless_distance);
    }
#endif
}

void draw_endless_distance_menu(s32 x, s32 y, s32 page, u32 value) {
    // Obtain relatives
    u32 offset_x = ((page & 1) ? 256 : 0);
    s32 relative_x = (offset_x + ((x - 1) << 3)) - ((scroll_x >> SUBPIXEL_BITS) & 0x1ff);

    s32 calc_x = relative_x + (BAR_WIDTH_PX >> 1);

    u32 digits = get_n_digits(value);
    u32 pixels = digits * 8;

    u32 percentage_pos = calc_x + (pixels / 2);

    draw_sprite_number(percentage_pos, y << 3, value, FIRST_NUMBER_ID, menuNumberSpr, 2);
}

#define STAR_COUNT_POS_X 172
#define STAR_COUNT_POS_Y 28
void put_star_number(u16 level_id, u16 page) {
    // Obtain relatives
    u32 offset_x = (page & 1 ? 256 : 0);
    s32 relative_x = (offset_x + STAR_COUNT_POS_X) - ((scroll_x >> SUBPIXEL_BITS) & 0x1ff);

    // Put star sprite
    oam_metaspr(relative_x + 8, STAR_COUNT_POS_Y, menuStarSpr, FALSE, FALSE, 0, -1, 2, 0, TRUE, FALSE);
    
    u32 *properties_pointer = (u32*) level_defines[level_id][LEVEL_PROPERTIES_INDEX];
    u32 stars = properties_pointer[LEVEL_STARS_NUM];
#ifdef INCLUDE_ENDLESS
    if (level_id == endless_ID) stars = get_endless_star_value();
#endif
    draw_sprite_number(relative_x, STAR_COUNT_POS_Y, stars, FIRST_NUMBER_ID, menuNumberSpr, 2);
}

#define MENU_COIN_X 154
#define MENU_COIN_Y 56
void put_coin_sprites(u16 level_id, u16 page) {
    // Obtain relatives
    u32 offset_x = (page & 1 ? 256 : 0);
    s32 relative_x = (offset_x + MENU_COIN_X) - ((scroll_x >> SUBPIXEL_BITS) & 0x1ff);

    // Obtain level data
    struct SaveLevelData *level_data = obtain_level_data(level_id);

    u32 *properties_pointer = (u32*) level_defines[level_id][LEVEL_PROPERTIES_INDEX];
    u32 level_coins_num = properties_pointer[LEVEL_COINS_NUM];
    
    offset_x = (3 - level_coins_num) * 11;
    

    // Dont display anything if the level has no coins
    if (level_coins_num < 1) return;

    // Put coin 1 sprite
    if (level_data->coin1) {
        oam_metaspr(relative_x + offset_x, MENU_COIN_Y, gottenCoinSpr, FALSE, FALSE, 0, -1, 2, 0, TRUE, FALSE);
    } else {
        oam_metaspr(relative_x + offset_x, MENU_COIN_Y, ungottenCoinSpr, FALSE, FALSE, 0, -1, 2, 0, TRUE, FALSE);
    }
    
    // Dont display the rest of coins if the level has only one coin
    if (level_coins_num < 2) return;

    // Put coin 2 sprite
    if (level_data->coin2) {
        oam_metaspr(relative_x + offset_x + 11, MENU_COIN_Y, gottenCoinSpr, FALSE, FALSE, 0, -1, 2, 0, TRUE, FALSE);
    } else {
        oam_metaspr(relative_x + offset_x + 11, MENU_COIN_Y, ungottenCoinSpr, FALSE, FALSE, 0, -1, 2, 0, TRUE, FALSE);
    }

    // Dont display the third coin if the level has only two coins
    if (level_coins_num < 3) return;


    // Put coin 3 sprite
    if (level_data->coin3 && level_coins_num > 2) {
        oam_metaspr(relative_x + offset_x + 22, MENU_COIN_Y, gottenCoinSpr, FALSE, FALSE, 0, -1, 2, 0, TRUE, FALSE);
    } else {
        oam_metaspr(relative_x + offset_x + 22, MENU_COIN_Y, ungottenCoinSpr, FALSE, FALSE, 0, -1, 2, 0, TRUE, FALSE);
    }
}

#define EMPTY_BAR  0x9f

#define NORMAL_MODE_BAR_TILE  0x7e
#define NORMAL_MODE_FINE_ID   11

#define PRACTICE_MODE_BAR_TILE  0x7f
#define PRACTICE_MODE_FINE_ID   12

void draw_progress_bar(s32 x, s32 y, s32 sb, u32 page, u32 value, u32 max, u32 width, u32 bar_type) {
    // Calculate pixels
    FIXED_16 factor = FIXED_DIV_LONG(TO_FIXED(value), TO_FIXED(max));
    FIXED_16 progress_px = FROM_FIXED(factor * (width - 2));

    // Get tile IDs
    u32 bar  = (bar_type == BAR_TYPE_NORMAL_MODE) ? NORMAL_MODE_BAR_TILE  : PRACTICE_MODE_BAR_TILE;
    
    s32 tiles = width >> 3;

    // Put progress tiles
    s32 counter = 0;
    for (s32 i = progress_px; i >= 8; i -= 8) {
        se_plot(&se_mem[sb][0], x + counter, y, SE_BUILD(bar, 1, 0, 0));
        counter++;
    }

    // Put rest of bar tiles
    for (; counter < tiles; counter++) {
        se_plot(&se_mem[sb][0], x + counter, y, SE_BUILD(EMPTY_BAR, 1, 0, 0));
    }

    // Get fine sprite ID
    u32 fine = (bar_type == BAR_TYPE_NORMAL_MODE) ? NORMAL_MODE_FINE_ID : PRACTICE_MODE_FINE_ID;

    // Obtain relatives
    u32 offset_x = ((page & 1) ? 256 : 0);
    s32 relative_x = (offset_x + ((x - 1) << 3)) - ((scroll_x >> SUBPIXEL_BITS) & 0x1ff);

    // Draw percentage numbers
    draw_percentage(relative_x + (width >> 1) - 8, y << 3, value, menuNumberSpr, 2);

    // Draw progress bar sprites
    oam_metaspr(relative_x + 1, y << 3, fineBarMaskSpr, FALSE, FALSE, 0, -1, 2, 0, TRUE, FALSE);
    oam_metaspr(relative_x + width - 1, y << 3, fineBarMaskSpr, TRUE, FALSE, 0, -1, 2, 0, TRUE, FALSE);
    oam_metaspr(relative_x + progress_px + 1, y << 3, fineBarSpr, FALSE, FALSE, fine, -1, 2, 0, TRUE, FALSE);
}