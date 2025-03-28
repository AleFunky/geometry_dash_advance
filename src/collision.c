#include "main.h"
#include "metatiles.h"
#include "physics_defines.h"

// Ground pattern
const u16 ground_pattern[] = {
    GROUND_TILE_0, GROUND_TILE_1, GROUND_TILE_2, GROUND_TILE_3,
    GROUND_TILE_4, GROUND_TILE_5, GROUND_TILE_6, GROUND_TILE_7,
    GROUND_TILE_8, GROUND_TILE_9, GROUND_TILE_A, GROUND_TILE_B,
    GROUND_TILE_C, GROUND_TILE_D, GROUND_TILE_E, GROUND_TILE_F,
};

// Pixel to check collision on.
u32 coll_x;
u32 coll_y;

// Collision eject
u32 eject_top = 0;
u32 eject_bottom = 0;

ARM_CODE u32 run_coll(u32 x, u32 y, u32 layer, u8 side);
ARM_CODE void collide_with_map_spikes(u32 x, u32 y, u32 width, u32 height, u8 layer);
s32 do_center_checks(u32 x, u32 y, u32 width, u32 height, u32 layer);
u32 collide_with_map_slopes(u64 x, u32 y, u32 width, u32 height);

void collision_cube() {
    // Exit if above screen
    if (curr_player.player_y < 0) return;

    curr_player.on_floor_step = FALSE;
    
    // Check slopes
    coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
    coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);

    collide_with_map_slopes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);

    // Check sprite spikes
    coll_x = (curr_player.player_x >> SUBPIXEL_BITS);
    coll_y = (curr_player.player_y >> SUBPIXEL_BITS);
    collide_with_obj_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);

    for (u32 layer = 0; layer < LEVEL_LAYERS; layer++) {
        // Check spikes
        coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
        coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);

#ifdef DEBUG
        if (!noclip) collide_with_map_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height, layer);
#else
        collide_with_map_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height, layer);
#endif

        // If the player is dead, don't bother checking more
        if (player_death) {
            return;
        }

        if (curr_player.gravity_dir == GRAVITY_DOWN) {
            if (curr_player.player_y_speed >= 0) {
                // Going down
                coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
                coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);
                
                if (!curr_player.slope_counter) {
                    if (run_coll(coll_x, coll_y + curr_player.player_height, layer, BOTTOM)) {
                        continue;
                    }
                    if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y + curr_player.player_height, layer, BOTTOM)) {
                        continue;
                    }
                }

                if (run_coll(coll_x + curr_player.player_width, coll_y + curr_player.player_height, layer, BOTTOM)) {
                    continue;
                }
            } else if (curr_player.should_check_ceiling) { {
                    // If ceiling should be checked, check for top collision
                    
                    if (!curr_player.slope_counter) {
                        if (run_coll(coll_x, coll_y, layer, TOP)) {
                            continue;
                        }
                        if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y, layer, TOP)) {
                            continue;
                        }
                    }
                    if (run_coll(coll_x + curr_player.player_width, coll_y, layer, TOP)) {
                        continue;
                    }
                    
                    // Decrement counter
                    curr_player.should_check_ceiling--;
                }
            }
        } else {
            if (curr_player.player_y_speed <= 0) {
                // Going up
                coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
                coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);

                if (!curr_player.slope_counter) {
                    if (run_coll(coll_x, coll_y, layer, TOP)) {
                        continue;
                    }
                    if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y, layer, TOP)) {
                        continue;
                    }
                }
                if (run_coll(coll_x + curr_player.player_width, coll_y, layer, TOP)) {
                    continue;
                }
            } else if (curr_player.should_check_ceiling) {
                // If ceiling should be checked, check for bottom collision

                
                if (!curr_player.slope_counter) {
                    if (run_coll(coll_x, coll_y + curr_player.player_height, layer, BOTTOM)) {
                        continue;
                    }
                    if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y + curr_player.player_height, layer, BOTTOM)) {
                        continue;
                    }
                }
                if (run_coll(coll_x + curr_player.player_width, coll_y + curr_player.player_height, layer, BOTTOM)) {
                    continue;
                }

                // Decrement counter
                curr_player.should_check_ceiling--;
            }
        }
    }

    // Do center hitbox checks
    coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_internal_hitbox_width) >> 1);
    coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_internal_hitbox_height) >> 1);      

#ifdef DEBUG
    if (!noclip) {
        do_center_checks(coll_x, coll_y, curr_player.player_internal_hitbox_width, curr_player.player_internal_hitbox_height, 0);
        do_center_checks(coll_x, coll_y, curr_player.player_internal_hitbox_width, curr_player.player_internal_hitbox_height, 1);
    }
#else
    do_center_checks(coll_x, coll_y, curr_player.player_internal_hitbox_width, curr_player.player_internal_hitbox_height, 0);
    do_center_checks(coll_x, coll_y, curr_player.player_internal_hitbox_width, curr_player.player_internal_hitbox_height, 1);
#endif
}

void collision_ship_ball_ufo() {
    // Exit if above screen
    if (curr_player.player_y < 0) return;

    curr_player.on_floor_step = FALSE;

    // Check slopes
    coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
    coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);
    
    collide_with_map_slopes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);
    
    // Check sprite spikes
    coll_x = (curr_player.player_x >> SUBPIXEL_BITS);
    coll_y = (curr_player.player_y >> SUBPIXEL_BITS);
    collide_with_obj_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);

    for (u32 layer = 0; layer < LEVEL_LAYERS; layer++) {
        // Check spikes
        coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
        coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);

#ifdef DEBUG
        if (!noclip) collide_with_map_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height, layer);
#else
        collide_with_map_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height, layer);
#endif

        // If the player is dead, don't bother checking more
        if (player_death) {
            return;
        }

        if (curr_player.player_y_speed >= 0) {
            // Going down
            coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
            coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);
            
            if (!curr_player.slope_counter) {
                if (run_coll(coll_x, coll_y + curr_player.player_height, layer, BOTTOM)) {
                    continue;
                }
                if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y + curr_player.player_height, layer, BOTTOM)) {
                    continue;
                }
            }
            if (run_coll(coll_x + curr_player.player_width, coll_y + curr_player.player_height, layer, BOTTOM)) {
                continue;
            }
        }
        if (curr_player.player_y_speed <= 0) {
            // Going up
            coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
            coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1) + 1;

            if (!curr_player.slope_counter) {
                if (run_coll(coll_x, coll_y, layer, TOP)) {
                    continue;
                }
                if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y, layer, TOP)) {
                    continue;
                }
            }

            if (run_coll(coll_x + curr_player.player_width, coll_y, layer, TOP)) {
                continue;
            }
        }
    }
    

    // Do center hitbox checks
    coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_internal_hitbox_width) >> 1);
    coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_internal_hitbox_height) >> 1);      

#ifdef DEBUG
    if (!noclip) {
        do_center_checks(coll_x, coll_y, curr_player.player_internal_hitbox_width, curr_player.player_internal_hitbox_height, 0);
        do_center_checks(coll_x, coll_y, curr_player.player_internal_hitbox_width, curr_player.player_internal_hitbox_height, 1);
    }
#else
    do_center_checks(coll_x, coll_y, curr_player.player_internal_hitbox_width, curr_player.player_internal_hitbox_height, 0);
    do_center_checks(coll_x, coll_y, curr_player.player_internal_hitbox_width, curr_player.player_internal_hitbox_height, 1);
#endif
}
void collision_wave() {
    // Exit if above screen
    if (curr_player.player_y < 0) return;

    curr_player.on_floor_step = FALSE;

    // Check slopes
    coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
    coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);
    
    collide_with_map_slopes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);

    // Check sprite spikes
    coll_x = (curr_player.player_x >> SUBPIXEL_BITS);
    coll_y = (curr_player.player_y >> SUBPIXEL_BITS);
    collide_with_obj_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);
    
    u8 offset = curr_player.player_size == SIZE_MINI ? 2 : 2;

    for (u32 layer = 0; layer < LEVEL_LAYERS; layer++) {
        // Check spikes
        coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
        coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);

#ifdef DEBUG
        if (!noclip) collide_with_map_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height, layer);
#else
        collide_with_map_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height, layer);
