#include "level_routines.h"
#include "memory.h"
#include "main.h"
#include "metatiles.h"
#include <maxmod.h>
#include "soundbank.h"
#include "level_select.h"
#include "physics_defines.h"
#include "../levels/includes.h"
#include "icon_kit.h"

#define TOP_SCROLL_Y 0x24
#define BOTTOM_SCROLL_Y SCREEN_HEIGHT-0x24

// RLE variables
u16 value[LEVEL_LAYERS];
s32 length[LEVEL_LAYERS];

u64 bitstream[LEVEL_LAYERS]; // Buffer for the next packed bits
s32 bits_left[LEVEL_LAYERS]; // Track how many bits are left in the current bitstream

// Scroll seam pos
s32 seam_x, seam_y;

// Last decompressed column
u8 decompressed_column;


void screen_scroll_load();
ARM_CODE void decompress_column(u32 layer);
void scroll_H(u32 layer, s32 mt_count);
void increment_column();
void put_ground();
void unpack_rle_packet(u32 layer);
void restore_practice_vars();

void decompress_first_screen() {
    // Put ground tiles
    put_ground();
    // Decompress the first screen
    for (u32 layer = 0; layer < LEVEL_LAYERS; layer++) {
        curr_column = 0;
        seam_x = scroll_x >> SUBPIXEL_BITS;
        // Init RLE values for this layer
        unpack_rle_packet(layer);

        for (s32 i = 0; i < 16; i++) {
            decompress_column(layer);
            // Draw this column
            for (s32 j = 0; j < 2; j++) {
                seam_y = (scroll_y >> SUBPIXEL_BITS);
                scroll_H(layer, 11);
                seam_x += 8;
                
            }
            increment_column();
        }
    }
}

void put_ground() {
    // Put ground column in the first layer, no need to put it in both as l1 will hide l2's ground
    for (u32 ground_column = 0; ground_column < LEVEL_BUFFER_WIDTH; ground_column++) {    
        s32 count = 0;
        // Place a column of blocks
        for (s32 i = GROUND_HEIGHT; i < MAX_LEVEL_HEIGHT; i++) {
            level_buffer[0][ground_column + (i * LEVEL_BUFFER_WIDTH)] = ground_pattern[(count << 2) + (ground_column & 0x3)];
            count++;
        }
    }
}
void increment_column() {
    // Increment for the next column of metatiles
    curr_column++;

    // If we are past the buffer width, go back to the start of it
    if (curr_column >= LEVEL_BUFFER_WIDTH) curr_column = 0;
}

void scroll_H(u32 layer, s32 mt_count) {
    for (s32 mt = 0; mt < mt_count; mt += 1) {
        for (s32 vtile = 0; vtile < 2; vtile++) {
            // Get metatile positions from seam
            s32 metatile_x = (seam_x >> 4) & 0x1f;
            s32 metatile_y = (seam_y >> 4);

            // Get metatile from the buffer
            s32 metatile = level_buffer[layer][metatile_x + (metatile_y * LEVEL_BUFFER_WIDTH)];

            // Get tile position from the seam
            s32 x = (seam_x >> 3) & 0x1f;
            s32 y = (seam_y >> 3) & 0x1f;

            // Obtain tile from the metatile table
            s32 tile = metatiles[metatile][(x & 1) | ((y & 1) << 1)];

            // Swap direction if screen is mirrored
            if (screen_mirrored) {
                x = (SCREENBLOCK_W - 1) - x;
                tile ^= SE_HFLIP;
            }

            // Put tile and advance to next tile
            se_plot(&se_mem[27 + layer][0], x, y, tile);
            seam_y += 8;
        }
    }   
}

void scroll_V(u32 layer) {
    for (s32 htile = 0; htile < 31; htile += 1) {
        // Get metatile positions from seam
        s32 metatile_x = (seam_x >> 4) & 0x1f;
        s32 metatile_y = (seam_y >> 4);
        
        // Get metatile from the buffer
        s32 metatile = level_buffer[layer][metatile_x + (metatile_y * LEVEL_BUFFER_WIDTH)];
        
        // Get tile position from the seam
        s32 x = (seam_x >> 3) & 0x1f;
        s32 y = (seam_y >> 3) & 0x1f;

        // Obtain tile from the metatile table
        s32 tile = metatiles[metatile][(x & 1) | ((y & 1) << 1)];

        // Swap direction if screen is mirrored
        if (screen_mirrored) {
            x = (SCREENBLOCK_W - 1) - x;
            tile ^= SE_HFLIP;
        }

        // Put tile and advance to next tile
        se_plot(&se_mem[27 + layer][0], x, y, tile);
        seam_x += 8;
    }
}

void screen_scroll_load() {
    // If the scroll x value changed block position, decompress a new column in both layers
    if (decompressed_column != ((scroll_x >> (4+SUBPIXEL_BITS)) & 0xff)) {
        decompress_column(0);
        decompress_column(1);
        decompressed_column += 1;

        increment_column();
    } 
    
    for (u32 layer = 0; layer < LEVEL_LAYERS; layer++) {
        // Draw horizontal seam
        seam_x = (scroll_x >> SUBPIXEL_BITS) + SCREEN_WIDTH;  
        seam_y = (scroll_y >> SUBPIXEL_BITS);
        
        scroll_H(layer, 10);

        // Draw bottom seam
        seam_x = (scroll_x >> SUBPIXEL_BITS);
        seam_y = (scroll_y >> SUBPIXEL_BITS) + SCREEN_HEIGHT;
        
        scroll_V(layer);
        
        // Draw top seam
        seam_x = (scroll_x >> SUBPIXEL_BITS);
        seam_y = (scroll_y >> SUBPIXEL_BITS);
            
        scroll_V(layer);
    }
}

ARM_CODE void practice_scroll_load() {
    // If the scroll x value changed block position, decompress a new column in both layers
    if (decompressed_column != ((scroll_x >> (4+SUBPIXEL_BITS)) & 0xff)) {
        decompress_column(0);
        decompress_column(1);
        decompressed_column += 1;

        increment_column();
    }
}

void unpack_overflow_check(u32 layer, u32 bits_left_check);

#define VALUE_SIZE_BITS 4   // 4 bits for value size
#define COUNT_SIZE_BITS 4   // 4 bits for length size

void unpack_rle_packet(u32 layer) {    

    unpack_overflow_check(layer, VALUE_SIZE_BITS);

    s32 value_length_size = (bitstream[layer] >> (bits_left[layer] - VALUE_SIZE_BITS)) & 0xf;
    value_length_size++;
    bits_left[layer] -= VALUE_SIZE_BITS;
    
    unpack_overflow_check(layer, value_length_size);

    value[layer] = (bitstream[layer] >> (bits_left[layer] - value_length_size)) & ((1 << value_length_size) - 1);
    bits_left[layer] -= value_length_size;
    
    unpack_overflow_check(layer, COUNT_SIZE_BITS);

    s32 count_length_size = (bitstream[layer] >> (bits_left[layer] - COUNT_SIZE_BITS)) & 0xf;
    count_length_size++;
    bits_left[layer] -= COUNT_SIZE_BITS;

    unpack_overflow_check(layer, count_length_size);

    length[layer] = (bitstream[layer] >> (bits_left[layer] - count_length_size)) & ((1 << count_length_size) - 1);
    bits_left[layer] -= count_length_size;
}

void unpack_overflow_check(u32 layer, u32 bits_left_check) {
    if (bits_left[layer] < (s32) bits_left_check) {
        bitstream[layer] = (bitstream[layer] << 32) | *level_pointer[layer];
        bits_left[layer] += 32;

        level_pointer[layer]++;
    }
}

ARM_CODE void decompress_column(u32 layer) {
    // RLE decompress an entire column of curr_level_height blocks
    for (s32 i = 0; i < curr_level_height; i++) {
        if (length[layer] < 0) {
            unpack_rle_packet(layer);
        }

        // Put the block on the buffer, exactly curr_level_height blocks above the ground and then i blocks down
        level_buffer[layer][curr_column + (((GROUND_HEIGHT) - curr_level_height + i) * LEVEL_BUFFER_WIDTH)] = value[layer];
        length[layer]--;
    }
}

