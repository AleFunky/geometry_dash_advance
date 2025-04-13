#include <tonc.h>
#include "main.h"
#include "memory.h"

#define CENTER(x,y) ((x & 0xff) << 8) | (y & 0xff)
#define PRIO_IDOFF(prio, use_dbl, id_off) ((prio << 10) & PRIORITY_MASK) | ((use_dbl << 9) & DLB_SCALE_MASK) | (id_off & TILE_OFFSET_MASK)

// Next sprite slot in OAM
u8 nextSpr = 0;

const u16 noclipSpr[] = {
    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_16x8,
    ATTR2_PALBANK(5) | ATTR2_ID(992),
    0,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset
    0,

    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_16x8,
    ATTR2_PALBANK(5) | ATTR2_ID(994),
    16,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset
    0,

    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_16x8,
    ATTR2_PALBANK(5) | ATTR2_ID(996),
    32,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset
    0,

    0xffff
};

const u16 practiceCheckpoint[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(2) | ATTR2_ID(1013),
    0,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 waveTrailChunk[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_8x8,
    ATTR2_PALBANK(0) | ATTR2_ID(1017),
    0,
    0,
    PRIO_IDOFF(3, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 normalTrailChunk[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_8x8,
    ATTR2_PALBANK(0) | ATTR2_ID(1020),
    0,
    0,
    PRIO_IDOFF(3, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 miniWaveTrailChunk[] = {
    ATTR0_4BPP | ATTR0_TALL | ATTR0_BLEND,
    ATTR1_SIZE_8x16,
    ATTR2_PALBANK(0) | ATTR2_ID(1018),
    0,
    0,
    PRIO_IDOFF(3, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};


// Menu

const u16 menuStarSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_8x8,
    ATTR2_PALBANK(0) | ATTR2_ID(8),
    0,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset

    0xffff
};

const u16 menuNumberSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_8x8,
    ATTR2_PALBANK(1),
    0,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 gottenCoinSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(0),
    0,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 ungottenCoinSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(0) | ATTR2_ID(4),
    0,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 fineBarMaskSpr[] = {
    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_16x8,
    ATTR2_PALBANK(2) | ATTR2_ID(9),
    0,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 fineBarSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_8x8,
    ATTR2_PALBANK(2),
    0,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset
    CENTER(8, 8),
    
    0xffff
};


// Number
const u16 numberSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_8x8,
    ATTR2_PALBANK(5),
    0,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

// Icon Kit selection
const u16 iconKitSelection[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(0) | ATTR2_ID(992),
    0,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

// Palette Kit selection
const u16 paletteKitSelection[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(0) | ATTR2_ID(1008),
    0,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

// Palette Kit button
const u16 paletteKitButton[] = {
    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_8x32,
    ATTR2_PALBANK(0),
    0,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 menuButton[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(15),
    0,
    0,
    PRIO_IDOFF(0, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

// Player

const u16 player1Spr[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_AFF | ATTR0_AFF_DBL,
    ATTR1_SIZE_16x16 | ATTR1_AFF_ID(0),
    ATTR2_PALBANK(0),
    0,
    0,
    PRIO_IDOFF(2, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 player2Spr[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_AFF | ATTR0_AFF_DBL,
    ATTR1_SIZE_16x16 | ATTR1_AFF_ID(1),
    ATTR2_PALBANK(0) | ATTR2_ID(4),
    0,
    0,
    PRIO_IDOFF(2, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};


const u16 iconKitIcon[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(0),
    0,
    0,
    PRIO_IDOFF(2, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

// Portals

const u16 cubePortalSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(2),
    -8, // x
    -16, // y
    PRIO_IDOFF(0, 0, 16), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_32x16,
    ATTR2_PALBANK(2),
    -8, // x
    16, // y
    PRIO_IDOFF(0, 0, 32), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(2),
    -5, // x
    -16, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(2),
    -5, // x
    16,  // y
    PRIO_IDOFF(4, 0, 8), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 shipPortalSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(1),
    -8, // x
    -16, // y
    PRIO_IDOFF(0, 0, 16), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_32x16,
    ATTR2_PALBANK(1),
    -8, // x
    16, // y
    PRIO_IDOFF(0, 0, 32), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(1),
    -5, // x
    -16, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(1),
    -5, // x
    16,  // y
    PRIO_IDOFF(4, 0, 8), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 ballPortalSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(5),
    -8, // x
    -16, // y
    PRIO_IDOFF(0, 0, 16), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_32x16,
    ATTR2_PALBANK(5),
    -8, // x
    16, // y
    PRIO_IDOFF(0, 0, 32), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(5),
    -5, // x
    -16, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(5),
    -5, // x
    16,  // y
    PRIO_IDOFF(4, 0, 8), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 ufoPortalSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(6),
    -8, // x
    -16, // y
    PRIO_IDOFF(0, 0, 16), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_32x16,
    ATTR2_PALBANK(6),
    -8, // x
    16, // y
    PRIO_IDOFF(0, 0, 32), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(6),
    -5, // x
    -16, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(6),
    -5, // x
    16,  // y
    PRIO_IDOFF(4, 0, 8), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 wavePortalSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(3),
    -8, // x
    -16, // y
    PRIO_IDOFF(0, 0, 16), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_32x16,
    ATTR2_PALBANK(3),
    -8, // x
    16, // y
    PRIO_IDOFF(0, 0, 32), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(3),
    -5, // x
    -16, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(3),
    -5, // x
    16,  // y
    PRIO_IDOFF(4, 0, 8), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 gravityPortalBlueSpr[] = {
    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(3),
    -8, // x
    -16, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(3),
    -8, // x
    16, // y
    PRIO_IDOFF(4, 0, 8), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(3),
    8, // x
    -16, // y
    PRIO_IDOFF(0, 0, 16), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(3),
    8, // x
    16, // y
    PRIO_IDOFF(0, 0, 24), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 gravityPortalYellowSpr[] = {
    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(4),
    -8, // x
    -16, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(4),
    -8, // x
    16, // y
    PRIO_IDOFF(4, 0, 8), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(4),
    8, // x
    -16, // y
    PRIO_IDOFF(0, 0, 16), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(4),
    8, // x
    16, // y
    PRIO_IDOFF(0, 0, 24), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 mirrorPortalOrangeSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(6),
    0, // x
    -16, // y
    PRIO_IDOFF(0, 0, 16), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_32x16,
    ATTR2_PALBANK(6),
    0, // x
    16, // y
    PRIO_IDOFF(0, 0, 32), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(6),
    -16, // x
    -16, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(6),
    -16, // x
    16,  // y
    PRIO_IDOFF(4, 0, 8), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 mirrorPortalBlueSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(3),
    0, // x
    -16, // y
    PRIO_IDOFF(0, 0, 16), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_32x16,
    ATTR2_PALBANK(3),
    0, // x
    16, // y
    PRIO_IDOFF(0, 0, 32), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(3),
    -16, // x
    -16, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(3),
    -16, // x
    16,  // y
    PRIO_IDOFF(4, 0, 8), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 sizePortalPinkSpr[] = {
    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(1),
    -8, // x
    -16, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(1),
    -8, // x
    16, // y
    PRIO_IDOFF(4, 0, 8), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(1),
    8, // x
    -16, // y
    PRIO_IDOFF(0, 0, 16), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(1),
    8, // x
    16, // y
    PRIO_IDOFF(0, 0, 24), // id offset
    CENTER(8, 8),
    0xffff
};


const u16 sizePortalGreenSpr[] = {
    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(2),
    -8, // x
    -16, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(2),
    -8, // x
    16, // y
    PRIO_IDOFF(4, 0, 8), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(2),
    8, // x
    -16, // y
    PRIO_IDOFF(0, 0, 16), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(2),
    8, // x
    16, // y
    PRIO_IDOFF(0, 0, 24), // id offset
    CENTER(8, 8),
    0xffff
};


const u16 speedPortalHalf[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(6),
    -8, // x
    -8, // y
    PRIO_IDOFF(3, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 speedPortal1x[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(3),
    -8, // x
    -8, // y
    PRIO_IDOFF(3, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 speedPortal2x[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(2),
    -8, // x
    -8, // y
    PRIO_IDOFF(3, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 speedPortal3x[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(1),
    -10, // x
    -8, // y
    PRIO_IDOFF(3, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_8x8,
    ATTR2_PALBANK(1),
    22, // x
    4, // y
    PRIO_IDOFF(3, 0, 16), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 speedPortal4x[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(5),
    -11, // x
    -8, // y
    PRIO_IDOFF(3, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_8x16,
    ATTR2_PALBANK(5),
    21, // x
    0, // y
    PRIO_IDOFF(3, 0, 16), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 dualPortalOrangeSpr[] = {
    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(6),
    -1, // x
    -16, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(6),
    -1, // x
    16, // y
    PRIO_IDOFF(4, 0, 8), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(6),
    3, // x
    -16, // y
    PRIO_IDOFF(0, 0, 12), // id offset
    CENTER(8, 8),
    
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(6),
    9, // x
    0, // y
    PRIO_IDOFF(0, 0, 16), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(6),
    3, // x
    16, // y
    PRIO_IDOFF(0, 0, 20), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 dualPortalBlueSpr[] = {
    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(3),
    -1, // x
    -16, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(3),
    -1, // x
    16, // y
    PRIO_IDOFF(4, 0, 8), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(3),
    3, // x
    -16, // y
    PRIO_IDOFF(0, 0, 12), // id offset
    CENTER(8, 8),
    
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(3),
    9, // x
    0, // y
    PRIO_IDOFF(0, 0, 16), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(3),
    3, // x
    16, // y
    PRIO_IDOFF(0, 0, 20), // id offset
    CENTER(8, 8),
    0xffff
};

// Orbs and pads

const u16 yellowOrbSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_AFF,
    ATTR1_SIZE_16x16 | ATTR1_AFF_ID(4),
    ATTR2_PALBANK(1),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(1) | ATTR2_ID(ORB_PARTICLE_VRAM_ID),
    -4, // x
    -4, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 yellowPadSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(1),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(1) | ATTR2_ID(PAD_PARTICLE_VRAM_ID),
    0, // x
    0, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 blueOrbSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_AFF,
    ATTR1_SIZE_16x16 | ATTR1_AFF_ID(4),
    ATTR2_PALBANK(2),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(2) | ATTR2_ID(ORB_PARTICLE_VRAM_ID),
    -4, // x
    -4, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 bluePadSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(2),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(2) | ATTR2_ID(PAD_PARTICLE_VRAM_ID),
    0, // x
    0, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 pinkOrbSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_AFF,
    ATTR1_SIZE_16x16 | ATTR1_AFF_ID(4),
    ATTR2_PALBANK(3),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(3) | ATTR2_ID(ORB_PARTICLE_VRAM_ID),
    -4, // x
    -4, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 pinkPadSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(3),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(3) | ATTR2_ID(PAD_PARTICLE_VRAM_ID),
    0, // x
    0, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

// Deco 

const u16 bigBgDecoSpr[] = {
    ATTR0_4BPP | ATTR0_WIDE | ATTR0_BLEND,
    ATTR1_SIZE_64x32,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    -24,   // x
    -10,   // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 mediumBgDecoSpr[] = {
    ATTR0_4BPP | ATTR0_WIDE | ATTR0_BLEND,
    ATTR1_SIZE_64x32,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    -24, // x
    -10, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 smallBgDecoSpr[] = {
    ATTR0_4BPP | ATTR0_WIDE | ATTR0_BLEND,
    ATTR1_SIZE_32x16,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    -8, // x
    0,  // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 tinyBgSpikesSpr[] = {
    ATTR0_4BPP | ATTR0_WIDE | ATTR0_BLEND,
    ATTR1_SIZE_16x8,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    0, // x
    6, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 bgChainsSpr[] = {
    ATTR0_4BPP | ATTR0_TALL | ATTR0_BLEND,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    0,   // x
    -16, // y
    PRIO_IDOFF(6, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 bgChainsBigSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    0,   // x
    -32, // y
    PRIO_IDOFF(6, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_TALL | ATTR0_BLEND,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    0,   // x
    -16, // y
    PRIO_IDOFF(6, 0, 4), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 largePulsingCircleSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_AFF | ATTR0_BLEND,
    ATTR1_SIZE_16x16 | ATTR1_AFF_ID(4),
    ATTR2_PALBANK(0) | ATTR2_ID(PULSING_VRAM_ID),
    0, // x
    -16, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(1),
    0, // x
    -8, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};
const u16 mediumPulsingCircleSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_AFF | ATTR0_BLEND,
    ATTR1_SIZE_16x16 | ATTR1_AFF_ID(4),
    ATTR2_PALBANK(0) | ATTR2_ID(PULSING_VRAM_ID),
    0,  // x
    -8, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(1),
    0, // x
    0, // y
    PRIO_IDOFF(5, 0, 2), // id offset
    CENTER(8, 8),

    0xffff
};
const u16 smallPulsingCircleSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_AFF | ATTR0_BLEND,
    ATTR1_SIZE_16x16 | ATTR1_AFF_ID(4),
    ATTR2_PALBANK(0) | ATTR2_ID(PULSING_VRAM_ID),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_8x16,
    ATTR2_PALBANK(1),
    0, // x
    8, // y
    PRIO_IDOFF(5, 0, 4), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 pulsingObjectSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_AFF | ATTR0_BLEND,
    ATTR1_SIZE_16x16 | ATTR1_AFF_ID(4),
    ATTR2_PALBANK(0),
    0, // x
    0, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),
    0xffff,
};

const u16 pulsingObjectBigSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(0),
    -8, // x
    -8, // y
    PRIO_IDOFF(4, 1, 0), // id offset
    CENTER(8, 8),
    0xffff,
};

const u16 squareBgDecoSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    0, // x
    0, // y
    PRIO_IDOFF(5, 1, 0), // id offset
    CENTER(8, 8),
    0xffff
};

const u16 tallBgDecoSpr[] = {
    ATTR0_4BPP | ATTR0_TALL | ATTR0_BLEND,
    ATTR1_SIZE_16x32,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    0, // x
    -16, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),
    0xffff
};

// Spikes
const u16 spike_V[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(15),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),
    0xffff,
};

const u16 spike_H[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(15),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),
    0xffff,
};

const u16 halfSpike_V[] = {
    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_8x16,
    ATTR2_PALBANK(15),
    0, // x
    8, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),
    0xffff,
};

const u16 halfSpike_H[] = {
    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x8,
    ATTR2_PALBANK(15),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),
    0xffff,
};

const u16 mediumSpike_V[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(15),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),
    0xffff,
};

const u16 mediumSpike_H[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(15),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),
    0xffff,
};

const u16 groundSpike_V[] = {
    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_8x16,
    ATTR2_PALBANK(15),
    0, // x
    8, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),
    0xffff,
};

const u16 groundSpike_H[] = {
    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x8,
    ATTR2_PALBANK(15),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),
    0xffff,
};

const u16 groundWavySpike_V[] = {
    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_8x16,
    ATTR2_PALBANK(15),
    0, // x
    8, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),
    0xffff,
};

const u16 groundWavySpike_H[] = {
    ATTR0_4BPP | ATTR0_TALL,
    ATTR1_SIZE_16x8,
    ATTR2_PALBANK(15),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),
    0xffff,
};

const u16 sawBig[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_64x64,
    ATTR2_PALBANK(15),
    -24, // x
    -24, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 sawMedium[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(15),
    -8, // x
    -8, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 sawSmall[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(15),
    0, // x
    0, // y
    PRIO_IDOFF(4, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 basicBlock[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(15),
    0, // x
    0, // y
    PRIO_IDOFF(3, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};
const u16 basicSlab[] = {
    ATTR0_4BPP | ATTR0_WIDE,
    ATTR1_SIZE_16x8,
    ATTR2_PALBANK(15),
    0, // x
    0, // y
    PRIO_IDOFF(3, 0, 0), // id offset
    CENTER(8, 4),

    0xffff
};

const u16 sawDecoBig[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_64x64,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    -24, // x
    -24, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 sawDecoMediumSmall[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    -8, // x
    -8, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 sawDecoTiny[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    0, // x
    0, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 bigCloud[] = {
    ATTR0_4BPP | ATTR0_WIDE | ATTR0_BLEND,
    ATTR1_SIZE_64x32,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    -24, // x
    -8, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 mediumCloud[] = {
    ATTR0_4BPP | ATTR0_WIDE | ATTR0_BLEND,
    ATTR1_SIZE_32x16,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    -16, // x
    0, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    16, // x
    0, // y
    PRIO_IDOFF(5, 0, 8), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 smallCloud[] = {
    ATTR0_4BPP | ATTR0_WIDE | ATTR0_BLEND,
    ATTR1_SIZE_32x16,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    -16, // x
    0, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 bushDeco[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_16x16,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    0, // x
    0, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 bushDecoBig[] = {
    ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(0) | ATTR2_PRIO(3),
    -8, // x
    -16, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

const u16 coinSpr[] = {
    ATTR0_4BPP | ATTR0_SQUARE,
    ATTR1_SIZE_32x32,
    ATTR2_PALBANK(7) | ATTR2_ID(COIN_VRAM_ID),
    -4, // x
    -4, // y
    PRIO_IDOFF(5, 0, 0), // id offset
    CENTER(8, 8),

    0xffff
};

ROM_DATA const u16 *obj_sprites[] = {
    NULL,
    shipPortalSpr,
    cubePortalSpr,
    NULL, // COL TRIGGER
    bigBgDecoSpr,
    mediumBgDecoSpr,
    smallBgDecoSpr,
    tinyBgSpikesSpr,
    bgChainsSpr,
    yellowOrbSpr,
    yellowPadSpr,
    mediumPulsingCircleSpr,
    smallPulsingCircleSpr,
    largePulsingCircleSpr,
    gravityPortalBlueSpr,
    gravityPortalYellowSpr,
    blueOrbSpr,
    bluePadSpr,
    pinkOrbSpr,
    pinkPadSpr,
    pulsingObjectSpr,
    pulsingObjectSpr,
    pulsingObjectSpr,
    pulsingObjectSpr,
    bigBgDecoSpr,
    smallBgDecoSpr,
    ballPortalSpr,
    pulsingObjectSpr,
    sizePortalPinkSpr,
    sizePortalGreenSpr,

    // Spikes
    spike_V,
    spike_H,
    halfSpike_V,
    halfSpike_H,
    mediumSpike_V,
    mediumSpike_H,
    groundSpike_V,
    groundSpike_H,
    groundWavySpike_V,
    groundWavySpike_H,

    // Saws 
    sawBig,
    sawMedium,
    sawSmall,

    // Test
    basicBlock,
    basicSlab,

    mirrorPortalOrangeSpr,
    mirrorPortalBlueSpr,

    // Moar deco

    sawDecoBig,
    sawDecoMediumSmall,
    sawDecoMediumSmall,
    sawDecoTiny,

    pulsingObjectSpr,

    speedPortalHalf,
    speedPortal1x,
    speedPortal2x,
    speedPortal3x,
    speedPortal4x,

    ufoPortalSpr,

    // Square bg deco
    bigBgDecoSpr,
    mediumBgDecoSpr,
    smallBgDecoSpr,

    pulsingObjectBigSpr, // arrow
    pulsingObjectBigSpr, // exclamation
    pulsingObjectBigSpr, // interrogation

    // Spike bushes
    spike_V,
    spike_V,
    spike_V,
    spike_V,
    spike_H,
    spike_H,
    spike_H,
    spike_H,

    dualPortalOrangeSpr,
    dualPortalBlueSpr,

    // Toe Deco
    sawDecoBig,
    sawDecoMediumSmall,
    sawDecoTiny,

    bgChainsSpr,
    bgChainsSpr,
    bgChainsBigSpr,

    bigCloud,
    mediumCloud,
    smallCloud,
    
    bushDeco,
    bushDeco,
    bushDeco,
    bushDeco,
    bushDeco,
    bushDecoBig,

    coinSpr,

    // 1.6 deco
    pulsingObjectSpr,
    tallBgDecoSpr,
    squareBgDecoSpr,
    squareBgDecoSpr,

    sawDecoMediumSmall,
    sawDecoMediumSmall,
    sawDecoTiny,
    
    sawBig,
    sawMedium,
    sawMedium,

    sawDecoBig,
    sawDecoMediumSmall,
    sawDecoMediumSmall,

    bgChainsSpr,
    
    sawBig,
    sawMedium,
    sawMedium,

    pulsingObjectBigSpr, // x

    spike_V,
    spike_H,
    halfSpike_V,
    halfSpike_H,
    mediumSpike_V,
    mediumSpike_H,

    wavePortalSpr,

    sawDecoBig,
    sawDecoMediumSmall,
    sawDecoMediumSmall,
    pulsingObjectBigSpr,

    sawBig,
    sawMedium,
    sawMedium,

};

#define CHR_SLOT(name, rom, vram) {rom, vram},

const u32 obj_chr_offset[][2] = {
    CHR_SLOT("NONE", SPRITE_NO_CHR,0)
    CHR_SLOT("SHIP_PORTAL", 0x00, 0x28)
    CHR_SLOT("CUBE_PORTAL", 0x00, 0x28)
    CHR_SLOT("COL_TRIGGER", SPRITE_NO_CHR,0)

    CHR_SLOT("BIG_BG_SPIKES", 0x80, 0x20)
    CHR_SLOT("MEDIUM_BG_SPIKES", 0xa0, 0x20)
    CHR_SLOT("SMALL_BG_SPIKES", 0x70, 0x8)
    CHR_SLOT("TINY_BG_SPIKES", 0x78, 0x2)

    CHR_SLOT("BG_CHAIN", 0x100, 0x8)
    
    CHR_SLOT("YELLOW_ORB", 0x130, 0x4)
    CHR_SLOT("YELLOW_PAD", 0x140, 0x4)

    CHR_SLOT("MEDIUM_PULSING_CIRCLE", 0xf4, 0x8)
    CHR_SLOT("SMALL_PULSING_CIRCLE", 0xf4, 0x8)
    CHR_SLOT("LARGE_PULSING_CIRCLE", 0xf4, 0x8)

    CHR_SLOT("BLUE_GRAVITY_PORTAL", 0x30, 0x1c)
    CHR_SLOT("YELLOW_GRAVITY_PORTAL", 0x30, 0x1c)

    CHR_SLOT("BLUE_ORB", 0x130, 0x4)
    CHR_SLOT("BLUE_PAD", 0x140, 0x4)
    CHR_SLOT("PINK_ORB", 0x130, 0x4)
    CHR_SLOT("PINK_PAD", 0x140, 0x4)

    CHR_SLOT("PULSING_CIRCLE", 0x120, 0x4)
    CHR_SLOT("PULSING_CIRCUNFERENCE", 0xf0,  0xc)
    CHR_SLOT("PULSING_DIAMOND", 0x118, 0x4)
    CHR_SLOT("PULSING_STAR", 0x11c, 0x4)

    CHR_SLOT("BIG_BG_CLOUDS", 0xc0, 0x20)
    CHR_SLOT("SMALL_BG_CLOUDS", 0xe0, 0x8)

    CHR_SLOT("BALL_PORTAL", 0x00, 0x28)

    CHR_SLOT("PULSING_SQUARE", 0x114, 0x4)

    CHR_SLOT("MINI_PORTAL", 0x50, 0x20)
    CHR_SLOT("BIG_PORTAL", 0x50, 0x20)

    // Spikes

    CHR_SLOT("SPIKE_V", 0x160, 0x4)
    CHR_SLOT("SPIKE_H", 0x164, 0x4)
    CHR_SLOT("HALF_SPIKE_V", 0x154, 0x2)
    CHR_SLOT("HALF_SPIKE_H", 0x156, 0x2)
    CHR_SLOT("MEDIUM_SPIKE_V", 0x168, 0x4)
    CHR_SLOT("MEDIUM_SPIKE_H", 0x15c, 0x4)
    CHR_SLOT("GROUND_SPIKE_V", 0x152, 0x2)
    CHR_SLOT("GROUND_SPIKE_H", 0x158, 0x2)
    CHR_SLOT("GROUND_WAVY_SPIKE_V", 0x150, 0x2)
    CHR_SLOT("GROUND_WAVY_SPIKE_H", 0x15a, 0x2)

    // Saws

    CHR_SLOT("SAW_BIG", 0x190, 0x40)
    CHR_SLOT("SAW_MEDIUM", 0x180, 0x10)
    CHR_SLOT("SAW_SMALL", 0x170, 0x4)
    
    CHR_SLOT("BASIC_BLOCK", SPRITE_CHR_COPY_FROM_METATILE, 0x4)
    CHR_SLOT("BASIC_SLAB", SPRITE_CHR_COPY_FROM_METATILE, 0x2)
    
    CHR_SLOT("ORANGE_MIRROR_PORTAL", 0x1d0, 0x28)
    CHR_SLOT("BLUE_MIRROR_PORTAL",   0x1d0, 0x28)

    // More deco
    
    CHR_SLOT("BIG_SAW_DECO", 0x200, 0x40)
    CHR_SLOT("MEDIUM_SAW_DECO", 0x240, 0x10)
    CHR_SLOT("SMALL_SAW_DECO", 0x250, 0x10)
    CHR_SLOT("TINY_SAW_DECO", 0x260, 0x4)

    CHR_SLOT("PULSING_NOTE", 0x124, 0x4)    
    
    CHR_SLOT("SPEED_PORTAL_HALF", 0x270, 0x10)
    CHR_SLOT("SPEED_PORTAL_1x",   0x280, 0x10)
    CHR_SLOT("SPEED_PORTAL_2x",   0x290, 0x10)
    CHR_SLOT("SPEED_PORTAL_3x",   0x2a0, 0x11)
    CHR_SLOT("SPEED_PORTAL_4x",   0x2c0, 0x12)

    CHR_SLOT("UFO_PORTAL", 0x00, 0x28)

    CHR_SLOT("BIG_BG_SQUARES", 0x2e0, 0x20)
    CHR_SLOT("MEDIUM_BG_SQUARES", 0x300, 0x20)
    CHR_SLOT("SMALL_BG_SQUARES", 0x320, 0x8)
    
    CHR_SLOT("PULSING_ARROW", 0x330, 0x10)
    CHR_SLOT("PULSING_EXCLAMATION", 0x340, 0x10)
    CHR_SLOT("PULSING_INTERROGATION", 0x350, 0x10)

    CHR_SLOT("GROUND_BUSH_SPIKE_1_V", 0x360, 0x4)
    CHR_SLOT("GROUND_BUSH_SPIKE_2_V", 0x364, 0x4)
    CHR_SLOT("GROUND_BUSH_SPIKE_3_V", 0x368, 0x4)
    CHR_SLOT("GROUND_BUSH_SPIKE_4_V", 0x36c, 0x4)
    CHR_SLOT("GROUND_BUSH_SPIKE_1_H", 0x370, 0x4)
    CHR_SLOT("GROUND_BUSH_SPIKE_2_H", 0x374, 0x4)
    CHR_SLOT("GROUND_BUSH_SPIKE_3_H", 0x378, 0x4)
    CHR_SLOT("GROUND_BUSH_SPIKE_4_H", 0x37c, 0x4)

    CHR_SLOT("ORANGE_DUAL_PORTAL", 0x380, 0x18)
    CHR_SLOT("BLUE_DUAL_PORTAL", 0x380, 0x18)

    CHR_SLOT("BIG_CIRCUNFERENCE_SAW_DECO", 0x3a0, 0x40)
    CHR_SLOT("MED_CIRCUNFERENCE_SAW_DECO", 0x3e0, 0x10)
    CHR_SLOT("SMA_CIRCUNFERENCE_SAW_DECO", 0x3f0, 0x4)

    CHR_SLOT("SMALL_BG_CHAINS", 0x400, 0x8)
    CHR_SLOT("SMALL_WIDE_BG_CHAINS", 0x408, 0x8)
    CHR_SLOT("BIG_WIDE_BG_CHAINS", 0x3f4, 0xc)

    CHR_SLOT("BIG_CLOUD", 0x410, 0x20)
    CHR_SLOT("MEDIUM_CLOUD", 0x430, 0xc)
    CHR_SLOT("SMALL_CLOUD", 0x440, 0x8)

    CHR_SLOT("BUSH_DECO_1", 0x450, 0x4)
    CHR_SLOT("BUSH_DECO_2", 0x454, 0x4)
    CHR_SLOT("BUSH_DECO_3", 0x458, 0x4)
    CHR_SLOT("BUSH_DECO_4", 0x45c, 0x4)
    CHR_SLOT("BUSH_DECO_5", 0x460, 0x4)
    CHR_SLOT("BUSH_DECO_6", 0x470, 0x10)
    
    CHR_SLOT("COIN", SPRITE_NO_CHR,0)

    // 1.6

    CHR_SLOT("PULSING_HEARTH", 0x128, 0x4)

    CHR_SLOT("BIG_DECO_TRIANGLE", 0x580, 0x8)
    CHR_SLOT("MEDIUM_DECO_TRIANGLE", 0x588, 0x4)
    CHR_SLOT("SMALL_DECO_TRIANGLE", 0x58c, 0x4)

    CHR_SLOT("BIG_CIRCLE_SAW_DECO", 0x480, 0x10)
    CHR_SLOT("MEDIUM_CIRCLE_SAW_DECO", 0x490, 0x10)
    CHR_SLOT("SMALL_CIRCLE_SAW_DECO", 0x4a0, 0x4)
    
    CHR_SLOT("BIG_OUTLINE_SAW", 0x520, 0x40)
    CHR_SLOT("MEDIUM_OUTLINE_SAW", 0x560, 0x10)
    CHR_SLOT("SMALL_OUTLINE_SAW", 0x570, 0x10)

    CHR_SLOT("BIG_SPIKE_SAW_DECO", 0x4b0, 0x40)
    CHR_SLOT("MEDIUM_SPIKE_SAW_DECO", 0x4f0, 0x10)
    CHR_SLOT("SMALL_SPIKE_SAW_DECO", 0x500, 0x10)

    CHR_SLOT("DIAMOND_BG_CHAINS", 0x510, 0x8)

    CHR_SLOT("ALT_BIG_OUTLINE_SAW", 0x590, 0x40)
    CHR_SLOT("ALT_MEDIUM_OUTLINE_SAW", 0x5d0, 0x10)
    CHR_SLOT("ALT_SMALL_OUTLINE_SAW", 0x5e0, 0x10)

    CHR_SLOT("PULSING_X", 0x5f0, 0x10)

    CHR_SLOT("1.6_SPIKE_V", 0x144, 0x4)
    CHR_SLOT("1.6_SPIKE_H", 0x134, 0x4)
    CHR_SLOT("1.6_HALF_SPIKE_V", 0x14c, 0x2)
    CHR_SLOT("1.6_HALF_SPIKE_H", 0x13c, 0x2)
    CHR_SLOT("1.6_MEDIUM_SPIKE_V", 0x148, 0x4)
    CHR_SLOT("1.6_MEDIUM_SPIKE_H", 0x138, 0x4)

    CHR_SLOT("WAVE_PORTAL", 0x00, 0x28)

    CHR_SLOT("BIG_ROTATING_FLOWER", 0x600, 0x40)
    CHR_SLOT("MEDIUM_ROTATING_FLOWER", 0x640, 0x10)
    CHR_SLOT("SMALL_ROTATING_FLOWER", 0x650, 0x10)
    CHR_SLOT("BIG_PULSING_CIRCUNFERENCE", 0x660, 0x10)
    
    CHR_SLOT("BIG_COLORED_SAW", 0x670, 0x40)
    CHR_SLOT("MEDIUM_COLORED_SAW", 0x6b0, 0x10)
    CHR_SLOT("SMALL_COLORED_SAW", 0x6c0, 0x10)
};
#undef CHR_SLOT

const u8 spr_width_height_table[] = {
    0x08, 0x08, // 8x8
    0x10, 0x10, // 16x16
    0x20, 0x20, // 32x32
    0x40, 0x40, // 64x64

    0x10, 0x08, // 16x8
    0x20, 0x08, // 32x8
    0x20, 0x10, // 32x16
    0x40, 0x20, // 64x32

    0x08, 0x10, // 8x16
    0x08, 0x20, // 8x32
    0x10, 0x20, // 16x32
    0x20, 0x40, // 32x64
};

ARM_CODE void oam_metaspr(u16 x, u8 y, const u16 *data, u8 hflip, u8 vflip, u16 tile_id, s16 palette, u8 priority, u8 zindex, u8 disable_mirror) {
    u32 i = 0;
    u16 offset;
    u8 should_flip = screen_mirrored;

    if (disable_mirror) {
        should_flip = FALSE;
    }

    // Continue until end of data
    while (data[i] != 0xffff && nextSpr < 128) {
        // Add offset
        offset = tile_id + (data[i + 5] & TILE_OFFSET_MASK);

        // Get next sprite slot
        OAM_SPR *newSpr = &shadow_oam[nextSpr];

        u16 attribute1 = data[i + 1];
        u16 attribute2 = data[i + 2];

        // Flip in case of it not being affine, as affine sprites cant be mirrored
        if (!(data[i] & ATTR0_AFF)) {
            attribute1 ^= ATTR1_FLIP((hflip ^ should_flip) | (vflip << 1));
        }

        // Set tile id if not set already by sprite data
        if (!(attribute2 & ATTR2_ID_MASK)) {
            attribute2 |= (offset & ATTR2_ID_MASK);
        }

        // Set priority if modified
        if (!(priority & PRIORITY_DONT_MODIFY_PRIO)) {
            attribute2 = (attribute2 & ~ATTR2_PRIO_MASK) | ((priority << ATTR2_PRIO_SHIFT) & ATTR2_PRIO_MASK);
        }

        // Convert priority 0 to 1 if not flagged
        if (!(attribute2 & ATTR2_PRIO_MASK) && !(priority & PRIORITY_DONT_DISABLE_0)) {
            attribute2 = (attribute2 & ~ATTR2_PRIO_MASK) | (1 << ATTR2_PRIO_SHIFT);
        }

        // Set palette if positive
        if (palette >= 0) {
            attribute2 = (attribute2 & ~ATTR2_PALBANK_MASK) | ((palette << ATTR2_PALBANK_SHIFT) & ATTR2_PALBANK_MASK);
        }

        u8 bg_layer = (attribute2 & ATTR2_PRIO_MASK) >> ATTR2_PRIO_SHIFT;

        // Set priority into this array for sorting
        if (zindex) {
            obj_priorities[nextSpr] = (bg_layer << 6) | (zindex & 0b111111);
        } else {
            obj_priorities[nextSpr] = (bg_layer << 6) | ((data[i + 5] & PRIORITY_MASK) >> ATTR2_PRIO_SHIFT);
        }

        // Set attributes
        obj_set_attr(newSpr, 
            data[i],      // ATTR0
            attribute1,   // ATTR1
            attribute2);  // ATTR2
        
        u8 wh_index = ((data[i] & ATTR0_SHAPE_MASK) >> 12) | ((data[i + 1] & ATTR1_SIZE_MASK) >> 14);
        
        u8 width = spr_width_height_table[wh_index << 1];
        u8 height = spr_width_height_table[(wh_index << 1) + 1];
        
        s16 offset_x = data[i + 3];
        s16 offset_y = data[i + 4];
        s8 center_x = data[i + 6] >> 8;
        s8 center_y = data[i + 6] & 0xff;

        if (hflip) {
            offset_x = center_x - (offset_x - center_x + width); 
        }

        if (vflip) {
            offset_y = center_y - (offset_y - center_y + height); 
        }

        s32 x_rel;

        // Flip pos on screen if screen is mirrored
        if (should_flip) {
            u8 calculated_width = width;

            if (data[i] & ATTR0_AFF_DBL_BIT) {
                calculated_width <<= 1;
            }

            x_rel = SCREEN_WIDTH - (x + offset_x + calculated_width);
        } else {
            x_rel = x + offset_x;
        }

        // Set position
        obj_set_pos(newSpr, x_rel, y + offset_y);

        // Increment into next sprite
        nextSpr++;
        // Also increment sprite index by 7 words
        i += 7;
    }
}
ARM_CODE void oam_affine_metaspr(u16 x, u8 y, const u16 *data, u16 rotation, u8 aff_id, u8 dbl, u16 tile_id, s16 palette, u8 priority, u8 zindex, u8 disable_mirror) {
    u32 i = 0;
    u16 offset;

    u8 should_flip = screen_mirrored;

    if (disable_mirror) {
        should_flip = FALSE;
    }

    // Continue until end of data
    while (data[i] != 0xffff && nextSpr < 128) {
        // Add offset
        offset = tile_id + (data[i + 5] & TILE_OFFSET_MASK);

        // Get next sprite slot
        OAM_SPR *newSpr = &shadow_oam[nextSpr];

        u16 attribute0 = data[i] | ATTR0_AFF;
        u16 attribute1 = data[i + 1];
        u16 attribute2 = data[i + 2];

        u8 shape = (attribute0 & ATTR0_SHAPE_MASK) >> 12;

        u8 should_use_double_size = dbl && ((shape != ATTR0_SQUARE && !(rotation & 0x3fff)) || !(data[i + 5] & DLB_SCALE_MASK)) ;
        // Set double size flag if especified, not square and rotation is not a multiple of 90º
        if (should_use_double_size) {
            attribute0 |= ATTR0_AFF_DBL;
        }

        // Set affine ID slot if not set in sprite data
        if (!(attribute1 & ATTR1_AFF_ID_MASK)) {
            attribute1 |= ATTR1_AFF_ID(aff_id);
        }

        // Set tile id if not set already by sprite data
        if (!(attribute2 & ATTR2_ID_MASK)) {
            attribute2 |= (offset & 0x3ff);
        }

        // Set priority if modified
        if (!(priority & 0b100)) {
            attribute2 = (attribute2 & ~ATTR2_PRIO_MASK) | (((priority & 7) << ATTR2_PRIO_SHIFT) & ATTR2_PRIO_MASK);
        }
        
        if (!(attribute2 & ATTR2_PRIO_MASK)) {
            attribute2 = (attribute2 & ~ATTR2_PRIO_MASK) | (1 << ATTR2_PRIO_SHIFT);
        }

        // Set palette if positive
        if (palette >= 0) {
            attribute2 = (attribute2 & ~ATTR2_PALBANK_MASK) | ((palette << ATTR2_PALBANK_SHIFT) & ATTR2_PALBANK_MASK);
        }

        u8 bg_layer = (attribute2 & ATTR2_PRIO_MASK) >> ATTR2_PRIO_SHIFT;

        // Set priority into this array for sorting
        if (zindex) {
            obj_priorities[nextSpr] = (bg_layer << 6) | (zindex & 0b111111);
        } else {
            obj_priorities[nextSpr] = (bg_layer << 6) | ((data[i + 5] & PRIORITY_MASK) >> ATTR2_PRIO_SHIFT);
        }

        // Set attributes
        obj_set_attr(newSpr, 
            attribute0,  // ATTR0
            attribute1,  // ATTR1
            attribute2); // ATTR2

        u8 wh_index = (shape) | ((data[i + 1] & ATTR1_SIZE_MASK) >> 14);

        u8 width = spr_width_height_table[wh_index << 1];
        u8 height = spr_width_height_table[(wh_index << 1) + 1];
       
        s16 offset_x = data[i + 3];
        s16 offset_y = data[i + 4];
        s8 center_x = data[i + 6] >> 8;
        s8 center_y = data[i + 6] & 0xff;

        // Trigonometric functions give a 20:12 fixed value
        s32 sin_theta = lu_sin(rotation); 
        s32 cos_theta = lu_cos(rotation);

        s32 relative_x = offset_x - center_x;
        s32 relative_y = offset_y - center_y;

        s32 relative_x_centered = relative_x + (width >> 1);
        s32 relative_y_centered = relative_y + (height >> 1);
        
        // Divide by 4096 to get back to pixels
        s32 rotated_x = ((s64)(relative_x_centered * cos_theta) - (s64)(relative_y_centered * sin_theta)) / 4096;
        s32 rotated_y = ((s64)(relative_y_centered * cos_theta) + (s64)(relative_x_centered * sin_theta)) / 4096;

        s32 total_x = x + (center_x - (width >> 1)) + rotated_x - (should_use_double_size ? (width >> 1) : 0);
        s32 total_y = y + (center_y - (height >> 1)) + rotated_y - (should_use_double_size ? (height >> 1) : 0);
        
        s32 x_rel;
        u8 aff_dbl = (attribute0 & ATTR0_AFF_DBL_BIT) >> 9;

        // Flip pos on screen if screen is mirrored
        if (should_flip) {
            x_rel = SCREEN_WIDTH - (total_x + (width << aff_dbl));
        } else {
            x_rel = total_x;
        }

        // Set position
        obj_set_pos(newSpr, x_rel, total_y);

        // Increment into next sprite
        nextSpr++;
        // Also increment sprite index by 7 words
        i += 7;
    }
}