#endif

        // If the player is dead, don't bother checking more
        if (player_death) {
            return;
        }
        
        coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
        coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);

        if (curr_player.player_y_speed >= 0) {
            // Going down
            
            if (!curr_player.slope_counter) {
                if (run_coll(coll_x, coll_y + curr_player.player_height + offset + 1, layer, BOTTOM)) {
                    continue;
                }
                if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y + curr_player.player_height + offset + 1, layer, BOTTOM)) {
                    continue;
                }
            }
            if (run_coll(coll_x + curr_player.player_width, coll_y + curr_player.player_height + offset + 1, layer, BOTTOM)) {
                continue;
            }
        }
        if (curr_player.player_y_speed <= 0) {
            // Going up
            if (!curr_player.slope_counter) {
                if (run_coll(coll_x, coll_y - offset, layer, TOP)) {
                    continue;
                }
                if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y - offset, layer, TOP)) {
                    continue;
                }
            }
            if (run_coll(coll_x + curr_player.player_width, coll_y - offset, layer, TOP)) {
                continue;
            }
        }
    }
    
    // Do center hitbox checks
    coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_internal_hitbox_width) >> 1);
    coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_internal_hitbox_height) >> 1);      

#ifdef DEBUG
    if (!noclip) {
        do_center_checks(coll_x, coll_y, curr_player.player_internal_hitbox_width, curr_player.player_internal_hitbox_height, 0);
        do_center_checks(coll_x, coll_y, curr_player.player_internal_hitbox_width, curr_player.player_internal_hitbox_height, 1);
    }
#else
    do_center_checks(coll_x, coll_y, curr_player.player_internal_hitbox_width, curr_player.player_internal_hitbox_height, 0);
    do_center_checks(coll_x, coll_y, curr_player.player_internal_hitbox_width, curr_player.player_internal_hitbox_height, 1);
#endif
}

ARM_CODE u32 obtain_level_buffer_index(u32 x, u32 y) {
    u32 block_x = (x >> 4) & 0x1f; // Get block x in buffer (0-31)
    u32 block_y = y >> 4;          // Get block y in buffer, not capped for easy level vertical extension

    return block_x + block_y * LEVEL_BUFFER_WIDTH;
}

ARM_CODE u16 obtain_block(u32 x, u32 y, u32 layer) {
    return level_buffer[layer][obtain_level_buffer_index(x, y)];
}

ARM_CODE INLINE u16 obtain_collision_type(u32 x, u32 y, u32 layer) {
    // Obtain the col type from the table, indexed by metatile ID
    return metatiles[obtain_block(x,y,layer)][4];
}

// GD cube has a small square hitbox where if a block collides with, then the player dies
s32 do_center_checks(u32 x, u32 y, u32 width, u32 height, u32 layer) {
    // Don't check if changed size
    if(curr_player.changed_size_frames) return FALSE;

    if (run_coll(x, y, layer, CENTER)) {
        player_death = TRUE;
        return TRUE;
    }

    if (run_coll(x + width, y, layer, CENTER)) {
        player_death = TRUE;
        return TRUE;
    }

    if (run_coll(x, y + height, layer, CENTER)) {
        player_death = TRUE;
        return TRUE;
    }

    if (run_coll(x + width, y + height, layer, CENTER)) {
        player_death = TRUE;
        return TRUE;
    }

    return FALSE;
}

s32 top_left_corner(u32 x_inside_block, u32 y_inside_block) {
    if (x_inside_block < 0x8) {
        if (y_inside_block < 0x8) {
            eject_bottom = y_inside_block;
            eject_top = 0x8 - y_inside_block;
            return TRUE;
        }
    }
    return FALSE;
}

s32 top_right_corner(u32 x_inside_block, u32 y_inside_block) {
    if (x_inside_block >= 0x8) {
        if (y_inside_block < 0x8) {
            eject_bottom = y_inside_block;
            eject_top = 0x8 - y_inside_block;
            return TRUE;
        }
    }
    return FALSE;
}

s32 bottom_left_corner(u32 x_inside_block, u32 y_inside_block) {
    if (x_inside_block < 0x8) {
        if (y_inside_block >= 0x8) {
            eject_bottom = y_inside_block & 0x07;
            eject_top = 0x10 - y_inside_block;
            return TRUE;
        }
    }
    return FALSE;
}

s32 bottom_right_corner(u32 x_inside_block, u32 y_inside_block) {
    if (x_inside_block >= 0x8) {
        if (y_inside_block >= 0x8) {
            eject_bottom = y_inside_block & 0x07;
            eject_top = 0x10 - y_inside_block;
            return TRUE;
        }
    }
    return FALSE;
}

const u8 gamemode_max_eject[] = {
    /* Cube */ 0x06,
    /* Ship */ 0x04,
    /* Ball */ 0x06,
    /* Ufo */  0x04,
    /* Wave */ 0x0a,
};