void set_initial_color(COLOR bg_color, COLOR ground_color, COLOR col1_color, COLOR col2_color, COLOR col3_color, COLOR col4_color, COLOR obj_color) {
    set_bg_color(palette_buffer, bg_color);
    col_channels_color[BG_CHANNEL] = bg_color;

    set_ground_color(palette_buffer, ground_color);
    col_channels_color[GROUND_CHANNEL] = ground_color;

    set_color_channel_color(palette_buffer, col1_color, COL_1);
    col_channels_color[COL_1] = col1_color;
    
    set_color_channel_color(palette_buffer, col2_color, COL_2);
    col_channels_color[COL_2] = col2_color;
    
    set_color_channel_color(palette_buffer, col3_color, COL_3);
    col_channels_color[COL_3] = col3_color;
    
    set_color_channel_color(palette_buffer, col4_color, COL_4);
    col_channels_color[COL_4] = col4_color;

    set_obj_color(palette_buffer, obj_color);
    col_channels_color[OBJ_CHANNEL] = obj_color;

    col_channels_color[LINE_CHANNEL] = obj_color;

}

void reset_variables() {
    player_1.player_x = -0x110000;  
    player_1.relative_player_x = 0;
    player_1.player_y_speed = 0;
    player_1.on_slope = FALSE;
    player_1.player_size = SIZE_BIG;
    player_1.gravity_dir = GRAVITY_DOWN;
    coll_x = 0;
    coll_y = 0;
    player_death = FALSE;
    player_1.cube_rotation = 0;

    screen_mirrored = FALSE;
    mirror_scaling = float2fx(1.0);
    transition_frame = 0;
    screen_mirrored_transition = FALSE;

    curr_column = 0;
    player_1.on_floor = TRUE;
    player_1.on_floor_step = TRUE;
    bitstream[0] = bitstream[1] = 0;
    bits_left[0] = bits_left[1] = 0;

    wave_trail_pointer[ID_PLAYER_1] = 0;
    wave_trail_pointer[ID_PLAYER_2] = 0;

    cutscene_frame = 0;
    player_1.cutscene_initial_player_x = 0;
    player_1.cutscene_initial_player_y = 0;

    player_1.trail_on = FALSE;

    scroll_x = 0;
    last_sprite_x = 0;

    dual = DUAL_OFF;
    player_2 = curr_player = player_1;

    next_free_tile_id = START_OF_OBJECT_CHR;

    memset16(trail_enabled, 0x0000, sizeof(trail_enabled) / sizeof(u16));

    memset32(level_buffer, 0x0000, sizeof(level_buffer) / sizeof(u32));
    memset32(chr_slots, 0x0000, (sizeof(struct ObjectCHRSlot) * MAX_OBJECTS) / sizeof(u32));
    memset16(loaded_object_buffer, 0xffff, sizeof(loaded_object_buffer) / sizeof(s16));
    memset16(unloaded_object_buffer, 0xffff, sizeof(unloaded_object_buffer) / sizeof(s16));
    memset32(object_buffer, 0x0000, (sizeof(struct ObjectSlot) * MAX_OBJECTS) / sizeof(u32));
    memcpy16(&se_mem[26][0], square_background_tilemap, sizeof(square_background_tilemap) / 2);
    memset32(&se_mem[30][0], dup16(SE_BUILD(639, 0, 0, 0)), sizeof(SCREENBLOCK) / 2);

    memcpy16(&se_mem[30][0], level_complete_l3_tilemap, sizeof(level_complete_l3_tilemap) / 2);

    REG_BG0HOFS = REG_BG1HOFS = 0;
    REG_BG0VOFS = REG_BG1VOFS = scroll_y >> SUBPIXEL_BITS;
    
    REG_BG2HOFS = 0;
    REG_BG2VOFS = 34 + (scroll_y >> (5 + SUBPIXEL_BITS));

    REG_WIN0H = SCREEN_WIDTH;
    REG_WIN0V = SCREEN_HEIGHT;

    // Reset collected coins
    for (u32 index = 0; index < NUM_COINS_PER_LEVEL; index++) {
        coin_buffer[index] = 0;
    }

    // Empty chr slots
    for (u32 index = 0; index < MAX_OBJECTS; index++) {
        object_buffer[index].occupied = FALSE;
        chr_slots[index].rom_offset = 0xffffffff;
    }

    // Disable color changes
    for (u32 channel = 0; channel < CHANNEL_COUNT; channel++) {
        col_trigger_buffer[channel][COL_TRIG_BUFF_ACTIVE] = FALSE;
        col_channels_flags[channel] = 0;
    }

    rotate_saws();
    scale_pulsing_objects();
}

void load_level(u32 level_ID) {
    // Set level pointers
    level_pointer[0] = (u32*) level_defines[level_ID][L1_DATA_INDEX];
    level_pointer[1] = (u32*) level_defines[level_ID][L2_DATA_INDEX];
    sprite_pointer   = (u16*) level_defines[level_ID][SPRITE_DATA_INDEX];
    
    u32 *properties_pointer = (u32*) level_defines[level_ID][LEVEL_PROPERTIES_INDEX];

    // Get level variables
    COLOR bg_color = properties_pointer[BG_COLOR_INDEX];
    COLOR ground_color = properties_pointer[GROUND_COLOR_INDEX];
    COLOR col1_color = properties_pointer[COL1_COLOR_INDEX];
    COLOR col2_color = properties_pointer[COL2_COLOR_INDEX];
    COLOR col3_color = properties_pointer[COL3_COLOR_INDEX];
    COLOR col4_color = properties_pointer[COL4_COLOR_INDEX];
    COLOR obj_color = properties_pointer[OBJ_COLOR_INDEX];
    player_1.gamemode = properties_pointer[GAMEMODE_INDEX];
    speed_id = properties_pointer[SPEED_INDEX];
    curr_level_height = properties_pointer[LEVEL_HEIGHT_INDEX];
    curr_level_width = properties_pointer[LEVEL_WIDTH_INDEX];
    loaded_song_id = properties_pointer[LEVEL_SONG_INDEX];
    u32 background_type = properties_pointer[LEVEL_BACKGROUND_TYPE];
    u32 ground_type = properties_pointer[LEVEL_GROUND_TYPE];

    // Limit values to safe values
    if (loaded_song_id >= MSL_NSONGS) loaded_song_id = 0;
    if (curr_level_height >= MAX_LEVEL_HEIGHT) curr_level_height = MAX_LEVEL_HEIGHT - 1;
    if (player_1.gamemode >= GAMEMODE_COUNT) player_1.gamemode = GAMEMODE_CUBE;
    if (speed_id >= SPEED_COUNT) speed_id = SPEED_X1;

    // Put player on the ground
    player_1.player_y = ((GROUND_HEIGHT - 1) << (4 + SUBPIXEL_BITS)) + (0x2 << SUBPIXEL_BITS);  
    scroll_y = BOTTOM_SCROLL_LIMIT;
    intended_scroll_y = BOTTOM_SCROLL_LIMIT;

    // In case the gamemode has the camera restricted, set it there
    // Parameter given is -1 so it is set to the ground instantly
    set_target_y_scroll(-1);

    // Copy palettes into the buffer
    memcpy16(palette_buffer, blockPalette, sizeof(blockPalette) / sizeof(COLOR));
    memcpy16(&palette_buffer[256], spritePalette, sizeof(spritePalette) / sizeof(COLOR));
    set_player_colors(palette_buffer, palette_kit_colors[save_data.p1_col_selected], palette_kit_colors[save_data.p2_col_selected], palette_kit_colors[save_data.glow_col_selected]);

    // Set initial player gamemode CHR
    upload_player_chr(player_1.gamemode, ID_PLAYER_1);

    // Set BG and ground colors
    set_initial_color(bg_color, ground_color, col1_color, col2_color, col3_color, col4_color, obj_color);

    // Reset gameplay vars
    reset_variables();
    
    // Set background and ground
    set_background(background_type);
    set_ground(ground_type);

    // Set seam position and decompress the first screen
    seam_x = scroll_x >> SUBPIXEL_BITS;
    seam_y = scroll_y >> SUBPIXEL_BITS;
    
    decompress_first_screen();

    decompressed_column = 0;
    
    // Load objects if starting from 0%
    if (checkpoint_count == 0) load_objects(TRUE); 
}

