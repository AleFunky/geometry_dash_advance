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

ROM_DATA char *sound_test_songs_names[] = {
    "STEREO MADNESS",
    "BACK ON TRACK",
    "POLARGEIST",
    "DRY OUT",
    "BASE AFTER BASE",
    "CANT LET GO",
    "JUMPER",
    "TIME MACHINE",
    "CYCLES",
    "XSTEP",
    "CLUTTERFUNK",
    "THEORY OF EVERYTHING",
    "ELECTROMAN ADVENTURES",
    "CLUBSTEP",
    "ELECTRODYNAMIX",
    "MENU LOOP",
    "STAY INSIDE ME",
    "GOLDEN HAZE",
    "CLOWN PARTY",
    "GROUND TO SPACE",
    "ULTIMATE DESTRUCTION",
    "ROSE",
    "PROBLEMATIC",
    "DEATH MOON",
    "EVERY END"
};

ROM_DATA char *sound_test_song_files[] = {
    "STEREOMA.XM",
    "BACKOT.XM",
    "POLAR.XM",
    "DRY.XM",
    "BASEAB.XM",
    "CANTLG.XM",
    "JUMPER.XM",
    "TIME.XM",
    "CYCLES.XM",
    "XSTEP.XM",
    "CLTRFNK.XM",
    "TOE.XM",
    "ELECTRO.XM", 
    "CLUBSTEP.XM",
    "DYNAMIX.XM",
    "MENU.XM",
    "PRACTICE.XM",
    "RTAY.XM",
    "CLOWNPARTY.XM",
    "GROUND.XM",
    "ULTIMATE.XM",
    "ROSE.XM",
    "PROBLEMATIC.XM",
    "DEATHMOON.XM",
    "EVERYEND.XM"
};

ROM_DATA u16 sound_test_song_ids[] = {
    MOD_STEREOMA,
    MOD_BACKOT,
    MOD_POLAR,
    MOD_DRY,
    MOD_BASEAB,
    MOD_CANTLG,
    MOD_JUMPER,
    MOD_TIME,
    MOD_CYCLES,
    MOD_XSTEP,
    MOD_CLTRFNK,
    MOD_TOE,
    MOD_ELECTRO,
    MOD_CLUBSTEP,
    MOD_DYNAMIX,
    MOD_MENU,
    MOD_PRACTICE,
    MOD_RTAY,
    MOD_CLOWNPARTY,
    MOD_GROUND,
    MOD_ULTIMATE,
    MOD_ROSE,
    MOD_PROBLEM,
    MOD_DEATHMOON,
    MOD_EVERYEND
};
void put_song_info(u32 song_id);

void sound_test_loop() {
    // Enable BG 0 and 1
    REG_DISPCNT = DCNT_MODE0 | DCNT_BG0 | DCNT_BG1;

    REG_BG0CNT  = BG_CBB(0) | BG_SBB(26) | BG_REG_32x32 | BG_PRIO(1);
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;

    REG_BG1CNT  = BG_CBB(0) | BG_SBB(27) | BG_REG_32x32 | BG_PRIO(2);
    REG_BG1HOFS = 0;
    REG_BG1VOFS = 0;

    memset32(palette_buffer, 0, 256);
    memcpy16(palette_buffer, menu_palette, sizeof(menu_palette) / sizeof(COLOR));
    palette_buffer[0x24] = palette_buffer[0];

    // Init PUSAB font
    tte_init_se(
        2,                                     // Background number (BG 2)
        BG_CBB(0) | BG_SBB(27) | BG_REG_64x32 | BG_PRIO(3), // BG control (for REG_BGxCNT)
        0,                                     // Tile offset (special cattr)
        0,                                     // Ink color
        0,                                     // BitUnpack offset (on-pixel = 15)
        &pusabFont,                            // Default font (sys8)
        NULL);                                 // Default renderer (se_drawg_s)


    tte_set_special(0x2000);

    memcpy32(&tile_mem[0][0], level_select_chr, sizeof(level_select_chr) / 8);
    memset32(&se_mem[26][0], 0x00000000, sizeof(SCREENBLOCK) / 4);
    
    mmStop();
    
    s32 song_id = 0;
    put_song_info(song_id);
    
    fade_in_menu();
    while (1) {
        key_poll();
    

        REG_BG2HOFS = REG_BG3HOFS = scroll_x >> SUBPIXEL_BITS;

        // Title screen
        if (key_hit(KEY_B)) {
            mmStop();
            mmStart(MOD_MENU, MM_PLAY_LOOP);
            game_state = STATE_TITLE_SCREEN;
            fade_out();
            break;
        }

        // Go right
        if (handle_key_holding(KEY_RIGHT)) {
            // Increment song ID
            song_id++;
            song_id = WRAP(song_id, 0, MSL_NSONGS);
            
            put_song_info(song_id);
        }

        // Go left
        if (handle_key_holding(KEY_LEFT)) {
            // Decrement song ID
            song_id--;
            song_id = WRAP(song_id, 0, MSL_NSONGS);

            mmStop();
            mmStart(sound_test_song_ids[song_id], MM_PLAY_ONCE);
            
            put_song_info(song_id);
        }

        // Wait for VSYNC
        VBlankIntrWait();
    }
}

void put_song_info(u32 song_id) {
    mmStop();
    mmStart(sound_test_song_ids[song_id], MM_PLAY_ONCE);

    tte_erase_rect(0, 0, 256, 64);
    tte_set_pos(8, 8);
    tte_write(sound_test_songs_names[song_id]);
    tte_set_pos(8, 24);
    tte_write(sound_test_song_files[song_id]);
}