u32 col_type_lookup(u16 col_type, u32 x, u32 y, u8 side, u32 layer) {
    // Positions inside block, top left pixel is [0,0]
    u32 x_inside_block = x & 0x0f;
    u32 y_inside_block = y & 0x0f;

    switch (col_type) {
        case COL_FLOOR_CEIL:
        case COL_FULL:
        case COL_MINIBLOCK_1111:
            eject_bottom = y_inside_block;
            eject_top = 0x10 - y_inside_block;
            break;
            
        // Normal slab 

        case COL_MINIBLOCK_1100:
        case COL_SLAB_TOP:
            if (y_inside_block < 0x8) {
                eject_bottom = y_inside_block & 0x07;
                eject_top = 0x08 - y_inside_block;
                break;
            }
            return 0;

        case COL_MINIBLOCK_0011:
        case COL_SLAB_BOTTOM:
            if (y_inside_block >= 0x8) {
                eject_bottom = y_inside_block - 0x08;
                eject_top = 0x10 - y_inside_block;
                break;
            }
            return 0;

        case COL_MINIBLOCK_1010:
        case COL_SLAB_LEFT:
            if (x_inside_block < 0x8) {
                eject_bottom = y_inside_block;
                eject_top = 0x10 - y_inside_block;
                break;
            }
            return 0;

        case COL_MINIBLOCK_0101:
        case COL_SLAB_RIGHT:
            if (x_inside_block >= 0x8) {
                eject_bottom = y_inside_block;
                eject_top = 0x10 - y_inside_block;
                break;
            }
            return 0;

        // Medium slab

        case COL_SLAB_MED_TOP:
            if (x_inside_block >= 0x02 && x_inside_block < 0x0e) {
                if (y_inside_block < 0x8) {
                    eject_bottom = y_inside_block & 0x07;
                    eject_top = 0x08 - y_inside_block;
                    break;
                }
            }
            return 0;

        case COL_SLAB_MED_BOTTOM:
            if (x_inside_block >= 0x02 && x_inside_block < 0x0e) {
                if (y_inside_block >= 0x8) {
                    eject_bottom = y_inside_block - 0x08;
                    eject_top = 0x10 - y_inside_block;
                    break;
                }
            }
            return 0;

        case COL_SLAB_MED_LEFT:
            if (y_inside_block >= 0x02 && y_inside_block < 0x0e) {
                if (x_inside_block < 0x8) {
                    eject_bottom = y_inside_block - 0x02;
                    eject_top = 0x0e - y_inside_block;
                    break;
                }
            }
            return 0;

        case COL_SLAB_MED_RIGHT:
            if (y_inside_block >= 0x02 && y_inside_block < 0x0e) {
                if (x_inside_block >= 0x8) {
                    eject_bottom = y_inside_block - 0x02;
                    eject_top = 0x0e - y_inside_block;
                    break;
                }
            }
            return 0;

            
        // Tiny slab

        case COL_SLAB_TINY_TOP:
            if (x_inside_block >= 0x05 && x_inside_block < 0x0b) {
                if (y_inside_block < 0x8) {
                    eject_bottom = y_inside_block & 0x07;
                    eject_top = 0x8 - y_inside_block;
                    break;
                }
            }
            return 0;

        case COL_SLAB_TINY_BOTTOM:
            if (x_inside_block >= 0x05 && x_inside_block < 0x0b) {
                if (y_inside_block >= 0x8) {
                    eject_bottom = y_inside_block - 0x08;
                    eject_top = 0x10 - y_inside_block;
                    break;
                }
            }
            return 0;

        case COL_SLAB_TINY_LEFT:
            if (y_inside_block >= 0x05 && y_inside_block < 0x0b) {
                if (x_inside_block < 0x8) {
                    eject_bottom = y_inside_block - 0x05;
                    eject_top = 0x0b - y_inside_block;
                    break;
                }
            }
            return 0;

        case COL_SLAB_TINY_RIGHT:
            if (y_inside_block >= 0x05 && y_inside_block < 0x0b) {
                if (x_inside_block >= 0x8) {
                    eject_bottom = y_inside_block - 0x05;
                    eject_top = 0x0b - y_inside_block;
                    break;
                }
            }
            return 0;

        // Electroman adventures ball part slab 

        case COL_EA_SLAB_TOP:
            if (y_inside_block < 0xa) {
                eject_bottom = y_inside_block;
                eject_top = 0x0a - y_inside_block;
                break;
            }
            return 0;

        case COL_EA_SLAB_BOTTOM:
            if (y_inside_block >= 0x6) {
                eject_bottom = y_inside_block - 0x06;
                eject_top = 0x10 - y_inside_block;
                break;
            }
            return 0;

        case COL_EA_SLAB_LEFT:
            if (x_inside_block < 0xa) {
                eject_bottom = y_inside_block;
                eject_top = 0x10 - y_inside_block;
                break;
            }
            return 0;

        case COL_EA_SLAB_RIGHT:
            if (x_inside_block >= 0x6) {
                eject_bottom = y_inside_block;
                eject_top = 0x10 - y_inside_block;
                break;
            }
            return 0;

        // Electroman adventures ball part corner slab 

        case COL_EA_CORNER_SLAB_TOP_LEFT:
            if (x_inside_block < 0xa) {
                if (y_inside_block < 0xa) {
                    eject_bottom = y_inside_block;
                    eject_top = 0xa - y_inside_block;
                    break;
                }
            }
            return 0;

        case COL_EA_CORNER_SLAB_TOP_RIGHT:
            if (x_inside_block >= 0x6) {
                if (y_inside_block < 0xa) {
                    eject_bottom = y_inside_block;
                    eject_top = 0xa - y_inside_block;
                    break;
                }
            }
            return 0;

        case COL_EA_CORNER_SLAB_BOTTOM_LEFT:
            if (x_inside_block < 0xa) {
                if (y_inside_block >= 0x6) {
                    eject_bottom = y_inside_block - 0x06;
                    eject_top = 0x10 - y_inside_block;
                    break;
                }
            }
            return 0;

        case COL_EA_CORNER_SLAB_BOTTOM_RIGHT:
            if (x_inside_block >= 0x6) {
                if (y_inside_block >= 0x6) {
                    eject_bottom = y_inside_block - 0x06;
                    eject_top = 0x10 - y_inside_block;
                    break;
                }
            }
            return 0;

        // Electroman adventures ball part inside corner slab 

        case COL_EA_CORNER_INSIDE_SLAB_TOP_LEFT:
            if (x_inside_block < 0xa) {
                eject_bottom = y_inside_block;
                eject_top = 0x10 - y_inside_block;
                break;
            } else {
                if (y_inside_block < 0xa) {
                    eject_bottom = y_inside_block;
                    eject_top = 0xa - y_inside_block;
                    break;
                }
            }
            return 0;

        case COL_EA_CORNER_INSIDE_SLAB_TOP_RIGHT:
            if (x_inside_block >= 0x6) {
                eject_bottom = y_inside_block;
                eject_top = 0x10 - y_inside_block;
                break;
            } else {
                if (y_inside_block < 0xa) {
                    eject_bottom = y_inside_block;
                    eject_top = 0xa - y_inside_block;
                    break;
                }
            }
            return 0;

        case COL_EA_CORNER_INSIDE_SLAB_BOTTOM_LEFT:
            if (x_inside_block < 0xa) {
                eject_bottom = y_inside_block;
                eject_top = 0x10 - y_inside_block;
                break;
            } else {
                if (y_inside_block >= 0x6) {
                    eject_bottom = y_inside_block - 0x6;
                    eject_top = 0x10 - y_inside_block;
                    break;
                }
            }
            return 0;

        case COL_EA_CORNER_INSIDE_SLAB_BOTTOM_RIGHT:
            if (x_inside_block >= 0x6) {
                eject_bottom = y_inside_block;
                eject_top = 0x10 - y_inside_block;
                break;
            } else {
                if (y_inside_block >= 0x6) {
                    eject_bottom = y_inside_block - 0x6;
                    eject_top = 0x10 - y_inside_block;
                    break;
                }
            }
            return 0;
        
        // Breakable brick

        case BREAKABLE_BRICK:
            if (side == CENTER) {
                break_brick(x, y, layer);
                return 0;
            } else {
                eject_bottom = y_inside_block;
                eject_top = 0x10 - y_inside_block;
                break;
            }

        case COL_CENTERED_MINI_BLOCK:
            if (x_inside_block >= 0x04 && x_inside_block < 0x0c) {
                if (y_inside_block >= 0x04 && y_inside_block < 0x0c) {
                    eject_bottom = y_inside_block - 0x04;
                    eject_top = 0xc - y_inside_block;
                    break;
                }
            }
            return 0;

        case COL_MINIBLOCK_0001:
            if (bottom_right_corner(x_inside_block, y_inside_block)) break;
            return 0;
        case COL_MINIBLOCK_0010:
            if (bottom_left_corner(x_inside_block, y_inside_block)) break;
            return 0;
        case COL_MINIBLOCK_0100:
            if (top_right_corner(x_inside_block, y_inside_block)) break;
            return 0;
        case COL_MINIBLOCK_1000:
            if (top_left_corner(x_inside_block, y_inside_block)) break;
            return 0;
        case COL_MINIBLOCK_1011:
            if (top_left_corner(x_inside_block, y_inside_block)) break;
            if (bottom_right_corner(x_inside_block, y_inside_block)) break;
            if (bottom_left_corner(x_inside_block, y_inside_block)) break;
            return 0;
        case COL_MINIBLOCK_0111:
            if (top_right_corner(x_inside_block, y_inside_block)) break;
            if (bottom_right_corner(x_inside_block, y_inside_block)) break;
            if (bottom_left_corner(x_inside_block, y_inside_block)) break;
            return 0;
        case COL_MINIBLOCK_1110:
            if (top_right_corner(x_inside_block, y_inside_block)) break;
            if (top_left_corner(x_inside_block, y_inside_block)) break;
            if (bottom_left_corner(x_inside_block, y_inside_block)) break;
            return 0;
        case COL_MINIBLOCK_1101:
            if (top_right_corner(x_inside_block, y_inside_block)) break;
            if (top_left_corner(x_inside_block, y_inside_block)) break;
            if (bottom_right_corner(x_inside_block, y_inside_block)) break;
            return 0;
        case COL_MINIBLOCK_1001:
            if (top_left_corner(x_inside_block, y_inside_block)) break;
            if (bottom_right_corner(x_inside_block, y_inside_block)) break;
            return 0;
        case COL_MINIBLOCK_0110:
            if (top_right_corner(x_inside_block, y_inside_block)) break;
            if (bottom_left_corner(x_inside_block, y_inside_block)) break;
            return 0;

        // Everything else
        default:
            return 0;
    }

    // Set related vars and set new player y position, only if this is not a center check
    
    if (side == TOP) {
        s32 eject_value = eject_top << SUBPIXEL_BITS;
        s32 max_eject = gamemode_max_eject[curr_player.gamemode];

        // Raise eject cap if changed size
        if (curr_player.changed_size_frames) max_eject = 0x10;

        if (eject_value < (max_eject << SUBPIXEL_BITS)) {
            if (curr_player.gamemode != GAMEMODE_CUBE || curr_player.gravity_dir == GRAVITY_UP) {
                // We are resting on the ceiling so allow jumping and stuff
                curr_player.on_floor = TRUE;
                curr_player.on_floor_step = TRUE;
                curr_player.snap_cube_rotation = TRUE;
            }
            curr_player.player_y += eject_value;
            curr_player.player_y_speed = 0;
            
            curr_player.inverse_rotation_flag = FALSE;
            curr_player.trail_on = FALSE;

            // Remove subpixels
            curr_player.player_y &= ~0xffff;
            if (curr_player.gamemode == GAMEMODE_WAVE && col_type != COL_FLOOR_CEIL && !noclip) player_death = TRUE;
        }
    } else if (side == BOTTOM) {   
        s32 eject_value = eject_bottom << SUBPIXEL_BITS;

        // Raise eject cap if changed size
        s32 max_eject = gamemode_max_eject[curr_player.gamemode];

        if (curr_player.changed_size_frames) max_eject = 0x10;
        if (eject_value < (max_eject << SUBPIXEL_BITS)) {
            if (curr_player.gamemode != GAMEMODE_CUBE || curr_player.gravity_dir == GRAVITY_DOWN) {
                // We are resting on the floor so allow jumping and stuff
                curr_player.on_floor = TRUE;
                curr_player.on_floor_step = TRUE;
                curr_player.snap_cube_rotation = TRUE;
            }
            curr_player.player_y -= eject_value;
            curr_player.player_y_speed = 0;
            curr_player.trail_on = FALSE;

            curr_player.inverse_rotation_flag = FALSE;

            // Remove subpixels
            curr_player.player_y &= ~0xffff;
            if (curr_player.gamemode == GAMEMODE_WAVE && col_type != COL_FLOOR_CEIL && !noclip) player_death = TRUE;
        }
    }
   
    return 1;
}

