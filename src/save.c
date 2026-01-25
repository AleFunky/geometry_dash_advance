#include "save.h"
#include "defines.h"

EWRAM_DATA struct SaveBlock save_data;

void memcpy8(volatile unsigned char *dst, const volatile unsigned char *src, size_t length) {
    for (;length > 0;--length) *dst++ = *src++;
}

void memset8(volatile unsigned char *dst, unsigned char val, size_t length) {
    for (;length > 0;--length) *dst++ = val;
}

void init_sram() {
	read_save_block();

	// Clear if magic is invalid or different save version
	if (save_data.magic != 0xdeadbeef || save_data.data_version != DATA_VERSION) {
		memset8((u8*)&save_data, 0x00, sizeof(save_data));

		save_data.magic = 0xdeadbeef;
		save_data.data_version = DATA_VERSION;
		save_data.level_version = LEVEL_VERSION;
		save_data.p1_col_selected = DEFAULT_P1_COLOR;
		save_data.p2_col_selected = DEFAULT_P2_COLOR;
		save_data.glow_col_selected = DEFAULT_GLOW_COLOR;
		save_data.glow_enabled = FALSE;
		
		write_save_block();
	}else if (save_data.level_version != LEVEL_VERSION) {
		// Endless was added on version 8
		if (save_data.level_version < 8) save_data.endless_distance = 0;

		memset8((u8*)&save_data.saved_levels, 0x00, sizeof(save_data.saved_levels));

		save_data.level_version = LEVEL_VERSION;
		
		write_save_block();
	}
}

void set_coin(struct SaveLevelData *level_data, u32 coin_id) {
	level_data->coins |= 1 << coin_id;
}

u32 get_coin(struct SaveLevelData *level_data, u32 coin_id) {
	return (level_data->coins >> coin_id) & 1;
}

void read_save_block() {
	sram_read(SAVE_BLOCK_ADDR, (u8*)&save_data, sizeof(save_data));
}

void write_save_block() {
	sram_write(SAVE_BLOCK_ADDR, (u8*)&save_data, sizeof(save_data));
}

struct SaveLevelData *obtain_level_data(u16 level_id) {
	return &save_data.saved_levels[level_id];
}

