#include "main.h"
#include "../graphics/includes.h"
#include "metatiles.h"

const COLOR blockPalette[] = {
    0x7C00, 0x7C00, 0x6800, 0x5400, 0x3C00, 0x2800, 0x1400, 0x0000, 0x7D4A, 0x7EB5, 0x7FFF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x7C00, 0x6800, 0x5400, 0x3C00, 0x2800, 0x1400, 0x0000, 0x7FFF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};

const COLOR spritePalette[] = {
    0x0000, 0x0000, 0x0060, 0x0540, 0x01A0, 0x12A0, 0x13E0, 0x2F00, 0x4220, 0x7FE0, 0x5AC0, 0x3180, 0x1080, 0x0C00, 0x7FFF, 0x7FE0, // 0
    0x0000, 0x0000, 0x7FFF, 0x7E9F, 0x7DDF, 0x7C9F, 0x2CAB, 0x7DEF, 0x3BFF, 0x27DF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // 1
    0x0000, 0x0000, 0x7FFF, 0x33EB, 0x1BE5, 0x0380, 0x0960, 0x7DEF, 0x7FEE, 0x7FE3, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // 2
    0x0000, 0x0000, 0x7FFF, 0x7FEE, 0x7F47, 0x7E47, 0x2D22, 0x7DEF, 0x7E3F, 0x7D5F, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // 3
    0x0000, 0x0000, 0x7FFF, 0x23FF, 0x27DF, 0x2B9F, 0x0D4B, 0x7DEF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // 4
    0x0000, 0x0000, 0x7FFF, 0x3A3F, 0x199F, 0x001F, 0x088B, 0x7DEF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // 5
    0x0000, 0x0000, 0x7FFF, 0x1F5F, 0x02BF, 0x019F, 0x00EB, 0x7DEF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // 6
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // 7
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // 8
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // 9
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // a
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // b
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // c
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // d
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // e
    0x7C00, 0x7C00, 0x6800, 0x5400, 0x3C00, 0x2800, 0x1400, 0x0000, 0x7D4A, 0x7EB5, 0x7FFF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // f
};

const COLOR menu_palette[] = {
    0x7C00, 0x7C00, 0x6800, 0x5400, 0x3C00, 0x2800, 0x1400, 0x0000, 0x7D4A, 0x7EB5, 0x7FFF, 0x540A, 0x3C10, 0x2815, 0x141A, 0x0000, // 0
    0x0000, 0x0000, 0x2800, 0x27D8, 0x16CC, 0x09A7, 0x73EA, 0x56A0, 0x35A1, 0x03E0, 0x7FE0, 0x7FFF, 0x0000, 0x0000, 0x0000, 0x0000, // 1
    0x0000, 0x0000, 0x5294, 0x7FFF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, // 2
};