ARM_CODE s32 collision_with_block_obj(u32 x, u32 y, u8 side) {
    for (s32 i = block_object_buffer_offset; i > 0; i--) {
        struct ObjectSlot slot = *((struct ObjectSlot *) block_object_buffer[i - 1]);

        u16 col_type = block_object_buffer_flags[i - 1];

        if (col_type == COL_NONE) continue;

        u32 obj_x = slot.object.x;
        u32 obj_y = slot.object.y;
        u32 obj_width = obj_hitbox[slot.object.type][0];
        u32 obj_height = obj_hitbox[slot.object.type][1];

        // Check if this pixel is inside the object hitbox
        if (is_colliding(x, y, 0, 0, obj_x, obj_y, obj_width, obj_height)) {
            // Relative positions
            u32 mod_x = x - obj_x;
            u32 mod_y = y - obj_y;

            // Set old player y pos to get the displacement later
            u64 old_player_y = curr_player.player_y;
            
            u32 returned = col_type_lookup(col_type, mod_x, mod_y, side, 3);
            
            // Continue if no collision
            if (!returned) continue;

            // Update coll_y with the displacement that has occured
            coll_y += old_player_y - curr_player.player_y;

            return returned;
        }
    }
    return FALSE;
}

ARM_CODE u32 run_coll(u32 x, u32 y, u32 layer, u8 side) {
    if(collision_with_block_obj(x, y, side)) {
        // Return TRUE only if this is a center hitbox check, as this is needed for death to ocurr
        return side == CENTER;
    }
    
    u16 col_type = obtain_collision_type(x, y, layer);
    return col_type_lookup(col_type, x, y, side, layer);
}

#define COLLISION_DISTANCE 48

ARM_CODE s32 check_collision_distance(struct ObjectSlot curr_object) {
    s32 player_x_pixels = curr_player.player_x >> SUBPIXEL_BITS;
    s32 player_y_pixels = curr_player.player_y >> SUBPIXEL_BITS;
    return (s32) curr_object.object.x > player_x_pixels - COLLISION_DISTANCE && (s32) curr_object.object.x < player_x_pixels + COLLISION_DISTANCE &&
           (s32) curr_object.object.y > player_y_pixels - COLLISION_DISTANCE && (s32) curr_object.object.y < player_y_pixels + COLLISION_DISTANCE;
}

ARM_CODE void do_collision_with_objects() {
    for (s32 slot = 0; slot < MAX_OBJECTS; slot++) {
        // Check collision only if the slot is occupied
        struct ObjectSlot curr_object = object_buffer[slot];
        // If is occupied and it hasn't been activated yet, continue
        if (curr_object.occupied && curr_object.activated[curr_player_id] == FALSE) {
            // If it is behind the collision distance, skip
            if (check_collision_distance(curr_object)) {
                // If it has collision, continue. Check if this object is a touch col trigger, if so, check collision
                if (curr_object.has_collision || (curr_object.object.type == COL_TRIGGER && curr_object.object.rotation & COL_TRIGGER_ROT_VAR_TOUCH_MASK)) {
                    check_obj_collision(slot); 
                } 
            }
        }
    }
}


ARM_CODE u32 is_colliding(u32 x1, u32 y1, u32 w1, u32 h1, u32 x2, u32 y2, u32 w2, u32 h2) {
    // Right of object 1 < Left of object 2
    if (x1 + w1 < x2) {
        return FALSE;
    }

    // Left of object 1 > Right of object 2
    if (x1 >= x2 + w2) {
        return FALSE;
    }

    // Bottom of object 1 < Top of object 2
    if (y1 + h1 < y2) {
        return FALSE;
    }

    // Top of object 1 > Bottom of object 1
    if (y1 >= y2 + h2) {
        return FALSE;
    }

    // If all above is FALSE, then collision has happen
    return TRUE;
}

ARM_CODE u32 is_colliding_circle(u32 cx1, u32 cy1, u32 r1, u32 cx2, u32 cy2, u32 r2) {
    s32 distance_x = (cx2 - cx1);
    s32 distance_y = (cy2 - cy1);

    // Squared to avoid square roots
    s32 obj_distance = distance_x*distance_x + distance_y*distance_y;
    s32 radius_sum = (r1 + r2)*(r1 + r2);

    return obj_distance < radius_sum;
}

ARM_CODE u32 is_colliding_circle_square(u32 x1, u32 y1, u32 w1, u32 h1, u32 cx2, u32 cy2, u32 r2) {
    s32 closest_x = MAX(x1, MIN(cx2, x1 + w1));
    s32 closest_y = MAX(y1, MIN(cy2, y1 + h1));;

    s32 distance_x = (cx2 - closest_x);
    s32 distance_y = (cy2 - closest_y);

    // Squared to avoid square roots
    s32 obj_distance = distance_x*distance_x + distance_y*distance_y;
    s32 radius_squared = r2*r2;

    return obj_distance < radius_squared;
}

// Rotated hitbox stuff, all in IWRAM for extra speed

#define SCALE_FACTOR 8
#define FIXED_ONE (1 << SCALE_FACTOR) // 1.0 in fixed-point

// Rotate a point (px, py) around a center (cx, cy) using fixed-point math
ARM_CODE INLINE void rotate_point_fixed(s32 cx, s32 cy, s32 px, s32 py, s16 sin_theta, s16 cos_theta, s32* rx, s32* ry) {
    s32 dx = px - cx;
    s32 dy = py - cy;

    *rx = cx + ((dx * cos_theta - dy * sin_theta) >> SCALE_FACTOR);
    *ry = cy + ((dx * sin_theta + dy * cos_theta) >> SCALE_FACTOR);
}

// Project a rectangle's corners onto an axis and calculate min/max projections
ARM_CODE void project_onto_axis_fixed(s32* corners, s32 ax, s32 ay, s32* min, s32* max) {
    *min = *max = (corners[0] * ax + corners[1] * ay) >> SCALE_FACTOR;

    for (s32 i = 1; i < 4; i++) {
        s32 projection = (corners[i << 1] * ax + corners[(i << 1) + 1] * ay) >> SCALE_FACTOR;
        if (projection < *min) *min = projection;
        if (projection > *max) *max = projection;
    }
}

// Check if projections overlap
ARM_CODE INLINE s32 overlap_on_axis_fixed(s32 min1, s32 max1, s32 min2, s32 max2) {
    return !(max1 < min2 || max2 < min1);
}

// Same as is_colliding but second hitbox supports rotation
ARM_CODE s32 is_colliding_rotated_fixed(s32 x1, s32 y1, s32 w1, s32 h1, s32 x2, s32 y2, s32 w2, s32 h2, s32 orig_x, s32 orig_y, s32 cx2offset, s32 cy2offset, u16 angle) {
    // Center of second rectangle
    s32 cx2 = orig_x + cx2offset;
    s32 cy2 = orig_y + cy2offset;

    // Get sine and cosine for the angle
    s16 sin_theta = lu_sin(angle) / 16;
    s16 cos_theta = lu_cos(angle) / 16;

    // Calculate the four corners of the rotated rectangle
    s32 corners[8];
    rotate_point_fixed(cx2, cy2, x2, y2, sin_theta, cos_theta, &corners[0], &corners[1]);           // Top-left
    rotate_point_fixed(cx2, cy2, x2 + w2, y2, sin_theta, cos_theta, &corners[2], &corners[3]);      // Top-right
    rotate_point_fixed(cx2, cy2, x2 + w2, y2 + h2, sin_theta, cos_theta, &corners[4], &corners[5]); // Bottom-right
    rotate_point_fixed(cx2, cy2, x2, y2 + h2, sin_theta, cos_theta, &corners[6], &corners[7]);      // Bottom-left

    // Define axes to test
    s32 axes[4][2] = {
        {FIXED_ONE, 0}, {0, FIXED_ONE},                     // Non-rotated rectangle axes
        {corners[2] - corners[0], corners[3] - corners[1]}, // Rotated rectangle edge 1
        {corners[6] - corners[0], corners[7] - corners[1]}  // Rotated rectangle edge 2
    };

    // Project both rectangles onto each axis and check for overlap
    for (s32 i = 0; i < 4; i++) {
        s32 min1, max1, min2, max2;
        s32 rect1_corners[8] = {
            x1, y1, x1 + w1, y1,
            x1 + w1, y1 + h1, x1, y1 + h1
        };

        project_onto_axis_fixed(rect1_corners, axes[i][0], axes[i][1], &min1, &max1);
        project_onto_axis_fixed(corners, axes[i][0], axes[i][1], &min2, &max2);

        if (!overlap_on_axis_fixed(min1, max1, min2, max2)) {
            return FALSE; // Separating axis found, no collision
        }
    }

    return TRUE; // No separating axis, collision detected
}

