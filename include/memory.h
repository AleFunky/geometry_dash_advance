#pragma once

#include <tonc.h>
#include <maxmod.h>
#include "sprite_loading.h"
#include "sprite_routines.h"

#define MAX_LEVEL_HEIGHT 128
#define GROUND_HEIGHT MAX_LEVEL_HEIGHT - 4
#define LEVEL_BUFFER_WIDTH 32
#define LEVEL_LAYERS 2

#define SCREENBLOCK_W 32
#define SCREENBLOCK_H 32

#define FIRST_NUMBER_ID 998
#define PERCENTAGE_SYMBOL_ID 1008

#define NUM_COINS_PER_LEVEL 3

#define NUM_PRACTICE_CHECKPOINTS 100

typedef s64 FIXED_LONG_16;
typedef s32 FIXED_16;

#define FIXED_SHIFT 16
#define FIXED_MULTIPLIER (1 << FIXED_SHIFT)
#define FLOAT_TO_FIXED(f) ((FIXED_LONG_16)((f)*FIXED_MULTIPLIER))
#define TO_FIXED(a)     (((FIXED_LONG_16)(a) * FIXED_MULTIPLIER))
#define FROM_FIXED(a)   (((FIXED_LONG_16)(a) / FIXED_MULTIPLIER))
#define FIXED_MUL(a, b) (((FIXED_LONG_16)(a) * (b)) / FIXED_MULTIPLIER)
#define FIXED_DIV(a, b) (((FIXED_LONG_16)(a) * FIXED_MULTIPLIER) / (b))

#define BGR_TO_STRUCT(rgb, struct_rgb) \
    struct_rgb.red = rgb & 0x1f; \
    struct_rgb.green = (rgb >> 5) & 0x1f; \
    struct_rgb.blue = (rgb >> 10) & 0x1f; \

#define REG_MEMCTRL *(vu32*)(REG_BASE + 0x800)


typedef OBJ_ATTR OAM_SPR;
#define UNUSED __unused
#define FALLTHROUGH __attribute__ ((fallthrough));

#define ARM_CODE __attribute__((target("arm"), section(".iwram"), long_call))
#define ROM_DATA __attribute__((section(".rodata,\"a\",%progbits @")))

extern OAM_SPR shadow_oam[128];
extern OBJ_AFFINE *obj_aff_buffer;
extern u8 obj_priorities[128];
extern EWRAM_DATA u16 level_buffer[LEVEL_LAYERS][MAX_LEVEL_HEIGHT*LEVEL_BUFFER_WIDTH];
extern IWRAM_DATA COLOR palette_buffer[512];
extern EWRAM_DATA u16 rotation_buffer[NUM_ROT_SLOTS];

#define COL_TRIG_BUFF_ACTIVE 0
#define COL_TRIG_BUFF_OLD_COLOR 1
#define COL_TRIG_BUFF_NEW_COLOR 2
#define COL_TRIG_BUFF_TOTAL_FRAMES 3
#define COL_TRIG_BUFF_CURRENT_FRAMES 4

extern EWRAM_DATA u16 col_trigger_buffer[CHANNEL_COUNT][5];
extern EWRAM_DATA u8 col_channels_flags[CHANNEL_COUNT];
extern EWRAM_DATA u16 col_channels_color[CHANNEL_COUNT];

extern u8 curr_column;
extern u8 curr_level_height;
extern u32 curr_level_width;
extern u32 *level_pointer[LEVEL_LAYERS];

extern u64 scroll_x;
extern u64 scroll_y;
extern s64 intended_scroll_y;

extern u32 target_scroll_y;

extern s8 scroll_y_dir;

extern u8 screen_mirrored;
extern u8 screen_mirrored_transition;
extern u8 swap_queue;

extern u16 loaded_level_id;
extern u16 loaded_song_id;

#define NUM_CHANNELS 8

extern u8 music_data[NUM_CHANNELS * (MM_SIZEOF_MODCH
                               +MM_SIZEOF_ACTCH
                               +MM_SIZEOF_MIXCH)
                               +MM_MIXLEN_16KHZ];