const SCR_ENTRY bg_tiles[] = {
    0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,0x0003,0x0001,
    0x0001,0x0001,0x0001,0x0001,0x0001,0x0004,0x0001,0x0001,
    0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0005,
    0x0003,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x000A,
    0x0008,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x000A,
    0x0008,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x000A,
    0x0008,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,0x000B,0x000C,
    0x000C,0x000C,0x000C,0x000C,0x000C,0x000D,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x000A,
    0x0008,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x000E,0x000F,0x000F,0x000F,0x000F,0x0010,0x0011,0x0012,
    0x0012,0x0012,0x0012,0x0012,0x0012,0x0013,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x000A,
    0x0008,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0000,0x0000,0x0014,0x0006,0x0006,0x0015,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0016,0x0017,0x0017,
    0x0017,0x0017,0x0017,0x0017,0x0017,0x0017,0x0017,0x0018,
    0x0008,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0019,0x0014,0x0006,0x0006,0x0007,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x001A,0x001B,0x001B,
    0x001B,0x001B,0x001B,0x001B,0x001B,0x001B,0x001B,0x001C,
    0x0008,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x001D,0x001E,0x001F,0x0020,0x0020,0x0021,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x000A,
    0x0022,0x000F,0x000F,0x000F,0x000F,0x000F,0x000F,0x0010,
    0x0023,0x0023,0x0023,0x0023,0x0023,0x0024,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x000A,
    0x0008,0x0006,0x0006,0x0006,0x0025,0x0026,0x0006,0x0015,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x000A,
    0x0008,0x0006,0x0006,0x0006,0x0027,0x0026,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x000A,
    0x0008,0x0006,0x0006,0x0006,0x0027,0x0028,0x0029,0x002A,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,0x002B,0x002C,
    0x002C,0x002C,0x002C,0x002C,0x002C,0x002D,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x000A,
    0x0008,0x0006,0x0006,0x0006,0x0027,0x0026,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x002E,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x000A,
    0x002F,0x0017,0x0017,0x0017,0x0030,0x0031,0x0017,0x0032,
    0x0033,0x000C,0x000C,0x000C,0x000C,0x0034,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x000A,
    0x0008,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0015,
    0x0012,0x0012,0x0012,0x0012,0x0012,0x0035,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x000A,
    0x0008,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0036,0x000C,0x000C,
    0x000C,0x000C,0x000C,0x000C,0x000C,0x000C,0x000C,0x0037,
    0x0008,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x001A,0x001B,0x001B,
    0x001B,0x001B,0x001B,0x001B,0x0038,0x0039,0x0012,0x003A,
    0x0008,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x003B,0x003C,0x0006,0x000A,
    0x0008,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,0x0008,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x003B,0x003D,0x003E,0x003F,
    0x0008,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0040,0x0041,0x0041,0x0042,0x0041,0x0043,0x0044,0x0045,
    0x0041,0x0041,0x0041,0x0041,0x0041,0x0046,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x003B,0x003C,0x0006,0x000A,
    0x0008,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0047,0x0006,0x0006,0x0006,0x0009,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x003B,0x0048,0x000F,0x0049,
    0x0022,0x000F,0x000F,0x000F,0x000F,0x000F,0x000F,0x0010,
    0x0006,0x0006,0x0006,0x0047,0x0006,0x0006,0x0006,0x0009,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x003B,0x003C,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0015,
    0x0006,0x0006,0x0006,0x0047,0x0006,0x0006,0x0006,0x0009,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x003B,0x003C,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x004C,0x004A,0x004A,0x004B,0x004C,0x004A,0x004A,0x004D,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x004E,0x004F,0x004F,
    0x004F,0x004F,0x004F,0x004F,0x0050,0x003C,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0051,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x003B,0x003C,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0052,
    0x003E,0x003E,0x003E,0x003E,0x003E,0x0053,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x003B,0x003C,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0051,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x003B,0x003C,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0051,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x003B,0x003C,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0051,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x003B,0x003C,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0051,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0009,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x003B,0x003C,0x0006,0x0006,
    0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,
    0x001D,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0054,
    0x0020,0x0020,0x0020,0x0020,0x0020,0x0055,0x0020,0x0020,
    0x0020,0x0020,0x0020,0x0020,0x001E,0x0056,0x0020,0x0020,
    0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0021
};


// This is all the color black for transition purposes
const COLOR black_buffer[] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 

    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 

    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 

    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 

    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    
};

u16 particle_timer = 0;

void run_particles() {
    // Last 4 sprite tiles are for PAD particles
    // TODO: orbs also need particles
    memcpy32(&tile_mem_obj[0][PARTICLE_OFFSET], &orb_pad_particles[particle_timer], (sizeof(TILE) / sizeof(u32)) * 2);
    memcpy32(&tile_mem_obj[0][PARTICLE_OFFSET + 2], &orb_pad_particles[particle_timer+32], (sizeof(TILE) / sizeof(u32)) * 2);

    particle_timer += 2;

    if (particle_timer > 31) particle_timer = 0;
}

