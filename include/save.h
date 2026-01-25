#include <tonc.h>
#include "../levels/includes.h"
#include "libsavgba/gba_sram.h"

#pragma once

#define SAVE_BLOCK_ADDR 0

struct SaveLevelData {
    u8 completed;
    u8 normal_progress;
    u8 practice_progress;
    u8 coins;
    u32 attempts;
    u32 jumps;
};

struct SaveBlock {
    u32 magic;
    u16 level_version;
    u16 data_version;
    u16 cube_selected;
    u16 ship_selected;
    u16 ball_selected;
    u16 ufo_selected;
    u16 wave_selected;
    u16 p1_col_selected;
    u16 p2_col_selected;
    u16 glow_col_selected;
    u8 glow_enabled;
    u32 endless_distance;

    struct SaveLevelData saved_levels[LEVEL_COUNT];
};

extern EWRAM_DATA struct SaveBlock save_data;

void memcpy8(volatile unsigned char *dst, const volatile unsigned char *src, size_t length);
void memset8(volatile unsigned char *dst, unsigned char val, size_t length);
void init_sram();
void read_save_block();
void write_save_block();
void set_coin(struct SaveLevelData *level_data, u32 coin_id);
u32 get_coin(struct SaveLevelData *level_data, u32 coin_id);

struct SaveLevelData *obtain_level_data(u16 level_id);