void set_background(u16 background_ID) {
    switch (background_ID) {
        case BG_SQUARES:
            memcpy16(&se_mem[29][0], square_background_tilemap, sizeof(square_background_tilemap) / 2);
            memcpy32(&tile_mem[2][0], square_background_chr, sizeof(square_background_chr) / 4);
            break;
        case BG_CIRCLES:
            memcpy16(&se_mem[29][0], circle_background_tilemap, sizeof(circle_background_tilemap) / 2);
            memcpy32(&tile_mem[2][0], circle_background_chr, sizeof(circle_background_chr) / 4);
            break;
        case BG_LINES:
            memcpy16(&se_mem[29][0], line_background_tilemap, sizeof(line_background_tilemap) / 2);
            memcpy32(&tile_mem[2][0], line_background_chr, sizeof(line_background_chr) / 4);
            break;
        case BG_CHECKERBOARD:
            memcpy16(&se_mem[29][0], checkerboard_background_tilemap, sizeof(checkerboard_background_tilemap) / 2);
            memcpy32(&tile_mem[2][0], checkerboard_background_chr, sizeof(checkerboard_background_chr) / 4);
            break;
    }

    // Copy back menu tiles
    memcpy32(&tile_mem[2][528], level_complete_screen, sizeof(level_complete_screen) / 4);
}

#define GROUND_POS 896

void set_ground(u16 ground_ID) {
    u32 rom_index = (ground_ID >> 1) << 7;
    if (ground_ID & 1) {
        rom_index += 0b1000;
    }

    for (s32 i = 0; i < 8; i++) {
        s32 offset = i << 4;
        memcpy32(&tile_mem[0][GROUND_POS + offset], &grounds[rom_index + offset], (sizeof(TILE) / sizeof(u32)) * 8);
    }
}

void transition_update_spr() {
    nextSpr = 0;
    
    run_animated_sprites();
    // Update OAM
    obj_copy(oam_mem, shadow_oam, 128);
    obj_aff_copy(obj_aff_mem, obj_aff_buffer, 32);
    draw_percentage(108, 8, get_level_progress(), numberSpr, 0);
    draw_both_players();
    display_objects();
    rotate_saws();
    scale_pulsing_objects();
    draw_checkpoints();
    
    // Sort OAM
    sort_oam_by_prio();
}

void fade_out() {
    update_flags = UPDATE_NONE;
    // Fade out
    for (s32 frame = 0; frame <= 32; frame += 4) {
        VBlankIntrWait();
        clr_blend_fast(palette_buffer, (COLOR*) black_buffer, pal_bg_mem, 512, frame);
    }
}

void fade_out_level() {
    update_flags = UPDATE_NONE;
    // Fade out
    for (s32 frame = 0; frame <= 32; frame += 4) {
        VBlankIntrWait();
        key_poll();
        
        transition_update_spr();
        clr_blend_fast(palette_buffer, (COLOR*) black_buffer, pal_bg_mem, 512, frame);
    }
}

void fade_in_level() {
    update_flags = UPDATE_OAM;
    // Fade in
    for (s32 frame = 0; frame <= 32; frame += 4) {
        VBlankIntrWait();
        key_poll();

        transition_update_spr();

        clr_blend_fast(palette_buffer, (COLOR*) black_buffer, pal_bg_mem, 512, 32 - frame);
    }

    // Do interframe drawing and clearing
    VBlankIntrWait();
    key_poll();
    nextSpr = 0;
    draw_percentage(108, 8, get_level_progress(), numberSpr, 0);
    
    update_flags = UPDATE_ALL;
}

void fade_in() {
    update_flags = UPDATE_NONE;
    // Fade in
    for (s32 frame = 0; frame <= 32; frame += 4) {
        VBlankIntrWait();
        key_poll();
        
        clr_blend_fast(palette_buffer, (COLOR*) black_buffer, pal_bg_mem, 512, 32 - frame);
    }
    update_flags = UPDATE_ALL;
}

void fade_in_menu() {
    update_flags = UPDATE_OAM;
    // Fade in
    for (s32 frame = 0; frame <= 32; frame += 4) {
        VBlankIntrWait();
        key_poll();
        nextSpr = 0;
        // Copy OAM buffer into OAM
        obj_copy(oam_mem, shadow_oam, 128);
        put_level_info_sprites(loaded_level_id);
        draw_button_glyphs_level_select();
        
        clr_blend_fast(palette_buffer, (COLOR*) black_buffer, pal_bg_mem, 512, 32 - frame);
    }
    update_flags = UPDATE_ALL;
}

void reset_level() {
    if (!in_practice_mode) mmStop();
    update_flags = UPDATE_OAM | UPDATE_SCROLL;
    
    nextSpr = 0;
    draw_percentage(108, 8, get_level_progress(), numberSpr, 0);
    draw_both_players();
    display_objects();
    rotate_saws();
    scale_pulsing_objects();
    draw_checkpoints();

    // Sort OAM
    sort_oam_by_prio();

    // Wait a bit before fading
    for (s32 frame = 0; frame < 30; frame++) {
        VBlankIntrWait();
        key_poll();
        
        transition_update_spr();
    }

    fade_out_level();

    oam_init(shadow_oam, 128);
    load_level(loaded_level_id);

    if (in_practice_mode) put_practice_gui();

    if (checkpoint_count > 0) {
        restore_practice_vars();
    }

    frame_finished = TRUE;

    fade_in_level();
}
u64 approach_value_asymptotic(u64 current, u64 target, u32 multiplier, u32 max_adjustment);
u64 approach_value(u64 current, u64 target, s32 inc, s32 dec);

void scroll_screen_vertically() {
    if (player_1.gamemode == GAMEMODE_CUBE && dual == DUAL_OFF) {
        // This scrolls the screen on the y axis
        if (player_1.relative_player_y + 16 >= BOTTOM_SCROLL_Y) {
            scroll_y_dir = 1;
            
            // Scroll downwards if player is going downwards or is still
            if (player_1.player_y_speed > 0) {
                intended_scroll_y += player_1.player_y_speed;
            } else if (player_1.player_y_speed == 0) {
                intended_scroll_y += CUBE_MAX_Y_SPEED / 2;
            }
        } else if (player_1.relative_player_y <= TOP_SCROLL_Y) { 
            scroll_y_dir = 0;

            // Scroll upwards if player is going upwards or is still
            if (player_1.player_y_speed < 0) {
                intended_scroll_y += player_1.player_y_speed;
            } else if (player_1.player_y_speed == 0) {
                intended_scroll_y -= CUBE_MAX_Y_SPEED / 2;
            }
        }
        
        // Cap at level edges
        if (intended_scroll_y < 0) intended_scroll_y = 0;
        if (intended_scroll_y > BOTTOM_SCROLL_LIMIT) intended_scroll_y = BOTTOM_SCROLL_LIMIT;

        scroll_y = approach_value_asymptotic(scroll_y, intended_scroll_y, 0x6000, CUBE_MAX_Y_SPEED);
    } else {
        intended_scroll_y = scroll_y;
        scroll_y = approach_value_asymptotic(scroll_y, target_scroll_y, 0x2800, 0x30000);
    }
}

void scroll_screen_horizontally() {
    if (player_1.player_x >= 0x500000) {
        // Stop scroll at the end wall
        u64 screen_scroll_limit = ((curr_level_width - (SCREEN_WIDTH_T/2)) << (SUBPIXEL_BITS + 4));
        if (scroll_x > screen_scroll_limit - TO_FIXED(7)) {
            // Ease out
            scroll_x = approach_value_asymptotic(scroll_x, screen_scroll_limit, 0x2800, 0x30000);
        } else {  
            scroll_x += player_1.player_x_speed;
        }
    }
}

const u8 gamemode_screen_y_offset[] = {
    /* Cube */ 0xa8, // Only used on dual gamemode
    /* Ship */ 0xa0,
    /* Ball */ 0x90,
    /* Ufo */  0xa0,
    /* Wave */ 0xa0,
};

void set_target_y_scroll(u32 object_y) {
    // Dont overwrite dual portal y position
    if (dual == DUAL_OFF) {
        u32 intended_pos_y = object_y - 0x40;
        u32 offset = gamemode_screen_y_offset[curr_player.gamemode];
        
        if (intended_pos_y > ((GROUND_HEIGHT) << 4) - offset) intended_pos_y = ((GROUND_HEIGHT) << 4) - offset;

        target_scroll_y = ((intended_pos_y + 8) & ~0xf) << SUBPIXEL_BITS;
    }
}

