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

// part_04
#define part_04_ID 2

#include "endless_parts/part_04/l1.h"
#include "endless_parts/part_04/l2.h"
#include "endless_parts/part_04/SP.h"
#include "endless_parts/part_04/properties.h"

// part_02
#define part_02_ID 3

#include "endless_parts/part_02/l1.h"
#include "endless_parts/part_02/l2.h"
#include "endless_parts/part_02/SP.h"
#include "endless_parts/part_02/properties.h"

// part_03
#define part_03_ID 4

#include "endless_parts/part_03/l1.h"
#include "endless_parts/part_03/l2.h"
#include "endless_parts/part_03/SP.h"
#include "endless_parts/part_03/properties.h"

#define ENDLESS_PART_COUNT 5
#define ENDLESS_PART_TOTAL_RARITY 500
extern ROM_DATA const u16 *endless_part_defines[][4];
