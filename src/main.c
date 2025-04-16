#include <tonc.h>
#include "main.h"
#include "memory.h"
#include "metatiles.h"
#include "physics_defines.h"
#include <maxmod.h>
#include "soundbank.bin.h"
#include "soundbank.h"
#include "level_select.h"
#include "title_screen.h"
#include "sound_test.h"
#include "icon_kit.h"

void game_loop();
u32 paused_routines();

void vblank_handler() {
    mmVBlank();

    // Only use the update handler on a level
    if (game_state == STATE_PLAYING && frame_finished) {
        if (!player_death) mirror_transition();

        if (swap_queue) swap_screen_dir();

        load_chr_in_buffer();
        unload_chr_in_buffer();

        if (update_flags & UPDATE_OAM) {
            // Copy OAM buffer into OAM
            obj_copy(oam_mem, shadow_oam, 128);
            obj_aff_copy(obj_aff_mem, obj_aff_buffer, 32);
        }

        if (update_flags & UPDATE_SCROLL) {
            // If screen is mirrored, flip screen position so it goes left instead of right
            update_scroll();
            // Run scroll routines
            screen_scroll_load();
        }

        if (update_flags & UPDATE_VRAM) {
            // Run color stuff
            run_col_trigger_changes();
            
            // Update animated sprites
            run_animated_sprites();

            // Copy palette from buffer
            memcpy32(pal_bg_mem, palette_buffer, 256);

            handle_gamemode_uploads();

            // Handle fading blocks
            handle_fading_blocks();
        }

        if (update_flags & CLEAR_OAM_BUFFER) {
            // Clear OAM
            memset32(shadow_oam, ATTR0_HIDE, 256);
            // Clear rotation buffer
            memset16(rotation_buffer, 0x0000, NUM_ROT_SLOTS);
        }
    }

    if (game_state == STATE_PLAYING) {
        if (in_practice_mode) {
            if (key_hit(KEY_R)) {
                delete_last_checkpoint();
            }
        }
    }

    // Increment global timer
    global_timer++;

    // Advance rng seed
    qran();

    // Run sound
    mmFrame();
    
}

IWRAM_CODE void hang() {
    // Hang so SRAM doesn't get corrupted
    while (TRUE) {
        ;;
    }
}

void init_maxmod() {
    u8* myData;
    mm_gba_system mySystem;
 
    // Allocate data for channel buffers & wave buffer (malloc'd data goes to EWRAM)
    // Use the SIZEOF definitions to calculate how many bytes to reserve
    myData = music_data;
    
    // Setup system info
    // 16KHz software mixing rate, select from mm_mixmode
    mySystem.mixing_mode       = MM_MIX_16KHZ;

    // Number of module/mixing channels
    // Higher numbers offer better polyphony at the expense
    // of more memory and/or CPU usage
    mySystem.mod_channel_count = NUM_CHANNELS;
    mySystem.mix_channel_count = NUM_CHANNELS;
    
    // Assign memory blocks to pointers
    mySystem.module_channels   = (mm_addr)(myData+0);
    mySystem.active_channels   = (mm_addr)(myData+(NUM_CHANNELS*MM_SIZEOF_MODCH));
    mySystem.mixing_channels   = (mm_addr)(myData+(NUM_CHANNELS*(MM_SIZEOF_MODCH
	                                             +MM_SIZEOF_ACTCH)));
    mySystem.mixing_memory     = (mm_addr)mixing_buffer;
    mySystem.wave_memory       = (mm_addr)(myData+(NUM_CHANNELS*(MM_SIZEOF_MODCH
                                                     +MM_SIZEOF_ACTCH
                                                     +MM_SIZEOF_MIXCH)));
    // Pass soundbank address
    mySystem.soundbank         = (mm_addr)soundbank_bin;

    mmInit( &mySystem );
    // 85% volume
    mmSetModuleVolume(819);
    irq_init(NULL);
    irq_set(II_VBLANK, vblank_handler, 0);
    irq_set(II_GAMEPAK, hang, 0);
    irq_enable(II_VBLANK);
}

#define MEM_CHECK_MAGIC 14021968
#define MEM_CHECK_SIZE  16

const u32 ROM_MAGIC[MEM_CHECK_SIZE] = {
    MEM_CHECK_MAGIC + 0,
    MEM_CHECK_MAGIC + 1,
    MEM_CHECK_MAGIC + 2,
    MEM_CHECK_MAGIC + 3,
    MEM_CHECK_MAGIC + 4,
    MEM_CHECK_MAGIC + 5,
    MEM_CHECK_MAGIC + 6,
    MEM_CHECK_MAGIC + 7,
    MEM_CHECK_MAGIC + 8,
    MEM_CHECK_MAGIC + 9,
    MEM_CHECK_MAGIC + 10,
    MEM_CHECK_MAGIC + 11,
    MEM_CHECK_MAGIC + 12,
    MEM_CHECK_MAGIC + 13,
    MEM_CHECK_MAGIC + 14,
    MEM_CHECK_MAGIC + 15,
};