// Screen mirror stuff

void mirror_screen() {
    if (!screen_mirrored_transition) {
        screen_mirrored_transition = TRUE;
    }
}
void unmirror_screen() {
    if (screen_mirrored_transition) {
        screen_mirrored_transition = FALSE;
    }
}

ARM_CODE void swap_screen_dir() {
    // LEVEL_LAYERS + 1 because the background also has to be mirrored
    for (s32 layer = 0; layer < LEVEL_LAYERS + 1; layer++) {
        // Copy tilemap into buffer
        SCR_ENTRY *mirror_screen_buffer = (SCR_ENTRY *) &vram_copy_buffer;
        
        memcpy32(mirror_screen_buffer, &se_mem[27 + layer], (SCREENBLOCK_W * SCREENBLOCK_H) / 2);

        s32 y_pos = 0;
        for (s32 y = 0; y < SCREENBLOCK_H; y++) {
            for (s32 x = 0; x < SCREENBLOCK_W; x++) {
                // Mirror tilemap columns
                se_mem[27 + layer][((SCREENBLOCK_W - 1) - x) + y_pos] = mirror_screen_buffer[x + y_pos] ^ SE_HFLIP;
            }
            y_pos += SCREENBLOCK_W;
        }
    }
    
    swap_queue = FALSE;
}

void calculate_trans_window_pos();

void mirror_transition() {
    if (screen_mirrored_transition) {
        if (transition_frame < SCREEN_TRANSITION_FRAMES - 1) {
            transition_frame += 1;

            // If halfway through the transition, flip screen
            if (transition_frame == SCREEN_TRANSITION_SWITCH_FRAME) {
                mirror_scaling = float2fx(-1.0);
                screen_mirrored = TRUE;
                swap_queue = TRUE;
            }
            
            calculate_trans_window_pos();
        }
    } else {
        if (transition_frame > 0) {
            transition_frame -= 1;

            // If halfway through the transition, flip screen
            if (transition_frame == SCREEN_TRANSITION_SWITCH_FRAME) {
                mirror_scaling = float2fx(1.0);
                screen_mirrored = FALSE;
                swap_queue = TRUE;
            }

            calculate_trans_window_pos();
        }
    }
}

void calculate_trans_window_pos() {
    u8 right;
    u8 left;

    // Set window sides depending on current frame
    if (transition_frame < SCREEN_TRANSITION_SWITCH_FRAME) {
        right = SCREEN_WIDTH - (transition_frame * 8);
        left = (transition_frame * 8);
    } else if (transition_frame == SCREEN_TRANSITION_SWITCH_FRAME) {
        right = SCREEN_WIDTH / 2;
        left = SCREEN_WIDTH / 2;
    } else {
        right = ((transition_frame - SCREEN_TRANSITION_HALF) * 8) + (SCREEN_WIDTH / 2);
        left = (SCREEN_WIDTH / 2) - ((transition_frame - SCREEN_TRANSITION_HALF) * 8);
    }

    // Set window side position
    REG_WIN0H = (left << 8) | right;
}

void draw_percentage(u32 x, u32 y, u32 percentage, const u16* number_sprite, u16 priority) {
    if (percentage >= 100) {
        oam_metaspr(x,      y, number_sprite, FALSE, FALSE, FIRST_NUMBER_ID + 1, -1, priority, 0, TRUE, FALSE);
        oam_metaspr(x + 8,  y, number_sprite, FALSE, FALSE, FIRST_NUMBER_ID + 0, -1, priority, 0, TRUE, FALSE);
        oam_metaspr(x + 16, y, number_sprite, FALSE, FALSE, FIRST_NUMBER_ID + 0, -1, priority, 0, TRUE, FALSE);
        oam_metaspr(x + 24, y, number_sprite, FALSE, FALSE, PERCENTAGE_SYMBOL_ID, -1, priority, 0, TRUE, FALSE);
    } else if (percentage >= 10) {
        oam_metaspr(x + 4,  y, number_sprite, FALSE, FALSE, FIRST_NUMBER_ID + (percentage / 10), -1, priority, 0, TRUE, FALSE);
        oam_metaspr(x + 12, y, number_sprite, FALSE, FALSE, FIRST_NUMBER_ID + (percentage % 10), -1, priority, 0, TRUE, FALSE);
        oam_metaspr(x + 20, y, number_sprite, FALSE, FALSE, PERCENTAGE_SYMBOL_ID, -1, priority, 0, TRUE, FALSE);
    } else {
        oam_metaspr(x + 8,  y, number_sprite, FALSE, FALSE, FIRST_NUMBER_ID + percentage, -1, priority, 0, TRUE, FALSE);
        oam_metaspr(x + 16, y, number_sprite, FALSE, FALSE, PERCENTAGE_SYMBOL_ID, -1, priority, 0, TRUE, FALSE);
    }
}

u32 get_level_progress() {
    u32 percentage;
    if (curr_player.player_x < 0) {
        percentage = 0;
    } else if (curr_level_width == 0) {
        percentage = 100;
    } else {
        percentage = ((((u32) curr_player.player_x) / curr_level_width) * 100) >> 20;
    }
    return percentage;
}

void set_new_best(u32 new_best, u32 mode) {

    struct SaveLevelData *level_data = obtain_level_data(loaded_level_id);

    if (mode == NORMAL_MODE) {
        if (level_data->normal_progress <= new_best) {
            // New normal mode best
            level_data->normal_progress = new_best;

            if (new_best >= 100) {
                level_data->coin1 |= coin_buffer[0];
                level_data->coin2 |= coin_buffer[1];
                level_data->coin3 |= coin_buffer[2];
            }
            write_save_block();
        }
    } else {
        if (level_data->practice_progress < new_best) {
            // New practice mode best
            level_data->practice_progress = new_best;
            write_save_block();
        }
    }
    
}

// This should be always called when curr_player is player 1
void activate_dual() {
    if (dual == DUAL_OFF) {
        dual = DUAL_ON;

        // Copy variables into player 2
        player_2 = curr_player;
        
        // Flip gravity
        player_2.gravity_dir ^= 1;
        
        // Flip vertical speed as well
        player_2.player_y_speed = -curr_player.player_y_speed; 
        
        // Use player 1 position as curr_player has applied its speed
        player_2.player_x = player_1.player_x; 

        set_ceil_invulnerability();

        // Copy CHR into player 2 slots
        gamemode_upload_buffer[ID_PLAYER_2] = player_2.gamemode;
    }
}

void set_ceil_invulnerability() {
    player_1.should_check_ceiling = 10;
    player_2.should_check_ceiling = 10;
}

void deactivate_dual() {
    if (dual == DUAL_ON) {
        dual = DUAL_OFF;

        // Save player 1 x position
        s64 x = player_1.player_x;
        
        // Copy curr_player into player_1, this makes so if player 2 touches the blue dual portal, player 1 teleports to that portal
        player_1 = curr_player;

        // Restore x position
        player_1.player_x = x;
        
        gamemode_upload_buffer[ID_PLAYER_1] = player_1.gamemode;
    }
}

void check_for_same_dual_gravity() {
    if (dual == DUAL_ON) {
        if (curr_player_id == ID_PLAYER_1) {
            // Check if same gravity
            if (curr_player.gravity_dir == player_2.gravity_dir) {
                // Check if same gamemode
                if (curr_player.gamemode == player_2.gamemode) {
                    player_2.player_y_speed /= 2;
                    set_ceil_invulnerability();
                    player_2.gravity_dir = curr_player.gravity_dir ^ 1;
                }
            }
        } else {
            // Check if same gravity
            if (player_1.gravity_dir == curr_player.gravity_dir) {
                // Check if same gamemode
                if (player_1.gamemode == curr_player.gamemode) {
                    player_1.player_y_speed /= 2;
                    set_ceil_invulnerability();
                    player_1.gravity_dir = curr_player.gravity_dir ^ 1;
                }
            }
        }
    }
}

