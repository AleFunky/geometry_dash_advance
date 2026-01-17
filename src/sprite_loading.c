#include "sprite_loading.h"
#include "memory.h"
#include "metaspr.h"
#include "player.h"
#include "sprite_routines.h"
#include "physics_defines.h"
#include "collision.h"
#include "metatiles.h"
#include "color.h"
#include "../graphics/includes.h"
#include "level_routines.h"


u16 *sprite_pointer;
u64 last_sprite_x;

// Rotation values for each saw
u16 saw_rotation[4];

struct ObjectSlot object_buffer[MAX_OBJECTS];

FIXED pulsing_value;
FIXED pulsing_orb_value;


ARM_CODE s32 get_tile_id(u32 chr_offset) {
    s32 i;
    for (i = 0; i < MAX_CHR_SLOTS; i++) {
        struct ObjectCHRSlot curr_slot = chr_slots[i];

        if (curr_slot.rom_offset == chr_offset) {
            return curr_slot.vram_offset;
        }
    }
    return -1;
}

ARM_CODE s32 get_chr_slot_id(u32 rom_offset) {
    s32 id;
    for (id = 0; id < MAX_CHR_SLOTS; id++) {
        struct ObjectCHRSlot curr_slot = chr_slots[id];
        
        if (curr_slot.rom_offset == rom_offset) {
            // This object is already loaded, exit
            return id;
        }
    }

    return -1;
}

ARM_CODE s32 get_free_chr_slot_id(u32 rom_offset) {
    s32 id;
    s32 available = -1;
    // Check for already existant slots
    for (id = 0; id < MAX_CHR_SLOTS; id++) {
        struct ObjectCHRSlot curr_slot = chr_slots[id];
        if (available < 0 && !curr_slot.occupied) {
            available = id;
        }

        if (curr_slot.occupied == TRUE && curr_slot.rom_offset == rom_offset) {
            // This object is already loaded, exit
            return id;
        }
    }
    
    return available;
}