extern ALIGN4 u8 mixing_buffer[MM_MIXLEN_16KHZ];

extern u8 debug_mode;
extern u8 noclip;

extern u8 paused;

enum UpdateFlags {
    UPDATE_NONE,
    UPDATE_OAM          = (1 << 0),
    CLEAR_OAM_BUFFER    = (1 << 1),
    UPDATE_VRAM         = (1 << 2),
    UPDATE_SCROLL       = (1 << 3),
};

#define UPDATE_ALL UPDATE_OAM | UPDATE_VRAM | UPDATE_SCROLL | CLEAR_OAM_BUFFER

extern u8 update_flags;

extern u32 global_timer;

extern u16 next_free_tile_id;
extern u16 old_next_free_tile_id;

extern struct ObjectCHRSlot chr_slots[MAX_OBJECTS];
extern EWRAM_DATA u16 loaded_object_buffer_offset;
extern EWRAM_DATA s16 loaded_object_buffer[MAX_OBJECTS];
extern EWRAM_DATA u16 unloaded_object_buffer_offset;
extern EWRAM_DATA s16 unloaded_object_buffer[MAX_OBJECTS];
extern EWRAM_DATA u16 block_object_buffer_offset;
extern EWRAM_DATA s32 *block_object_buffer[MAX_OBJECTS];
extern EWRAM_DATA u16 block_object_buffer_flags[MAX_OBJECTS];

extern u8 vram_copy_buffer[2048];

extern s8 transition_frame;

extern u8 frame_finished;

extern u8 complete_cutscene;
extern u16 cutscene_frame;

extern EWRAM_DATA u32 ewram_data;

extern struct Player player_1;
extern struct Player player_2;
extern struct Player curr_player;
extern u8 curr_player_id;

extern u8 num_steps;

extern s32 gamemode_upload_buffer[2];

extern EWRAM_DATA u8 coin_buffer[NUM_COINS_PER_LEVEL];
extern EWRAM_DATA s32 coin_speed[NUM_COINS_PER_LEVEL];
extern EWRAM_DATA s32 coin_y_pos[NUM_COINS_PER_LEVEL];

#include "player.h"

struct PracticeCheckpoint {
    struct Player player1;
    struct Player player2;
    
    u64 scroll_x;
    u64 scroll_y;
    s64 intended_scroll_y;
    u32 target_scroll_y;

    u8 screen_mirrored;
    u8 screen_mirrored_transition;
    FIXED mirror_scaling;
    s8 transition_frame;

    u8 speed_id;
    u8 dual;

    u16 col_trigger_buffer[CHANNEL_COUNT][5];
    u8 col_channels_flags[CHANNEL_COUNT];
    u16 col_channels_color[CHANNEL_COUNT];

    COLOR channels[CHANNEL_COUNT];
};

extern u8 in_practice_mode;

#define WAVE_TRAIL_MAX_POINTS 0xC0
#define TRAIL_LENGTH 16

extern u8 wave_trail_pointer[PLAYER_COUNT];

extern u32 wave_trail_x[PLAYER_COUNT][WAVE_TRAIL_MAX_POINTS];
extern u16 wave_trail_y[PLAYER_COUNT][WAVE_TRAIL_MAX_POINTS];
extern u8 wave_trail_size[PLAYER_COUNT][WAVE_TRAIL_MAX_POINTS];

extern EWRAM_DATA u32 trail_x[PLAYER_COUNT][TRAIL_LENGTH];
extern EWRAM_DATA u16 trail_y[PLAYER_COUNT][TRAIL_LENGTH];
extern EWRAM_DATA u8 trail_enabled[PLAYER_COUNT][TRAIL_LENGTH];
extern EWRAM_DATA u8 trail_length[PLAYER_COUNT];

extern u32 checkpoint_count;
extern u32 checkpoint_pointer;
extern EWRAM_DATA struct PracticeCheckpoint checkpoints[NUM_PRACTICE_CHECKPOINTS];