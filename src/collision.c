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

    u32 check_center = TRUE;
    
    // Check slopes
    coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
    coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);

    collide_with_map_slopes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);
    
#ifdef DEBUG
    if (hitbox_display) {
        draw_hitbox_points(coll_x, coll_y, curr_player.player_width, curr_player.player_height, FALSE);
    }

    if (!noclip) collide_with_obj_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);
#else
    collide_with_obj_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);
#endif

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
            // Going down
            coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
            coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);
            
            if (!curr_player.slope_counter) {
                if (run_coll(coll_x, coll_y + curr_player.player_height, layer, BOTTOM)) {
                    if (curr_player.player_y_speed >= 0) do_ejection(eject_bottom, BOTTOM);
                    else if (eject_bottom < 6) check_center = FALSE;

                    continue;
                }
                if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y + curr_player.player_height, layer, BOTTOM)) {
                    if (curr_player.player_y_speed >= 0) do_ejection(eject_bottom, BOTTOM);
                    else if (eject_bottom < 6) check_center = FALSE;

                    continue;
                }
            }

            if (run_coll(coll_x + curr_player.player_width, coll_y + curr_player.player_height, layer, BOTTOM)) {
                if (curr_player.player_y_speed >= 0) do_ejection(eject_bottom, BOTTOM);
                else if (eject_bottom < 6) check_center = FALSE;

                continue;
            }

            if (curr_player.should_check_ceiling) {
                // If ceiling should be checked, check for top collision
                
                if (!curr_player.slope_counter) {
                    if (run_coll(coll_x, coll_y, layer, TOP)) {
                        do_ejection(eject_top, TOP);
                        continue;
                    }
                    if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y, layer, TOP)) {
                        do_ejection(eject_top, TOP);
                        continue;
                    }
                }
                if (run_coll(coll_x + curr_player.player_width, coll_y, layer, TOP)) {
                    do_ejection(eject_top, TOP);
                    continue;
                }
                
                // Decrement counter
                curr_player.should_check_ceiling--;
            }
        } else {
            // Going up
            coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
            coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);

            if (!curr_player.slope_counter) {
                if (run_coll(coll_x, coll_y, layer, TOP)) {
                    if (curr_player.player_y_speed <= 0) do_ejection(eject_top, TOP);
                    else if (eject_top < 6) check_center = FALSE;

                    continue;
                }
                if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y, layer, TOP)) {
                    if (curr_player.player_y_speed <= 0) do_ejection(eject_top, TOP);
                    else if (eject_top < 6) check_center = FALSE;

                    continue;
                }
            }

            if (run_coll(coll_x + curr_player.player_width, coll_y, layer, TOP)) {
                if (curr_player.player_y_speed <= 0) do_ejection(eject_top, TOP);
                else if (eject_top < 6) check_center = FALSE;

                continue;
            }

            if (curr_player.should_check_ceiling) {
                // If ceiling should be checked, check for bottom collision

                
                if (!curr_player.slope_counter) {
                    if (run_coll(coll_x, coll_y + curr_player.player_height, layer, BOTTOM)) {
                        do_ejection(eject_bottom, BOTTOM);
                        continue;
                    }
                    if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y + curr_player.player_height, layer, BOTTOM)) {
                        do_ejection(eject_bottom, BOTTOM);
                        continue;
                    }
                }
                if (run_coll(coll_x + curr_player.player_width, coll_y + curr_player.player_height, layer, BOTTOM)) {
                    do_ejection(eject_bottom, BOTTOM);
                    continue;
                }

                // Decrement counter
                curr_player.should_check_ceiling--;
            }
        }
    }

    if (!check_center) return;

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

    // Check slopes
    coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
    coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);
    
    collide_with_map_slopes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);

#ifdef DEBUG
    if (hitbox_display) {
        draw_hitbox_points(coll_x, coll_y, curr_player.player_width, curr_player.player_height, FALSE);
    }

    if (!noclip) collide_with_obj_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);
#else
    collide_with_obj_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);
#endif

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
                    do_ejection(eject_bottom, BOTTOM);
                    continue;
                }
                if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y + curr_player.player_height, layer, BOTTOM)) {
                    do_ejection(eject_bottom, BOTTOM);
                    continue;
                }
            }
            if (run_coll(coll_x + curr_player.player_width, coll_y + curr_player.player_height, layer, BOTTOM)) {
                do_ejection(eject_bottom, BOTTOM);
                continue;
            }
        }
        if (curr_player.player_y_speed <= 0) {
            // Going up
            coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
            coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);

            if (!curr_player.slope_counter) {
                if (run_coll(coll_x, coll_y, layer, TOP)) {
                    do_ejection(eject_top, TOP);
                    continue;
                }
                if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y, layer, TOP)) {
                    do_ejection(eject_top, TOP);
                    continue;
                }
            }

            if (run_coll(coll_x + curr_player.player_width, coll_y, layer, TOP)) {
                do_ejection(eject_top, TOP);
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

    // Check slopes
    coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
    coll_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);
    
    collide_with_map_slopes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);

#ifdef DEBUG
    if (hitbox_display) {
        draw_hitbox_points(coll_x, coll_y, curr_player.player_width, curr_player.player_height, FALSE);
    }

    if (!noclip) collide_with_obj_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);
#else
    collide_with_obj_spikes(coll_x, coll_y, curr_player.player_width, curr_player.player_height);
#endif
    
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
                    do_ejection(eject_bottom, BOTTOM);
                    continue;
                }
                if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y + curr_player.player_height + offset + 1, layer, BOTTOM)) {
                    do_ejection(eject_bottom, BOTTOM);
                    continue;
                }
            }
            if (run_coll(coll_x + curr_player.player_width, coll_y + curr_player.player_height + offset + 1, layer, BOTTOM)) {
                do_ejection(eject_bottom, BOTTOM);
                continue;
            }
        }
        if (curr_player.player_y_speed <= 0) {
            // Going up
            if (!curr_player.slope_counter) {
                if (run_coll(coll_x, coll_y - offset, layer, TOP)) {
                    do_ejection(eject_top, TOP);
                    continue;
                }
                if (run_coll(coll_x + (curr_player.player_width >> 1), coll_y - offset, layer, TOP)) {
                    do_ejection(eject_top, TOP);
                    continue;
                }
            }
            if (run_coll(coll_x + curr_player.player_width, coll_y - offset, layer, TOP)) {
                do_ejection(eject_top, TOP);
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
    u32 block_x = (x >> 4) & (LEVEL_BUFFER_WIDTH - 1); // Get block x in buffer (0-31)
    u32 block_y = y >> 4;          // Get block y in buffer, not capped for easy level vertical extension

    return block_x + block_y * LEVEL_BUFFER_WIDTH;
}

ARM_CODE u16 obtain_block(u32 x, u32 y, u32 layer) {
    return level_buffer[layer][obtain_level_buffer_index(x, y)];
}

ARM_CODE INLINE u16 obtain_collision_type(u32 x, u32 y, u32 layer) {
    // If above the level, then return no collision col type
    if ((s32) y < 0) return COL_NONE;

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

ARM_CODE u32 col_type_lookup(u16 col_type, u32 x, u32 y, u8 side, u32 layer) {
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
            
        case COL_OUTLINE_TOP:
            if (y_inside_block < 3) {
                eject_bottom = y_inside_block;
                eject_top = 0x01 - y_inside_block;
                break;
            }
            return 0;
            
        case COL_OUTLINE_BOTTOM:
            if (y_inside_block > 12) {
                eject_bottom = y_inside_block - 0xf;
                eject_top = 0x10 - y_inside_block;
                break;
            }
            return 0;
            
        case COL_OUTLINE_LEFT:
            if (x_inside_block < 2) {
                eject_bottom = y_inside_block;
                eject_top = 0x10 - y_inside_block;
                break;
            }
            return 0;
            
        case COL_OUTLINE_RIGHT:
            if (x_inside_block > 13) {
                eject_bottom = y_inside_block;
                eject_top = 0x10 - y_inside_block;
                break;
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
        s32 eject_value = eject_top;
        s32 max_eject = gamemode_max_eject[curr_player.gamemode];

        // Raise eject cap if changed size
        if (curr_player.changed_size_frames) max_eject = 0x10;

#ifdef DEBUG
        if (!curr_player.d_block_active && curr_player.gamemode == GAMEMODE_WAVE && col_type != COL_FLOOR_CEIL && !noclip) {
            if (side == CENTER) {
                player_death = TRUE;
            } else {
                return 0;
            }
        }
#else
        if (!curr_player.d_block_active && curr_player.gamemode == GAMEMODE_WAVE && col_type != COL_FLOOR_CEIL) {
            if (side == CENTER) {
                player_death = TRUE;
            } else {
                return 0;
            }
        }
#endif

        if (eject_value < max_eject) {
            return 1;
        }
    } else if (side == BOTTOM) {   
        s32 eject_value = eject_bottom;

        // Raise eject cap if changed size
        s32 max_eject = gamemode_max_eject[curr_player.gamemode];

        if (curr_player.changed_size_frames) max_eject = 0x10;

#ifdef DEBUG
        if (!curr_player.d_block_active && curr_player.gamemode == GAMEMODE_WAVE && col_type != COL_FLOOR_CEIL && !noclip) {
            if (side == CENTER) {
                player_death = TRUE;
            } else {
                return 0;
            }
        }
#else
        if (!curr_player.d_block_active && curr_player.gamemode == GAMEMODE_WAVE && col_type != COL_FLOOR_CEIL) {
            if (side == CENTER) {
                player_death = TRUE;
            } else {
                return 0;
            }
        }
#endif

        if (eject_value < max_eject) {
            return 1;
        }
    } else if (side == CENTER) {
        return 1;
    }

    return 0;
}

ARM_CODE void do_ejection(s32 eject_value, u32 ejection_type) {
    // Disable trail if cube jumped and is on ground
    if (curr_player.gamemode != GAMEMODE_CUBE || curr_player.airborne_jumped) curr_player.trail_on = FALSE;
            
    // If just landed and cube did a jump, then remove jumping status
    if (!curr_player.on_floor && curr_player.airborne_jumped) curr_player.airborne_jumped = FALSE;

    if (ejection_type == TOP) {
        s32 check_ceiling = curr_player.should_check_ceiling;
        s32 extra_eject = 1;

        if (check_ceiling && curr_player.gravity_dir == GRAVITY_DOWN) extra_eject = 0;

        curr_player.player_y += (eject_value - extra_eject) << SUBPIXEL_BITS;

        if (curr_player.f_block_active && curr_player.gravity_dir == GRAVITY_DOWN) {
            curr_player.came_from_spider_orb = TRUE;
            curr_player.gravity_dir = GRAVITY_UP;
        }

        if (curr_player.gamemode != GAMEMODE_CUBE || curr_player.gravity_dir == GRAVITY_UP) {
            // We are resting on the ceiling so allow jumping and stuff
            curr_player.on_floor = TRUE;
            curr_player.snap_cube_rotation = TRUE;
        }
    } else {
        curr_player.player_y -= eject_value << SUBPIXEL_BITS;

        if (curr_player.f_block_active && curr_player.gravity_dir == GRAVITY_UP) {
            curr_player.came_from_spider_orb = TRUE;
            curr_player.gravity_dir = GRAVITY_DOWN;
        }

        if (curr_player.gamemode != GAMEMODE_CUBE || curr_player.gravity_dir == GRAVITY_DOWN) {
            // We are resting on the ceiling so allow jumping and stuff
            curr_player.on_floor = TRUE;
            curr_player.snap_cube_rotation = TRUE;
        }
    }
    curr_player.player_y_speed = 0;
    
    curr_player.inverse_rotation_flag = FALSE;
    // Remove subpixels
    curr_player.player_y &= ~0xffff;
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
            u32 old_player_y = curr_player.player_y;
            
            u32 returned = col_type_lookup(col_type, mod_x, mod_y, side, 3);
            
            // Continue if no collision
            if (!returned) continue;

            if (curr_player.player_y_speed >= 0 && side == BOTTOM) {
                do_ejection(eject_bottom, BOTTOM);
            } else if (curr_player.player_y_speed <= 0 && side == TOP) {
                do_ejection(eject_top, TOP);
            }

            // Update coll_y with the displacement that has occured
            coll_y += old_player_y - curr_player.player_y;

            return TRUE;
        }
    }
    return FALSE;
}

