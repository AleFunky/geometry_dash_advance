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
#define COL1_COLOR_INDEX 2
#define COL2_COLOR_INDEX 3
#define COL3_COLOR_INDEX 4
#define COL4_COLOR_INDEX 5
#define OBJ_COLOR_INDEX 6
#define GAMEMODE_INDEX 7
#define SPEED_INDEX 8
#define LEVEL_HEIGHT_INDEX 9
#define LEVEL_WIDTH_INDEX 10
#define LEVEL_SONG_INDEX 11

#define LEVEL_NAME_LENGTH 12

#define LEVEL_DIFFICULTY 13

#define LEVEL_STARS_NUM 14

#define LEVEL_COINS_NUM 15

#define LEVEL_BACKGROUND_TYPE 16

#define LEVEL_GROUND_TYPE 17
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

// electromanadventures
#define electromanadventures_ID 12

#include "electromanadventures/l1.h"
#include "electromanadventures/l2.h"
#include "electromanadventures/SP.h"
#include "electromanadventures/properties.h"

// clubstep
#define clubstep_ID 13

#include "clubstep/l1.h"
#include "clubstep/l2.h"
#include "clubstep/SP.h"
#include "clubstep/properties.h"

// electrodynamix
#define electrodynamix_ID 14

#include "electrodynamix/l1.h"
#include "electrodynamix/l2.h"
#include "electrodynamix/SP.h"
#include "electrodynamix/properties.h"

// hexagonforce
#define hexagonforce_ID 15

#include "hexagonforce/l1.h"
#include "hexagonforce/l2.h"
#include "hexagonforce/SP.h"
#include "hexagonforce/properties.h"

// blastprocessing
#define blastprocessing_ID 16

#include "blastprocessing/l1.h"
#include "blastprocessing/l2.h"
#include "blastprocessing/SP.h"
#include "blastprocessing/properties.h"

// autocycles
#define autocycles_ID 17

#include "autocycles/l1.h"
#include "autocycles/l2.h"
#include "autocycles/SP.h"
#include "autocycles/properties.h"

// retray
#define retray_ID 18

#include "retray/l1.h"
#include "retray/l2.h"
#include "retray/SP.h"
#include "retray/properties.h"

// invisontrack
#define invisontrack_ID 19

#include "invisontrack/l1.h"
#include "invisontrack/l2.h"
#include "invisontrack/SP.h"
#include "invisontrack/properties.h"

// leveleasy
#define leveleasy_ID 20

#include "leveleasy/l1.h"
#include "leveleasy/l2.h"
#include "leveleasy/SP.h"
#include "leveleasy/properties.h"

// dorabaebasic
#define dorabaebasic_ID 21

#include "dorabaebasic/l1.h"
#include "dorabaebasic/l2.h"
#include "dorabaebasic/SP.h"
#include "dorabaebasic/properties.h"

// dorabaebasic4
#define dorabaebasic4_ID 22

#include "dorabaebasic4/l1.h"
#include "dorabaebasic4/l2.h"
#include "dorabaebasic4/SP.h"
#include "dorabaebasic4/properties.h"

// dorabaebasic7
#define dorabaebasic7_ID 23

#include "dorabaebasic7/l1.h"
#include "dorabaebasic7/l2.h"
#include "dorabaebasic7/SP.h"
#include "dorabaebasic7/properties.h"

// goldenclub
#define goldenclub_ID 24

#include "goldenclub/l1.h"
#include "goldenclub/l2.h"
#include "goldenclub/SP.h"
#include "goldenclub/properties.h"

// squareadv
#define squareadv_ID 25

#include "squareadv/l1.h"
#include "squareadv/l2.h"
#include "squareadv/SP.h"
#include "squareadv/properties.h"

// selectpaymenttype
#define selectpaymenttype_ID 26

#include "selectpaymenttype/l1.h"
#include "selectpaymenttype/l2.h"
#include "selectpaymenttype/SP.h"
#include "selectpaymenttype/properties.h"

// storymadness
#define storymadness_ID 27

#include "storymadness/l1.h"
#include "storymadness/l2.h"
#include "storymadness/SP.h"
#include "storymadness/properties.h"

