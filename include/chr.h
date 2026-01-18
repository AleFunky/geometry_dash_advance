#include <tonc.h>
#include "../graphics/includes.h"

#define NUM_PORTAL_PALETTES 6
#define START_OF_OBJECT_CHR 32

#define DASH_FIRE_VRAM_ID 1024-128
#define DASH_FIRE_OFFSET 0x200

#define PORTAL_PARTICLE_VRAM_ID 1024-80
#define PORTAL_OFFSET 0x180

#define PAD_PARTICLE_VRAM_ID 1024-72

#define ORB_PARTICLE_VRAM_ID 1024-64
#define ORB_OFFSET 0x80

#define COIN_VRAM_ID 1024-48
#define COIN_OFFSET 0x40
#define USER_COIN_OFFSET 0x300

#define PULSING_VRAM_ID 1024-68

#define PULSING_CIRCUNFERENCE_INDEX 0xfc
#define PULSING_CIRCLE_INDEX 0x10c
#define PULSING_FACE_INDEX 0x108


extern const COLOR blockPalette[240];
extern const COLOR spritePalette[256];
extern const COLOR secret_coin_palette[16];
extern const COLOR user_coin_palette[16];
extern const COLOR menu_palette[64];
extern const COLOR menu_spr_palette[64];
extern const COLOR menu_secret_coin_palette[16];
extern const COLOR menu_user_coin_palette[16];
extern const COLOR icon_kit_palette[336];
extern const COLOR black_buffer[512];
extern const SCR_ENTRY square_background_tilemap[1024];

extern const TILE *icon_kit[];
extern u16 *icon_selection_table[];
extern u16 *color_selection_table[];
extern const COLOR button_glyph_pal[3];

void run_animated_sprites();
ARM_CODE void deoccupy_chr_slots();
void load_chr_in_buffer();
void unload_chr_in_buffer();
ARM_CODE void flip_player_colors(u8 *dst, u8 *src, u8 tile_num);
ARM_CODE u32 obtain_flipped_pixel(u32 pixel);
ARM_CODE void remove_glow_pixels(u8 *dst, u8 *src, u8 tile_num);
void copy_pulsing_sprite();

void upload_player_chr(u32 gamemode, u32 player_id);
void upload_ply_chr(u32 gamemode, u32 icon_selected, u32 player_id, u32 glow_enabled);