ARM_CODE u32 run_coll(u32 x, u32 y, u32 layer, u8 side) {
    // Check for the pixel above
    if (side == TOP) {
        y -= 1;
    }
    
    if(collision_with_block_obj(x, y, side)) {
        // Return TRUE only if this is a center hitbox check, as this is needed for death to ocurr
        return side == CENTER;
    }
    
    u16 col_type = obtain_collision_type(x, y, layer);
    return col_type_lookup(col_type, x, y, side, layer);
}

#define COLLISION_DISTANCE 48

ARM_CODE s32 check_collision_distance(struct ObjectSlot curr_object, s32 player_x_pixels, s32 player_y_pixels) {
    return (s32) curr_object.object.x > player_x_pixels - COLLISION_DISTANCE && (s32) curr_object.object.x < player_x_pixels + COLLISION_DISTANCE &&
           (s32) curr_object.object.y > player_y_pixels - COLLISION_DISTANCE && (s32) curr_object.object.y < player_y_pixels + COLLISION_DISTANCE;
}

ARM_CODE void do_collision_with_objects() {
    s32 player_x_pixels = curr_player.player_x >> SUBPIXEL_BITS;
    s32 player_y_pixels = curr_player.player_y >> SUBPIXEL_BITS;

    for (s32 slot = 0; slot < MAX_OBJECTS; slot++) {
        // Check collision only if the slot is occupied
        struct ObjectSlot curr_object = object_buffer[slot];
        // If its not occupied and it is behind the collision distance, skip
        if (curr_object.occupied && check_collision_distance(curr_object, player_x_pixels, player_y_pixels)) {
            // If it hasn't been activated yet, continue
            if (curr_object.activated[curr_player_id] == FALSE) {
                // If it has collision, continue. Check if this object is a touch col trigger, if so, check collision
                if (curr_object.has_collision || (curr_object.object.type == COL_TRIGGER && curr_object.object.attrib3 & COL_TRIGGER_ATTRIB3_TOUCH_MASK)) {   
                    check_obj_collision(slot); 
                }
            }
        }
    }
}

#ifdef DEBUG
void draw_hitbox_points(u32 x, u32 y, u32 w, u32 h, u32 collided) {
        w -= 1;
        h -= 1;
        u32 x_orig = x - (scroll_x >> SUBPIXEL_BITS);
        u32 y_orig = y - (scroll_y >> SUBPIXEL_BITS);
        oam_metaspr(x_orig,     y_orig,     hitboxPoint, 0, 0, 0, (collided) ? 2 : -1, 0, 0, FALSE, FALSE);
        oam_metaspr(x_orig,     y_orig + h, hitboxPoint, 0, 0, 0, (collided) ? 2 : -1, 0, 0, FALSE, FALSE);
        oam_metaspr(x_orig + w, y_orig,     hitboxPoint, 0, 0, 0, (collided) ? 2 : -1, 0, 0, FALSE, FALSE);
        oam_metaspr(x_orig + w, y_orig + h, hitboxPoint, 0, 0, 0, (collided) ? 2 : -1, 0, 0, FALSE, FALSE);
}
#endif


ARM_CODE u32 is_colliding(u32 x1, u32 y1, u32 w1, u32 h1, u32 x2, u32 y2, u32 w2, u32 h2) {
    // Right of object 1 < Left of object 2
    if (x1 + w1 < x2) {
#ifdef DEBUG
        if (hitbox_display && current_step == 0) {
            draw_hitbox_points(x2, y2, w2, h2, FALSE);
        }
#endif
        return FALSE;
    }

    // Left of object 1 > Right of object 2
    if (x1 >= x2 + w2) {
#ifdef DEBUG
        if (hitbox_display && current_step == 0) {
            draw_hitbox_points(x2, y2, w2, h2, FALSE);
        }
#endif
        return FALSE;
    }

    // Bottom of object 1 < Top of object 2
    if (y1 + h1 < y2) {
#ifdef DEBUG
        if (hitbox_display && current_step == 0) {
            draw_hitbox_points(x2, y2, w2, h2, FALSE);
        }
#endif
        return FALSE;
    }

    // Top of object 1 > Bottom of object 1
    if (y1 >= y2 + h2) {
#ifdef DEBUG
        if (hitbox_display && current_step == 0) {
            draw_hitbox_points(x2, y2, w2, h2, FALSE);
        }
#endif
        return FALSE;
    }

#ifdef DEBUG
    if (hitbox_display && current_step == 0) {
        draw_hitbox_points(x2, y2, w2, h2, TRUE);
    }
#endif

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

// Q12 fixed-point constants and helpers
#define Q12_SHIFT 12
#define Q12_ONE (1 << Q12_SHIFT)
#define Q12_HALF (Q12_ONE >> 1)
#define Q12_MULT(a, b) (((a) * (b)) >> Q12_SHIFT)
#define Q12_DIV(a, b) (((a) << Q12_SHIFT) / (b))

// Helper function to get minimum of an array
ARM_CODE s32 get_min(s32* arr, s32 count) {
    s32 min = arr[0];
    for(s32 i = 1; i < count; i++) {
        if(arr[i] < min) min = arr[i];
    }
    return min;
}

// Helper function to get maximum of an array
ARM_CODE s32 get_max(s32* arr, s32 count) {
    s32 max = arr[0];
    for(s32 i = 1; i < count; i++) {
        if(arr[i] > max) max = arr[i];
    }
    return max;
}

// Helper function to project a point onto an axis
ARM_CODE s32 project_point(s32 point_x, s32 point_y, s32 axis_x, s32 axis_y) {
    return Q12_MULT(point_x, axis_x) + Q12_MULT(point_y, axis_y);
}

ARM_CODE s32 is_colliding_rotated_fixed(
    s32 x1, s32 y1, s32 w1, s32 h1,                       // First rect (axis-aligned)
    s32 rot1_center_x, s32 rot1_center_y,                 // Rotation center point
    u16 angle1,                                           // Rotation angle (0-FFFF)
    
    s32 x2, s32 y2, s32 w2, s32 h2,                       // Second rect position and dimensions
    s32 rot2_center_x, s32 rot2_center_y,                 // Rotation center point
    u16 angle2)                                           // Rotation angle (0-FFFF)
{

    // Quick exit
    s32 big = MAX(w1, h1) + MAX(w2, h2);
    if (ABS(x1 - x2) > big || ABS(y1 - y2) > big) return FALSE;

    // Calculate sin/cos for both rectangles
    s32 sin1 = lu_sin(angle1);
    s32 cos1 = lu_cos(angle1);
    s32 sin2 = lu_sin(angle2);
    s32 cos2 = lu_cos(angle2);

    // Base corner positions for a rectangle
    s32 base_corners[4][2] = {
        {0, 0},    // Top-left
        {w1, 0},   // Top-right
        {w1, h1},  // Bottom-right
        {0, h1}    // Bottom-left
    };

    // Rect1: rotate corners
    s32 rect1_corners[4][2];
    for (s32 i = 0; i < 4; i++) {
        s32 x = base_corners[i][0] + x1 - rot1_center_x;
        s32 y = base_corners[i][1] + y1 - rot1_center_y;
        rect1_corners[i][0] = rot1_center_x + (Q12_MULT(x, cos1) - Q12_MULT(y, sin1));
        rect1_corners[i][1] = rot1_center_y + (Q12_MULT(x, sin1) + Q12_MULT(y, cos1));
    }

    // Rect2: rotate corners
    base_corners[1][0] = w2; base_corners[1][1] = 0;
    base_corners[2][0] = w2; base_corners[2][1] = h2;
    base_corners[3][0] = 0;  base_corners[3][1] = h2;

    s32 rect2_corners[4][2];
    for (s32 i = 0; i < 4; i++) {
        s32 x = base_corners[i][0] + x2 - rot2_center_x;
        s32 y = base_corners[i][1] + y2 - rot2_center_y;
        rect2_corners[i][0] = rot2_center_x + (Q12_MULT(x, cos2) - Q12_MULT(y, sin2));
        rect2_corners[i][1] = rot2_center_y + (Q12_MULT(x, sin2) + Q12_MULT(y, cos2));
    }
    // Define the axes we need to check
    // For rect1, they're just vertical and horizontal
    s32 axes[4][2] = {
        {cos1, sin1},     // rect1 "horizontal" axis
        {-sin1, cos1},    // rect1 "vertical" axis
        {cos2, sin2},     // rect2 "horizontal" axis
        {-sin2, cos2}     // rect2 "vertical" axis
    };

    // Check projection onto each axis
    for(s32 i = 0; i < 4; i++) {
        s32 axis_x = axes[i][0];
        s32 axis_y = axes[i][1];

        // Project corners of rect1
        s32 proj1[4];
        for(s32 j = 0; j < 4; j++) {
            proj1[j] = project_point(rect1_corners[j][0], rect1_corners[j][1],
                                   axis_x, axis_y);
        }

        // Project corners of rect2
        s32 proj2[4];
        for(s32 j = 0; j < 4; j++) {
            proj2[j] = project_point(rect2_corners[j][0], rect2_corners[j][1],
                                   axis_x, axis_y);
        }

        // Find min and max projections
        s32 min1 = get_min(proj1, 4);
        s32 max1 = get_max(proj1, 4);
        s32 min2 = get_min(proj2, 4);
        s32 max2 = get_max(proj2, 4);

        // Check for gap
        if(max1 < min2 || max2 < min1) {
#ifdef DEBUG
            if (hitbox_display && current_step == 0) {
                for (s32 i = 0; i < 4; i++) {
                    u32 x = rect2_corners[i][0] - (scroll_x >> SUBPIXEL_BITS);
                    u32 y = rect2_corners[i][1] - (scroll_y >> SUBPIXEL_BITS);
                    oam_metaspr(x, y, hitboxPoint, 0, 0, 0, -1, 0, 0, FALSE, FALSE);
                }
                // Player
                for (s32 i = 0; i < 4; i++) {
                    u32 x = rect1_corners[i][0] - (scroll_x >> SUBPIXEL_BITS);
                    u32 y = rect1_corners[i][1] - (scroll_y >> SUBPIXEL_BITS);
                    oam_metaspr(x, y, hitboxPoint, 0, 0, 0, 2, 0, 0, FALSE, FALSE);
                }
            }
#endif
            return 0; // Gap found, no collision
        }
    }

#ifdef DEBUG
    if (hitbox_display && current_step == 0) {
        for (s32 i = 0; i < 4; i++) {
            u32 x = rect2_corners[i][0] - (scroll_x >> SUBPIXEL_BITS);
            u32 y = rect2_corners[i][1] - (scroll_y >> SUBPIXEL_BITS);
            oam_metaspr(x, y, hitboxPoint, 0, 0, 0, 2, 0, 0, FALSE, FALSE);
        }
    }
#endif

    return 1; // No gaps found, collision exists
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

void minispike_up_tl(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x03, spk_y + 0x04, 0x02, 0x03
    )) {
        player_death = TRUE;
    }
}

