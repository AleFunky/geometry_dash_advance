#include "save.h"
#include "defines.h"

EWRAM_DATA struct SaveBlock save_data;
EWRAM_DATA struct SaveSlot slot_buf[NUM_SAVE_SLOTS];

// Detected address for slot1 (0x10000 for 128KB flash, 0x08000 for 64KB flash)
static u32 save_slot1_addr = 0x10000;
// Number of active slots at runtime (1 for small flash, 2 for larger flash)
static int effective_save_slots = NUM_SAVE_SLOTS;

void memcpy8(volatile unsigned char *dst, const volatile unsigned char *src, size_t length) {
    for (;length > 0;--length) *dst++ = *src++;
}

void memset8(volatile unsigned char *dst, unsigned char val, size_t length) {
    for (;length > 0;--length) *dst++ = val;
}

void init_sram() {
	// Init flash with auto detection, then set slot addresses based on detected size
	flash_init(FLASH_SIZE_AUTO);
	// Probe address past 64KB to see if 128KB is present. flash_read returns 0 on success.
	u8 probe_buf = 0;
	if (flash_read(0x10000, &probe_buf, 1) == 0) {
		save_slot1_addr = 0x10000; // 128KB flash
	} else {
		save_slot1_addr = 0x08000; // 64KB flash, place slot1 at 32KB offset
	}

    // if 64KB total flash, disable double slot backup
    if (save_slot1_addr == 0x08000) effective_save_slots = 1;

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

static u32 compute_checksum(const u8 *data, size_t len) {
	u32 sum = 0;
	for (size_t i = 0; i < len; ++i) sum += data[i];
	return sum;
}

void read_save_block() {
	//sram_read(SAVE_BLOCK_ADDR, (u8*)&save_data, sizeof(save_data));
	// Read active slots and pick the one with highest valid sequence
	int valid[NUM_SAVE_SLOTS] = {0};
	u32 seqs[NUM_SAVE_SLOTS] = {0};

	if (effective_save_slots == 1) {
		flash_read(0x00000, (u8*)&slot_buf[0], sizeof(struct SaveSlot));
		if (slot_buf[0].block.magic == 0xdeadbeef && slot_buf[0].block.data_version == DATA_VERSION) {
			u32 c = compute_checksum((u8*)&slot_buf[0].block, sizeof(struct SaveBlock));
			if (c == slot_buf[0].checksum) {
				memcpy8((u8*)&save_data, (u8*)&slot_buf[0].block, sizeof(save_data));
				return;
			}
		}
		// no valid slot; zero and let init set defaults
		memset8((u8*)&save_data, 0x00, sizeof(save_data));
		return;
	}

	// Two-slot behavior
	for (int i = 0; i < NUM_SAVE_SLOTS; ++i) {
		flash_read((i) == 0 ? 0x00000 : save_slot1_addr, (u8*)&slot_buf[i], sizeof(struct SaveSlot));
		// Validate
		if (slot_buf[i].block.magic == 0xdeadbeef && slot_buf[i].block.data_version == DATA_VERSION) {
			u32 c = compute_checksum((u8*)&slot_buf[i].block, sizeof(struct SaveBlock));
			if (c == slot_buf[i].checksum) {
				valid[i] = 1;
				seqs[i] = slot_buf[i].seq;
			}
		}
	}

	int chosen = -1;
	if (valid[0] || valid[1]) {
		if (valid[0] && (!valid[1] || seqs[0] >= seqs[1])) chosen = 0;
		else chosen = 1;
	}

	if (chosen >= 0) {
		// copy chosen block into save_data
		memcpy8((u8*)&save_data, (u8*)&slot_buf[chosen].block, sizeof(save_data));
	} else {
		// no valid slot; zero and let init set defaults
		memset8((u8*)&save_data, 0x00, sizeof(save_data));
	}
}

void write_save_block() {
	//sram_write(SAVE_BLOCK_ADDR, (u8*)&save_data, sizeof(save_data));
	// Read current slots to find highest sequence

	u32 seqs[NUM_SAVE_SLOTS] = {0};
	int valid[NUM_SAVE_SLOTS] = {0};

	if (effective_save_slots == 1) {
		// Single-slot: only use slot 0
		flash_read(0x00000, (u8*)&slot_buf[0], sizeof(struct SaveSlot));
		if (slot_buf[0].block.magic == 0xdeadbeef && slot_buf[0].block.data_version == DATA_VERSION) {
			u32 c = compute_checksum((u8*)&slot_buf[0].block, sizeof(struct SaveBlock));
			if (c == slot_buf[0].checksum) {
				seqs[0] = slot_buf[0].seq;
				valid[0] = 1;
			}
		}

		int target = 0;
		u32 next_seq = valid[0] ? seqs[0] + 1 : 1;

		struct SaveSlot out;
		out.seq = next_seq;
		memcpy8((u8*)&out.block, (u8*)&save_data, sizeof(struct SaveBlock));
		out.checksum = compute_checksum((u8*)&out.block, sizeof(struct SaveBlock));

		flash_write(0x00000, (u8*)&out, sizeof(struct SaveSlot));
		return;
	}

	// Two-slot behavior
	for (int i = 0; i < NUM_SAVE_SLOTS; ++i) {
		flash_read((i) == 0 ? 0x00000 : save_slot1_addr, (u8*)&slot_buf[i], sizeof(struct SaveSlot));
		if (slot_buf[i].block.magic == 0xdeadbeef && slot_buf[i].block.data_version == DATA_VERSION) {
			u32 c = compute_checksum((u8*)&slot_buf[i].block, sizeof(struct SaveBlock));
			if (c == slot_buf[i].checksum) {
				valid[i] = 1;
				seqs[i] = slot_buf[i].seq;
			}
		}
	}

	int best = -1;
	for (int i = 0; i < NUM_SAVE_SLOTS; ++i) {
		if (best == -1 || (valid[i] && seqs[i] > seqs[best])) best = i;

	}

	int target = 0;
	u32 next_seq = 1;
	if (best == -1) {
		target = 0;
		next_seq = 1;
	} else {
		target = best ^ 1; // alternate
		next_seq = seqs[best] + 1;
	}

	struct SaveSlot out;
	out.seq = next_seq;
	memcpy8((u8*)&out.block, (u8*)&save_data, sizeof(struct SaveBlock));
	out.checksum = compute_checksum((u8*)&out.block, sizeof(struct SaveBlock));

	flash_write((target) == 0 ? 0x00000 : save_slot1_addr, (u8*)&out, sizeof(struct SaveSlot));
}

struct SaveLevelData *obtain_level_data(u16 level_id) {
	return &save_data.saved_levels[level_id];
}