void tile_h_flip(u8 *pointer) {
    u8 *tile_ptr = pointer;
    u8 *dst_ptr = tile_ptr + sizeof(TILE);

    // Each byte holds 2 pixels
    for (s32 x = 0; x < 4; x++) {
        u8 dst_x = 3 - x;
        for (s32 y = 0; y < 8; y++) {
            // Get byte and swap nybbles, then put it in the mirrored x pos
            u8 orig_value = tile_ptr[x + (y << 2)];
            u8 final_value = (orig_value << 4) | (orig_value >> 4);
            dst_ptr[dst_x + (y << 2)] = final_value;
        }
    }
}

void tile_v_flip(u8 *pointer) {
    u8 *tile_ptr = pointer;
    u8 *dst_ptr = tile_ptr + sizeof(TILE);

    // Each byte holds 2 pixels
    for (s32 x = 0; x < 4; x++) {
        for (s32 y = 0; y < 8; y++) {
            u8 dst_y = 7 - y;
            // Copy a 4 byte row into the mirrored y pos
            memcpy32(&dst_ptr[dst_y << 2], &tile_ptr[y << 2], 1);
        }
    }
}

void deoccupy_chr_slots() {
    for (s32 i = 0; i < MAX_OBJECTS; i++) {
        u8 was_occupied = chr_slots[i].occupied;
        u32 rom_offset = chr_slots[i].rom_offset;
        u32 vram_offset = chr_slots[i].vram_offset;
        u8 tile_num = chr_slots[i].tile_num;

        // If the slot is already deocuppied (that is, by no existing object updating the occupation), then proceed to setup unloading.
        // Also check if the slot has already been unloaded
        if (!was_occupied && rom_offset != 0xffffffff) {
            unloaded_object_buffer[unloaded_object_buffer_offset] = i;     
            unloaded_object_buffer_offset++;

            // Mark has unloaded here
            chr_slots[i].rom_offset = 0xffffffff;
            next_free_tile_id -= tile_num;

            // Start moving the VRAM offset of objects with an offset greater than this object's offset. Note this is only for OAM objects,
            // actual CHR needs to be updated on the next frame to avoid a single frame of garbage
            for (s32 j = 0; j < MAX_OBJECTS; j++) {
                u32 curr_vram_offset = chr_slots[j].vram_offset;
                // If this object's VRAM offset is greater than the unloaded object's, then it needs to be moved
                if (curr_vram_offset > vram_offset) {
                    chr_slots[j].vram_offset -= tile_num;
                }
            }
            
            chr_slots[i].occupied = FALSE;

            // Only one can be unloaded in a single frame to avoid issues
            return;
        }

        // Deoccupy, objects that are still loaded and use this slot will occupy it back later on this frame
        chr_slots[i].occupied = FALSE;
    }
}