void minispike_up_top(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_up_tl(x, y, width, height, spk_x + 0x04, spk_y);
}

void minispike_up_tr(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_up_tl(x, y, width, height, spk_x + 0x08, spk_y);
}

void minispike_up_bl(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_up_tl(x, y, width, height, spk_x, spk_y + 0x08);
}

void minispike_up_bot(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_up_tl(x, y, width, height, spk_x + 0x04, spk_y + 0x08);
}

void minispike_up_br(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_up_tl(x, y, width, height, spk_x + 0x08, spk_y + 0x08);
}

void minispike_down_tl(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x03, spk_y + 0x01, 0x02, 0x03
    )) {
        player_death = TRUE;
    }
}

void minispike_down_top(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_down_tl(x, y, width, height, spk_x + 0x04, spk_y);
}

void minispike_down_tr(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_down_tl(x, y, width, height, spk_x + 0x08, spk_y);
}

void minispike_down_bl(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_down_tl(x, y, width, height, spk_x, spk_y + 0x08);
}

void minispike_down_bot(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_down_tl(x, y, width, height, spk_x + 0x04, spk_y + 0x08);
}

void minispike_down_br(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_down_tl(x, y, width, height, spk_x + 0x08, spk_y + 0x08);
}

void minispike_right_lt(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x01, spk_y + 0x03, 0x03, 0x02
    )) {
        player_death = TRUE;
    }
}

void minispike_right_left(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_right_lt(x, y, width, height, spk_x, spk_y + 0x04);
}

void minispike_right_lb(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_right_lt(x, y, width, height, spk_x, spk_y + 0x08);
}

void minispike_right_rt(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_right_lt(x, y, width, height, spk_x + 0x08, spk_y);
}

void minispike_right_right(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_right_lt(x, y, width, height, spk_x + 0x08, spk_y + 0x04);
}

void minispike_right_rb(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_right_lt(x, y, width, height, spk_x + 0x08, spk_y + 0x08);
}

void minispike_left_lt(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x04, spk_y + 0x03, 0x03, 0x02
    )) {
        player_death = TRUE;
    }
}

void minispike_left_left(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_left_lt(x, y, width, height, spk_x, spk_y + 0x04);
}

void minispike_left_lb(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_left_lt(x, y, width, height, spk_x, spk_y + 0x08);
}

void minispike_left_rt(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_left_lt(x, y, width, height, spk_x + 0x08, spk_y);
}

void minispike_left_right(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_left_lt(x, y, width, height, spk_x + 0x08, spk_y + 0x04);
}

void minispike_left_rb(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_left_lt(x, y, width, height, spk_x + 0x08, spk_y + 0x08);
}

void minispike_up_2_top(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_up_tl(x, y, width, height, spk_x, spk_y);
    minispike_up_tr(x, y, width, height, spk_x, spk_y);
}

void minispike_up_2_bot(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_up_bl(x, y, width, height, spk_x, spk_y);
    minispike_up_br(x, y, width, height, spk_x, spk_y);
}

void minispike_up_2_tl_br(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_up_tl(x, y, width, height, spk_x, spk_y);
    minispike_up_br(x, y, width, height, spk_x, spk_y);
}

void minispike_up_2_tr_bl(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_up_tr(x, y, width, height, spk_x, spk_y);
    minispike_up_bl(x, y, width, height, spk_x, spk_y);
}

void minispike_down_2_top(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_down_tl(x, y, width, height, spk_x, spk_y);
    minispike_down_tr(x, y, width, height, spk_x, spk_y);
}

void minispike_down_2_bot(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_down_bl(x, y, width, height, spk_x, spk_y);
    minispike_down_br(x, y, width, height, spk_x, spk_y);
}

void minispike_down_2_tl_br(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_down_tl(x, y, width, height, spk_x, spk_y);
    minispike_down_br(x, y, width, height, spk_x, spk_y);
}

void minispike_down_2_tr_bl(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_down_tr(x, y, width, height, spk_x, spk_y);
    minispike_down_bl(x, y, width, height, spk_x, spk_y);
}

void minispike_right_2_left(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_right_lt(x, y, width, height, spk_x, spk_y);
    minispike_right_lb(x, y, width, height, spk_x, spk_y);
}

void minispike_right_2_right(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_right_rt(x, y, width, height, spk_x, spk_y);
    minispike_right_rb(x, y, width, height, spk_x, spk_y);
}

void minispike_right_2_lt_rb(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_right_lt(x, y, width, height, spk_x, spk_y);
    minispike_right_rb(x, y, width, height, spk_x, spk_y);
}

void minispike_right_2_rt_lb(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_right_rt(x, y, width, height, spk_x, spk_y);
    minispike_right_lb(x, y, width, height, spk_x, spk_y);
}

void minispike_left_2_left(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_left_lt(x, y, width, height, spk_x, spk_y);
    minispike_left_lb(x, y, width, height, spk_x, spk_y);
}

void minispike_left_2_right(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_left_rt(x, y, width, height, spk_x, spk_y);
    minispike_left_rb(x, y, width, height, spk_x, spk_y);
}

void minispike_left_2_lt_rb(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_left_lt(x, y, width, height, spk_x, spk_y);
    minispike_left_rb(x, y, width, height, spk_x, spk_y);
}

void minispike_left_2_rt_lb(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    minispike_left_rt(x, y, width, height, spk_x, spk_y);
    minispike_left_lb(x, y, width, height, spk_x, spk_y);
}

void sloped_minispikes_tr(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x08, spk_y + 0x03, 0x02, 0x02
    )) {
        player_death = TRUE;
    }
}

void sloped_minispikes_tl(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x06, spk_y + 0x03, 0x02, 0x02
    )) {
        player_death = TRUE;
    }
}

void sloped_minispikes_br(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x08, spk_y + 0x0b, 0x02, 0x02
    )) {
        player_death = TRUE;
    }
}

void sloped_minispikes_bl(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x06, spk_y + 0x0b, 0x02, 0x02
    )) {
        player_death = TRUE;
    }
}

