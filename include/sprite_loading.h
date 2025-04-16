#include <tonc.h>
#include "memory.h"
#include "player.h"
#include "physics_defines.h"
#include "defines.h"

#ifndef SPR_LOADING_H
#define SPR_LOADING_H

#define NUM_ROT_SLOTS 27 // 5 are reserved to saws, music pulsing circles, and both players
#define NUM_RESERVED_ROT_SLOTS 32 - NUM_ROT_SLOTS 

#define AFF_SLOT_P1 0
#define AFF_SLOT_P2 1
#define AFF_SLOT_CLOCKWISE 2
#define AFF_SLOT_COUNTERCLOCKWISE 3
#define AFF_SLOT_PULSING 4

#define H_FLIP_FLAG (1 << 1)
#define V_FLIP_FLAG (1 << 0)
#define ENABLE_ROTATION_FLAG (1 << 2)

#define PRIORITY_FLAG_SHIFT 3
#define PRIORITY_FLAG (0b111 << PRIORITY_FLAG_SHIFT)

#define COIN_ID_SHIFT 7
#define COIN_ID_FLAG (0b11 << COIN_ID_SHIFT)

#define COIN_GRAVITY 0x4000

#define COIN_JUMP_HEIGHT 2.0 * BLOCKS_TO_VALUE
#define INITIAL_COIN_SPEED sqrt(2 * COIN_GRAVITY * COIN_JUMP_HEIGHT)

#define CIRCLE_HITBOX_FLAG (1 << 0)

#define ZINDEX_MASK 0b111111
#define PAL_SHIFT 6
#define PAL_MASK (0b111 << PAL_SHIFT)

// Rotating flags (used by saws and objects that rotate continously)
#define IS_ROTATING_FLAG          (1 << 1)
#define ROTATING_OBJ_BIT 2
#define ROTATING_CLOCKWISE        (0 << ROTATING_OBJ_BIT)
#define ROTATING_COUNTERCLOCKWISE (1 << ROTATING_OBJ_BIT)
#define ROTATING_DIRECTION_BIT    (1 << ROTATING_OBJ_BIT)

struct Object {
    u32 x;
    u16 y;
    u16 type;
    u16 attrib1;
    u16 attrib2;
    u16 attrib3;
    u16 z_index;
    u16 rotation;
};

struct ObjectSlot {
    u8 occupied;
    u8 activated[PLAYER_COUNT]; // One for each player
    u8 has_collision;
    struct Object object;
};

struct ObjectCHRSlot {
    u8 occupied;
    u8 object_slot;
    u8 tile_num;
    u32 rom_offset;
    u16 vram_offset;
};

enum OrbBufferStates {
    NO_ORB_BUFFER,
    ORB_BUFFER_READY,
    ORB_BUFFER_END
};

extern u16 *sprite_pointer;
extern u64 last_sprite_x;
extern struct ObjectSlot object_buffer[MAX_OBJECTS];


IWRAM_CODE void load_objects(u32 load_chr);
IWRAM_CODE void display_objects();

s32 get_chr_slot_id(u32 rom_offset, u8 tile_num);

void scale_pulsing_objects();
void rotate_saws();
void object_tile_data_load(u16 object_type);

void setup_graphics_upload(u16 type, u8 object_slot, u16 attrib3);

IWRAM_CODE void sort_oam_by_prio();
#endif