void col_spike_top_bottom(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x07, spk_y + 0x05, 0x02, 0x06
    )) {
        player_death = TRUE;
    }
}

void col_spike_left_right(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x05, spk_y + 0x07, 0x06, 0x02
    )) {
        player_death = TRUE;
    }
}

void col_small_spike_top(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x06, spk_y + 0x02, 0x04, 0x03
    )) {
        player_death = TRUE;
    }
}

void col_small_spike_bottom(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x06, spk_y + 0x0b, 0x04, 0x03
    )) {
        player_death = TRUE;
    }
}

void col_small_spike_right(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x0b, spk_y + 0x06, 0x04, 0x03
    )) {
        player_death = TRUE;
    }
}

void col_small_spike_left(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x02, spk_y + 0x06, 0x04, 0x03
    )) {
        player_death = TRUE;
    }
}

void col_medium_spike_top(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x07, spk_y + 0x02, 0x02, 0x04
    )) {
        player_death = TRUE; 
    }
}

void col_medium_spike_bottom(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x07, spk_y + 0x09, 0x02, 0x04
    )) {
        player_death = TRUE;
    }
}

void col_medium_spike_right(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x09, spk_y + 0x07, 0x04, 0x02
    )) {
        player_death = TRUE;
    }
}

void col_medium_spike_left(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x02, spk_y + 0x07, 0x04, 0x02
    )) {
        player_death = TRUE;
    }
}

void col_ground_spike_top(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x06, spk_y - 0x02, 0x04, 0x06
    )) {
        player_death = TRUE;
    }
}

void col_ground_spike_bottom(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x06, spk_y + 0x0c, 0x04, 0x06
    )) {
        player_death = TRUE;
    }
}

void col_ground_spike_right(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x0c, spk_y + 0x06, 0x06, 0x04
    )) {
        player_death = TRUE;
    }
}

void col_ground_spike_left(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x - 0x02, spk_y + 0x06, 0x06, 0x04
    )) {
        player_death = TRUE;
    }
}

void col_ground_wavy_spike_top(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x06, spk_y, 0x04, 0x04
    )) {
        player_death = TRUE; 
    }
}

void col_ground_wavy_spike_bottom(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x06, spk_y + 0x0c, 0x04, 0x04
    )) {
        player_death = TRUE; 
    }
}

void col_ground_wavy_spike_right(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x0c, spk_y + 0x06, 0x04, 0x04
    )) {
        player_death = TRUE;
    }
}

void col_ground_wavy_spike_left(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x , spk_y + 0x06, 0x04, 0x04
    )) {
        player_death = TRUE;
    }
}

void col_ground_bush_spike_top(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x04, spk_y - 0x03, 0x08, 0x0a
    )) {
        player_death = TRUE;  
    }
}

void col_ground_bush_spike_bottom(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x04, spk_y + 0x09, 0x08, 0x0a
    )) {
        player_death = TRUE;
    }
}

void col_ground_bush_spike_right(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x09, spk_y + 0x04, 0x0a, 0x08
    )) {
        player_death = TRUE;
    }
}

void col_ground_bush_spike_left(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x - 0x03, spk_y + 0x04, 0x0a, 0x08
    )) {
        player_death = TRUE;  
    }
}

void col_ground_wavy_spike_edge_bl(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x04, spk_y + 0x0c, 0x03, 0x04
    )) {
        player_death = TRUE;
    }
}

void col_ground_wavy_spike_edge_br(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x0c, spk_y + 0x0c, 0x03, 0x04
    )) {
        player_death = TRUE;
    }
}

void col_ground_wavy_spike_edge_tl(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x04, spk_y, 0x03, 0x04
    )) {
        player_death = TRUE;
    }
}

void col_ground_wavy_spike_edge_tr(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x0c, spk_y, 0x03, 0x04
    )) {
        player_death = TRUE;
    }
}

void col_ground_wavy_spike_edge_lb(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x04, spk_y + 0x09, 0x04, 0x03
    )) {
        player_death = TRUE;
    }
}

void col_ground_wavy_spike_edge_lt(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x04, spk_y, 0x04, 0x03
    )) {
        player_death = TRUE;
    }
}

void col_ground_wavy_spike_edge_rb(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x0c, spk_y + 0x09, 0x04, 0x03
    )) {
        player_death = TRUE;
    }
}

void col_ground_wavy_spike_edge_rt(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x0c, spk_y, 0x04, 0x03
    )) {
        player_death = TRUE;
    }
}

void not_an_spike(UNUSED u32 x, UNUSED u32 y, UNUSED u32 width, UNUSED u32 height, UNUSED u32 spk_x, UNUSED u32 spk_y) {
    // not an spike so do nothing
}

