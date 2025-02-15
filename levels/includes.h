#pragma once

#include <tonc.h>

#include "memory.h"

// Defines indexes
#define L1_DATA_INDEX 0
#define L2_DATA_INDEX 1
#define SPRITE_DATA_INDEX 2
#define LEVEL_PROPERTIES_INDEX 3

// Properties indexes
#define BG_COLOR_INDEX 0
#define GROUND_COLOR_INDEX 1
#define GAMEMODE_INDEX 2
#define SPEED_INDEX 3
#define LEVEL_HEIGHT_INDEX 4
#define LEVEL_WIDTH_INDEX 5
#define LEVEL_SONG_INDEX 6

#define LEVEL_NAME_LENGTH 7

#define LEVEL_DIFFICULTY 8

#define LEVEL_STARS_NUM 9

#define LEVEL_COINS_NUM 10

// stereomadness
#define stereomadness_ID 0

#include "stereomadness/l1.h"
#include "stereomadness/l2.h"
#include "stereomadness/SP.h"
#include "stereomadness/properties.h"

// backontrack
#define backontrack_ID 1

#include "backontrack/l1.h"
#include "backontrack/l2.h"
#include "backontrack/SP.h"
#include "backontrack/properties.h"

// polargeist
#define polargeist_ID 2

#include "polargeist/l1.h"
#include "polargeist/l2.h"
#include "polargeist/SP.h"
#include "polargeist/properties.h"

// dryout
#define dryout_ID 3

#include "dryout/l1.h"
#include "dryout/l2.h"
#include "dryout/SP.h"
#include "dryout/properties.h"

// baseafterbase
#define baseafterbase_ID 4

#include "baseafterbase/l1.h"
#include "baseafterbase/l2.h"
#include "baseafterbase/SP.h"
#include "baseafterbase/properties.h"

// cantletgo
#define cantletgo_ID 5

#include "cantletgo/l1.h"
#include "cantletgo/l2.h"
#include "cantletgo/SP.h"
#include "cantletgo/properties.h"

// jumper
#define jumper_ID 6

#include "jumper/l1.h"
#include "jumper/l2.h"
#include "jumper/SP.h"
#include "jumper/properties.h"

// timemachine
#define timemachine_ID 7

#include "timemachine/l1.h"
#include "timemachine/l2.h"
#include "timemachine/SP.h"
#include "timemachine/properties.h"

// cycles
#define cycles_ID 8

#include "cycles/l1.h"
#include "cycles/l2.h"
#include "cycles/SP.h"
#include "cycles/properties.h"

// xstep
#define xstep_ID 9

#include "xstep/l1.h"
#include "xstep/l2.h"
#include "xstep/SP.h"
#include "xstep/properties.h"

// clutterfunk
#define clutterfunk_ID 10

#include "clutterfunk/l1.h"
#include "clutterfunk/l2.h"
#include "clutterfunk/SP.h"
#include "clutterfunk/properties.h"

// theoryofeverything
#define theoryofeverything_ID 11

#include "theoryofeverything/l1.h"
#include "theoryofeverything/l2.h"
#include "theoryofeverything/SP.h"
#include "theoryofeverything/properties.h"

// test
#define test_ID 12

#include "test/l1.h"
#include "test/l2.h"
#include "test/SP.h"
#include "test/properties.h"

// test2
#define test2_ID 13

#include "test2/l1.h"
#include "test2/l2.h"
#include "test2/SP.h"
#include "test2/properties.h"

#define LEVEL_COUNT 14
extern ROM_DATA const u16 *level_defines[][4];
extern ROM_DATA const u8 *level_names[];
