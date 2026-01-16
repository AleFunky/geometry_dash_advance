#pragma once

#include <tonc.h>

#include "memory.h"

// Properties indexes
#define ENDLESS_LEVEL_WIDTH_INDEX 0
#define ENDLESS_LEVEL_RARITY_INDEX 1
// part_00
#define part_00_ID 0

#include "endless_parts/part_00/l1.h"
#include "endless_parts/part_00/l2.h"
#include "endless_parts/part_00/SP.h"
#include "endless_parts/part_00/properties.h"

// part_01
#define part_01_ID 1

#include "endless_parts/part_01/l1.h"
#include "endless_parts/part_01/l2.h"
#include "endless_parts/part_01/SP.h"
#include "endless_parts/part_01/properties.h"

// part_02
#define part_02_ID 2

#include "endless_parts/part_02/l1.h"
#include "endless_parts/part_02/l2.h"
#include "endless_parts/part_02/SP.h"
#include "endless_parts/part_02/properties.h"

#define ENDLESS_PART_COUNT 3
#define ENDLESS_PART_TOTAL_RARITY 300
extern ROM_DATA const u16 *endless_part_defines[][4];