void check_ewram_overclock() {
    // Set overclocked EWRAM
    REG_MEMCTRL = 0x0E000020;

    for(s32 index = 8; index >= 0; --index) {
        vu32 *volatile_ewram_data = &ewram_data;

        u32 test_value = qran();
        *volatile_ewram_data = test_value;

        // If different value (read failed), then disable overclock
        if(*volatile_ewram_data != test_value) {
            REG_MEMCTRL = 0x0D000020;
            return;
        }
    }
}

EWRAM_CODE u32 check_rom_waitstate(u32 mask) {
    REG_WSCNT = mask;

    // check sequential read (S)
    for (s32 i = 0; i < MEM_CHECK_SIZE; i++) {
        if (*(vs32*)&ROM_MAGIC[i] != (MEM_CHECK_MAGIC + i)) {
            // Read failed, reset to default values
            REG_WSCNT = WS_ROM0_N4 | WS_ROM0_S2 | WS_PREFETCH;
            return FALSE;
        }
    }

    // check non-sequential read (N)
    for (s32 i = 0, j = MEM_CHECK_SIZE - 1; i < MEM_CHECK_SIZE; i++, j--) {
        u8 L = *(vs32*)&ROM_MAGIC[i] == (MEM_CHECK_MAGIC + i);
        u8 R = *(vs32*)&ROM_MAGIC[j] == (MEM_CHECK_MAGIC + j);

        // If the values are the same, then continue checking
        if (L && R) continue;

        // Read failed, reset to default values
        REG_WSCNT = WS_ROM0_N4 | WS_ROM0_S2 | WS_PREFETCH;
        return FALSE;
    }

    return TRUE;
}

const u32 WSCNT_MASK[] = {
    WS_ROM0_N2 | WS_ROM0_S1 | WS_PREFETCH | WS_SRAM_8,
    WS_ROM0_N3 | WS_ROM0_S1 | WS_PREFETCH | WS_SRAM_8,
    WS_ROM0_N3 | WS_ROM0_S2 | WS_PREFETCH | WS_SRAM_8,
};

void rom_waitstates() {
    for (u32 i = 0; i < (sizeof(WSCNT_MASK) / sizeof(u32)); i++)
    {
        if (check_rom_waitstate(WSCNT_MASK[i])) {
            break;
        }
    }
}
void main_loop();

s32 main() {
    init_maxmod();

    check_ewram_overclock();

    rom_waitstates();

    init_sram();

    game_state = STATE_TITLE_SCREEN;
    
    mmStart(MOD_MENU, MM_PLAY_LOOP);

    // Set blending registers
    REG_BLDCNT = BLD_BUILD(BLD_OBJ, BLD_BG0 | BLD_BG1 | BLD_BG2, BLD_MODE(1));

    // Set additive blending
    REG_BLDALPHA = BLDA_BUILD(16, 16);

    main_loop();

    return 0;
}

void main_loop() {
    while(1) {
        switch (game_state) {
            case STATE_TITLE_SCREEN:
                title_screen_loop();
                break;

            case STATE_LEVEL_SELECT:
                level_select_loop();
                break;
                
            case STATE_ICON_KIT:
                icon_kit_loop();
                break;

            case STATE_SOUND_TEST:
                sound_test_loop();
                break;
        
            case STATE_PLAYING:
                game_loop();
                break;
        }
    }
}
void level_loop();

void game_loop() {
    // Fade out
    fade_out();

    mirror_scaling = float2fx(1.0);

    REG_BG0CNT  = BG_CBB(0) | BG_SBB(27) | BG_REG_32x32 | BG_PRIO(1);
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;

    REG_BG1CNT  = BG_CBB(0) | BG_SBB(28) | BG_REG_32x32 | BG_PRIO(2);
    REG_BG1HOFS = 0;
    REG_BG1VOFS = 0;

    REG_BG2CNT  = BG_CBB(2) | BG_SBB(29) | BG_REG_32x32 | BG_PRIO(3);
    REG_BG2HOFS = 0;
    REG_BG2VOFS = 0;

    REG_BG3CNT  = BG_CBB(2) | BG_SBB(30) | BG_REG_32x64 | BG_PRIO(0);
    REG_BG3HOFS = 0;
    REG_BG3VOFS = 256;

    // Set window registers

    REG_WININ = WIN_BG0 | WIN_BG1 | WIN_BG2 | WIN_BG3 | WIN_BLD | WIN_OBJ;
    REG_WINOUT = WIN_BG2;

    REG_WIN0H = SCREEN_WIDTH;
    REG_WIN0V = SCREEN_HEIGHT;

    // Init OAM and VRAM
    oam_init(shadow_oam, 128);
    memcpy32(&tile_mem[0][0], blockset, sizeof(blockset) / 4);

    memcpy16(&palette_buffer[240], &menu_palette[16], 16);
    
    memcpy32(&tile_mem_obj[0][992], level_text_chr, sizeof(level_text_chr) / 4);
    memcpy16(&palette_buffer[256], spritePalette, sizeof(spritePalette) / sizeof(COLOR));

    REG_DISPCNT = DCNT_OBJ | DCNT_OBJ_1D | DCNT_MODE0 | DCNT_BG0 | DCNT_BG1 | DCNT_BG2 | DCNT_BG3 | DCNT_WIN0;
    
    copy_pulsing_sprite();

    load_level(loaded_level_id);

    frame_finished = TRUE;
    fade_in_level();

    level_loop();
}