void load_objects(u32 load_chr, u32 loading_level) {
    // Save there
    if (load_chr) old_next_free_tile_id = next_free_tile_id;
    for (s32 index = 0; index < MAX_OBJECTS; index++) {
        if (object_buffer[index].occupied == FALSE) {
            if ((*sprite_pointer & 0xff000000) != 0xff000000) {
                struct Object new_object = { 0 };

                // Get x position
                u16 delta_x = *sprite_pointer;

                u32 absolute_x = last_sprite_x + delta_x;
                s64 relative_x = absolute_x - (scroll_x >> SUBPIXEL_BITS);
                
                // Don't load if offscreen
                if (load_chr && relative_x > 280) break;

                new_object.x = absolute_x;
                last_sprite_x += delta_x;
                sprite_pointer++;

                // The next word has both the Y position and type, first 16 bits is type and last 16 bits is Y
                // Y position is relative to the level height, so calculate the position from the top left of the entire level buffer,
                // that is, adding ground height minus level height (that calculates the empty space above the level) minus 1. That is in blocks
                // so multiply it by 16 to get a block-pixel value
                new_object.y = *sprite_pointer + ((GROUND_HEIGHT - curr_level_height - 1) << 4);
                sprite_pointer++;
                new_object.type = *sprite_pointer;
                sprite_pointer++;

                // If the object is a color trigger, then get more attributes (attrib3 is set on activation)
                switch (new_object.type) {
                    case COL_TRIGGER:
                        new_object.attrib1 = *sprite_pointer;  // Frames and channel
                        sprite_pointer++;
                        new_object.attrib2 = *sprite_pointer;  // Color
                        sprite_pointer++;
                        new_object.attrib3 = *sprite_pointer;  // Copy channel
                        sprite_pointer++;
                        new_object.is_touch_trigger = (new_object.attrib3 & COL_TRIGGER_ATTRIB3_TOUCH_MASK) != 0;
                        new_object.is_trigger = TRUE;
                        break;
                    case GRAVITY_TRIGGER:
                        new_object.attrib1 = *sprite_pointer; // Gravity mult
                        sprite_pointer++;
                        new_object.attrib2 = *sprite_pointer; // Flags
                        sprite_pointer++;
                        new_object.is_trigger = TRUE;
                        new_object.is_touch_trigger = (new_object.attrib2 & 1) != 0;
                        break;
                    case FREE_CAMERA_TRIGGER:
                    case LOCKED_CAMERA_TRIGGER:
                        new_object.attrib1 = *sprite_pointer; // Flags
                        sprite_pointer++;
                        new_object.is_trigger = TRUE;
                        new_object.is_touch_trigger = (new_object.attrib1 & 1) != 0;
                        break;
                    case BASIC_BLOCK_OBJ:
                    case BASIC_SLAB_OBJ:
                        new_object.attrib1 = *sprite_pointer; // Flags
                        new_object.z_index = new_object.attrib1 >> BASIC_BLOCK_ZINDEX_SHIFT;
                        new_object.attrib2 = 0;
                        sprite_pointer++;
                        new_object.attrib3 = *sprite_pointer; // Metatile ID graphics
                        sprite_pointer++;
                        
                        s32 enable_rotation = new_object.attrib1 & ENABLE_ROTATION_FLAG;
                        if (enable_rotation) {
                            new_object.rotation = *sprite_pointer;  
                            sprite_pointer++;
                        } else {
                            new_object.rotation = 0;
                        }

                        // Upload chr if needed
                        if (load_chr) setup_graphics_upload(new_object.type, index, new_object.attrib3);
                        break;
                    case BLUE_TP_ORB:
                        new_object.attrib1 = *sprite_pointer;
                        new_object.attrib2 = 0;
                        sprite_pointer++;
                        new_object.z_index = *sprite_pointer;
                        sprite_pointer++;
                        new_object.attrib3 = *sprite_pointer;
                        sprite_pointer++;
                        new_object.rotation = 0;
                        
                        // Upload chr if needed
                        if (load_chr) setup_graphics_upload(new_object.type, index, 0);
                        break;
                    default:
                        // Load flip values
                        new_object.attrib1 = *sprite_pointer;
                        new_object.attrib2 = 0;
                        new_object.attrib3 = 0;
                        sprite_pointer++;
                        new_object.z_index = *sprite_pointer;
                        sprite_pointer++;

                        enable_rotation = new_object.attrib1 & ENABLE_ROTATION_FLAG;
                        if (enable_rotation) {
                            new_object.rotation = *sprite_pointer;  
                            sprite_pointer++;
                        } else {
                            new_object.rotation = 0;
                        }
                        
                        // If an invalid object was found, skip it
                        if (new_object.type >= OBJ_COUNT) {
                            continue;
                        }
                        
                        // Upload chr if needed
                        if (load_chr) setup_graphics_upload(new_object.type, index, 0);
                }
                

                s16 obj_width = obj_hitbox[new_object.type][0];
                u16 obj_height = obj_hitbox[new_object.type][1];

                // Circular hitboxes are flagged with a negative width
                if (obj_width < 0) {
                    new_object.attrib2 |= CIRCLE_HITBOX_FLAG;

                    // Rotate flag is LSB of obj_width
                    if (obj_width & 1) {
                        // Get random bit for rotate direction
                        u32 rot_id = ((qran() & 1) ? ROTATING_CLOCKWISE : ROTATING_COUNTERCLOCKWISE);
                        new_object.attrib2 |= IS_ROTATING_FLAG;
                        new_object.attrib2 |= rot_id;
                    }
                    object_buffer[index].has_collision = obj_height;
                } else {  
                    object_buffer[index].has_collision = obj_width | obj_height;
                }
                

                // Occupy object slot and init some variables
                object_buffer[index].occupied = TRUE;
                object_buffer[index].activated[ID_PLAYER_1] = FALSE;
                object_buffer[index].activated[ID_PLAYER_2] = FALSE;
                object_buffer[index].object = new_object;

                if (!loading_level && new_object.type != COL_TRIGGER) return;
            }
        }
    }
}

void do_collision(struct ObjectSlot *objectSlot);

ARM_CODE s32 find_affine_slot(u16 rotation, u16 pulses) {
    // Search for already existing values
    for (s32 slot = 0; slot < NUM_ROT_SLOTS; slot++) {
        u16 curr_rot = rotation_buffer[slot];
        u16 curr_pulses = rotation_flags_buffer[slot];

        if (rotation == curr_rot && pulses == curr_pulses) return slot;
        // If curr_rot is 0, then we are on empty slots
        if (!curr_rot && !curr_pulses) {
            // Set here rotation
            rotation_buffer[slot] = rotation;
            rotation_flags_buffer[slot] = pulses;

            return slot;
        }
    }

    // Slots are full
    return -1;
}