void sloped_minispikes_corner_tr(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x, spk_y + 0x0b, 0x02, 0x02
    )) {
        player_death = TRUE;
    }
}

void sloped_minispikes_corner_tl(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x0e, spk_y + 0x0b, 0x02, 0x02
    )) {
        player_death = TRUE;
    }
}

void sloped_minispikes_corner_br(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x, spk_y + 0x03, 0x02, 0x02
    )) {
        player_death = TRUE;
    }
}

void sloped_minispikes_corner_bl(u32 x, u32 y, u32 width, u32 height, u32 spk_x, u32 spk_y) {
    if (is_colliding(
        x, y, width, height,
        spk_x + 0x0e, spk_y + 0x03, 0x02, 0x02
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

    not_an_spike, // COL_MINIBLOCK_0001
    not_an_spike, // COL_MINIBLOCK_0010
    not_an_spike, // COL_MINIBLOCK_0100
    not_an_spike, // COL_MINIBLOCK_1000
    not_an_spike, // COL_MINIBLOCK_0011
    not_an_spike, // COL_MINIBLOCK_1100
    not_an_spike, // COL_MINIBLOCK_1010
    not_an_spike, // COL_MINIBLOCK_0101
    not_an_spike, // COL_MINIBLOCK_1011
    not_an_spike, // COL_MINIBLOCK_0111
    not_an_spike, // COL_MINIBLOCK_1110
    not_an_spike, // COL_MINIBLOCK_1101
    not_an_spike, // COL_MINIBLOCK_1001
    not_an_spike, // COL_MINIBLOCK_0110
    not_an_spike, // COL_MINIBLOCK_1111

    not_an_spike, // COL_OUTLINE_TOP
    not_an_spike, // COL_OUTLINE_BOTTOM
    not_an_spike, // COL_OUTLINE_LEFT
    not_an_spike, // COL_OUTLINE_RIGHT

    not_an_spike, // COL_SLOPE_45_UP
    not_an_spike, // COL_SLOPE_45_DOWN
    not_an_spike, // COL_SLOPE_45_UP_UD
    not_an_spike, // COL_SLOPE_45_DOWN_UD
    
    not_an_spike, // COL_SLOPE_22_UP_1
    not_an_spike, // COL_SLOPE_22_UP_2
    not_an_spike, // COL_SLOPE_22_DOWN
    not_an_spike, // COL_SLOPE_22_DOWN_2
    not_an_spike, // COL_SLOPE_22_UP_UD
    not_an_spike, // COL_SLOPE_22_UP_UD_2
    not_an_spike, // COL_SLOPE_22_DOWN_UD
    not_an_spike, // COL_SLOPE_22_DOWN_UD_2

    not_an_spike, // COL_SLOPE_66_UP_1
    not_an_spike, // COL_SLOPE_66_UP_2
    not_an_spike, // COL_SLOPE_66_DOWN
    not_an_spike, // COL_SLOPE_66_DOWN_2
    not_an_spike, // COL_SLOPE_66_UP_UD
    not_an_spike, // COL_SLOPE_66_UP_UD_2
    not_an_spike, // COL_SLOPE_66_DOWN_UD
    not_an_spike, // COL_SLOPE_66_DOWN_UD_2
    
    not_an_spike, // COL_SPIKE_SLOPE_45_UP
    not_an_spike, // COL_SPIKE_SLOPE_45_DOWN
    not_an_spike, // COL_SPIKE_SLOPE_45_UP_UD
    not_an_spike, // COL_SPIKE_SLOPE_45_DOWN_UD
    
    not_an_spike, // COL_SPIKE_SLOPE_22_UP_1
    not_an_spike, // COL_SPIKE_SLOPE_22_UP_2
    not_an_spike, // COL_SPIKE_SLOPE_22_DOWN
    not_an_spike, // COL_SPIKE_SLOPE_22_DOWN_2
    not_an_spike, // COL_SPIKE_SLOPE_22_UP_UD
    not_an_spike, // COL_SPIKE_SLOPE_22_UP_UD_2
    not_an_spike, // COL_SPIKE_SLOPE_22_DOWN_UD
    not_an_spike, // COL_SPIKE_SLOPE_22_DOWN_UD_2

    not_an_spike, // COL_SPIKE_SLOPE_66_UP_1
    not_an_spike, // COL_SPIKE_SLOPE_66_UP_2
    not_an_spike, // COL_SPIKE_SLOPE_66_DOWN
    not_an_spike, // COL_SPIKE_SLOPE_66_DOWN_2
    not_an_spike, // COL_SPIKE_SLOPE_66_UP_UD
    not_an_spike, // COL_SPIKE_SLOPE_66_UP_UD_2
    not_an_spike, // COL_SPIKE_SLOPE_66_DOWN_UD
    not_an_spike, // COL_SPIKE_SLOPE_66_DOWN_UD_2

    minispike_up_tl,  // MINISPIKE_UP_TL
    minispike_up_top, // MINISPIKE_UP_TOP
    minispike_up_tr,  // MINISPIKE_UP_TR

    minispike_up_bl,  // MINISPIKE_UP_BL
    minispike_up_bot, // MINISPIKE_UP_BOTTOM
    minispike_up_br,  // MINISPIKE_UP_BR

    minispike_down_tl,  // MINISPIKE_DOWN_TL
    minispike_down_top, // MINISPIKE_DOWN_TOP
    minispike_down_tr,  // MINISPIKE_DOWN_TR

    minispike_down_bl,  // MINISPIKE_DOWN_BL
    minispike_down_bot, // MINISPIKE_DOWN_BOTTOM
    minispike_down_br,  // MINISPIKE_DOWN_BR

    minispike_right_lt,   // MINISPIKE_RIGTH_LT
    minispike_right_left, // MINISPIKE_RIGTH_LEFT
    minispike_right_lb,   // MINISPIKE_RIGTH_LB

    minispike_right_rt,    // MINISPIKE_RIGHT_RT
    minispike_right_right, // MINISPIKE_RIGHT_RIGHT
    minispike_right_rb,    // MINISPIKE_RIGHT_RB

    minispike_left_lt,   // MINISPIKE_LEFT_LT
    minispike_left_left, // MINISPIKE_LEFT_LEFT
    minispike_left_lb,   // MINISPIKE_LEFT_LB

    minispike_left_rt,    // MINISPIKE_LEFT_RT
    minispike_left_right, // MINISPIKE_LEFT_RIGHT
    minispike_left_rb,    // MINISPIKE_LEFT_RB

    minispike_up_2_top,   // MINISPIKE_UP_2_TOP
    minispike_up_2_bot,   // MINISPIKE_UP_2_BOTTOM
    minispike_up_2_tl_br, // MINISPIKE_UP_2_TL_BR
    minispike_up_2_tr_bl, // MINISPIKE_UP_2_TR_BL

    minispike_down_2_top,   // MINISPIKE_DOWN_2_TOP
    minispike_down_2_bot,   // MINISPIKE_DOWN_2_BOTTOM
    minispike_down_2_tl_br, // MINISPIKE_DOWN_2_TL_BR
    minispike_down_2_tr_bl, // MINISPIKE_DOWN_2_TR_BL

    minispike_right_2_left,  // MINISPIKE_RIGHT_2_LEFT
    minispike_right_2_right, // MINISPIKE_RIGHT_2_RIGHT
    minispike_right_2_lt_rb, // MINISPIKE_RIGHT_2_LT_RB
    minispike_right_2_rt_lb, // MINISPIKE_RIGHT_2_RT_LB

    minispike_left_2_left,  // MINISPIKE_LEFT_2_LEFT
    minispike_left_2_right, // MINISPIKE_LEFT_2_RIGHT
    minispike_left_2_lt_rb, // MINISPIKE_LEFT_2_LT_RB
    minispike_left_2_rt_lb, // MINISPIKE_LEFT_2_RT_LB

    sloped_minispikes_tr, // SLOPED_MINISPIKES_TR
    sloped_minispikes_tl, // SLOPED_MINISPIKES_TL
    sloped_minispikes_br, // SLOPED_MINISPIKES_BR
    sloped_minispikes_bl, // SLOPED_MINISPIKES_BL

    sloped_minispikes_corner_tr, // SLOPED_MINISPIKES_CORNER_TR
    sloped_minispikes_corner_tl, // SLOPED_MINISPIKES_CORNER_TL
    sloped_minispikes_corner_br, // SLOPED_MINISPIKES_CORNER_BR
    sloped_minispikes_corner_bl, // SLOPED_MINISPIKES_CORNER_BL
};

// This function iterates through spikes that the player is touching and applies collision to it
ARM_CODE void collide_with_map_spikes(u32 x, u32 y, u32 width, u32 height, u8 layer) {
    // Iterate through 4 metatiles, forming a 2x2 metatile square
    // As the cube won't be bigger than a single 16x16 metatile, the cube can touch up to 4 metatiles
    for (u32 side = 0; side < 4; side++) {
        // Get offset from the starting block
        u32 x_offset = (side & 2) ? 0x10 : 0;
        u32 y_offset = (side & 1) ? 0x10 : 0;

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
    s32 cx, cy; // Top-left corner
    u32 radius; // Radius
    s32 up_y;
    s32 down_y;
};

struct point_t {
    u32 x;
    u32 y;
};

struct triangle_t {
    struct point_t p1;
    struct point_t p2;
    struct point_t p3;
    u16 type;
    u8 hurts;
    s32 up_y;
    s32 down_y;
};

const s32 slope_step[];
const s32 slope_horizontal_dir[];

ARM_CODE s32 find_squared_distance_to_line(s32 point_x, s32 point_y, s32 x1, s32 y1, s32 x2, s32 y2) {
    s32 dx = x2 - x1;
    s32 dy = y2 - y1;
    s32 segment_length_sq = dx * dx + dy * dy;

    s32 px = point_x - x1;
    s32 py = point_y - y1;
    s32 t = px * dx + py * dy;

    s32 ap_sq = px * px + py * py;

    if (t <= 0) {
        return ap_sq;  // Closest to (x1, y1)
    } else if (t >= segment_length_sq) {
        s32 dx_p = point_x - x2;
        s32 dy_p = point_y - y2;
        return dx_p * dx_p + dy_p * dy_p;  // Closest to (x2, y2)
    } else {
        // Compute squared distance using algebraic optimization
        s32 numerator = ap_sq * segment_length_sq - t * t;
        return numerator / segment_length_sq;
    }
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
    // Skip if not on horizontal coll
    if (curr_player.horizontal_slope_counter) return 0;
    
    s32 hipo_x1, hipo_y1, hipo_x2, hipo_y2;

    get_hipotenuse(triangle, &hipo_x1, &hipo_y1, &hipo_x2, &hipo_y2);

    // For downwards slopes, ignore the top 2 pixels
    if (slope_horizontal_dir[triangle.type] < 0) {
        if (ABS(circle.down_y - triangle.up_y) < 2) {
            return 0;
        }
    }

    // If spike slope, move outwards horizontally 2 pixels the hitbox
    if (triangle.hurts) {
        s32 going_down = slope_horizontal_dir[triangle.type];

        hipo_x1 -= 2 * going_down;
        hipo_x2 -= 2 * going_down;
    }

    return (u32) find_squared_distance_to_line(circle.cx, circle.cy, hipo_x1, hipo_y1, hipo_x2, hipo_y2) <= circle.radius * circle.radius;
}

s32 check_distance_circle_horizontal_edge(struct circle_t circle, struct triangle_t triangle) {
    s32 step = slope_step[triangle.type];
    s32 direction = (curr_player.player_y_speed > 0 ? 1 : -1);

    // Make player not collide with horizontal edge if vspeed is not going to it
    if (step == direction) return FALSE;

    s32 edge_x1, edge_x2, edge_y;

    get_horizontal_edge(triangle, &edge_x1, &edge_x2, &edge_y);

    // Without this check the down line is infinite in length
    if (circle.cx + (s32) circle.radius <= MIN(edge_x1, edge_x2) ||
        circle.cx - (s32) circle.radius >= MAX(edge_x1, edge_x2)) {
            return FALSE;
    }

    s32 difference = circle.up_y - triangle.down_y;

    // Check if player is on snap y pos
    if (step < 0) {
        if (0 <= difference && difference < 4) {
            return TRUE;
        }
    } else {
        if (0 <= -difference && -difference < 4) {
            return TRUE;
        }
    }
    
    return FALSE;
}

s32 check_distance_circle_vertical_edge(struct circle_t circle, struct triangle_t triangle) {
    s32 edge_x, edge_y1, edge_y2;

    get_vertical_edge(triangle, &edge_x, &edge_y1, &edge_y2);

    return (u32) find_squared_distance_to_line(circle.cx, circle.cy, edge_x, edge_y1, edge_x, edge_y2) <= circle.radius * circle.radius;
}

#define NO_SLOPE_COLL_DETECTED (1 << 31)

#define EJECTION_TYPE_HIPO 1
#define EJECTION_TYPE_HORZ 2
#define EJECTION_TYPE_VERT 3

s32 check_slope_eject_type(struct circle_t circle, struct triangle_t triangle) {
    if (check_distance_circle_horizontal_edge(circle, triangle)) {
        return EJECTION_TYPE_HORZ;
    } else if (check_distance_circle_hipotenuse(circle, triangle)) {
        return EJECTION_TYPE_HIPO;
    } else if (check_distance_circle_vertical_edge(circle, triangle)){
        return EJECTION_TYPE_VERT;
    } else {
        return 0;
    }
}

// Function to check collision between square and triangle
s32 check_slope_collision(struct circle_t circle, struct triangle_t triangle) {
    s32 ejection = 0;

#ifdef DEBUG
        if (hitbox_display && current_step == 0) {
            u32 x = triangle.p1.x - (scroll_x >> SUBPIXEL_BITS);
            u32 y = triangle.p1.y - (scroll_y >> SUBPIXEL_BITS);
            oam_metaspr(x, y, hitboxPoint, 0, 0, 0, -1, 0, 0, FALSE, FALSE);
            
            x = triangle.p2.x - (scroll_x >> SUBPIXEL_BITS);
            y = triangle.p2.y - (scroll_y >> SUBPIXEL_BITS);
            oam_metaspr(x, y, hitboxPoint, 0, 0, 0, -1, 0, 0, FALSE, FALSE);
            
            x = triangle.p3.x - (scroll_x >> SUBPIXEL_BITS);
            y = triangle.p3.y - (scroll_y >> SUBPIXEL_BITS);
            oam_metaspr(x, y, hitboxPoint, 0, 0, 0, -1, 0, 0, FALSE, FALSE);
        }
#endif

    s32 step = slope_step[triangle.type];
    s32 type = check_slope_eject_type(circle, triangle);
    
    if (type == EJECTION_TYPE_HIPO) {
        // Colliding with the hipotenuse
        while (check_distance_circle_hipotenuse(circle, triangle)) {
            circle.cy -= step;
            ejection -= step;
        }

        return ejection;
    } else if (type == EJECTION_TYPE_HORZ) {
        // Calculate displacement
        s32 new_y = triangle.down_y + circle.radius * slope_step[triangle.type];
        s32 difference = new_y - circle.cy;

        circle.cy += difference;
        ejection = difference;

        return ejection;
    } else if (type == EJECTION_TYPE_VERT) {
        return 0;
    }

    return NO_SLOPE_COLL_DETECTED;
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

const s32 slope_step[] = {
    1,  // COL_SLOPE_45_UP
    1,  // COL_SLOPE_45_DOWN
    -1, // COL_SLOPE_45_UP_UD
    -1, // COL_SLOPE_45_DOWN_UD

    1,  // COL_SLOPE_22_UP_1
    1,  // COL_SLOPE_22_UP_2
    1,  // COL_SLOPE_22_DOWN_1
    1,  // COL_SLOPE_22_DOWN_2
    -1, // COL_SLOPE_22_UP_UD_1
    -1, // COL_SLOPE_22_UP_UD_2
    -1, // COL_SLOPE_22_DOWN_UD_1
    -1, // COL_SLOPE_22_DOWN_UD_2

    1,  // COL_SLOPE_66_UP_1
    1,  // COL_SLOPE_66_UP_2
    1,  // COL_SLOPE_66_DOWN_1
    1,  // COL_SLOPE_66_DOWN_2
    -1, // COL_SLOPE_66_UP_UD_1
    -1, // COL_SLOPE_66_UP_UD_2
    -1, // COL_SLOPE_66_DOWN_UD_1
    -1, // COL_SLOPE_66_DOWN_UD_2
};

const s32 slope_horizontal_dir[] = {
    1,  // COL_SLOPE_45_UP
    -1, // COL_SLOPE_45_DOWN
    1,  // COL_SLOPE_45_UP_UD
    -1, // COL_SLOPE_45_DOWN_UD

    1,  // COL_SLOPE_22_UP_1
    1,  // COL_SLOPE_22_UP_2
    -1, // COL_SLOPE_22_DOWN_1
    -1, // COL_SLOPE_22_DOWN_2
    1,  // COL_SLOPE_22_UP_UD_1
    1,  // COL_SLOPE_22_UP_UD_2
    -1, // COL_SLOPE_22_DOWN_UD_1
    -1, // COL_SLOPE_22_DOWN_UD_2

    1,  // COL_SLOPE_66_UP_1
    1,  // COL_SLOPE_66_UP_2
    -1, // COL_SLOPE_66_DOWN_1
    -1, // COL_SLOPE_66_DOWN_2
    1,  // COL_SLOPE_66_UP_UD_1
    1,  // COL_SLOPE_66_UP_UD_2
    -1, // COL_SLOPE_66_DOWN_UD_1
    -1, // COL_SLOPE_66_DOWN_UD_2
};

s32 slope_check(u16 type, u32 col_type, s32 eject, u32 ejection_type, struct circle_t *player, struct triangle_t slope) {
    // Internal collision just for death purposes
    struct circle_t player_internal_hitbox;
    player_internal_hitbox.radius = (curr_player.player_size == SIZE_BIG ? 2 : 1);
    player_internal_hitbox.cx = player->cx;
    player_internal_hitbox.cy = player->cy;
    if (slope_step[slope.type] > 0) {
        player_internal_hitbox.up_y   = player_internal_hitbox.cy - player_internal_hitbox.radius;
        player_internal_hitbox.down_y = player_internal_hitbox.cy + player_internal_hitbox.radius;
    } else {
        player_internal_hitbox.up_y   = player_internal_hitbox.cy + player_internal_hitbox.radius;
        player_internal_hitbox.down_y = player_internal_hitbox.cy - player_internal_hitbox.radius;
    }

    // Die if the internal hitbox collides with the vertical edge
    if (ejection_type == EJECTION_TYPE_VERT) {
        if (check_slope_eject_type(player_internal_hitbox, slope) == EJECTION_TYPE_VERT) {
#ifdef DEBUG
            if (!noclip) player_death = TRUE;
#else
            player_death = TRUE;
#endif
        }
        return FALSE;
    }
    

    s32 step = slope_step[slope.type];

    // If the player is a cube, then ignore ceiling slopes
    if (curr_player.gamemode == GAMEMODE_CUBE && !curr_player.should_check_ceiling) {
        if (curr_player.gravity_dir == GRAVITY_DOWN && step == -1) {
            // Die if the internal hitbox collides with an slope
            if (check_slope_collision(player_internal_hitbox, slope) != NO_SLOPE_COLL_DETECTED) {
                #ifdef DEBUG
                    if (!noclip) player_death = TRUE;
                #else
                    player_death = TRUE;
                #endif
            }
            return TRUE;
        } else if (curr_player.gravity_dir == GRAVITY_UP && step == 1) {
            // Die if the internal hitbox collides with an slope
            if (check_slope_collision(player_internal_hitbox, slope) != NO_SLOPE_COLL_DETECTED) {
                #ifdef DEBUG
                    if (!noclip) player_death = TRUE;
                #else
                    player_death = TRUE;
                #endif
            }
            return TRUE;
        }
    }

    s32 final_speed = 0;

    // If collided with the horizontal edge, skip
    if (ejection_type == EJECTION_TYPE_HIPO) {
        // Die if spike slope
        if (col_type >= COL_SPIKE_SLOPE_START) {
#ifdef DEBUG
            if (!noclip) player_death = TRUE;
            
            // For noclip, the speed must be on bounds
            col_type -= COL_SPIKE_SLOPE_START - COL_SLOPE_START;
#else
            player_death = TRUE;
#endif
            return TRUE;
        }
        // Set the player speed so it goes along the slope
        FIXED_16 speed_multiplier = FIXED_MUL_LONG(curr_player.player_x_speed, curr_player.slope_speed_multiplier);
        // Set to 1.0 if the slope goes down
        if (type >= DEGREES_45_DOWN) speed_multiplier = curr_player.player_x_speed;
        final_speed = FIXED_MUL_LONG(slope_speed_multiplier[col_type - COL_SLOPE_START], speed_multiplier);
    } else {
        curr_player.player_y_speed = 0;
        curr_player.snap_cube_rotation = TRUE;
    }

    // Eject player
    curr_player.player_y += TO_FIXED(eject);
    curr_player.player_y &= ~0xffff;
    curr_player.player_y |= (step == 1) ? 0xffff : 0; // This thing idk why but it doesn't work if not like that :vglue:
    player->cy += eject;

    // If ball and 66.5 degree slope, halve speed
    switch (curr_player.gamemode) {
        case GAMEMODE_BALL:
            if (type == DEGREES_63_5 || type == DEGREES_63_5_UD) {
                final_speed /= 2;
            }
            break;

        case GAMEMODE_WAVE:
            if (!curr_player.d_block_active) {
            // Kill if wave
            #ifdef DEBUG
                if (!noclip) player_death = TRUE;
            #else
                player_death = TRUE;
            #endif
            }
            break;
        case GAMEMODE_UFO:
            if (type == DEGREES_63_5 || type == DEGREES_63_5_UD) {
                // y speed *= 0.75
                final_speed = final_speed / 4 * 3;
            }
            break;
        case GAMEMODE_SHIP:
            // y speed *= 0.875
            final_speed = final_speed / 16 * 14;
            break;
    }
    
    // Sync dual if desynced
    if (player_1.slope_speed_multiplier + 0x4000 == player_2.slope_speed_multiplier) {
        curr_player.slope_speed_multiplier = player_1.slope_speed_multiplier = player_2.slope_speed_multiplier;
    } else if (player_2.slope_speed_multiplier + 0x4000 == player_1.slope_speed_multiplier) {
        curr_player.slope_speed_multiplier = player_2.slope_speed_multiplier = player_1.slope_speed_multiplier;
    }

    // Set slope related variables
    curr_player.on_floor = TRUE;
    curr_player.trail_on = FALSE;
    
    // If collided with the horizontal edge, skip
    if (ejection_type == EJECTION_TYPE_HIPO) {
        curr_player.on_slope = TRUE;
        curr_player.slope_counter = 5;

        // If on 26.5 deg slope and cube, have a lower slope counter
        if (curr_player.gamemode == GAMEMODE_CUBE && (curr_player.slope_type == DEGREES_26_5 || curr_player.slope_type == DEGREES_26_5_UD)) {
            curr_player.slope_counter = 3;
        }

        curr_player.inverse_rotation_flag = TRUE;
        curr_player.slope_type = type;
    } else if (ejection_type == EJECTION_TYPE_HORZ) {
        curr_player.horizontal_slope_counter = 1;
    }

    // Set speed
    if (slope_step[slope.type] < 0) {
        if (curr_player.player_y_speed < final_speed) curr_player.player_y_speed = final_speed;
    } else {
        if (curr_player.player_y_speed > final_speed) curr_player.player_y_speed = final_speed;
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
    player.radius = (height >> 1);
    player.cx = x + (width >> 1);
    player.cy = y + (height >> 1);

    // Make mini wave hitbox 2 pixels bigger
    if (curr_player.player_size == SIZE_MINI && curr_player.gamemode == GAMEMODE_WAVE) player.radius += 2;

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

            if (curr_player.player_y_speed < 0) y_offset = 0x10 - y_offset; 

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
    s32 slope_type = col_type;
    bool hurts = FALSE;

    // If a slope spike variant, behave mostly like a normal slope
    if (slope_type >= COL_SPIKE_SLOPE_START) {
        slope_type -= COL_SPIKE_SLOPE_START - COL_SLOPE_START;
        hurts = TRUE;
    }

    struct triangle_t slope;
    slope.type = slope_type - COL_SLOPE_START;
    slope.hurts = hurts;

    s32 eject;
    switch (slope_type) {

        // 45 DEG

        case COL_SLOPE_45_UP:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x10;

            slope.up_y = slope_y;
            slope.down_y = slope_y + 0x10;

            player->up_y   = player->cy - player->radius;
            player->down_y = player->cy + player->radius;
            
            SLOPE_CHECK(DEGREES_45)
            break;

        case COL_SLOPE_45_DOWN:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x10;

            slope.up_y = slope_y;
            slope.down_y = slope_y + 0x10;

            player->up_y   = player->cy - player->radius;
            player->down_y = player->cy + player->radius;

            SLOPE_CHECK(DEGREES_45_DOWN)
            break;

        case COL_SLOPE_45_UP_UD:
            slope.p1.x = slope_x + 0x10;
            slope.p1.y = slope_y;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y + 0x10;

            slope.p3.x = slope_x;
            slope.p3.y = slope_y;

            slope.up_y = slope_y + 0x10;
            slope.down_y = slope_y;

            player->up_y   = player->cy + player->radius;
            player->down_y = player->cy - player->radius;
            
            SLOPE_CHECK(DEGREES_45_UD)
            break;

        case COL_SLOPE_45_DOWN_UD:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y;

            slope.up_y = slope_y + 0x10;
            slope.down_y = slope_y;

            player->up_y   = player->cy + player->radius;
            player->down_y = player->cy - player->radius;
            
            SLOPE_CHECK(DEGREES_45_UD_DOWN)
            break;

        // 22 deg

        case COL_SLOPE_22_UP_1:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x + 0x20;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x20;
            slope.p3.y = slope_y + 0x10;
            
            slope.up_y = slope_y;
            slope.down_y = slope_y + 0x10;

            player->up_y   = player->cy - player->radius;
            player->down_y = player->cy + player->radius;
            
            SLOPE_CHECK(DEGREES_26_5)
            break;

            
        case COL_SLOPE_22_UP_2:
            slope.p1.x = slope_x - 0x10;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x10;
            
            slope.up_y = slope_y;
            slope.down_y = slope_y + 0x10;

            player->up_y   = player->cy - player->radius;
            player->down_y = player->cy + player->radius;
            
            SLOPE_CHECK(DEGREES_26_5)
            break;

        case COL_SLOPE_22_DOWN_1:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x20;
            slope.p3.y = slope_y + 0x10;

            slope.up_y = slope_y;
            slope.down_y = slope_y + 0x10;

            player->up_y   = player->cy - player->radius;
            player->down_y = player->cy + player->radius;
            
            SLOPE_CHECK(DEGREES_26_5_DOWN)
            break;

            
        case COL_SLOPE_22_DOWN_2:
            slope.p1.x = slope_x - 0x10;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x - 0x10;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x10;
            
            slope.up_y = slope_y;
            slope.down_y = slope_y + 0x10;

            player->up_y   = player->cy - player->radius;
            player->down_y = player->cy + player->radius;
            
            SLOPE_CHECK(DEGREES_26_5_DOWN)
            break;

        case COL_SLOPE_22_UP_UD_1:
            slope.p1.x = slope_x + 0x20;
            slope.p1.y = slope_y;

            slope.p2.x = slope_x + 0x20;
            slope.p2.y = slope_y + 0x10;

            slope.p3.x = slope_x;
            slope.p3.y = slope_y;
            
            slope.up_y = slope_y + 0x10;
            slope.down_y = slope_y;

            player->up_y   = player->cy + player->radius;
            player->down_y = player->cy - player->radius;
            
            SLOPE_CHECK(DEGREES_26_5_UD)
            break;

        case COL_SLOPE_22_UP_UD_2:
            slope.p1.x = slope_x + 0x10;
            slope.p1.y = slope_y;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y + 0x10;

            slope.p3.x = slope_x - 0x10;
            slope.p3.y = slope_y;
            
            slope.up_y = slope_y + 0x10;
            slope.down_y = slope_y;

            player->up_y   = player->cy + player->radius;
            player->down_y = player->cy - player->radius;
            
            SLOPE_CHECK(DEGREES_26_5_UD)
            break;

        case COL_SLOPE_22_DOWN_UD_1:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x20;
            slope.p3.y = slope_y;
            
            slope.up_y = slope_y + 0x10;
            slope.down_y = slope_y;

            player->up_y   = player->cy + player->radius;
            player->down_y = player->cy - player->radius;
            
            SLOPE_CHECK(DEGREES_26_5_UD_DOWN)
            break;

        
        case COL_SLOPE_22_DOWN_UD_2:
            slope.p1.x = slope_x - 0x10;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x - 0x10;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y;
            
            slope.up_y = slope_y + 0x10;
            slope.down_y = slope_y;

            player->up_y   = player->cy + player->radius;
            player->down_y = player->cy - player->radius;
            
            SLOPE_CHECK(DEGREES_26_5_UD_DOWN)
            break;

        // 66 DEG

        case COL_SLOPE_66_UP_1:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x20;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x20;
            
            slope.up_y = slope_y;
            slope.down_y = slope_y + 0x20;

            player->up_y   = player->cy - player->radius;
            player->down_y = player->cy + player->radius;
            
            SLOPE_CHECK(DEGREES_63_5)
            break;

            
        case COL_SLOPE_66_UP_2:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y - 0x10;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x10;
            
            slope.up_y = slope_y - 0x10;
            slope.down_y = slope_y + 0x10;

            player->up_y   = player->cy - player->radius;
            player->down_y = player->cy + player->radius;
            
            SLOPE_CHECK(DEGREES_63_5)
            break;

        case COL_SLOPE_66_DOWN_1:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y - 0x10;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x10;
            
            slope.up_y = slope_y - 0x10;
            slope.down_y = slope_y + 0x10;

            player->up_y   = player->cy - player->radius;
            player->down_y = player->cy + player->radius;
            
            SLOPE_CHECK(DEGREES_63_5_DOWN)
            break;

        case COL_SLOPE_66_DOWN_2:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x20;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y + 0x20;

            slope.up_y = slope_y;
            slope.down_y = slope_y + 0x20;

            player->up_y   = player->cy - player->radius;
            player->down_y = player->cy + player->radius;
            
            SLOPE_CHECK(DEGREES_63_5_DOWN)
            break;

        case COL_SLOPE_66_UP_UD_1:
            slope.p1.x = slope_x + 0x10;
            slope.p1.y = slope_y - 0x10;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y + 0x10;

            slope.p3.x = slope_x;
            slope.p3.y = slope_y - 0x10;
            
            slope.up_y = slope_y + 0x10;
            slope.down_y = slope_y - 0x10;

            player->up_y   = player->cy + player->radius;
            player->down_y = player->cy - player->radius;
            
            SLOPE_CHECK(DEGREES_63_5_UD)
            break;

        case COL_SLOPE_66_UP_UD_2:
            slope.p1.x = slope_x + 0x10;
            slope.p1.y = slope_y;

            slope.p2.x = slope_x + 0x10;
            slope.p2.y = slope_y + 0x20;

            slope.p3.x = slope_x;
            slope.p3.y = slope_y;
            
            slope.up_y = slope_y + 0x20;
            slope.down_y = slope_y;

            player->up_y   = player->cy + player->radius;
            player->down_y = player->cy - player->radius;
            
            SLOPE_CHECK(DEGREES_63_5_UD)
            break;

        case COL_SLOPE_66_DOWN_UD_1:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x20;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y;
            
            slope.up_y = slope_y + 0x20;
            slope.down_y = slope_y;

            player->up_y   = player->cy + player->radius;
            player->down_y = player->cy - player->radius;
            
            SLOPE_CHECK(DEGREES_63_5_UD_DOWN)
            break;

        case COL_SLOPE_66_DOWN_UD_2:
            slope.p1.x = slope_x;
            slope.p1.y = slope_y + 0x10;

            slope.p2.x = slope_x;
            slope.p2.y = slope_y - 0x10;

            slope.p3.x = slope_x + 0x10;
            slope.p3.y = slope_y - 0x10;
            
            slope.up_y = slope_y + 0x10;
            slope.down_y = slope_y - 0x10;

            player->up_y   = player->cy + player->radius;
            player->down_y = player->cy - player->radius;
            
            SLOPE_CHECK(DEGREES_63_5_UD_DOWN)   
            break;

    }
    return FALSE;
}

ARM_CODE void collide_with_obj_spikes(u32 x, u32 y, u32 width, u32 height) {
    for (s32 i = block_object_buffer_offset; i > 0; i--) {
        struct ObjectSlot slot = *((struct ObjectSlot *) block_object_buffer[i - 1]);
        
        u32 obj_x = slot.object.x;
        u32 obj_y = slot.object.y;

        // Check if this pixel is inside the object hitbox
        u16 col_type = block_object_buffer_flags[i - 1];
        if (col_type < COL_TYPES_COUNT) {
            spike_coll_jump_table[col_type](x, y, width, height, obj_x, obj_y);
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

s32 collision_in_x(s32 x1, s32 w1, s32 x2, s32 w2) {
    if (x1 + w1 < x2) {
        return FALSE;
    }
    if (x1 >= x2 + w2) {
        return FALSE;
    }
    return TRUE;
}

s32 spider_collision_object(u32 index) {
    struct Object curr_object = object_buffer[index].object;

    s32 obj_width = obj_hitbox[curr_object.type][0];
    s32 offset_x = obj_hitbox[curr_object.type][2];
    s32 center_x = obj_hitbox[curr_object.type][4];

    if (!(curr_object.attrib1 & ENABLE_ROTATION_FLAG)) {
        if (curr_object.attrib1 & H_FLIP_FLAG) {
            offset_x = center_x - (offset_x - center_x + obj_width); 
        }
    }

    u32 obj_x = curr_object.x + offset_x;

    u32 ply_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
    
    if (curr_object.attrib2 & CIRCLE_HITBOX_FLAG) {
        // Obj height contains the hitbox radius
        s32 obj_height = obj_hitbox[curr_object.type][1];

        u32 obj_radius = obj_height;

        if (collision_in_x(
            ply_x, curr_player.player_width,  
            obj_x, obj_radius
        )) {
            if (routines_jump_table[curr_object.type] == kill_player) return TRUE;
            return FALSE;
        } 
    } else {
        // Check if a collision has happened
        if (collision_in_x(
            ply_x, curr_player.player_width,  
            obj_x, obj_width
        )) {
            if (routines_jump_table[curr_object.type] == kill_player) return TRUE;
            return FALSE;
        } 
    }  
    return FALSE;
}

#define CLOSEST_TYPE_SPIKE 0
#define CLOSEST_TYPE_BLOCK 1
#define CLOSEST_TYPE_METATILE 2

void teleport_up_spider() {
    s32 player_x_pixels = curr_player.player_x >> SUBPIXEL_BITS;
    s32 player_y_pixels = curr_player.player_y >> SUBPIXEL_BITS;

    s32 closest_slot = -1;
    s32 player_distance = curr_player.player_width;
    s32 closest_slot_type = -1;
    s32 closest_slot_mt_y = -1;
    s32 closest_slot_mod_y = -1;

    for (s32 slot = 0; slot < MAX_OBJECTS; slot++) {
        // Check collision only if the slot is occupied
        struct ObjectSlot curr_object = object_buffer[slot];
        struct Object object = curr_object.object;
        // If its not occupied and it is not close horizontally to the player or below the player, skip
        if (curr_object.occupied 
            && (s32) object.x > player_x_pixels - player_distance 
            && (s32) object.x < player_x_pixels + player_distance
            && object.y       < player_y_pixels) {
            // If it has collision, continue
            if (curr_object.has_collision) {   
                // Metatile sprite
                if (object.type == BASIC_BLOCK_OBJ || object.type == BASIC_SLAB_OBJ) {
                    u16 metatile_ID = object.attrib3;

                    u16 collision = metatiles[metatile_ID][4];

                    // Next slot if no coll
                    if (collision == COL_NONE) continue;
                    if (collision >= COL_SLOPE_START && collision <= COL_SLOPE_END) {
                        collision = COL_FULL; // Works like full because i said so
                    }
                    
                    u32 obj_width = obj_hitbox[object.type][0];

                    // Check if it would collide horizontally
                    if (collision_in_x(player_x_pixels, curr_player.player_width, object.x, obj_width)) {
                        if (collision < COL_TYPES_COUNT) {
                            // Now check for spikes
                            spike_coll_jump_table[collision](player_x_pixels, object.y, curr_player.player_width, curr_player.player_height, object.x, object.y);

                            // Collided with an spike/saw if player died, remove death and add
                            if (player_death) {
                                player_death = FALSE;

                                if (closest_slot < 0) {
                                    closest_slot = slot;
                                    closest_slot_type = CLOSEST_TYPE_SPIKE;
                                } else if (object_buffer[closest_slot].object.y < object.y) {
                                    // Object is closer to player
                                    closest_slot = slot;
                                    closest_slot_type = CLOSEST_TYPE_SPIKE;
                                }

                                // Check next slot
                                continue;
                            }

                            // Either didn't collide with the spike or simply not an spike, now check blocks
                            u32 mod_x = curr_player.player_x - object.x;
                            for (s32 mod_y = 15; mod_y >= 0; mod_y--) {
                                u32 returned = col_type_lookup(collision, mod_x, mod_y, TOP, 3);
                                
                                // Continue if no collision
                                if (!returned) continue;

                                // Has collided
                                if (closest_slot < 0) {
                                    closest_slot = slot;
                                    closest_slot_type = CLOSEST_TYPE_BLOCK;
                                    closest_slot_mod_y = mod_y;
                                    break;
                                } else if (object_buffer[closest_slot].object.y < object.y) {
                                    // Object is closer to player
                                    closest_slot = slot;
                                    closest_slot_type = CLOSEST_TYPE_BLOCK;
                                    closest_slot_mod_y = mod_y;
                                    break;
                                }
                            }
                            
                            // Check next slot
                            continue;
                        }
                    }
                } else {
                    if (spider_collision_object(slot)) {
                        if (closest_slot < 0) {
                            closest_slot = slot;
                            closest_slot_type = CLOSEST_TYPE_SPIKE;
                        } else if (object_buffer[closest_slot].object.y < object.y) {
                            // Object is closer to player
                            closest_slot = slot;
                            closest_slot_type = CLOSEST_TYPE_SPIKE;
                        }

                        // Check next slot
                        continue;
                    }
                }
            }
        }
    }

    // We have checked all sprites now, now lets check for metatiles
    coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
    coll_y = ((curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1)) & 0xFFFFFFF0; // Remove pixels

    curr_player.changed_size_frames = TRUE; // Set this so max eject is ignored
    s32 block_y = coll_y;
    while (block_y > 0) {
        block_y -= 0x10;
        
        for (s32 x = 0; x < 2; x++) {
            for (s32 layer = 0; layer < LEVEL_LAYERS; layer++) {
                s32 block_x = coll_x + (curr_player.player_width * x);
                u32 mod_x = block_x & 0xF;
                    
                u16 collision = obtain_collision_type(block_x, block_y, layer);
                if (collision >= COL_SLOPE_START && collision <= COL_SLOPE_END) {
                    collision = COL_FULL; // Works like full because i said so
                }
                
                if (collision != COL_NONE) {
                    for (s32 mod_y = 15; mod_y >= 0; mod_y--) {
                        u32 returned = col_type_lookup(collision, mod_x, mod_y, TOP, layer);
                        
                        // Continue if no collision
                        if (!returned) continue;

                        // Has collided
                        if (closest_slot < 0 && closest_slot_mt_y < 0) {
                            closest_slot_mt_y = block_y;
                            closest_slot_type = CLOSEST_TYPE_METATILE;
                            closest_slot_mod_y = mod_y;
                            goto exit;
                        } else if (closest_slot_type != CLOSEST_TYPE_METATILE) {
                            if (object_buffer[closest_slot].object.y < block_y) {
                                // Metatile is closer than object to player
                                closest_slot_mt_y = block_y;
                                closest_slot_type = CLOSEST_TYPE_METATILE;
                                closest_slot_mod_y = mod_y;
                                goto exit;
                            }
                        } else if (closest_slot_mt_y < block_y) {
                            // Metatile is closer than metatile to player
                            closest_slot_mt_y = block_y;
                            closest_slot_mod_y = mod_y;
                            goto exit;
                        } 
                        
                        // Its not needed to check anymore
                        goto exit;
                    }
                }
            }
        }
    }
    
    // Outside level
    curr_player.player_y = -0x200000;
    player_death = TRUE;
    return;
    exit:

    if (closest_slot_mt_y > 0 && closest_slot_type == CLOSEST_TYPE_METATILE) {
        curr_player.player_y = closest_slot_mt_y << SUBPIXEL_BITS;
        do_ejection(closest_slot_mod_y + eject_top, TOP);
        return;
    }

    if (closest_slot < 0) return;

    struct ObjectSlot closest_object = object_buffer[closest_slot];
    struct Object object = closest_object.object;

    if (closest_slot_type == CLOSEST_TYPE_SPIKE) {
        curr_player.player_y = object.y << SUBPIXEL_BITS;
        player_death = TRUE;
    } else if (closest_slot_type == CLOSEST_TYPE_BLOCK) {
        curr_player.player_y = object.y << SUBPIXEL_BITS;
        do_ejection(closest_slot_mod_y + eject_top, TOP);
    } 
}

void teleport_down_spider() {
    s32 player_x_pixels = curr_player.player_x >> SUBPIXEL_BITS;
    s32 player_y_pixels = curr_player.player_y >> SUBPIXEL_BITS;

    s32 closest_slot = -1;
    s32 player_distance = curr_player.player_width;
    s32 closest_slot_type = -1;
    s32 closest_slot_mt_y = -1;
    s32 closest_slot_mod_y = -1;

    // First we check objects
    for (s32 slot = 0; slot < MAX_OBJECTS; slot++) {
        struct ObjectSlot curr_object = object_buffer[slot];
        struct Object object = curr_object.object;

        if (curr_object.occupied 
            && (s32) object.x > player_x_pixels - player_distance 
            && (s32) object.x < player_x_pixels + player_distance
            && object.y       > player_y_pixels) {
            // If it has collision, continue
            if (curr_object.has_collision) {   
                // Metatile sprite
                if (object.type == BASIC_BLOCK_OBJ || object.type == BASIC_SLAB_OBJ) {
                    u16 metatile_ID = object.attrib3;

                    u16 collision = metatiles[metatile_ID][4];

                    // Next slot if no coll
                    if (collision == COL_NONE) continue;
                    if (collision >= COL_SLOPE_START && collision <= COL_SLOPE_END) {
                        collision = COL_FULL; // Works like full because i said so
                    }
                    
                    u32 obj_width = obj_hitbox[object.type][0];

                    // Check if it would collide horizontally
                    if (collision_in_x(player_x_pixels, curr_player.player_width, object.x, obj_width)) {
                        if (collision < COL_TYPES_COUNT) {
                            // Now check for spikes
                            spike_coll_jump_table[collision](player_x_pixels, object.y, curr_player.player_width, curr_player.player_height, object.x, object.y);

                            // Collided with an spike/saw if player died, remove death and add
                            if (player_death) {
                                player_death = FALSE;

                                if (closest_slot < 0) {
                                    closest_slot = slot;
                                    closest_slot_type = CLOSEST_TYPE_SPIKE;
                                } else if (object_buffer[closest_slot].object.y > object.y) {
                                    // Object is closer to player
                                    closest_slot = slot;
                                    closest_slot_type = CLOSEST_TYPE_SPIKE;
                                }

                                // Check next slot
                                continue;
                            }

                            // Either didn't collide with the spike or simply not an spike, now check blocks
                            u32 mod_x = curr_player.player_x - object.x;
                            
                            for (s32 mod_y = 0; mod_y < 16; mod_y++) {
                                u32 returned = col_type_lookup(collision, mod_x, mod_y, BOTTOM, 3);
                                
                                // Continue if no collision
                                if (!returned) continue;

                                // Has collided
                                if (closest_slot < 0) {
                                    closest_slot = slot;
                                    closest_slot_type = CLOSEST_TYPE_BLOCK;
                                    closest_slot_mod_y = mod_y;
                                    break;
                                } else if (object_buffer[closest_slot].object.y > object.y) {
                                    // Object is closer to player
                                    closest_slot = slot;
                                    closest_slot_type = CLOSEST_TYPE_BLOCK;
                                    closest_slot_mod_y = mod_y;
                                    break;
                                }
                            }
                            
                            // Check next slot
                            continue;
                        }
                    }
                } else {
                    if (spider_collision_object(slot)) {
                        if (closest_slot < 0) {
                            closest_slot = slot;
                            closest_slot_type = CLOSEST_TYPE_SPIKE;
                        } else if (object_buffer[closest_slot].object.y > object.y) {
                            // Object is closer to player
                            closest_slot = slot;
                            closest_slot_type = CLOSEST_TYPE_SPIKE;
                        }

                        // Check next slot
                        continue;
                    }
                }
            }
        }
    }

    // We have checked all sprites now, now lets check for metatiles
    coll_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
    coll_y = ((curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1)) & 0xFFFFFFF0; // Remove pixels

    curr_player.changed_size_frames = TRUE; // Set this so max eject is ignored
    
    s32 block_y = coll_y;
    s32 max = MAX_LEVEL_HEIGHT << 4;
    while (block_y < max) {
        block_y += 0x10;
        
        for (s32 x = 0; x < 2; x++) {
            for (s32 layer = 0; layer < LEVEL_LAYERS; layer++) {
                s32 block_x = coll_x + (curr_player.player_width * x);
                u32 mod_x = block_x & 0xF;
                    
                u16 collision = obtain_collision_type(block_x, block_y, layer);
                if (collision >= COL_SLOPE_START && collision <= COL_SLOPE_END) {
                    collision = COL_FULL; // Works like full because i said so
                }
                
                if (collision != COL_NONE) {
                    for (s32 mod_y = 0; mod_y < 16; mod_y++) {
                        u32 returned = col_type_lookup(collision, mod_x, mod_y, BOTTOM, layer);
                        
                        // Continue if no collision
                        if (!returned) continue;

                        // Has collided
                        if (closest_slot < 0 && closest_slot_mt_y < 0) {
                            closest_slot_mt_y = block_y;
                            closest_slot_type = CLOSEST_TYPE_METATILE;
                            closest_slot_mod_y = mod_y;
                            goto exit;
                        } else if (closest_slot_type != CLOSEST_TYPE_METATILE) {
                            if (object_buffer[closest_slot].object.y > block_y) {
                                // Metatile is closer than object to player
                                closest_slot_mt_y = block_y;
                                closest_slot_type = CLOSEST_TYPE_METATILE;
                                closest_slot_mod_y = mod_y;
                            goto exit;
                            }
                        } else if (closest_slot_mt_y > block_y) {
                            // Metatile is closer than metatile to player
                            closest_slot_mt_y = block_y;
                            closest_slot_mod_y = mod_y;
                            goto exit;
                        } 

                        // Its not needed to check anymore
                        goto exit;
                    }
                }
            }
        }
    }
    exit:

    if (closest_slot_mt_y > 0 && closest_slot_type == CLOSEST_TYPE_METATILE) {
        curr_player.player_y = closest_slot_mt_y << SUBPIXEL_BITS;
        do_ejection((curr_player.player_height - closest_slot_mod_y) + eject_bottom, BOTTOM);
        return;
    }

    if (closest_slot < 0) return;

    struct ObjectSlot closest_object = object_buffer[closest_slot];
    struct Object object = closest_object.object;

    if (closest_slot_type == CLOSEST_TYPE_SPIKE) {
        curr_player.player_y = object.y << SUBPIXEL_BITS;
        player_death = TRUE;
    } else if (closest_slot_type == CLOSEST_TYPE_BLOCK) {
        curr_player.player_y = object.y << SUBPIXEL_BITS;
        do_ejection((curr_player.player_height - closest_slot_mod_y) + eject_bottom, BOTTOM);
    } 
}