const jmp_table spike_coll_jump_table[] = {
    not_an_spike, // COL_NONE
    not_an_spike, // COL_FULL
    not_an_spike, // COL_FLOOR_CEIL
    
    col_spike_top_bottom, // COL_SPIKE_TOP
    col_spike_top_bottom, // COL_SPIKE_BOTTOM
    col_spike_left_right, // COL_SPIKE_RIGHT
    col_spike_left_right, // COL_SPIKE_LEFT

    col_small_spike_top,    // COL_SMALL_SPIKE_TOP
    col_small_spike_bottom, // COL_SMALL_SPIKE_BOTTOM
    col_small_spike_right,  // COL_SMALL_SPIKE_RIGHT
    col_small_spike_left,   // COL_SMALL_SPIKE_LEFT

    col_medium_spike_top,    // COL_MEDIUM_SPIKE_TOP
    col_medium_spike_bottom, // COL_MEDIUM_SPIKE_BOTTOM
    col_medium_spike_right,  // COL_MEDIUM_SPIKE_RIGHT
    col_medium_spike_left,   // COL_MEDIUM_SPIKE_LEFT

    not_an_spike, // COL_SLAB_TOP
    not_an_spike, // COL_SLAB_BOTTOM
    not_an_spike, // COL_SLAB_LEFT
    not_an_spike, // COL_SLAB_RIGHT

    col_ground_spike_top,    // COL_GROUND_SPIKE_TOP
    col_ground_spike_bottom, // COL_GROUND_SPIKE_BOTTOM
    col_ground_spike_right,  // COL_GROUND_SPIKE_RIGHT
    col_ground_spike_left,   // COL_GROUND_SPIKE_LEFT

    col_ground_wavy_spike_top,    // COL_GROUND_WAVY_SPIKE_TOP
    col_ground_wavy_spike_bottom, // COL_GROUND_WAVY_SPIKE_BOTTOM
    col_ground_wavy_spike_right,  // COL_GROUND_WAVY_SPIKE_RIGHT
    col_ground_wavy_spike_left,   // COL_GROUND_WAVY_SPIKE_LEFT

    col_ground_bush_spike_top,    // COL_GROUND_BUSH_SPIKE_TOP
    col_ground_bush_spike_bottom, // COL_GROUND_BUSH_SPIKE_BOTTOM
    col_ground_bush_spike_right,  // COL_GROUND_BUSH_SPIKE_RIGHT
    col_ground_bush_spike_left,   // COL_GROUND_BUSH_SPIKE_LEFT

    not_an_spike, // COL_SLAB_MED_TOP
    not_an_spike, // COL_SLAB_MED_BOTTOM
    not_an_spike, // COL_SLAB_MED_LEFT
    not_an_spike, // COL_SLAB_MED_RIGHT

    not_an_spike, // COL_SLAB_TINY_TOP
    not_an_spike, // COL_SLAB_TINY_BOTTOM
    not_an_spike, // COL_SLAB_TINY_LEFT
    not_an_spike, // COL_SLAB_TINY_RIGHT

    not_an_spike, // COL_EA_SLAB_TOP
    not_an_spike, // COL_EA_SLAB_BOTTOM
    not_an_spike, // COL_EA_SLAB_LEFT
    not_an_spike, // COL_EA_SLAB_RIGHT

    not_an_spike, // COL_EA_CORNER_SLAB_TOP_LEFT
    not_an_spike, // COL_EA_CORNER_SLAB_TOP_RIGHT
    not_an_spike, // COL_EA_CORNER_SLAB_BOTTOM_LEFT
    not_an_spike, // COL_EA_CORNER_SLAB_BOTTOM_RIGHT
    
    not_an_spike, // COL_EA_CORNER_INSIDE_SLAB_TOP_LEFT
    not_an_spike, // COL_EA_CORNER_INSIDE_SLAB_TOP_RIGHT
    not_an_spike, // COL_EA_CORNER_INSIDE_SLAB_BOTTOM_LEFT
    not_an_spike, // COL_EA_CORNER_INSIDE_SLAB_BOTTOM_RIGHT

    not_an_spike, // BREAKABLE_BRICK

    not_an_spike, // COL_CENTERED_MINI_BLOCK

    col_ground_wavy_spike_edge_bl, // COL_GROUND_WAVY_SPIKE_EDGE_BL
    col_ground_wavy_spike_edge_br, // COL_GROUND_WAVY_SPIKE_EDGE_BR
    col_ground_wavy_spike_edge_tl, // COL_GROUND_WAVY_SPIKE_EDGE_TL
    col_ground_wavy_spike_edge_tr, // COL_GROUND_WAVY_SPIKE_EDGE_TR
    col_ground_wavy_spike_edge_lb, // COL_GROUND_WAVY_SPIKE_EDGE_LB
    col_ground_wavy_spike_edge_lt, // COL_GROUND_WAVY_SPIKE_EDGE_LT
    col_ground_wavy_spike_edge_rb, // COL_GROUND_WAVY_SPIKE_EDGE_RB
    col_ground_wavy_spike_edge_rt, // COL_GROUND_WAVY_SPIKE_EDGE_RT

    not_an_spike, //COL_MINIBLOCK_0001
    not_an_spike, //COL_MINIBLOCK_0010
    not_an_spike, //COL_MINIBLOCK_0100
    not_an_spike, //COL_MINIBLOCK_1000
    not_an_spike, //COL_MINIBLOCK_0011
    not_an_spike, //COL_MINIBLOCK_1100
    not_an_spike, //COL_MINIBLOCK_1010
    not_an_spike, //COL_MINIBLOCK_0101
    not_an_spike, //COL_MINIBLOCK_1011
    not_an_spike, //COL_MINIBLOCK_0111
    not_an_spike, //COL_MINIBLOCK_1110
    not_an_spike, //COL_MINIBLOCK_1101
    not_an_spike, //COL_MINIBLOCK_1001
    not_an_spike, //COL_MINIBLOCK_0110
    not_an_spike, //COL_MINIBLOCK_1111

    not_an_spike, // COL_SLOPE_45_UP
    not_an_spike, // COL_SLOPE_45_DOWN
    not_an_spike, // COL_SLOPE_45_UP_UD
    not_an_spike, // COL_SLOPE_45_DOWN_UD
    
    not_an_spike, // COL_SLOPE_22_UP_1,
    not_an_spike, // COL_SLOPE_22_UP_2,
    not_an_spike, // COL_SLOPE_22_DOWN,
    not_an_spike, // COL_SLOPE_22_DOWN_2,
    not_an_spike, // COL_SLOPE_22_UP_UD,
    not_an_spike, // COL_SLOPE_22_UP_UD_2,
    not_an_spike, // COL_SLOPE_22_DOWN_UD,
    not_an_spike, // COL_SLOPE_22_DOWN_UD_2,

    not_an_spike, // COL_SLOPE_66_UP_1,
    not_an_spike, // COL_SLOPE_66_UP_2,
    not_an_spike, // COL_SLOPE_66_DOWN,
    not_an_spike, // COL_SLOPE_66_DOWN_2,
    not_an_spike, // COL_SLOPE_66_UP_UD,
    not_an_spike, // COL_SLOPE_66_UP_UD_2,
    not_an_spike, // COL_SLOPE_66_DOWN_UD,
    not_an_spike, // COL_SLOPE_66_DOWN_UD_2,
};

// This function iterates through spikes that the player is touching and applies collision to it
ARM_CODE void collide_with_map_spikes(u32 x, u32 y, u32 width, u32 height, u8 layer) {
    // Iterate through 4 metatiles, forming a 2x2 metatile square
    // As the cube won't be bigger than a single 16x16 metatile, the cube can touch up to 4 metatiles
    for (u32 side = 0; side < 4; side++) {
        // Get offset from the starting block
        u32 x_offset = (side & 1) ? 0x10 : 0;
        u32 y_offset = (side & 2) ? 0x10 : 0;

        u32 col_type = obtain_collision_type(x + x_offset, y + y_offset, layer);

        // Spikes origin is in the top left pixel, aka 0,0 inside the metatile
        u32 spk_x = (x + x_offset) & 0xfffffff0;
        u32 spk_y = (y + y_offset) & 0xfffffff0;

        if (col_type < COL_TYPES_COUNT) {
            spike_coll_jump_table[col_type](x, y, width, height, spk_x, spk_y);
        }
    }
}

struct circle_t {
    s64 cx, cy; // Top-left corner
    u32 radius; // Side length
};

struct point_t {
    u32 x;
    u32 y;
};

struct triangle_t {
    struct point_t p1;
    struct point_t p2;
    struct point_t p3;
};

void getLine(s32 x1, s32 y1, s32 x2, s32 y2, s32 *a, s32 *b, s32 *c){
       // (x- p1X) / (p2X - p1X) = (y - p1Y) / (p2Y - p1Y) 
       *a = y1 - y2;
       *b = x2 - x1;
       *c = x1 * y2 - x2 * y1;
}

s32 find_squared_distance_to_line(s32 point_x, s32 point_y, s32 x1, s32 y1, s32 x2, s32 y2) {
    // Compute the squared length of the segment
    s32 dx = x2 - x1;
    s32 dy = y2 - y1;
    s32 segment_length_sq = dx * dx + dy * dy;

    // If the segment is a single point, return squared distance to that point
    if (segment_length_sq == 0) {
        s32 dx_p = point_x - x1;
        s32 dy_p = point_y - y1;
        return dx_p * dx_p + dy_p * dy_p;
    }

    // Compute the projection parameter t
    s32 t = (point_x - x1) * dx + (point_y - y1) * dy;

    // Clamp t to [0, segment_length_sq] to ensure it lies on the segment
    if (t < 0) {
        t = 0;
    } else if (t > segment_length_sq) {
        t = segment_length_sq;
    }

    // Find the closest point Q on the segment
    s32 Qx = x1 + (t * dx) / segment_length_sq;
    s32 Qy = y1 + (t * dy) / segment_length_sq;

    // Compute the squared distance between the point and Q
    s32 dx_q = point_x - Qx;
    s32 dy_q = point_y - Qy;
    return dx_q * dx_q + dy_q * dy_q;
}

void get_hipotenuse(struct triangle_t triangle, s32 *x1, s32 *y1, s32 *x2, s32 *y2) {
    // Get the only edge that is not axis-aligned
    if (triangle.p1.x != triangle.p2.x && triangle.p1.y != triangle.p2.y) {
        *x1 = triangle.p1.x;
        *y1 = triangle.p1.y;
        *x2 = triangle.p2.x;
        *y2 = triangle.p2.y;
    } else if (triangle.p2.x != triangle.p3.x && triangle.p2.y != triangle.p3.y) {
        *x1 = triangle.p2.x;
        *y1 = triangle.p2.y;
        *x2 = triangle.p3.x;
        *y2 = triangle.p3.y;
    } else {
        *x1 = triangle.p3.x;
        *y1 = triangle.p3.y;
        *x2 = triangle.p1.x;
        *y2 = triangle.p1.y;
    }
}

void get_horizontal_edge(struct triangle_t triangle, s32 *x1, s32 *x2, s32 *y) {
    // Get the only horizontally-aligned edge
    if (triangle.p1.y == triangle.p2.y) {
        *x1 = triangle.p1.x;
        *x2 = triangle.p2.x;
        *y  = triangle.p2.y;
    } else if (triangle.p2.y == triangle.p3.y) {
        *x1 = triangle.p2.x;
        *x2 = triangle.p3.x;
        *y  = triangle.p3.y;
    } else {
        *x1 = triangle.p3.x;
        *x2 = triangle.p1.x;
        *y  = triangle.p1.y;
    }
}

void get_vertical_edge(struct triangle_t triangle, s32 *x, s32 *y1, s32 *y2) {
    // Get the only horizontally-aligned edge
    if (triangle.p1.x == triangle.p2.x) {
        *x  = triangle.p1.x;
        *y1 = triangle.p1.y;
        *y2 = triangle.p2.y;
    } else if (triangle.p2.x == triangle.p3.x) {
        *x  = triangle.p2.x;
        *y1 = triangle.p2.y;
        *y2 = triangle.p3.y;
    } else {
        *x  = triangle.p3.x;
        *y1 = triangle.p3.y;
        *y2 = triangle.p1.y;
    }
}