ARM_CODE void do_display(struct Object curr_object, s32 relative_x, s32 relative_y, u8 hflip, u8 vflip, u8 priority, s32 index) {
    // Get VRAM tile ID
    u32 chr_rom_offset = obj_chr_offset[curr_object.type][0];
    s32 palette = -1;
    
    if (chr_rom_offset == SPRITE_CHR_COPY_FROM_METATILE) {
        chr_rom_offset = 0x80000000 | curr_object.attrib3;

        u16 metatile_palette = (metatiles[curr_object.attrib3][0] & SE_PALBANK_MASK) >> SE_PALBANK_SHIFT;
        palette = pal_bg_to_spr_index[metatile_palette];
    }

    // Check if palette needs to be set
    u32 obj_palette = (curr_object.z_index & PAL_MASK) >> PAL_SHIFT;
    if (obj_palette) {
        palette = 15 - (obj_palette - 1);
    }

    u32 disable_blending = FALSE;
    if (obj_palette && palette != 8 && palette != 9) {
        disable_blending = TRUE;
    }
    
    u32 chr_rom_tile_num = obj_chr_offset[curr_object.type][1];
    s32 tile_id = get_tile_id(chr_rom_offset);

    // Check for fade
    if (chr_rom_tile_num & 0x80000000) {
        u32 fade = get_sprite_fade_index(curr_object);

        tile_id += fade * (chr_rom_tile_num / 4);
    }

    s32 has_dbl = (chr_rom_tile_num & 0x40000000) ? FALSE : TRUE;

    // Handle continuous rotating objects separately
    if (curr_object.attrib2 & IS_ROTATING_FLAG) {
        u32 saw_rot_id = (curr_object.attrib2 & ROTATING_DIRECTION_BIT) ? AFF_SLOT_CLOCKWISE : AFF_SLOT_COUNTERCLOCKWISE;
        
        if (!object_buffer[index].has_collision) {
            saw_rot_id += AFF_SLOT_CLOCKWISE_SLOW - AFF_SLOT_CLOCKWISE;
        }
        
        oam_affine_metaspr(relative_x, relative_y, obj_sprites[curr_object.type], saw_rotation[saw_rot_id - AFF_SLOT_CLOCKWISE], saw_rot_id, 0, tile_id, palette, priority, curr_object.z_index, FALSE, disable_blending);
        obj_aff_identity(&obj_aff_buffer[saw_rot_id]);
        obj_aff_rotscale(&obj_aff_buffer[saw_rot_id], mirror_scaling, float2fx(1.0), saw_rotation[saw_rot_id - AFF_SLOT_CLOCKWISE]);
    } else if (curr_object.attrib1 & ENABLE_ROTATION_FLAG) {
        u16 rotation = curr_object.rotation;
        
        // Flip rotation if screen is mirrored
        if (screen_mirrored) {
            rotation = -rotation;
        }

        u16 attr1 = obj_sprites[curr_object.type][1];
        u16 pulses = BFN_GET(attr1, ATTR1_AFF_ID);
        s32 pulse_type = NO_PULSE;
        if (pulses == AFF_SLOT_PULSING) pulse_type = PULSE_NORMAL;
        else if (pulses == AFF_SLOT_PULSING_ORB) pulse_type = PULSE_ORB;

        s32 slot = find_affine_slot(rotation, pulse_type);

        if (slot >= 0) {
            // Draw affine sprite
            oam_affine_metaspr(relative_x, relative_y, obj_sprites[curr_object.type], curr_object.rotation, slot + NUM_RESERVED_ROT_SLOTS, has_dbl, tile_id, palette, priority, curr_object.z_index, FALSE, disable_blending);
            if (pulse_type == NO_PULSE) {
                obj_aff_identity(&obj_aff_buffer[slot + NUM_RESERVED_ROT_SLOTS]);
                obj_aff_rotscale(&obj_aff_buffer[slot + NUM_RESERVED_ROT_SLOTS], mirror_scaling, float2fx(1.0), -rotation);
            } else if (pulse_type == PULSE_NORMAL) {
                obj_aff_identity(&obj_aff_buffer[slot + NUM_RESERVED_ROT_SLOTS]);
                obj_aff_rotscale(&obj_aff_buffer[slot + NUM_RESERVED_ROT_SLOTS], 
                    (screen_mirrored ? -scale_inv(pulsing_value)  : scale_inv(pulsing_value) ), 
                    scale_inv(pulsing_value), 
                    -rotation);
            } else if (pulse_type == PULSE_ORB) {
                obj_aff_identity(&obj_aff_buffer[slot + NUM_RESERVED_ROT_SLOTS]);
                obj_aff_rotscale(&obj_aff_buffer[slot + NUM_RESERVED_ROT_SLOTS], 
                    (screen_mirrored ? -scale_inv(pulsing_orb_value)  : scale_inv(pulsing_orb_value) ), 
                    scale_inv(pulsing_orb_value), 
                    -rotation);
            }
        } else {
            // Slots are full, so display a normal sprite
            oam_metaspr(relative_x, relative_y, obj_sprites[curr_object.type], hflip, vflip, tile_id, palette, priority, curr_object.z_index, FALSE, disable_blending);
        }
    } else {    
        oam_metaspr(relative_x, relative_y, obj_sprites[curr_object.type], hflip, vflip, tile_id, palette, priority, curr_object.z_index, FALSE, disable_blending);
    }
}

