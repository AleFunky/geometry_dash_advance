#include <tonc.h>
#include "memory.h"

#define GROUND_TILE_0 0x590
#define GROUND_TILE_1 0x591
#define GROUND_TILE_2 0x592
#define GROUND_TILE_3 0x593

#define GROUND_TILE_4 0x5a0
#define GROUND_TILE_5 0x5a1
#define GROUND_TILE_6 0x5a2
#define GROUND_TILE_7 0x5a3

#define GROUND_TILE_8 0x5b0
#define GROUND_TILE_9 0x5b1
#define GROUND_TILE_A 0x5b2
#define GROUND_TILE_B 0x5b3

#define GROUND_TILE_C 0x5c0
#define GROUND_TILE_D 0x5c1
#define GROUND_TILE_E 0x5c2
#define GROUND_TILE_F 0x5c3

enum CollisionTypes {
    COL_NONE,

    COL_FULL,
    COL_FLOOR_CEIL,

    COL_SPIKE_TOP,
    COL_SPIKE_BOTTOM,
    COL_SPIKE_RIGHT,
    COL_SPIKE_LEFT,

    COL_SMALL_SPIKE_TOP,
    COL_SMALL_SPIKE_BOTTOM,
    COL_SMALL_SPIKE_RIGHT,
    COL_SMALL_SPIKE_LEFT,

    COL_MEDIUM_SPIKE_TOP,
    COL_MEDIUM_SPIKE_BOTTOM,
    COL_MEDIUM_SPIKE_RIGHT,
    COL_MEDIUM_SPIKE_LEFT,

    COL_SLAB_TOP,
    COL_SLAB_BOTTOM,
    COL_SLAB_LEFT,
    COL_SLAB_RIGHT,
    
    COL_GROUND_SPIKE_TOP,
    COL_GROUND_SPIKE_BOTTOM,
    COL_GROUND_SPIKE_RIGHT,
    COL_GROUND_SPIKE_LEFT,

    COL_GROUND_WAVY_SPIKE_TOP,
    COL_GROUND_WAVY_SPIKE_BOTTOM,
    COL_GROUND_WAVY_SPIKE_RIGHT,
    COL_GROUND_WAVY_SPIKE_LEFT,

    COL_GROUND_BUSH_SPIKE_TOP,
    COL_GROUND_BUSH_SPIKE_BOTTOM,
    COL_GROUND_BUSH_SPIKE_RIGHT,
    COL_GROUND_BUSH_SPIKE_LEFT,

    COL_SLAB_MED_TOP,
    COL_SLAB_MED_BOTTOM,
    COL_SLAB_MED_LEFT,
    COL_SLAB_MED_RIGHT,

    COL_SLAB_TINY_TOP,
    COL_SLAB_TINY_BOTTOM,
    COL_SLAB_TINY_LEFT,
    COL_SLAB_TINY_RIGHT,

    COL_EA_SLAB_TOP,
    COL_EA_SLAB_BOTTOM,
    COL_EA_SLAB_LEFT,
    COL_EA_SLAB_RIGHT,

    COL_EA_CORNER_SLAB_TOP_LEFT,
    COL_EA_CORNER_SLAB_TOP_RIGHT,
    COL_EA_CORNER_SLAB_BOTTOM_LEFT,
    COL_EA_CORNER_SLAB_BOTTOM_RIGHT,

    COL_EA_CORNER_INSIDE_SLAB_TOP_LEFT,
    COL_EA_CORNER_INSIDE_SLAB_TOP_RIGHT,
    COL_EA_CORNER_INSIDE_SLAB_BOTTOM_LEFT,
    COL_EA_CORNER_INSIDE_SLAB_BOTTOM_RIGHT,

    BREAKABLE_BRICK,

    COL_CENTERED_MINI_BLOCK,

    COL_GROUND_WAVY_SPIKE_EDGE_BL,
    COL_GROUND_WAVY_SPIKE_EDGE_BR,
    COL_GROUND_WAVY_SPIKE_EDGE_TL,
    COL_GROUND_WAVY_SPIKE_EDGE_TR,
    COL_GROUND_WAVY_SPIKE_EDGE_LB,
    COL_GROUND_WAVY_SPIKE_EDGE_LT,
    COL_GROUND_WAVY_SPIKE_EDGE_RB,
    COL_GROUND_WAVY_SPIKE_EDGE_RT,