s32 check_distance_circle_hipotenuse(struct circle_t circle, struct triangle_t triangle) {
    s32 hipo_x1, hipo_y1, hipo_x2, hipo_y2;

    get_hipotenuse(triangle, &hipo_x1, &hipo_y1, &hipo_x2, &hipo_y2);

    return (u32) find_squared_distance_to_line(circle.cx, circle.cy, hipo_x1, hipo_y1, hipo_x2, hipo_y2) <= circle.radius * circle.radius;
}

s32 check_distance_circle_horizontal_edge(struct circle_t circle, struct triangle_t triangle) {
    s32 edge_x1, edge_x2, edge_y;

    get_horizontal_edge(triangle, &edge_x1, &edge_x2, &edge_y);

    return (u32) find_squared_distance_to_line(circle.cx, circle.cy, edge_x1, edge_y, edge_x2, edge_y) <= circle.radius * circle.radius;
}

s32 check_distance_circle_vertical_edge(struct circle_t circle, struct triangle_t triangle) {
    s32 edge_x, edge_y1, edge_y2;

    get_vertical_edge(triangle, &edge_x, &edge_y1, &edge_y2);

    return (u32) find_squared_distance_to_line(circle.cx, circle.cy, edge_x, edge_y1, edge_x, edge_y2) <= circle.radius * circle.radius;
}

s32 get_step_call(struct triangle_t triangle) {
    s32 edge_x1, edge_x2, edge_y;
    s32 hipo_x1, hipo_y1, hipo_x2, hipo_y2;

    get_hipotenuse(triangle, &hipo_x1, &hipo_y1, &hipo_x2, &hipo_y2);
    get_horizontal_edge(triangle, &edge_x1, &edge_x2, &edge_y);

    s32 half_height = (hipo_y1 + hipo_y2) / 2;

    // Return negative or positive depending on relative position between center of triangle and horizontally-aligned edge
    if (half_height > edge_y) {
        return -1;
    } else {
        return 1;
    }
}

s32 get_step(struct circle_t circle, struct triangle_t triangle) {
    s32 step = get_step_call(triangle);

    if (check_distance_circle_hipotenuse(circle, triangle)) {
        return step;
    } else {
        return -step;
    }
}


#define NO_SLOPE_COLL_DETECTED (1 << 31)

// Function to check collision between square and triangle
s32 check_slope_collision(struct circle_t circle, struct triangle_t triangle) {
    s32 ejection = 0;

    s32 step = get_step(circle, triangle);
    if (check_distance_circle_hipotenuse(circle, triangle)) {
        // Colliding with the hipotenuse
        while (check_distance_circle_hipotenuse(circle, triangle)) {
            circle.cy -= step;
            ejection -= step;
        }

        return ejection;
    } else if (check_distance_circle_horizontal_edge(circle, triangle)) {
        // Colliding with the horizontal edge
        while (check_distance_circle_horizontal_edge(circle, triangle)) {
            circle.cy -= step;
            ejection -= step;
        }

        return ejection + step;
    } else if (check_distance_circle_vertical_edge(circle, triangle)) {
        return 0;
    }

    return NO_SLOPE_COLL_DETECTED;
}

#define EJECTION_TYPE_HIPO 1
#define EJECTION_TYPE_HORZ 2
#define EJECTION_TYPE_VERT 2

s32 check_slope_eject_type(struct circle_t circle, struct triangle_t triangle) {
    if (check_distance_circle_hipotenuse(circle, triangle)) {
        return EJECTION_TYPE_HIPO;
    } else if (check_distance_circle_horizontal_edge(circle, triangle)) {
        return EJECTION_TYPE_HORZ;
    } else if (check_distance_circle_vertical_edge(circle, triangle)){
        return EJECTION_TYPE_VERT;
    } else {
        return 0;
    }
}

const FIXED_16 slope_speed_multiplier[] = {
    FLOAT_TO_FIXED(-1.0), // COL_SLOPE_45_UP
    FLOAT_TO_FIXED(1.0),  // COL_SLOPE_45_DOWN
    FLOAT_TO_FIXED(1.0),  // COL_SLOPE_45_UP_UD
    FLOAT_TO_FIXED(-1.0), // COL_SLOPE_45_DOWN_UD

    FLOAT_TO_FIXED(-0.5), // COL_SLOPE_22_UP_1
    FLOAT_TO_FIXED(-0.5), // COL_SLOPE_22_UP_2
    FLOAT_TO_FIXED(0.5),  // COL_SLOPE_22_DOWN_1
    FLOAT_TO_FIXED(0.5),  // COL_SLOPE_22_DOWN_2
    FLOAT_TO_FIXED(0.5),  // COL_SLOPE_22_UP_UD_1
    FLOAT_TO_FIXED(0.5),  // COL_SLOPE_22_UP_UD_2
    FLOAT_TO_FIXED(-0.5), // COL_SLOPE_22_DOWN_UD_1
    FLOAT_TO_FIXED(-0.5), // COL_SLOPE_22_DOWN_UD_2

    FLOAT_TO_FIXED(-2.0), // COL_SLOPE_66_UP_1
    FLOAT_TO_FIXED(-2.0), // COL_SLOPE_66_UP_2
    FLOAT_TO_FIXED(2.0),  // COL_SLOPE_66_DOWN_1
    FLOAT_TO_FIXED(2.0),  // COL_SLOPE_66_DOWN_2
    FLOAT_TO_FIXED(2.0),  // COL_SLOPE_66_UP_UD_1
    FLOAT_TO_FIXED(2.0),  // COL_SLOPE_66_UP_UD_2
    FLOAT_TO_FIXED(-2.0), // COL_SLOPE_66_DOWN_UD_1
    FLOAT_TO_FIXED(-2.0), // COL_SLOPE_66_DOWN_UD_2
};

s32 slope_check(u16 type, u32 col_type, s32 eject, u32 ejection_type, struct circle_t *player, struct triangle_t slope) {
    // Internal collision just for death purposes
    struct circle_t player_internal_hitbox;
    player_internal_hitbox.radius = 2;
    player_internal_hitbox.cx = player->cx;
    player_internal_hitbox.cy = player->cy;

    // Die if the internal hitbox and normal hitbox collides with the vertical edge
    if (ejection_type == EJECTION_TYPE_VERT && check_slope_eject_type(player_internal_hitbox, slope) == EJECTION_TYPE_VERT) {
        if (!noclip) player_death = TRUE;
    }

    // If the player is a cube, then ignore ceiling slopes
    if (curr_player.gamemode == GAMEMODE_CUBE) {
        if (curr_player.gravity_dir == GRAVITY_DOWN && get_step(*player, slope) == -1) {
            // Die if the internal hitbox collides with an slope
            if (check_slope_collision(player_internal_hitbox, slope) != NO_SLOPE_COLL_DETECTED) {
                if (!noclip) player_death = TRUE;
            }
            return TRUE;
        } else if (curr_player.gravity_dir == GRAVITY_UP && get_step(*player, slope) == 1) {
            // Die if the internal hitbox collides with an slope
            if (check_slope_collision(player_internal_hitbox, slope) != NO_SLOPE_COLL_DETECTED) {
                if (!noclip) player_death = TRUE;
            }
            return TRUE;
        }
    }

    // If collided with the horizontal edge, skip
    if (ejection_type == EJECTION_TYPE_HIPO) {
        // Set the player speed so it goes along the slope
        FIXED_16 speed_multiplier = FIXED_MUL(curr_player.player_x_speed, curr_player.slope_speed_multiplier);
        // Set to 1.0 if the slope goes down
        if (type >= DEGREES_45_DOWN) speed_multiplier = curr_player.player_x_speed;
        curr_player.player_y_speed = FIXED_MUL(slope_speed_multiplier[col_type - COL_SLOPE_START], speed_multiplier);
    } else {
        curr_player.player_y_speed = 0;
        curr_player.snap_cube_rotation = TRUE;
    }

    // Eject player
    curr_player.player_y += TO_FIXED(eject);
    curr_player.player_y &= ~0xffff;
    player->cy += eject;

    // If ball and 66.5 degree slope, halve speed
    if (curr_player.gamemode == GAMEMODE_BALL) {
        if (type == DEGREES_63_5) {
            curr_player.player_y_speed /= 2;
        }
    } else if (curr_player.gamemode == GAMEMODE_WAVE) {
        // Kill if wave
        if (!noclip) player_death = TRUE;
    }
    
    // Set slope related variables
    curr_player.on_floor_step = TRUE;
    curr_player.on_floor = TRUE;
    curr_player.trail_on = FALSE;
    
    // If collided with the horizontal edge, skip
    if (ejection_type == EJECTION_TYPE_HIPO) {
        curr_player.on_slope = TRUE;
        curr_player.slope_counter = 5;
        curr_player.inverse_rotation_flag = TRUE;
        curr_player.slope_type = type;
    }

    return FALSE;
}

