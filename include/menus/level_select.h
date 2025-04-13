#include <tonc.h>

#pragma once

extern u16 game_state;
extern u16 loaded_level_id;

enum GameState {
    STATE_TITLE_SCREEN,
    STATE_LEVEL_SELECT,
    STATE_ICON_KIT,
    STATE_SOUND_TEST,
    STATE_PLAYING
};

enum MenuDirection {
    MENU_LEFT,
    MENU_RIGHT,
};

enum BarType {
    BAR_TYPE_NORMAL_MODE,
    BAR_TYPE_PRACTICE_MODE,
};

enum GameplayMode {
    NORMAL_MODE,
    PRACTICE_MODE,
};

void put_star_number(u16 level_id, u16 page);
void put_coin_sprites(u16 level_id, u16 page);
void level_select_loop();
void put_level_info_sprites(u16 level_id);
void do_menu_color_transition();
void draw_button_glyphs_level_select();

void draw_progress_bar(s32 x, s32 y, s32 sb, u32 page, u32 value, u32 max, u32 width, u32 bar_type);