void level_loop() {
    while (1) { 
        frame_finished = FALSE;
        key_poll();

        // If pressed start, pause the game
        if (key_hit(KEY_START) && !complete_cutscene) {
            if (paused_routines()) {
                mmStop();
                mmEffect(SFX_LEVEL_EXIT);
                game_state = STATE_LEVEL_SELECT;      
                memcpy32(palette_buffer, pal_bg_mem, 256);
                clear_checkpoints();
                in_practice_mode = FALSE;
                screen_mirrored = FALSE;

                fade_out();

                mmStart(MOD_MENU, MM_PLAY_LOOP);
                return;
            }
        }

        if (cutscene_frame == EXIT_CUTSCENE_FRAME) {
            game_state = STATE_LEVEL_SELECT;      
            memcpy32(palette_buffer, pal_bg_mem, 256);
            fade_out();
            mmStart(MOD_MENU, MM_PLAY_LOOP);
            clear_checkpoints();
            complete_cutscene = FALSE;        
            cutscene_frame = 0;
            screen_mirrored = FALSE;
            screen_mirrored_transition = FALSE;
            in_practice_mode = FALSE;
            screen_mirrored = FALSE;
            return;
        }
        
#ifdef DEBUG
        if (key_hit(KEY_RIGHT)) {
            debug_mode ^= 1;
        }

        if (key_hit(KEY_LEFT)) {
            noclip ^= 1;
        }
#endif

        // Reset next sprite index
        nextSpr = 0;

#ifdef DEBUG
        if (noclip) oam_metaspr(0, 0, noclipSpr, 0, 0, 0, -1, 0, 0, TRUE, FALSE); 
#endif

        // Draw level progress
        draw_percentage(108, 8, get_level_progress(), numberSpr, 0);

        if (player_death) {
            mmEffect(SFX_EXPLOSION);
            set_new_best(get_level_progress(), in_practice_mode);
            reset_level();
        }

        // Run player code
        player_code();

        // Run object routines
        load_objects(TRUE);
        deoccupy_chr_slots();
        display_objects();
        rotate_saws();
        scale_pulsing_objects();

        if (in_practice_mode) {
            if (key_hit(KEY_L)) {
                store_practice_vars();
            }

            draw_checkpoints();
        }

        // Sort OAM
        sort_oam_by_prio();

#ifdef DEBUG
        if (debug_mode) {
            // I know this copies more bytes than it should, but some time has to be wasted for the line to cover an entire scanline
            memset32(pal_bg_mem, 0x7fff7fff, 512);
            memcpy32(pal_bg_mem, palette_buffer, 256);
        }
#endif
        // Mark the frame as finished
        frame_finished = TRUE;

        // Wait for VSYNC
        VBlankIntrWait();
    }
}

u32 paused_routines() {
    update_flags = UPDATE_NONE;
    // Dim screen
    clr_blend_fast(palette_buffer, (COLOR*) black_buffer, pal_bg_mem, 512, 16);
    mmPause();

    while (1) {
        key_poll();
        
        // Unpause
        if (key_hit(KEY_START)) {
            update_flags = UPDATE_ALL;
            break;
        }

        // Practice mode
        if (key_hit(KEY_SELECT)) {
            clear_checkpoints();
            
            in_practice_mode ^= 1;
            update_flags = UPDATE_ALL;

            if (!in_practice_mode) {
                fade_out_level();

                oam_init(shadow_oam, 128);
                load_level(loaded_level_id);

                frame_finished = TRUE;

                fade_in_level();
                mmStop();
            } else {
                // Start practice song
                mmStart(MOD_PRACTICE, MM_PLAY_LOOP);
                put_practice_gui();
            }
            break;
        }

        // Exit level
        if (key_hit(KEY_B)) {
            return 1;
        }

        // Wait for VSYNC
        VBlankIntrWait();
    }

    clr_blend_fast(palette_buffer, (COLOR*) black_buffer, pal_bg_mem, 512, 0);

    mmResume();

    return 0;
}