void break_brick(u32 x, u32 y, u32 layer) {
    u32 index = obtain_level_buffer_index(x, y);
    
    // Put air block
    level_buffer[layer][index] = 0;

    // Obtain block pos on VRAM
    s32 x_pos = (x >> 3) & 0b11110;
    s32 y_pos = (y >> 3) & 0b11110;

    se_plot(&se_mem[27 + layer][0], x_pos,     y_pos,     SE_BUILD(0,0,0,0));
    se_plot(&se_mem[27 + layer][0], x_pos + 1, y_pos,     SE_BUILD(0,0,0,0));
    se_plot(&se_mem[27 + layer][0], x_pos,     y_pos + 1, SE_BUILD(0,0,0,0));
    se_plot(&se_mem[27 + layer][0], x_pos + 1, y_pos + 1, SE_BUILD(0,0,0,0));
}

void modify_fade_block(u16 block_id, s32 calculated_x, s32 calculated_y, u32 layer, u32 frame_id);

// Temp defines

#define TILE(id, PALBANK, hflip, vflip) SE_BUILD(id, PALBANK, hflip, vflip)

#define H 1
#define V 1

// MT definitions


#define FADING_BLOCK_ID 397

#define FADING_SPIKE_UP_ID    398
#define FADING_SPIKE_DOWN_ID  399
#define FADING_SPIKE_LEFT_ID  400
#define FADING_SPIKE_RIGHT_ID 401

#define FADING_SMALL_SPIKE_BOTTOM_ID 402
#define FADING_SMALL_SPIKE_TOP_ID    403
#define FADING_SMALL_SPIKE_LEFT_ID   404
#define FADING_SMALL_SPIKE_RIGHT_ID  405

#define FADING_MEDIUM_SPIKE_BOTTOM_ID 406
#define FADING_MEDIUM_SPIKE_TOP_ID    407
#define FADING_MEDIUM_SPIKE_LEFT_ID   408
#define FADING_MEDIUM_SPIKE_RIGHT_ID  409
#define FADING_MINIBLOCK_ID           410

#define FIRST_FADING_METATILE FADING_BLOCK_ID
#define LAST_FADING_METATILE FADING_MINIBLOCK_ID

// Block

const u16 fading_block_frames[][4] = {
    { TILE(0x120, 0, 0, 0), TILE(0x120, 0, H, 0), TILE(0x120, 0, 0, V), TILE(0x120, 0, H, V) },
    { TILE(0x121, 0, 0, 0), TILE(0x121, 0, H, 0), TILE(0x121, 0, 0, V), TILE(0x121, 0, H, V) },
    { TILE(0x122, 0, 0, 0), TILE(0x122, 0, H, 0), TILE(0x122, 0, 0, V), TILE(0x122, 0, H, V) },
    { TILE(0x123, 0, 0, 0), TILE(0x123, 0, H, 0), TILE(0x123, 0, 0, V), TILE(0x123, 0, H, V) },
};

const u16 fading_miniblock_frames[][4] = {
    { TILE(0x16c, 0, 0, 0), TILE(0x16c, 0, H, 0), TILE(0x16c, 0, 0, V), TILE(0x16c, 0, H, V) },
    { TILE(0x16d, 0, 0, 0), TILE(0x16d, 0, H, 0), TILE(0x16d, 0, 0, V), TILE(0x16d, 0, H, V) },
    { TILE(0x16e, 0, 0, 0), TILE(0x16e, 0, H, 0), TILE(0x16e, 0, 0, V), TILE(0x16e, 0, H, V) },
    { TILE(0x16f, 0, 0, 0), TILE(0x16f, 0, H, 0), TILE(0x16f, 0, 0, V), TILE(0x16f, 0, H, V) },
};

// Normal spikes

const u16 fading_spike_up_frames[][4] = {
    { TILE(0x130, 0, 0, 0), TILE(0x130, 0, H, 0), TILE(0x140, 0, 0, 0), TILE(0x140, 0, H, 0), },
    { TILE(0x131, 0, 0, 0), TILE(0x131, 0, H, 0), TILE(0x141, 0, 0, 0), TILE(0x141, 0, H, 0), },
    { TILE(0x132, 0, 0, 0), TILE(0x132, 0, H, 0), TILE(0x142, 0, 0, 0), TILE(0x142, 0, H, 0), },
    { TILE(0x133, 0, 0, 0), TILE(0x133, 0, H, 0), TILE(0x143, 0, 0, 0), TILE(0x143, 0, H, 0), },
};

const u16 fading_spike_down_frames[][4] = {
    { TILE(0x140, 0, 0, V), TILE(0x140, 0, H, V), TILE(0x130, 0, 0, V), TILE(0x130, 0, H, V), },
    { TILE(0x141, 0, 0, V), TILE(0x141, 0, H, V), TILE(0x131, 0, 0, V), TILE(0x131, 0, H, V), },
    { TILE(0x142, 0, 0, V), TILE(0x142, 0, H, V), TILE(0x132, 0, 0, V), TILE(0x132, 0, H, V), },
    { TILE(0x143, 0, 0, V), TILE(0x143, 0, H, V), TILE(0x133, 0, 0, V), TILE(0x133, 0, H, V), },
};

const u16 fading_spike_left_frames[][4] = {
    { TILE(0x138, 0, 0, 0), TILE(0x139, 0, 0, 0), TILE(0x138, 0, 0, V), TILE(0x139, 0, 0, V), },
    { TILE(0x13a, 0, 0, 0), TILE(0x13b, 0, 0, 0), TILE(0x13a, 0, 0, V), TILE(0x13b, 0, 0, V), },
    { TILE(0x13c, 0, 0, 0), TILE(0x13d, 0, 0, 0), TILE(0x13c, 0, 0, V), TILE(0x13d, 0, 0, V), },
    { TILE(0x13e, 0, 0, 0), TILE(0x13f, 0, 0, 0), TILE(0x13e, 0, 0, V), TILE(0x13f, 0, 0, V), },
};

const u16 fading_spike_right_frames[][4] = {
    { TILE(0x139, 0, H, 0), TILE(0x138, 0, H, 0), TILE(0x139, 0, H, V), TILE(0x138, 0, H, V), },
    { TILE(0x13b, 0, H, 0), TILE(0x13a, 0, H, 0), TILE(0x13b, 0, H, V), TILE(0x13a, 0, H, V), },
    { TILE(0x13d, 0, H, 0), TILE(0x13c, 0, H, 0), TILE(0x13d, 0, H, V), TILE(0x13c, 0, H, V), },
    { TILE(0x13f, 0, H, 0), TILE(0x13e, 0, H, 0), TILE(0x13f, 0, H, V), TILE(0x13e, 0, H, V), },
};

// Small spikes

const u16 fading_small_spike_bottom_frames[][4] = {
    { TILE(0x000, 0, 0, 0), TILE(0x000, 0, 0, 0), TILE(0x12c, 0, 0, 0), TILE(0x12c, 0, H, 0), },
    { TILE(0x000, 0, 0, 0), TILE(0x000, 0, 0, 0), TILE(0x12d, 0, 0, 0), TILE(0x12d, 0, H, 0), },
    { TILE(0x000, 0, 0, 0), TILE(0x000, 0, 0, 0), TILE(0x12e, 0, 0, 0), TILE(0x12e, 0, H, 0), },
    { TILE(0x000, 0, 0, 0), TILE(0x000, 0, 0, 0), TILE(0x12f, 0, 0, 0), TILE(0x12f, 0, H, 0), },
};

const u16 fading_small_spike_top_frames[][4] = {
    { TILE(0x12c, 0, 0, V), TILE(0x12c, 0, H, V), TILE(0x000, 0, 0, 0), TILE(0x000, 0, 0, 0), },
    { TILE(0x12d, 0, 0, V), TILE(0x12d, 0, H, V), TILE(0x000, 0, 0, 0), TILE(0x000, 0, 0, 0), },
    { TILE(0x12e, 0, 0, V), TILE(0x12e, 0, H, V), TILE(0x000, 0, 0, 0), TILE(0x000, 0, 0, 0), },
    { TILE(0x12f, 0, 0, V), TILE(0x12f, 0, H, V), TILE(0x000, 0, 0, 0), TILE(0x000, 0, 0, 0), },
};