void setup_graphics_upload(u16 type, u8 object_slot, u16 attrib3) {
    u32 rom_offset = obj_chr_offset[type][0];
    if (rom_offset == SPRITE_CHR_COPY_FROM_METATILE) {
        rom_offset = 0x80000000 | attrib3;
    }
    u32 tile_num = obj_chr_offset[type][1];
    
    // Get next free slot ID, or in case there is already an slot with the same data, use it
    s32 id = get_free_chr_slot_id(rom_offset);

    // If we got a new slot, then setup and upload it into the buffer, so the chr data can be copied to VRAM in the next frame
    if (id >= 0 && !chr_slots[id].occupied) {
        u16 vram_offset = next_free_tile_id;
        chr_slots[id].occupied = TRUE;
        chr_slots[id].object_slot = object_slot;
        chr_slots[id].rom_offset = rom_offset;
        chr_slots[id].vram_offset = vram_offset;
        chr_slots[id].tile_num = tile_num;
        next_free_tile_id += tile_num;
        
        loaded_object_buffer[loaded_object_buffer_offset] = id;
        loaded_object_buffer_offset += 1;
    }
}

#define MIXING_BUFFER_SHORT_SIZE (s32)(sizeof(mixing_buffer) / 2)

#define AMP_DECAY float2fx(0.05f)
#define AMP_I_DECAY (float2fx(1.f) - AMP_DECAY)

#define RMS_THRESH_MULTIPLIER float2fx(1.5f)

ARM_CODE s32 calculate_amplitude(FIXED rms) {
    static FIXED prev = 0;
    static FIXED pulse = 0;
    static FIXED avg_delta = 0;
    static FIXED prev_rms = 0;

    FIXED delta = rms - prev;
    FIXED abs_delta = ABS(delta);

    // Low-pass filter the delta
    avg_delta = avg_delta + fxmul((abs_delta - avg_delta), float2fx(0.1f));

    // Detect note change: large RMS increase indicates a new note
    FIXED rms_delta = rms - prev_rms;
    FIXED abs_rms_delta = ABS(rms_delta);
    FIXED rms_thresh = fxmul(avg_delta, RMS_THRESH_MULTIPLIER);
    
    if (abs_rms_delta > rms_thresh && rms_delta > 0) {
        // Note changed, do pulse
        pulse = int2fx(1);
    }

    pulse = fxmul(pulse, AMP_I_DECAY);

    if (pulse > int2fx(1)) pulse = int2fx(1);
    if (pulse < float2fx(0.1f)) pulse = float2fx(0.1f);

    prev = rms;
    prev_rms = rms;
    
    return pulse;
}