    COL_MINIBLOCK_0001,
    COL_MINIBLOCK_0010,
    COL_MINIBLOCK_0100,
    COL_MINIBLOCK_1000,
    COL_MINIBLOCK_0011,
    COL_MINIBLOCK_1100,
    COL_MINIBLOCK_1010,
    COL_MINIBLOCK_0101,
    COL_MINIBLOCK_1011,
    COL_MINIBLOCK_0111,
    COL_MINIBLOCK_1110,
    COL_MINIBLOCK_1101,
    COL_MINIBLOCK_1001,
    COL_MINIBLOCK_0110,
    COL_MINIBLOCK_1111,

    COL_OUTLINE_TOP,
    COL_OUTLINE_BOTTOM,
    COL_OUTLINE_LEFT,
    COL_OUTLINE_RIGHT,

    COL_SLOPE_START,
    COL_SLOPE_45_UP = COL_SLOPE_START,
    COL_SLOPE_45_DOWN,
    COL_SLOPE_45_UP_UD,
    COL_SLOPE_45_DOWN_UD,

    COL_SLOPE_22_UP_1,
    COL_SLOPE_22_UP_2,
    COL_SLOPE_22_DOWN_1,
    COL_SLOPE_22_DOWN_2,
    COL_SLOPE_22_UP_UD_1,
    COL_SLOPE_22_UP_UD_2,
    COL_SLOPE_22_DOWN_UD_1,
    COL_SLOPE_22_DOWN_UD_2,

    COL_SLOPE_66_UP_1,
    COL_SLOPE_66_UP_2,
    COL_SLOPE_66_DOWN_1,
    COL_SLOPE_66_DOWN_2,
    COL_SLOPE_66_UP_UD_1,
    COL_SLOPE_66_UP_UD_2,
    COL_SLOPE_66_DOWN_UD_1,
    COL_SLOPE_66_DOWN_UD_2,
    
    COL_SLOPE_END = COL_SLOPE_66_DOWN_UD_2,

    COL_TYPES_COUNT,
};

enum SlopeTypes {
    DEGREES_45,
    DEGREES_26_5,
    DEGREES_63_5,
    
    DEGREES_45_UD,
    DEGREES_26_5_UD,
    DEGREES_63_5_UD,

    DEGREES_45_DOWN,
    DEGREES_26_5_DOWN,
    DEGREES_63_5_DOWN,

    DEGREES_45_UD_DOWN,
    DEGREES_26_5_UD_DOWN,
    DEGREES_63_5_UD_DOWN,
};

enum CollisionSides {
    TOP,
    BOTTOM,
    CENTER
};

extern const u16 ground_pattern[];

extern u32 coll_x;
extern u32 coll_y;

void collision_cube();
void collision_ship_ball_ufo();
void collision_wave();
ARM_CODE void do_collision_with_objects();
ARM_CODE void check_obj_collision(u32 index);

#ifdef DEBUG
void draw_hitbox_points(u32 x, u32 y, u32 w, u32 h, u32 collided);
#endif

ARM_CODE u32 is_colliding(u32 x1, u32 y1, u32 w1, u32 h1, u32 x2, u32 y2, u32 w2, u32 h2);
ARM_CODE u32 is_colliding_circle(u32 cx1, u32 cy1, u32 r1, u32 cx2, u32 cy2, u32 r2);
ARM_CODE u32 is_colliding_circle_square(u32 x1, u32 y1, u32 w1, u32 h1, u32 cx2, u32 cy2, u32 r2);
ARM_CODE s32 is_colliding_rotated_fixed(
    s32 x1, s32 y1, s32 w1, s32 h1,                       // First rect (axis-aligned)
    s32 rot1_center_x, s32 rot1_center_y,                 // Rotation center point
    u16 angle1,                                           // Rotation angle (0-FFFF)
    
    s32 x2, s32 y2, s32 w2, s32 h2,                       // Second rect position and dimensions
    s32 rot2_center_x, s32 rot2_center_y,                 // Rotation center point
    u16 angle2                                            // Rotation angle (0-FFFF)
);                                           
u32 col_type_lookup(u16 col_type, u32 x, u32 y, u8 side, u32 layer);
ARM_CODE u32 obtain_level_buffer_index(u32 x, u32 y);
ARM_CODE u16 obtain_block(u32 x, u32 y, u32 layer);
ARM_CODE void collide_with_obj_spikes(u32 x, u32 y, u32 width, u32 height);
ARM_CODE void do_ejection(s32 eject_value, u32 ejection_type);