const u16 fading_small_spike_left_frames[][4] = {
    { TILE(0x077, 0, 0, 0), TILE(0x000, 0, 0, 0), TILE(0x077, 0, 0, V), TILE(0x000, 0, 0, 0), },
    { TILE(0x078, 0, 0, 0), TILE(0x000, 0, 0, 0), TILE(0x078, 0, 0, V), TILE(0x000, 0, 0, 0), },
    { TILE(0x079, 0, 0, 0), TILE(0x000, 0, 0, 0), TILE(0x079, 0, 0, V), TILE(0x000, 0, 0, 0), },
    { TILE(0x07a, 0, 0, 0), TILE(0x000, 0, 0, 0), TILE(0x07a, 0, 0, V), TILE(0x000, 0, 0, 0), },
};

const u16 fading_small_spike_right_frames[][4] = {
    { TILE(0x000, 0, 0, 0), TILE(0x077, 0, H, 0), TILE(0x000, 0, 0, 0), TILE(0x077, 0, H, V), },
    { TILE(0x000, 0, 0, 0), TILE(0x078, 0, H, 0), TILE(0x000, 0, 0, 0), TILE(0x078, 0, H, V), },
    { TILE(0x000, 0, 0, 0), TILE(0x079, 0, H, 0), TILE(0x000, 0, 0, 0), TILE(0x079, 0, H, V), },
    { TILE(0x000, 0, 0, 0), TILE(0x07a, 0, H, 0), TILE(0x000, 0, 0, 0), TILE(0x07a, 0, H, V), },
};

// Medium spikes

const u16 fading_medium_spike_bottom_frames[][4] = {
    { TILE(0x134, 0, 0, 0), TILE(0x134, 0, H, 0), TILE(0x144, 0, 0, 0), TILE(0x144, 0, H, 0), },
    { TILE(0x135, 0, 0, 0), TILE(0x135, 0, H, 0), TILE(0x145, 0, 0, 0), TILE(0x145, 0, H, 0), },
    { TILE(0x136, 0, 0, 0), TILE(0x136, 0, H, 0), TILE(0x146, 0, 0, 0), TILE(0x146, 0, H, 0), },
    { TILE(0x137, 0, 0, 0), TILE(0x137, 0, H, 0), TILE(0x147, 0, 0, 0), TILE(0x147, 0, H, 0), },
};

const u16 fading_medium_spike_top_frames[][4] = {
    { TILE(0x144, 0, 0, V), TILE(0x144, 0, H, V), TILE(0x134, 0, 0, V), TILE(0x134, 0, H, V), },
    { TILE(0x145, 0, 0, V), TILE(0x145, 0, H, V), TILE(0x135, 0, 0, V), TILE(0x135, 0, H, V), },
    { TILE(0x146, 0, 0, V), TILE(0x146, 0, H, V), TILE(0x136, 0, 0, V), TILE(0x136, 0, H, V), },
    { TILE(0x147, 0, 0, V), TILE(0x147, 0, H, V), TILE(0x137, 0, 0, V), TILE(0x137, 0, H, V), },
};

const u16 fading_medium_spike_left_frames[][4] = {
    { TILE(0x148, 0, 0, 0), TILE(0x149, 0, 0, 0), TILE(0x148, 0, 0, V), TILE(0x149, 0, 0, V), },
    { TILE(0x14a, 0, 0, 0), TILE(0x14b, 0, 0, 0), TILE(0x14a, 0, 0, V), TILE(0x14b, 0, 0, V), },
    { TILE(0x14c, 0, 0, 0), TILE(0x14d, 0, 0, 0), TILE(0x14c, 0, 0, V), TILE(0x14d, 0, 0, V), },
    { TILE(0x14e, 0, 0, 0), TILE(0x14f, 0, 0, 0), TILE(0x14e, 0, 0, V), TILE(0x14f, 0, 0, V), },
};

const u16 fading_medium_spike_right_frames[][4] = {
    { TILE(0x149, 0, H, 0), TILE(0x148, 0, H, 0), TILE(0x149, 0, H, V), TILE(0x148, 0, H, V), },
    { TILE(0x14b, 0, H, 0), TILE(0x14a, 0, H, 0), TILE(0x14b, 0, H, V), TILE(0x14a, 0, H, V), },
    { TILE(0x14d, 0, H, 0), TILE(0x14c, 0, H, 0), TILE(0x14d, 0, H, V), TILE(0x14c, 0, H, V), },
    { TILE(0x14f, 0, H, 0), TILE(0x14e, 0, H, 0), TILE(0x14f, 0, H, V), TILE(0x14e, 0, H, V), },
};

const u16 (*fading_table[])[4] = {
    fading_block_frames,
    fading_spike_up_frames,
    fading_spike_down_frames,
    fading_spike_left_frames,
    fading_spike_right_frames,
    fading_small_spike_bottom_frames,
    fading_small_spike_top_frames,
    fading_small_spike_left_frames,
    fading_small_spike_right_frames,
    fading_medium_spike_bottom_frames,
    fading_medium_spike_top_frames,
    fading_medium_spike_left_frames,
    fading_medium_spike_right_frames,
    fading_miniblock_frames,
};

#undef TILE
#undef H
#undef V

const u16 fade_frame_table[] = {
    0x00, 0x00, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03, 0x02, 0x02, 0x01, 0x00, 0x00, 0x01, 
    
};

ARM_CODE void handle_fading_blocks() {
    u32 scroll_x_origin = (scroll_x >> SUBPIXEL_BITS);
    u32 scroll_y_origin = (scroll_y >> SUBPIXEL_BITS);

    for (s32 layer = 0; layer < 2; layer++) {
        for (s32 x = 0; x < (16 * 16); x += 16) {
            // Get the x position in pixels
            u32 x_pos = scroll_x_origin + x;

            // Get metatile x
            s32 metatile_x = (x_pos >> 4) & 0x1f;

            // Get tile x
            s32 calculated_x = (metatile_x << 1) & 0b11110;

            // Calculate frame ID 
            u32 frame_id = fade_frame_table[x >> 4];

            for (s32 y = 0; y < (11 * 16); y += 16) {
                // Get the y position in pixels
                u32 y_pos = scroll_y_origin + y;

                // Get metatile y
                s32 metatile_y = (y_pos >> 4);
                
                // Get metatile from the buffer
                u16 block_id = level_buffer[layer][metatile_x + (metatile_y * LEVEL_BUFFER_WIDTH)];
                
                // Check if the metatile is on the fading ID range
                if (block_id >= FIRST_FADING_METATILE && block_id <= LAST_FADING_METATILE) {
                    // Get tile y
                    s32 calculated_y = (metatile_y << 1) & 0b11110;

                    // Modify the specified block graphics
                    modify_fade_block(block_id, calculated_x, calculated_y, layer, frame_id);
                }
            }
        }
    }
}

void modify_fade_block(u16 block_id, s32 calculated_x, s32 calculated_y, u32 layer, u32 frame_id) {
    se_plot(&se_mem[27 + layer][0], calculated_x,     calculated_y,     fading_table[block_id - FIRST_FADING_METATILE][frame_id][0]);
    se_plot(&se_mem[27 + layer][0], calculated_x + 1, calculated_y,     fading_table[block_id - FIRST_FADING_METATILE][frame_id][1]);
    se_plot(&se_mem[27 + layer][0], calculated_x,     calculated_y + 1, fading_table[block_id - FIRST_FADING_METATILE][frame_id][2]);
    se_plot(&se_mem[27 + layer][0], calculated_x + 1, calculated_y + 1, fading_table[block_id - FIRST_FADING_METATILE][frame_id][3]);
}

void draw_both_players() {
    curr_player_id = ID_PLAYER_1;
    curr_player = player_1;
    
    // Draw player 1
    draw_player();

    player_1 = curr_player;

    // Draw player 2
    if (dual == DUAL_ON) {   
        curr_player_id = ID_PLAYER_2;
        curr_player = player_2;
        
        // Draw player 2
        draw_player();
        
        player_2 = curr_player;
    }
}

// Main player code
void player_code() {
    // Set speed for both players
    set_player_speed();

    // Run player 1
    curr_player_id = ID_PLAYER_1;
    curr_player = player_1;

    s64 last_player_x = curr_player.player_x;

    // Run vertical scroll code
    scroll_screen_vertically();

    // Run horizontal scroll code
    scroll_screen_horizontally();
    
    // Run player 1
    player_main();
    
    // Draw player 1
    draw_player();

    // Start the song once the player goes from negative to positive x position, if not in practice mode
    if ((last_player_x < 0) != (curr_player.player_x < 0) && !in_practice_mode) mmStart(loaded_song_id, MM_PLAY_ONCE);

    player_1 = curr_player;

    // Run player 2 if on dual
    if (dual == DUAL_ON) {
        curr_player_id = ID_PLAYER_2;
        curr_player = player_2;

        // Run player 2
        player_main();

        // Draw player 2
        draw_player();

        player_2 = curr_player;
    }
}