ARM_CODE void scale_pulsing_objects() {
    obj_aff_identity(&obj_aff_buffer[AFF_SLOT_PULSING]);
    obj_aff_identity(&obj_aff_buffer[AFF_SLOT_PULSING_ORB]);
    u16 *mix_buffer_ptr = (u16 *) mixing_buffer;

    // Get sum
    u32 sum = 0;
    for (int i = 0; i < MIXING_BUFFER_SHORT_SIZE; i++) {
        s32 v = (s16)mix_buffer_ptr[i];
        sum += (v * v) >> 8;   // Scaling to avoid overflow
    }

    u32 mean = sum / MIXING_BUFFER_SHORT_SIZE;
    FIXED rms = Sqrt(int2fx(mean));

    FIXED final_value = calculate_amplitude(rms);
    pulsing_value = final_value;

    s32 mult = (screen_mirrored ? -1 : 1);
    obj_aff_scale_inv(&obj_aff_buffer[AFF_SLOT_PULSING], final_value * mult, final_value);

    s32 value_orb = final_value;
    if (value_orb < float2fx(0.6f)) value_orb = float2fx(0.6f);
    pulsing_orb_value = value_orb;

    obj_aff_scale_inv(&obj_aff_buffer[AFF_SLOT_PULSING_ORB], value_orb * mult, value_orb);
}

#define SAW_SPEED 0x400
void rotate_saws() {
    saw_rotation[0] += SAW_SPEED;
    saw_rotation[1] -= SAW_SPEED;
    saw_rotation[2] += SAW_SPEED / 2;
    saw_rotation[3] -= SAW_SPEED / 2;
}

ARM_CODE void display_objects() {
    profile_start();

    for (s32 index = 0; index < MAX_OBJECTS; index++) {
        if (object_buffer[index].occupied) {
            struct Object curr_object = object_buffer[index].object;
            
            // Color triggers are handler earlier in the frame
            if (!curr_object.is_trigger) {
                // Calculate the relative positions
                s32 relative_x = curr_object.x - ((scroll_x >> SUBPIXEL_BITS) & 0xffffffff);
                s32 relative_y = curr_object.y - ((scroll_y >> SUBPIXEL_BITS) & 0xffff);

                s32 hflip = (curr_object.attrib1 & H_FLIP_FLAG) >> 1;
                s32 vflip = curr_object.attrib1 & V_FLIP_FLAG;

                s32 priority = (curr_object.attrib1 & PRIORITY_FLAG) >> PRIORITY_FLAG_SHIFT;

                u32 chr_rom_offset = obj_chr_offset[curr_object.type][0];
                if (chr_rom_offset == SPRITE_CHR_COPY_FROM_METATILE) {
                    chr_rom_offset = 0x80000000 | curr_object.attrib3;
                }
                s32 chr_id = get_chr_slot_id(chr_rom_offset);
                
                if (chr_id >= 0) {
                    // Keep chr on VRAM
                    chr_slots[chr_id].occupied = TRUE;
                }   

                // Unload object in case that it is 32 pixels left to the screen
                if (relative_x < -32) {
                    object_buffer[index].occupied = FALSE;
                    continue;
                }
                // If object's sprite is null, then do not draw anything
                if (obj_sprites[curr_object.type] != NULL) {
                    // If object is inside the screen horizontally, continue
                    if (relative_x < SCREEN_WIDTH + 32) { 
                        // If the object is inside the screen vertically, display it
                        if (relative_y > -48 && relative_y < SCREEN_HEIGHT + 48) {
                            do_display(curr_object, relative_x, relative_y, hflip, vflip, priority, index);
                        }
                    }
                }

                if (object_buffer[index].object.type == COIN && object_buffer[index].activated[ID_PLAYER_1]) {
                    // The coin has been collected so play the animation
                    u32 coin_id = (object_buffer[index].object.attrib1 & COIN_ID_FLAG) >> COIN_ID_SHIFT;

                    coin_speed[coin_id] -= COIN_GRAVITY;
                    coin_y_pos[coin_id] -= coin_speed[coin_id];

                    object_buffer[index].object.y = coin_y_pos[coin_id] >> SUBPIXEL_BITS;
                    if (global_timer & 1) object_buffer[index].object.x -= 1;
                }
            } else if (!(curr_object.is_touch_trigger)) {
                // If a color trigger and not touch trigger, then just run collision
                do_collision(&object_buffer[index]);
            }
        }
    }
    display_profile = profile_stop();
}

void do_collision(struct ObjectSlot *objectSlot) {
    // Check collision type and run code related to it
    s32 obj_type = objectSlot->object.type;
    
    // Make sure we don't index the table out of bounds
    if (obj_type >= OBJ_COUNT) obj_type = 0;

    // Jump to the routine assigned to this object type
    routines_jump_table[obj_type](objectSlot);
}