// groundtospace
#define groundtospace_ID 28

#include "groundtospace/l1.h"
#include "groundtospace/l2.h"
#include "groundtospace/SP.h"
#include "groundtospace/properties.h"

// one
#define one_ID 29

#include "one/l1.h"
#include "one/l2.h"
#include "one/SP.h"
#include "one/properties.h"

// dynamicontrack
#define dynamicontrack_ID 30

#include "dynamicontrack/l1.h"
#include "dynamicontrack/l2.h"
#include "dynamicontrack/SP.h"
#include "dynamicontrack/properties.h"

// iceland
#define iceland_ID 31

#include "iceland/l1.h"
#include "iceland/l2.h"
#include "iceland/SP.h"
#include "iceland/properties.h"

// ultimatedestruction
#define ultimatedestruction_ID 32

#include "ultimatedestruction/l1.h"
#include "ultimatedestruction/l2.h"
#include "ultimatedestruction/SP.h"
#include "ultimatedestruction/properties.h"

// pyrophoric
#define pyrophoric_ID 33

#include "pyrophoric/l1.h"
#include "pyrophoric/l2.h"
#include "pyrophoric/SP.h"
#include "pyrophoric/properties.h"

// cantletgov2
#define cantletgov2_ID 34

#include "cantletgov2/l1.h"
#include "cantletgov2/l2.h"
#include "cantletgov2/SP.h"
#include "cantletgov2/properties.h"

// funnygameholiday
#define funnygameholiday_ID 35

#include "funnygameholiday/l1.h"
#include "funnygameholiday/l2.h"
#include "funnygameholiday/SP.h"
#include "funnygameholiday/properties.h"

// revolution
#define revolution_ID 36

#include "revolution/l1.h"
#include "revolution/l2.h"
#include "revolution/SP.h"
#include "revolution/properties.h"

// tig_oglevel
#define tig_oglevel_ID 37

#include "tig_oglevel/l1.h"
#include "tig_oglevel/l2.h"
#include "tig_oglevel/SP.h"
#include "tig_oglevel/properties.h"

// fireaura_tig
#define fireaura_tig_ID 38

#include "fireaura_tig/l1.h"
#include "fireaura_tig/l2.h"
#include "fireaura_tig/SP.h"
#include "fireaura_tig/properties.h"

// thenightmare
#define thenightmare_ID 39

#include "thenightmare/l1.h"
#include "thenightmare/l2.h"
#include "thenightmare/SP.h"
#include "thenightmare/properties.h"

// demonjumper
#define demonjumper_ID 40

#include "demonjumper/l1.h"
#include "demonjumper/l2.h"
#include "demonjumper/SP.h"
#include "demonjumper/properties.h"

// rose
#define rose_ID 41

#include "rose/l1.h"
#include "rose/l2.h"
#include "rose/SP.h"
#include "rose/properties.h"

// problematic
#define problematic_ID 42

#include "problematic/l1.h"
#include "problematic/l2.h"
#include "problematic/SP.h"
#include "problematic/properties.h"

// deathmoon
#define deathmoon_ID 43

#include "deathmoon/l1.h"
#include "deathmoon/l2.h"
#include "deathmoon/SP.h"
#include "deathmoon/properties.h"

// acropolis
#define acropolis_ID 44

#include "acropolis/l1.h"
#include "acropolis/l2.h"
#include "acropolis/SP.h"
#include "acropolis/properties.h"

// everyend
#define everyend_ID 45

#include "everyend/l1.h"
#include "everyend/l2.h"
#include "everyend/SP.h"
#include "everyend/properties.h"

// test
#define test_ID 46

#include "test/l1.h"
#include "test/l2.h"
#include "test/SP.h"
#include "test/properties.h"

// test2
#define test2_ID 47

#include "test2/l1.h"
#include "test2/l2.h"
#include "test2/SP.h"
#include "test2/properties.h"

// endless
#define endless_ID 48

#include "endless/l1.h"
#include "endless/l2.h"
#include "endless/SP.h"
#include "endless/properties.h"

#define LEVEL_COUNT 49
extern ROM_DATA const u16 *level_defines[][4];
extern ROM_DATA const u8 *level_names[];