void store_practice_vars() {
    struct PracticeCheckpoint new_checkpoint;

    new_checkpoint.scroll_x = scroll_x;
    new_checkpoint.scroll_y = scroll_y;

    new_checkpoint.player1 = player_1;
    new_checkpoint.player2 = player_2;
    new_checkpoint.speed_id = speed_id;
    new_checkpoint.dual = dual;

    new_checkpoint.screen_mirrored = screen_mirrored;
    new_checkpoint.screen_mirrored_transition = screen_mirrored_transition;
    new_checkpoint.mirror_scaling = mirror_scaling;
    new_checkpoint.transition_frame = transition_frame;

    new_checkpoint.intended_scroll_y = intended_scroll_y;
    new_checkpoint.target_scroll_y = target_scroll_y;

    new_checkpoint.channels[COL1]   = palette_buffer[COL_ID_COLOR + COL_CHN_PAL];
    new_checkpoint.channels[COL2]   = palette_buffer[COL_ID_COLOR + COL_CHN_PAL + 0x10];
    new_checkpoint.channels[COL3]   = palette_buffer[COL_ID_COLOR + COL_CHN_PAL + 0x20];
    new_checkpoint.channels[COL4]   = palette_buffer[COL_ID_COLOR + COL_CHN_PAL + 0x30];
    new_checkpoint.channels[BG]     = palette_buffer[BG_COLOR + BG_PAL];
    new_checkpoint.channels[GROUND] = palette_buffer[GROUND_COLOR + GROUND_PAL];
    new_checkpoint.channels[OBJ]    = palette_buffer[OBJ_COLOR + BG_PAL];
    new_checkpoint.channels[LINE]   = palette_buffer[LINE_COLOR + GROUND_PAL];

    memcpy16(new_checkpoint.col_trigger_buffer, col_trigger_buffer, sizeof(col_trigger_buffer) / 2);
    memcpy16(new_checkpoint.col_channels_flags, col_channels_flags, sizeof(col_channels_flags) / 2);
    memcpy16(new_checkpoint.col_channels_color, col_channels_color, sizeof(col_channels_color) / 2);

    // Wrap around
    if (++checkpoint_pointer >= NUM_PRACTICE_CHECKPOINTS) checkpoint_pointer = 0;

    // Cap checkpoint count
    if (++checkpoint_count > NUM_PRACTICE_CHECKPOINTS) checkpoint_count = NUM_PRACTICE_CHECKPOINTS;

    checkpoints[checkpoint_pointer] = new_checkpoint;    
}

void restore_practice_vars() {
    // Obtain checkpoint
    struct PracticeCheckpoint curr_checkpoint = checkpoints[checkpoint_pointer];
    
    screen_mirrored = curr_checkpoint.screen_mirrored;
    screen_mirrored_transition = curr_checkpoint.screen_mirrored_transition;
    mirror_scaling = curr_checkpoint.mirror_scaling;
    transition_frame = curr_checkpoint.transition_frame;

    scroll_y = curr_checkpoint.scroll_y;

    // Load level until scroll x is reached
    do {
        practice_scroll_load();
 
        // If close enough to the spawn point, then start drawing to the screen
        if (scroll_x >= 0x1000000 && scroll_x < curr_checkpoint.scroll_x - 0x1000000) {
            scroll_x += 0x100000;
        } else {
            for (u32 layer = 0; layer < LEVEL_LAYERS; layer++) {
                // Draw horizontal seam
                seam_x = (scroll_x >> SUBPIXEL_BITS) + SCREEN_WIDTH;  
                seam_y = (scroll_y >> SUBPIXEL_BITS);
                
                scroll_H(layer, 10);
        
                // Draw bottom seam
                seam_x = (scroll_x >> SUBPIXEL_BITS);
                seam_y = (scroll_y >> SUBPIXEL_BITS) + SCREEN_HEIGHT;
                
                scroll_V(layer);
                
                // Draw top seam
                seam_x = (scroll_x >> SUBPIXEL_BITS);
                seam_y = (scroll_y >> SUBPIXEL_BITS);
                    
                scroll_V(layer);
            }
            scroll_x += 0x80000;
        }
    } while (scroll_x < curr_checkpoint.scroll_x);
    
    nextSpr = 0;

    memset32(shadow_oam, ATTR0_HIDE, 256);
    memset16(rotation_buffer, 0x0000, NUM_ROT_SLOTS);

    scroll_x = curr_checkpoint.scroll_x;

    player_1 = curr_checkpoint.player1;
    player_2 = curr_checkpoint.player2;
    speed_id = curr_checkpoint.speed_id;
    dual = curr_checkpoint.dual;

    upload_player_chr(player_1.gamemode, ID_PLAYER_1);
    upload_player_chr(player_2.gamemode, ID_PLAYER_2);

    intended_scroll_y = curr_checkpoint.intended_scroll_y;
    target_scroll_y = curr_checkpoint.target_scroll_y;

    // Set saved colors
    set_color_channel_color(palette_buffer, curr_checkpoint.channels[COL1], 0);
    set_color_channel_color(palette_buffer, curr_checkpoint.channels[COL2], 1);
    set_color_channel_color(palette_buffer, curr_checkpoint.channels[COL3], 2);
    set_color_channel_color(palette_buffer, curr_checkpoint.channels[COL4], 3);
    set_bg_color(palette_buffer, curr_checkpoint.channels[BG]);
    set_ground_color(palette_buffer, curr_checkpoint.channels[GROUND]);
    set_obj_color(palette_buffer, curr_checkpoint.channels[OBJ]);
    set_line_color(palette_buffer, curr_checkpoint.channels[LINE]);
    
    s64 scroll_x_pixels = (scroll_x >> SUBPIXEL_BITS) - 32;

    if (scroll_x_pixels < 0) scroll_x_pixels = 0;
    
    // Load objects
    u8 sprite_unloaded = TRUE;
    while (sprite_unloaded) {
        sprite_unloaded = FALSE;
        load_objects(FALSE);

        for (s32 index = 0; index < MAX_OBJECTS; index++) {
            struct Object curr_object = object_buffer[index].object;

            // If object is spawned behind scroll, then don't spawn it
            if (curr_object.x < scroll_x_pixels) {
                object_buffer[index].occupied = FALSE;
                sprite_unloaded = TRUE;
            }
        }
    }
    
    // Disable triggers that were activated and upload object chr
    for (s32 i = 0; i < MAX_OBJECTS; i++) {
        struct Object curr_object = object_buffer[i].object;

        if (curr_object.type == COL_TRIGGER) {
            // If trigger is spawned behind player, then don't trigger it
            u64 player_x_pixels = player_1.player_x >> SUBPIXEL_BITS;
            if (curr_object.x + 8 < player_x_pixels) {
                object_buffer[i].occupied = FALSE;
            }
        } else {
            switch (curr_object.type) {
                case BASIC_BLOCK_OBJ:
                case BASIC_SLAB_OBJ:
                    setup_graphics_upload(curr_object.type, i, curr_object.attrib3);
                    break;
                default:
                    // If an invalid object was found, skip it
                    if (curr_object.type >= OBJ_COUNT) {
                        continue;
                    }

                    setup_graphics_upload(curr_object.type, i, 0);
            }
        }
    }

    load_chr_in_buffer();

    memcpy16(col_trigger_buffer, curr_checkpoint.col_trigger_buffer, sizeof(col_trigger_buffer) / 2);
    memcpy16(col_channels_flags, curr_checkpoint.col_channels_flags, sizeof(col_channels_flags) / 2);
    memcpy16(col_channels_color, curr_checkpoint.col_channels_color, sizeof(col_channels_color) / 2);

    update_scroll();
}

void delete_last_checkpoint() {
    if (checkpoint_count > 0) {
        checkpoint_count--;

        // Wrap around pointer
        if (checkpoint_pointer-- == 0) {
            checkpoint_pointer = NUM_PRACTICE_CHECKPOINTS - 1;
        }
    }
}