ARM_CODE void check_obj_collision(u32 index) {
    struct Object curr_object = object_buffer[index].object;

    s32 obj_width = obj_hitbox[curr_object.type][0];
    s32 obj_height = obj_hitbox[curr_object.type][1];

    s32 offset_x = obj_hitbox[curr_object.type][2];
    s32 offset_y = obj_hitbox[curr_object.type][3];

    s32 center_x = obj_hitbox[curr_object.type][4];
    s32 center_y = obj_hitbox[curr_object.type][5];

    if (!(curr_object.attrib1 & ENABLE_ROTATION_FLAG)) {
        if (curr_object.attrib1 & H_FLIP_FLAG) {
            offset_x = center_x - (offset_x - center_x + obj_width); 
        }

        if (curr_object.attrib1 & V_FLIP_FLAG) {
            offset_y = center_y - (offset_y - center_y + obj_height); 
        }
    }

    u32 obj_x = curr_object.x + offset_x;
    u32 obj_y = curr_object.y + offset_y;

    u32 ply_x = (curr_player.player_x >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_width) >> 1);
    u32 ply_y = (curr_player.player_y >> SUBPIXEL_BITS) + ((0x10 - curr_player.player_height) >> 1);
    
    if (curr_object.attrib1 & ENABLE_ROTATION_FLAG) {
        u32 ply_center_x = ply_x + (curr_player.player_width >> 1);
        u32 ply_center_y = ply_y + (curr_player.player_height >> 1);

        u16 ply_rotation = 0;

        // If the object rotation is not a 90 degrees step, use player's rotated hitbox
        if (curr_object.rotation & 0x3fff) {
            ply_rotation = -curr_player.cube_rotation;
        }

        if (is_colliding_rotated_fixed(
            ply_x, ply_y, curr_player.player_width, curr_player.player_height, ply_center_x, ply_center_y, ply_rotation,
            obj_x, obj_y, obj_width, obj_height, curr_object.x + center_x, curr_object.y + center_y, curr_object.rotation
        )) {
            do_collision(&object_buffer[index]);
        }   
    } else {
        if (curr_object.attrib2 & CIRCLE_HITBOX_FLAG) {
            u32 obj_cx = curr_object.x + center_x;
            u32 obj_cy = curr_object.y + center_y;

            // Obj height contains the hitbox radius
            u32 obj_radius = obj_height;

            if (is_colliding_circle_square(
                ply_x, ply_y, curr_player.player_width, curr_player.player_height, 
                obj_cx, obj_cy, obj_radius
            )) {
                // If yes, then run the collision routine
                do_collision(&object_buffer[index]);
            } 
        } else {
            // Check if a collision has happened
            if (is_colliding(
                ply_x, ply_y, curr_player.player_width, curr_player.player_height, 
                obj_x, obj_y, obj_width, obj_height
            )) {
                // If yes, then run the collision routine
                do_collision(&object_buffer[index]);
            } 
        }  
    }
}


#define NUMBER_OF_SORT_VALUES (1 << 7)

// Uses counting sort
ARM_CODE void sort_oam_by_prio() {
    u32 count[NUMBER_OF_SORT_VALUES] = { 0 };
    OAM_SPR *oam_buffer = (OAM_SPR *) &vram_copy_buffer;
    memcpy32(oam_buffer, shadow_oam, sizeof(shadow_oam) / 4);
    
    // Count occurrences of each key
    for (s32 i = 0; i < nextSpr; i++) {
        u32 key = obj_priorities[i];
        count[key]++;
    }

    // Compute cumulative count
    for (s32 i = 1; i < NUMBER_OF_SORT_VALUES; i++) {
        count[i] += count[i - 1];
    }

    // Place elements in sorted order
    for (s32 i = nextSpr - 1; i >= 0; i--) {
        u32 key = obj_priorities[i];
        u32 pos = count[key] - 1;
        shadow_oam[pos].attr0 = oam_buffer[i].attr0;
        shadow_oam[pos].attr1 = oam_buffer[i].attr1;
        shadow_oam[pos].attr2 = oam_buffer[i].attr2;
        count[key]--;
    }
}