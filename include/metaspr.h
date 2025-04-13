#include <tonc.h>

#define SPRITE_CHR_COPY_FROM_METATILE (u32)(-2)
#define SPRITE_NO_CHR (u32)(-1)

#define TILE_OFFSET_MASK 0x1ff
#define PRIORITY_MASK 0xfc00
#define DLB_SCALE_MASK 0x0200

#define PRIORITY_DONT_DISABLE_0 (1 << 3)
#define PRIORITY_DONT_MODIFY_PRIO (1 << 2)

extern u8 nextSpr;
extern const u16 noclipSpr[];

extern const u16 menuStarSpr[];
extern const u16 menuNumberSpr[];
extern const u16 gottenCoinSpr[];
extern const u16 ungottenCoinSpr[];
extern const u16 fineBarSpr[];
extern const u16 fineBarMaskSpr[];

extern const u16 numberSpr[];
extern const u16 iconKitSelection[];
extern const u16 paletteKitSelection[];
extern const u16 paletteKitButton[];
extern const u16 player1Spr[];
extern const u16 player2Spr[];
extern const u16 iconKitIcon[];
extern const u16 *obj_sprites[];
extern const u32 obj_chr_offset[][2];
extern const u16 practiceCheckpoint[];
extern const u16 waveTrailChunk[];
extern const u16 miniWaveTrailChunk[];
extern const u16 normalTrailChunk[];
extern const u16 menuButton[];

ARM_CODE void oam_metaspr(u16 x, u8 y, const u16 *data, u8 hflip, u8 vflip, u16 tile_id, s16 palette, u8 priority, u8 zindex, u8 disable_mirror);
ARM_CODE void oam_affine_metaspr(u16 x, u8 y, const u16 *data, u16 rotation, u8 aff_id, u8 dbl, u16 tile_id, s16 palette, u8 priority, u8 zindex, u8 disable_mirror);