void load_chr_in_buffer() {
    // Iterate through the buffer
    for (s32 i = loaded_object_buffer_offset; i > 0; i--) {
        s16 slot_id = loaded_object_buffer[i - 1];
        u8 object_slot = chr_slots[slot_id].object_slot;

        struct Object object = object_buffer[object_slot].object;

        u32 rom_offset = chr_slots[slot_id].rom_offset;
        u32 vram_offset = chr_slots[slot_id].vram_offset;
        u8 tile_num = chr_slots[slot_id].tile_num;
        
        // If the object that uses this slot is a block or an slab, then allow changing the chr from a metatile ID
        if (object.type == BASIC_BLOCK_OBJ || object.type == BASIC_SLAB_OBJ) {
            u16 metatile_ID = object.attrib3;
            TILE *tile_ptr = (TILE *) &blockset;

            // An slab is only two tiles big
            s32 num_tiles = object.type == BASIC_SLAB_OBJ ? 2 : 4;
            for (s32 tile = 0; tile < num_tiles; tile++) {
                SCR_ENTRY tile_id = metatiles[metatile_ID][tile];

                // Copy tile into buffer
                memcpy32(vram_copy_buffer, &tile_ptr[tile_id & SE_ID_MASK], (sizeof(TILE) / sizeof(u32)));

                // Flip horizontally if it should be flipped
                if (tile_id & SE_HFLIP) {
                    tile_h_flip(vram_copy_buffer);

                    // Copy back to the start of the buffer
                    memcpy32(vram_copy_buffer, &vram_copy_buffer[sizeof(TILE)], (sizeof(TILE) / sizeof(u32)));
                }

                // Flip vertically if it should be flipped
                if (tile_id & SE_VFLIP) {
                    tile_v_flip(vram_copy_buffer);

                    // Copy back to the start of the buffer
                    memcpy32(vram_copy_buffer, &vram_copy_buffer[sizeof(TILE)], (sizeof(TILE) / sizeof(u32)));
                }

                // Copy to VRAM this tile
                memcpy32(&tile_mem_obj[0][vram_offset + tile], vram_copy_buffer, (sizeof(TILE) / sizeof(u32)));
            }
        } else {
            // Copy to VRAM from ROM
            memcpy32(&tile_mem_obj[0][vram_offset], &sprites_chr[rom_offset], tile_num * (sizeof(TILE) / sizeof(u32)));
        }
    }

    loaded_object_buffer_offset = 0;
}

void unload_chr_in_buffer() {
    // Iterate through the buffer
    for (s32 i = unloaded_object_buffer_offset; i > 0; i--) {
        s16 slot_id = unloaded_object_buffer[i - 1];
        u32 vram_offset = chr_slots[slot_id].vram_offset;
        u8 tile_num = chr_slots[slot_id].tile_num;

        u16 old_vram_offset = vram_offset + tile_num;

        s16 tiles_to_copy = old_next_free_tile_id - vram_offset;

        // Failsafe in case this becomes negative and moves the entire VRAM a bunch of times
        if (tiles_to_copy < 0) tiles_to_copy = 0;

        // Move left the tiles after this object 
        memcpy32(&tile_mem_obj[0][vram_offset], &tile_mem_obj[0][old_vram_offset], tiles_to_copy * (sizeof(TILE) / sizeof(u32)));
    }

    unloaded_object_buffer_offset = 0;
}

const u8 player_color_mirror_lut[] = {
    0x2, 0xc,
    0x3, 0xc,
    0x4, 0xb,
    0x5, 0xa,
    0x6, 0x9,
    0x7, 0x8,
    0x6, 0x7,
};

ARM_CODE void flip_player_colors(u8 *dst, u8 *src, u8 tile_num) {
    for (s32 curr_tile = 0; curr_tile < tile_num; curr_tile++) {
        for (u32 byte = 0; byte < sizeof(TILE); byte++) {
            s32 index = (curr_tile << 5) + byte;
            
            // Get byte
            u32 tile_byte = src[index];

            u32 left_pixel = obtain_flipped_pixel(tile_byte >> 4);
            
            u32 right_pixel = obtain_flipped_pixel(tile_byte & 0b1111);

            // Set new byte
            dst[index] = (left_pixel << 4) | right_pixel;
        }
    }
}

ARM_CODE u32 obtain_flipped_pixel(u32 pixel) {
    for (u32 i = 0; i < sizeof(player_color_mirror_lut) ; i += 2) {
        // Get first byte of table entry
        u8 lut_pixel = player_color_mirror_lut[i];

        // If a match is found, return the second byte
        if (pixel == lut_pixel) {
            return player_color_mirror_lut[i + 1];
        }
        
        // Now get the second byte
        lut_pixel = player_color_mirror_lut[i + 1];

        // If a match is found, return the first byte
        if (pixel == lut_pixel) {
            return player_color_mirror_lut[i];
        }
    }

    // Not found
    return pixel;
}