void clear_checkpoints() {
    checkpoint_count = 0;
    checkpoint_pointer = 0;
}

void draw_checkpoints() {
    for (u32 checkpoint = 0; checkpoint < checkpoint_count; checkpoint++) {
        // Obtain buffer index
        s32 index = WRAP((s32) (checkpoint_pointer - checkpoint), 0, NUM_PRACTICE_CHECKPOINTS);
        struct PracticeCheckpoint curr_checkpoint = checkpoints[index];

        // Obtain relative positions
        s32 relative_x = (curr_checkpoint.player1.player_x >> SUBPIXEL_BITS) - (scroll_x >> SUBPIXEL_BITS);
        s32 relative_y = (curr_checkpoint.player1.player_y >> SUBPIXEL_BITS) - (scroll_y >> SUBPIXEL_BITS);

        // If checkpoint is inside the screen horizontally, continue
        if (relative_x > -32 && relative_x < SCREEN_WIDTH + 128) { 
            // If the checkpoint is inside the screen vertically, draw it
            if (relative_y > -48 && relative_y < SCREEN_HEIGHT + 48) {
                oam_metaspr(relative_x, relative_y, practiceCheckpoint, FALSE, FALSE, 0, -1, 0, 0, FALSE, FALSE);
            }
        }
    }
}

void update_scroll() {
    if (screen_mirrored) {
        REG_BG0HOFS = REG_BG1HOFS = 256 - (((scroll_x >> SUBPIXEL_BITS) - 16) & 0xff);
        REG_BG2HOFS = 256 - ((scroll_x >> (2+SUBPIXEL_BITS)) & 0xff);
    } else {
        REG_BG0HOFS = REG_BG1HOFS = scroll_x >> SUBPIXEL_BITS;
        REG_BG2HOFS = scroll_x >> (2+SUBPIXEL_BITS);
    }

    REG_BG0VOFS = REG_BG1VOFS = scroll_y >> SUBPIXEL_BITS;
    REG_BG2VOFS = 34 + (scroll_y >> (5+SUBPIXEL_BITS));
}

void handle_gamemode_uploads() {
    // Manage player CHR uploads
    if (gamemode_upload_buffer[ID_PLAYER_1] >= 0) {
        upload_player_chr(gamemode_upload_buffer[ID_PLAYER_1], ID_PLAYER_1);
        gamemode_upload_buffer[ID_PLAYER_1] = -1;
    }
    if (gamemode_upload_buffer[ID_PLAYER_2] >= 0) {
        upload_player_chr(gamemode_upload_buffer[ID_PLAYER_2], ID_PLAYER_2);
        gamemode_upload_buffer[ID_PLAYER_2] = -1;
    }
}

void handle_wave_trail() {
    u32 priority = (cutscene_frame > TOTAL_CUTSCENE_FRAMES - 20) ? 2 : 0;
    u8 trail_palette = (curr_player_id == ID_PLAYER_1) ? 9 : 8;
    
    for (s32 i = 0; i < wave_trail_pointer[curr_player_id]; i++) {
        u32 x = wave_trail_x[curr_player_id][i];
        u16 y = wave_trail_y[curr_player_id][i];
        u32 size = wave_trail_size[curr_player_id][i];

        // Get relative positions
        s32 relative_x = x - FROM_FIXED(scroll_x);
        s32 relative_y = y - FROM_FIXED(scroll_y);

        // Put the trail sprite depending on size
        if (size == SIZE_BIG) oam_metaspr(relative_x, relative_y, waveTrailChunk, FALSE, FALSE, 0, trail_palette, priority, 0, FALSE, FALSE);
        else oam_metaspr(relative_x, relative_y - 4, miniWaveTrailChunk, FALSE, FALSE, 0, trail_palette, priority, 0, FALSE, FALSE);

        // If this point is offscreen, remove it
        if (relative_x < -8) {
            wave_trail_pointer[curr_player_id]--;
        }
    }
}

void handle_trail() {
    // Get initial trail index
    s32 initial_index = (curr_player.player_size == SIZE_BIG ? 0 : (u32) (TRAIL_LENGTH * (1 - MINI_SIZE)));

    // Approach trail index by 1 per frame
    trail_length[curr_player_id] = approach_value(trail_length[curr_player_id], initial_index, 1, 1);
    
    u32 priority = (cutscene_frame > TOTAL_CUTSCENE_FRAMES - 20) ? 2 : 0;

    u8 trail_palette = (curr_player_id == ID_PLAYER_1) ? 9 : 8;

    for (s32 i = trail_length[curr_player_id]; i < TRAIL_LENGTH; i++) {
        u32 x = trail_x[curr_player_id][i];
        u16 y = trail_y[curr_player_id][i];

        // Get relative positions
        s32 relative_x = x - FROM_FIXED(scroll_x);
        s32 relative_y = y - FROM_FIXED(scroll_y);

        // Put the trail sprite
        if (trail_enabled[curr_player_id][i - 1]) oam_metaspr(relative_x, relative_y, normalTrailChunk, FALSE, FALSE, 0, trail_palette, priority, 0, FALSE, FALSE);

        // Shift left this trail chunk
        if (i != 0) {
            trail_enabled[curr_player_id][i - 1] = trail_enabled[curr_player_id][i];
            trail_x[curr_player_id][i - 1] = trail_x[curr_player_id][i];
            trail_y[curr_player_id][i - 1] = trail_y[curr_player_id][i];
        }
    }
}

void set_trail_point() {
    // Obtain player position
    u32 x = FROM_FIXED(curr_player.player_x);
    u16 y = FROM_FIXED(curr_player.player_y);

    // Set point in the last slot
    trail_x[curr_player_id][TRAIL_LENGTH - 1] = x + 4;

    s32 y_offset = 4;
    // If ship or ufo, offset the trail y
    if (curr_player.gamemode == GAMEMODE_SHIP || curr_player.gamemode == GAMEMODE_UFO) {
        // Offset by an amount depending on size
        if (curr_player.player_size == SIZE_MINI) y_offset += (curr_player.gravity_dir == GRAVITY_DOWN ? 2 : -2);
        else y_offset += (curr_player.gravity_dir == GRAVITY_DOWN ? 4 : -4);
    }

    trail_y[curr_player_id][TRAIL_LENGTH - 1] = y + y_offset;
    trail_enabled[curr_player_id][TRAIL_LENGTH - 1] = TRUE;
}

void wave_set_new_point() {
    if (wave_trail_pointer[curr_player_id] >= WAVE_TRAIL_MAX_POINTS) return;

    // Move all points to the right, leaving the first slot empty
    for (s32 i = wave_trail_pointer[curr_player_id] - 1; i >= 0; i--) {
        u32 x = wave_trail_x[curr_player_id][i];
        u16 y = wave_trail_y[curr_player_id][i];
        u8 size = wave_trail_size[curr_player_id][i];

        wave_trail_x[curr_player_id][i + 1] = x; 
        wave_trail_y[curr_player_id][i + 1] = y; 
        wave_trail_size[curr_player_id][i + 1] = size; 
    }

    // Obtain player position
    u32 x = FROM_FIXED(curr_player.player_x);
    u16 y = FROM_FIXED(curr_player.player_y);

    // Set the new point in the first slot
    wave_trail_x[curr_player_id][0] = x + 4;
    wave_trail_y[curr_player_id][0] = y + 4;
    wave_trail_size[curr_player_id][0] = curr_player.player_size;

    wave_trail_pointer[curr_player_id]++;
}

void put_practice_gui() {
    for (s32 x = 0; x < PRACTICE_GUI_W; x++) {
        for (s32 y = 0; y < PRACTICE_GUI_H; y++) {
            s32 tile_id = FIRST_PRACTICE_GUI_TILE_ID + x + y * 16;
            s32 se_index = PRACTICE_GUI_X + x + ((PRACTICE_GUI_Y + y) * 32);
            se_mem[31][se_index] = SE_BUILD(tile_id, 0x0e, 0, 0);
        }
    }
}

EWRAM_DATA u8 dpad_delay = 0;

u32 handle_key_holding(u16 keys) {
    if (key_is_down(keys)) {
        if (key_hit(keys)) {
            dpad_delay = 30;
            return TRUE;
        } 

        if (--dpad_delay == 0) {
            dpad_delay = 4;
            return TRUE;  
        }
    } 

    return FALSE;
}