#define SLOPE_CHECK(type) \
    if ((eject = check_slope_collision(*player, slope)) != NO_SLOPE_COLL_DETECTED) { \
        u32 ejection_type = check_slope_eject_type(*player, slope); \
        if (slope_check(type, col_type, eject, ejection_type, player, slope)) { \
            return TRUE; \
        } \
    }

s32 slope_type_check(u32 slope_x, u32 slope_y, u32 col_type, struct circle_t *player);
ARM_CODE u32 collide_with_obj_slopes(struct circle_t *player);

// This function iterates through slopes that the player is touching and applies collision to it
u32 collide_with_map_slopes(u64 x, u32 y, u32 width, u32 height) {
    struct circle_t player;
    player.radius = (width >> 1) - 1;
    player.cx = x + (width >> 1);
    player.cy = y + (height >> 1);

    // Make wave hitbox 2 pixels bigger
    if (curr_player.gamemode == GAMEMODE_WAVE) player.radius += 4;

    // Try to collide with sprite slopes only in the first layer check
    if (collide_with_obj_slopes(&player)) {
        return FALSE;
    }

    for (s32 layer = 0; layer < LEVEL_LAYERS; layer++) {
        // Iterate through 4 metatiles, forming a 2x2 metatile square
        // As the cube won't be bigger than a single 16x16 metatile, the cube can touch up to 4 metatiles
        for (u32 side = 0; side < 4; side++) {
            // Get offset from the starting block
            u32 x_offset = (side & 1) ? 0x10 : 0;
            u32 y_offset = (side & 2) ? 0x10 : 0;

            u32 col_type = obtain_collision_type(x + x_offset, y + y_offset, layer);

            // Slope origin is in the top left pixel, aka 0,0 inside the metatile
            u32 slope_x = (x + x_offset) & 0xfffffff0;
            u32 slope_y = (y + y_offset) & 0xfffffff0;

            if(slope_type_check(slope_x, slope_y, col_type, &player)) {
                return FALSE;
            }
        }   
    }

    return FALSE;
}

s32 slope_type_check(u32 slope_x, u32 slope_y, u32 col_type, struct circle_t *player) {
    struct triangle_t slope;

    s32 eject;
    switch (col_type) {

        // 45 DEG

        case COL_SLOPE_45_UP:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x10;
            
            SLOPE_CHECK(DEGREES_45)
            break;

        case COL_SLOPE_45_DOWN:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x10;

            SLOPE_CHECK(DEGREES_45_DOWN)
            break;

        case COL_SLOPE_45_UP_UD:
            slope.p1.x = slope_x + 0x10;
            slope.p1.y = slope_y;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y + 0x10;

            slope.p3.x = slope_x;
            slope.p3.y = slope_y;
            
            SLOPE_CHECK(DEGREES_45)
            break;

        case COL_SLOPE_45_DOWN_UD:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y;
            
            SLOPE_CHECK(DEGREES_45_DOWN)
            break;

        // 22 deg

        case COL_SLOPE_22_UP_1:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x + 0x20;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x20;
            slope.p3.y = slope_y + 0x10;
            
            SLOPE_CHECK(DEGREES_26_5)
            break;

            
        case COL_SLOPE_22_UP_2:
            slope.p1.x = slope_x - 0x10;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x10;
            
            SLOPE_CHECK(DEGREES_26_5)
            break;

        case COL_SLOPE_22_DOWN_1:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x20;
            slope.p3.y = slope_y + 0x10;
            
            SLOPE_CHECK(DEGREES_26_5_DOWN)
            break;

            
        case COL_SLOPE_22_DOWN_2:
            slope.p1.x = slope_x - 0x10;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x - 0x10;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x10;
            
            SLOPE_CHECK(DEGREES_26_5_DOWN)
            break;

        case COL_SLOPE_22_UP_UD_1:
            slope.p1.x = slope_x + 0x20;
            slope.p1.y = slope_y;

            slope.p2.x = slope_x + 0x20;
            slope.p2.y = slope_y + 0x10;

            slope.p3.x = slope_x;
            slope.p3.y = slope_y;
            
            SLOPE_CHECK(DEGREES_26_5)
            break;

        case COL_SLOPE_22_UP_UD_2:
            slope.p1.x = slope_x + 0x10;
            slope.p1.y = slope_y;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y + 0x10;

            slope.p3.x = slope_x - 0x10;
            slope.p3.y = slope_y;
            
            SLOPE_CHECK(DEGREES_26_5)
            break;

        case COL_SLOPE_22_DOWN_UD_1:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x20;
            slope.p3.y = slope_y;
            
            SLOPE_CHECK(DEGREES_26_5_DOWN)
            break;

        
        case COL_SLOPE_22_DOWN_UD_2:
            slope.p1.x = slope_x - 0x10;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x - 0x10;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y;
            
            SLOPE_CHECK(DEGREES_26_5_DOWN)
            break;

        // 66 DEG

        case COL_SLOPE_66_UP_1:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x20;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x20;
            
            SLOPE_CHECK(DEGREES_63_5)
            break;

            
        case COL_SLOPE_66_UP_2:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y - 0x10;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x10;
            
            SLOPE_CHECK(DEGREES_63_5)
            break;

        case COL_SLOPE_66_DOWN_1:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y - 0x10;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x10;
            
            SLOPE_CHECK(DEGREES_63_5_DOWN)
            break;

        case COL_SLOPE_66_DOWN_2:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x20;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x20;
            
            SLOPE_CHECK(DEGREES_63_5_DOWN)
            break;

        case COL_SLOPE_66_UP_UD_1:
            slope.p1.x = slope_x + 0x10;
            slope.p1.y = slope_y - 0x10;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y + 0x10;

            slope.p3.x = slope_x;
            slope.p3.y = slope_y - 0x10;
            
            SLOPE_CHECK(DEGREES_63_5)
            break;

        case COL_SLOPE_66_UP_UD_2:
            slope.p1.x = slope_x + 0x10;
            slope.p1.y = slope_y;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y + 0x20;

            slope.p3.x = slope_x;
            slope.p3.y = slope_y;
            
            SLOPE_CHECK(DEGREES_63_5)
            break;

        case COL_SLOPE_66_DOWN_UD_1:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x20;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y;
            
            SLOPE_CHECK(DEGREES_63_5_DOWN)
            break;

        case COL_SLOPE_66_DOWN_UD_2:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y - 0x10;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y - 0x10;
            
            SLOPE_CHECK(DEGREES_63_5_DOWN)
            break;

    }
    return FALSE;
}

ARM_CODE void collide_with_obj_spikes(u32 x, u32 y, u32 width, u32 height) {
    for (s32 i = block_object_buffer_offset; i > 0; i--) {
        struct ObjectSlot slot = *((struct ObjectSlot *) block_object_buffer[i - 1]);
        
        u32 obj_x = slot.object.x;
        u32 obj_y = slot.object.y;
        u32 obj_width = obj_hitbox[slot.object.type][0];
        u32 obj_height = obj_hitbox[slot.object.type][1];

        // Check if this pixel is inside the object hitbox
        if (is_colliding(x, y, width, height, obj_x, obj_y, obj_width, obj_height)) {
            u16 col_type = block_object_buffer_flags[i - 1];
            if (col_type < COL_TYPES_COUNT) {
                spike_coll_jump_table[col_type](x, y, width, height, obj_x, obj_y);
            }
        }
    }
}

ARM_CODE u32 collide_with_obj_slopes(struct circle_t *player) {
    for (s32 i = block_object_buffer_offset; i > 0; i--) {
        struct ObjectSlot slot = *((struct ObjectSlot *) block_object_buffer[i - 1]);
        
        u32 obj_x = slot.object.x;
        u32 obj_y = slot.object.y;

        u16 col_type = block_object_buffer_flags[i - 1];
        if (col_type >= COL_SLOPE_START && col_type <= COL_SLOPE_END) {
            if (slope_type_check(obj_x, obj_y, col_type, player)) {
                return TRUE;
            }
        }
    }
    return FALSE;
}