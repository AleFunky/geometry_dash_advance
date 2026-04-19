@ Sprite Data Export

.section .rodata
.align 2
.global kaleidoscopic_spr_data
.hidden kaleidoscopic_spr_data
kaleidoscopic_spr_data:
@ Object 1
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0xb @ changes 4 for 1 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0xa @ changes 3 for 1 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x3 @ type
   .hword 0x9 @ changes 2 for 1 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x3 @ type
   .hword 0x8 @ changes 1 for 1 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 5
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x3 @ type
   .hword 0xf @ changes LINE for 1 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 6
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x3 @ type
   .hword 0xe @ changes OBJ for 1 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 7
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x3 @ type
   .hword 0xc @ changes BG for 1 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 8
   .hword 0xb0 @ delta x
   .hword 0x310 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x44cd @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 9
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x3 @ type
   .hword 0xc0 @ changes 1 for 24 frames
   .hword 0x7174 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 10
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x3 @ type
   .hword 0xc7 @ changes LINE for 24 frames
   .hword 0x7174 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 11
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x3 @ type
   .hword 0xc6 @ changes OBJ for 24 frames
   .hword 0x7e79 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 12
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x3 @ type
   .hword 0xc4 @ changes BG for 24 frames
   .hword 0x4408 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 13
   .hword 0x10 @ delta x
   .hword 0x3c0 @ y
   .hword 0x13 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 14
   .hword 0x20 @ delta x
   .hword 0x370 @ y
   .hword 0x62 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 15
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 16
   .hword 0x8 @ delta x
   .hword 0x398 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 17
   .hword 0x48 @ delta x
   .hword 0x360 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 18
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 19
   .hword 0x6 @ delta x
   .hword 0x385 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 20
   .hword 0x2a @ delta x
   .hword 0x350 @ y
   .hword 0x62 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 21
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 22
   .hword 0x23 @ delta x
   .hword 0x379 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 23
   .hword 0xd @ delta x
   .hword 0x350 @ y
   .hword 0x63 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 24
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x60 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 25
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 26
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 27
   .hword 0x18 @ delta x
   .hword 0x360 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 28
   .hword 0x18 @ delta x
   .hword 0x340 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 29
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 30
   .hword 0xe @ delta x
   .hword 0x377 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 31
   .hword 0x12 @ delta x
   .hword 0x350 @ y
   .hword 0x8 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 32
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 33
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 34
   .hword 0x18 @ delta x
   .hword 0x378 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 35
   .hword 0x18 @ delta x
   .hword 0x360 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 36
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 37
   .hword 0x20 @ delta x
   .hword 0x350 @ y
   .hword 0x62 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 38
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 39
   .hword 0x8 @ delta x
   .hword 0x379 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 40
   .hword 0x18 @ delta x
   .hword 0x2f0 @ y
   .hword 0x60 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 41
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x8 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 42
   .hword 0xb @ delta x
   .hword 0x36e @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 43
   .hword 0x15 @ delta x
   .hword 0x2f0 @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 44
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x8 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 45
   .hword 0x13 @ delta x
   .hword 0x376 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 46
   .hword 0xd @ delta x
   .hword 0x340 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 47
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 48
   .hword 0x1 @ delta x
   .hword 0x2f0 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 49
   .hword 0xf @ delta x
   .hword 0x3a0 @ y
   .hword 0x62 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 50
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 51
   .hword 0x10 @ delta x
   .hword 0x380 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 52
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 53
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0xf @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 54
   .hword 0xa @ delta x
   .hword 0x399 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 55
   .hword 0x31 @ delta x
   .hword 0x389 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 56
   .hword 0x15 @ delta x
   .hword 0x370 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 57
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 58
   .hword 0x20 @ delta x
   .hword 0x380 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 59
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 60
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 61
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 62
   .hword 0x6 @ delta x
   .hword 0x395 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 63
   .hword 0xa @ delta x
   .hword 0x380 @ y
   .hword 0x63 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 64
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x60 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 65
   .hword 0x1e @ delta x
   .hword 0x38e @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 66
   .hword 0x2 @ delta x
   .hword 0x380 @ y
   .hword 0x67 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x100 @ z index 0 pal 4
@ Object 67
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x67 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 68
   .hword 0x50 @ delta x
   .hword 0x380 @ y
   .hword 0x67 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x100 @ z index 0 pal 4
@ Object 69
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x67 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 70
   .hword 0x8 @ delta x
   .hword 0x38c @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 71
   .hword 0x23 @ delta x
   .hword 0x381 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 72
   .hword 0x15 @ delta x
   .hword 0x350 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 73
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 74
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 75
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 76
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 77
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 78
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x63 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 79
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x60 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 80
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x62 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 81
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 82
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 83
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 84
   .hword 0x20 @ delta x
   .hword 0x3a0 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 85
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 86
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 87
   .hword 0x20 @ delta x
   .hword 0x380 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 88
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 89
   .hword 0x20 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 90
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 91
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 92
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 93
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 94
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x36 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 95
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x19a6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 96
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2f8c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 97
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5ff6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 98
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xce3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 99
   .hword 0x18 @ delta x
   .hword 0x390 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 100
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x65 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 101
   .hword 0x20 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3f4f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 102
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5ff7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 103
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x6ffb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 104
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21a7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 105
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x19a6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 106
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2f8c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 107
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5ff6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 108
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xce3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 109
   .hword 0x8 @ delta x
   .hword 0x378 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 110
   .hword 0x0 @ delta x
   .hword 0x378 @ y
   .hword 0x66 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 111
   .hword 0x10 @ delta x
   .hword 0x2c0 @ y
   .hword 0x65 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 112
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x66 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 113
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 114
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 115
   .hword 0x10 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3f4f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 116
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5ff7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 117
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x6ffb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 118
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21a7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 119
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x19a6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 120
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2f8c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 121
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5ff6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 122
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xce3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 123
   .hword 0x28 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 124
   .hword 0x10 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3f4f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 125
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5ff7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 126
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x6ffb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 127
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21a7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 128
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 129
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 130
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x65 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 131
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x19a6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 132
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2f8c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 133
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5ff6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 134
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xce3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 135
   .hword 0x38 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3f4f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 136
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5ff7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 137
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x6ffb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 138
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21a7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 139
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x19a6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 140
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2f8c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 141
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5ff6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 142
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xce3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 143
   .hword 0x20 @ delta x
   .hword 0x368 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 144
   .hword 0x0 @ delta x
   .hword 0x368 @ y
   .hword 0x66 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 145
   .hword 0x18 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3f4f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 146
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5ff7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 147
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x6ffb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 148
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21a7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 149
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x19a6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 150
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2f8c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 151
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5ff6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 152
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xce3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 153
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 154
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x66 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 155
   .hword 0x38 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3f4f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 156
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5ff7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 157
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x6ffb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 158
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21a7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 159
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 160
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x66 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 161
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 162
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 163
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x19a6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 164
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2f8c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 165
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5ff6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 166
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xce3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 167
   .hword 0x18 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3f4f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 168
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5ff7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 169
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x6ffb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 170
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21a7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 171
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x19a6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 172
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2f8c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 173
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5ff6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 174
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xce3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 175
   .hword 0x8 @ delta x
   .hword 0x360 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 176
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 177
   .hword 0x10 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3f4f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 178
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5ff7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 179
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x6ffb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 180
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21a7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 181
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x19a6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 182
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2f8c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 183
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5ff6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 184
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xce3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 185
   .hword 0x8 @ delta x
   .hword 0x390 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 186
   .hword 0x10 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3f4f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 187
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5ff7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 188
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x6ffb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 189
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21a7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 190
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x19a6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 191
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2f8c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 192
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5ff6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 193
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xce3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 194
   .hword 0x8 @ delta x
   .hword 0x360 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 195
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 196
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 197
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x66 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 198
   .hword 0x10 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3f4f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 199
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5ff7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 200
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x6ffb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 201
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21a7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 202
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x19a6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 203
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2f8c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 204
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5ff6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 205
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xce3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 206
   .hword 0x2f @ delta x
   .hword 0x380 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 207
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x66 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 208
   .hword 0x9 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3f4f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 209
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5ff7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 210
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x6ffb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 211
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21a7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 212
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x19a6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 213
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2f8c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 214
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5ff6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 215
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xce3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 216
   .hword 0x28 @ delta x
   .hword 0x370 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 217
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 218
   .hword 0x10 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3f4f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 219
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5ff7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 220
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x6ffb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 221
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21a7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 222
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x19a6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 223
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2f8c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 224
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5ff6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 225
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xce3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 226
   .hword 0x18 @ delta x
   .hword 0x360 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 227
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x66 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 228
   .hword 0x20 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3f4f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 229
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5ff7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 230
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x6ffb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 231
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21a7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 232
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 233
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 234
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 235
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x19a6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 236
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2f8c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 237
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5ff6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 238
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xce3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 239
   .hword 0x38 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3f4f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 240
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5ff7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 241
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x6ffb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 242
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21a7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 243
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0xa @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 244
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 245
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 246
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 247
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 248
   .hword 0x20 @ delta x
   .hword 0x357 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 249
   .hword 0x0 @ delta x
   .hword 0x357 @ y
   .hword 0x65 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 250
   .hword 0x28 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 251
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x37 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 252
   .hword 0x10 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 253
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x11c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 254
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 255
   .hword 0x10 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x1c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 256
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x11c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 257
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x23c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 258
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 259
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 260
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x1c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 261
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x11c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 262
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x23c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 263
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x29c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 264
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 265
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 266
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x11c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 267
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x23c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 268
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x29c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 269
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x39c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 270
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 271
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 272
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x23c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 273
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x29c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 274
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x39c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 275
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x395 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 276
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 277
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 278
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x29c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 279
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x39c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 280
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x395 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 281
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x38e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 282
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 283
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 284
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x39c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 285
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x395 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 286
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x38e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 287
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x2780 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 288
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 289
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 290
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x395 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 291
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x38e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 292
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x2780 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 293
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5380 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 294
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 295
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 296
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x38e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 297
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x2780 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 298
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5380 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 299
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7380 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 300
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 301
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 302
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x2780 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 303
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x5380 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 304
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7380 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 305
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7260 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 306
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 307
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 308
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x5380 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 309
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7380 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 310
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7260 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 311
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x71a0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 312
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 313
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 314
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7380 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 315
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7260 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 316
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x71a0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 317
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7080 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 318
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 319
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 320
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7260 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 321
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x71a0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 322
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7080 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 323
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x700c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 324
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 325
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 326
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x71a0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 327
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7080 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 328
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x700c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 329
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7013 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 330
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 331
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 332
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7080 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 333
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x700c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 334
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7013 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 335
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x701a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 336
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 337
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 338
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x700c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 339
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7013 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 340
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x701a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 341
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x581c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 342
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 343
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 344
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7013 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 345
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x701a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 346
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x581c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 347
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x381c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 348
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 349
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 350
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x701a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 351
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x581c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 352
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x381c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 353
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x101c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 354
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 355
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 356
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x581c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 357
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x381c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 358
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x101c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 359
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x1d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 360
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x381c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 361
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x101c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 362
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 363
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 364
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 365
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 366
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x108d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 367
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 368
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 369
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x101c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 370
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x1 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 371
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x36 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 372
   .hword 0x20 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 373
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 374
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x25 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 375
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 376
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x110c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 377
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 378
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 379
   .hword 0x20 @ delta x
   .hword 0x350 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 380
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 381
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x85 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 382
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 383
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x118c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 384
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 385
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 386
   .hword 0x20 @ delta x
   .hword 0x370 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 387
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 388
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xa1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 389
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 390
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x15c5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 391
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fed @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 392
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 393
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 394
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 395
   .hword 0x20 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 396
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x8a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 397
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 398
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x25a4 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 399
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x5beb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 400
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 401
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 402
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 403
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 404
   .hword 0x10 @ delta x
   .hword 0x390 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 405
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 406
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x14a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 407
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 408
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2d64 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 409
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7feb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 410
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 411
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 412
   .hword 0x10 @ delta x
   .hword 0x380 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 413
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 414
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 415
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 416
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 417
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1480 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 418
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 419
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2ce5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 420
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 421
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 422
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 423
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 424
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 425
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1420 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 426
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 427
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3085 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 428
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 429
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 430
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 431
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 432
   .hword 0x20 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 433
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1401 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 434
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 435
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x34a9 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 436
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 437
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 438
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 439
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 440
   .hword 0x20 @ delta x
   .hword 0x320 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 441
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 442
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1403 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 443
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 444
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x308a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 445
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 446
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 447
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 448
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 449
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 450
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1005 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 451
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 452
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x208c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 453
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x517f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 454
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 455
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 456
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 457
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 458
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 459
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 460
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 461
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x108d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 462
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 463
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 464
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 465
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 466
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 467
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 468
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x25 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 469
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 470
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x110c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 471
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 472
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 473
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 474
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 475
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 476
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 477
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 478
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x85 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 479
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 480
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x118c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 481
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 482
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 483
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 484
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 485
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 486
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 487
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 488
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xa1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 489
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 490
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x15c5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 491
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fed @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 492
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 493
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 494
   .hword 0x20 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 495
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 496
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x8a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 497
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 498
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x25a4 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 499
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x5beb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 500
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 501
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 502
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 503
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x14a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 504
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 505
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2d64 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 506
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7feb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 507
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 508
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 509
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 510
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1480 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 511
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 512
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2ce5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 513
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 514
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 515
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 516
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 517
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1420 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 518
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 519
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3085 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 520
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 521
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 522
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 523
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 524
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 525
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 526
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 527
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1401 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 528
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 529
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x34a9 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 530
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 531
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 532
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 533
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 534
   .hword 0x20 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 535
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 536
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1403 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 537
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 538
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x308a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 539
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 540
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 541
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 542
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 543
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 544
   .hword 0x10 @ delta x
   .hword 0x380 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 545
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 546
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1005 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 547
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 548
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x208c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 549
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x517f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 550
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 551
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x62 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 552
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x65 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 553
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 554
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 555
   .hword 0x20 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 556
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 557
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 558
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x108d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 559
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 560
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 561
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 562
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 563
   .hword 0x10 @ delta x
   .hword 0x380 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 564
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 565
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x62 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 566
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x65 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 567
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 568
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x25 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 569
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 570
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x110c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 571
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 572
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 573
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 574
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 575
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x61 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 576
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 577
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 578
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 579
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 580
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x85 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 581
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 582
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x118c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 583
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 584
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 585
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x1d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 586
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 587
   .hword 0x0 @ delta x
   .hword 0x357 @ y
   .hword 0x3d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 588
   .hword 0x20 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 589
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xa1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 590
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 591
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x15c5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 592
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fed @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 593
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 594
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 595
   .hword 0x20 @ delta x
   .hword 0x350 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 596
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 597
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 598
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x8a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 599
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 600
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x25a4 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 601
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x5beb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 602
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 603
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 604
   .hword 0x8 @ delta x
   .hword 0x387 @ y
   .hword 0x7c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 605
   .hword 0x1 @ delta x
   .hword 0x387 @ y
   .hword 0x60 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 606
   .hword 0x7 @ delta x
   .hword 0x330 @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 607
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 608
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 609
   .hword 0x0 @ delta x
   .hword 0x368 @ y
   .hword 0x3d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 610
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 611
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x14a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 612
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 613
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2d64 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 614
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7feb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 615
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 616
   .hword 0x10 @ delta x
   .hword 0x380 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 617
   .hword 0x20 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 618
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1480 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 619
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 620
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2ce5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 621
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 622
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 623
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 624
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 625
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 626
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1420 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 627
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 628
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3085 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 629
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 630
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 631
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 632
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 633
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 634
   .hword 0x0 @ delta x
   .hword 0x348 @ y
   .hword 0x3d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 635
   .hword 0x20 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 636
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1401 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 637
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 638
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x34a9 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 639
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 640
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 641
   .hword 0x10 @ delta x
   .hword 0x338 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 642
   .hword 0x0 @ delta x
   .hword 0x338 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 643
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 644
   .hword 0x8 @ delta x
   .hword 0x380 @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 645
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 646
   .hword 0x18 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 647
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1403 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 648
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 649
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x308a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 650
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 651
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 652
   .hword 0x10 @ delta x
   .hword 0x377 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 653
   .hword 0x0 @ delta x
   .hword 0x378 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 654
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 655
   .hword 0xb @ delta x
   .hword 0x32c @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 656
   .hword 0x0 @ delta x
   .hword 0x32c @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 657
   .hword 0x5 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 658
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1005 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 659
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 660
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x208c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 661
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x517f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 662
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 663
   .hword 0x18 @ delta x
   .hword 0x32c @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 664
   .hword 0x0 @ delta x
   .hword 0x32c @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 665
   .hword 0x8 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 666
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 667
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 668
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 669
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x108d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 670
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 671
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 672
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 673
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 674
   .hword 0x0 @ delta x
   .hword 0x378 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 675
   .hword 0x0 @ delta x
   .hword 0x378 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 676
   .hword 0x20 @ delta x
   .hword 0x370 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 677
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 678
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x25 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 679
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 680
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x110c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 681
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 682
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 683
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 684
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 685
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x85 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 686
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 687
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x118c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 688
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 689
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 690
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 691
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 692
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xa1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 693
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 694
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x15c5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 695
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fed @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 696
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 697
   .hword 0x8 @ delta x
   .hword 0x348 @ y
   .hword 0x3d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 698
   .hword 0x28 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 699
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x8a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 700
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 701
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x25a4 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 702
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x5beb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 703
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 704
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 705
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 706
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 707
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x14a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 708
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 709
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2d64 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 710
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7feb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 711
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 712
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 713
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 714
   .hword 0x10 @ delta x
   .hword 0x380 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 715
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 716
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1480 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 717
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 718
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2ce5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 719
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 720
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 721
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 722
   .hword 0x10 @ delta x
   .hword 0x380 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 723
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 724
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 725
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 726
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 727
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1420 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 728
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 729
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3085 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 730
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 731
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 732
   .hword 0x10 @ delta x
   .hword 0x310 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 733
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 734
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 735
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 736
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1401 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 737
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 738
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x34a9 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 739
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 740
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 741
   .hword 0x10 @ delta x
   .hword 0x300 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 742
   .hword 0x10 @ delta x
   .hword 0x300 @ y
   .hword 0xa @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 743
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 744
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 745
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1403 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 746
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 747
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x308a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 748
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 749
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 750
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 751
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x13 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 752
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 753
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1005 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 754
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 755
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x208c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 756
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x517f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 757
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 758
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 759
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 760
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 761
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 762
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 763
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 764
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 765
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 766
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 767
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 768
   .hword 0x29 @ delta x
   .hword 0x358 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 769
   .hword 0x1 @ delta x
   .hword 0x359 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 770
   .hword 0x26 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 771
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 772
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 773
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 774
   .hword 0x1 @ delta x
   .hword 0x354 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 775
   .hword 0x3f @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x34e6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 776
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x496a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 777
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x34e6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 778
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7232 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 779
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 780
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 781
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 782
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 783
   .hword 0x8 @ delta x
   .hword 0x370 @ y
   .hword 0x39 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 784
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x34 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 785
   .hword 0x20 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x34e6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 786
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x496a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 787
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x34e6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 788
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7232 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 789
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 790
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 791
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 792
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 793
   .hword 0x28 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x34e6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 794
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x496a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 795
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x34e6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 796
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7232 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 797
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 798
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 799
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 800
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 801
   .hword 0x8 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x488 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 802
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 803
   .hword 0x8 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 804
   .hword 0x8 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 805
   .hword 0x10 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x488 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 806
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x34e6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 807
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x496a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 808
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x34e6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 809
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7232 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 810
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 811
   .hword 0x8 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3c1 @ changes 2 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 812
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3c2 @ changes 3 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 813
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3c0 @ changes 1 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 814
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3c4 @ changes BG for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 815
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x3c6 @ changes OBJ for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 816
   .hword 0x18 @ delta x
   .hword 0x3a8 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 817
   .hword 0x1f @ delta x
   .hword 0x367 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 818
   .hword 0x11 @ delta x
   .hword 0x3a0 @ y
   .hword 0xf @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 819
   .hword 0x47 @ delta x
   .hword 0x380 @ y
   .hword 0x78 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 820
   .hword 0x9 @ delta x
   .hword 0x340 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 821
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 822
   .hword 0x1a @ delta x
   .hword 0x34b @ y
   .hword 0x78 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 823
   .hword 0x6 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x152c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 824
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x2ebc @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 825
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x150a @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 826
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x471e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 827
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 828
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 829
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 830
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 831
   .hword 0x8 @ delta x
   .hword 0x360 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 832
   .hword 0x1b @ delta x
   .hword 0x3a9 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 833
   .hword 0x5 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x152c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 834
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x2ebc @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 835
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x150a @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 836
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x471e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 837
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 838
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 839
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 840
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 841
   .hword 0x8 @ delta x
   .hword 0x370 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 842
   .hword 0x20 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x152c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 843
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x2ebc @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 844
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x150a @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 845
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x471e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 846
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 847
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 848
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 849
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 850
   .hword 0x8 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x28c6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 851
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 852
   .hword 0x7 @ delta x
   .hword 0x34f @ y
   .hword 0x79 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 853
   .hword 0x1 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 854
   .hword 0x18 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x28c6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 855
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x152c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 856
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x2ebc @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 857
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x150a @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 858
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x471e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 859
   .hword 0x0 @ delta x
   .hword 0x367 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 860
   .hword 0x8 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3c1 @ changes 2 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 861
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3c2 @ changes 3 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 862
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3c0 @ changes 1 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 863
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3c4 @ changes BG for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 864
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x3c6 @ changes OBJ for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 865
   .hword 0x8 @ delta x
   .hword 0x3a0 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 866
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 867
   .hword 0x20 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 868
   .hword 0x20 @ delta x
   .hword 0x360 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 869
   .hword 0x10 @ delta x
   .hword 0x380 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 870
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 871
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 872
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 873
   .hword 0x20 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 874
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x79 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 875
   .hword 0x10 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x488 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 876
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x34e6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 877
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x496a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 878
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x34e6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 879
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7232 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 880
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x36 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 881
   .hword 0x10 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x28c6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 882
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x152c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 883
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x2ebc @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 884
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x150a @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 885
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x471e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 886
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 887
   .hword 0x10 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x2a6a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 888
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x34ab @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 889
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x6956 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 890
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1464 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 891
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7edd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 892
   .hword 0x10 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x6956 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 893
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0xca3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 894
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x2b0a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 895
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0xca3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 896
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x5bf6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 897
   .hword 0x10 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x488 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 898
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x34e6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 899
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x496a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 900
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x34e6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 901
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7232 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 902
   .hword 0x10 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 903
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x34ab @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 904
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x6956 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 905
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1464 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 906
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7edd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 907
   .hword 0x0 @ delta x
   .hword 0x375 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 908
   .hword 0x0 @ delta x
   .hword 0x375 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 909
   .hword 0x0 @ delta x
   .hword 0x375 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 910
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 911
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 912
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 913
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 914
   .hword 0x8 @ delta x
   .hword 0x3a6 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 915
   .hword 0x20 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x34ab @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 916
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x6956 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 917
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1464 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 918
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7edd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 919
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 920
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 921
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 922
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 923
   .hword 0x8 @ delta x
   .hword 0x370 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 924
   .hword 0x20 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x34ab @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 925
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x6956 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 926
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1464 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 927
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7edd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 928
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x78 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 929
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 930
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 931
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 932
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 933
   .hword 0x8 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x2a6a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 934
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 935
   .hword 0x8 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 936
   .hword 0x18 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x3c1 @ changes 2 for 120 frames
   .hword 0x2a6a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 937
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x3c2 @ changes 3 for 120 frames
   .hword 0x34ab @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 938
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3c0 @ changes 1 for 120 frames
   .hword 0x6956 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 939
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x3c4 @ changes BG for 120 frames
   .hword 0x1464 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 940
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x3c6 @ changes OBJ for 120 frames
   .hword 0x7edd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 941
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x78 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 942
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3c2 @ changes 3 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 943
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3c0 @ changes 1 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 944
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3c4 @ changes BG for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 945
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x3c6 @ changes OBJ for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 946
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3c1 @ changes 2 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 947
   .hword 0x7 @ delta x
   .hword 0x390 @ y
   .hword 0x79 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 948
   .hword 0x61 @ delta x
   .hword 0x350 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 949
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 950
   .hword 0x40 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 951
   .hword 0x20 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 952
   .hword 0x30 @ delta x
   .hword 0x370 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 953
   .hword 0x17 @ delta x
   .hword 0x3a0 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 954
   .hword 0x19 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0xca3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 955
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x2b0a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 956
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0xca3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 957
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x5bf6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 958
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 959
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 960
   .hword 0x8 @ delta x
   .hword 0x24f @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 961
   .hword 0x0 @ delta x
   .hword 0x25f @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 962
   .hword 0x0 @ delta x
   .hword 0x26f @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 963
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 964
   .hword 0x0 @ delta x
   .hword 0x338 @ y
   .hword 0x78 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 965
   .hword 0x18 @ delta x
   .hword 0x350 @ y
   .hword 0x78 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 966
   .hword 0x10 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0xca3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 967
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x2b0a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 968
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0xca3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 969
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x5bf6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 970
   .hword 0x8 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 971
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 972
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 973
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 974
   .hword 0x8 @ delta x
   .hword 0x360 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 975
   .hword 0x10 @ delta x
   .hword 0x390 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 976
   .hword 0x10 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0xca3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 977
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x2b0a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 978
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0xca3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 979
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x5bf6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 980
   .hword 0x8 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 981
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 982
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 983
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 984
   .hword 0x8 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x6956 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 985
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 986
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 987
   .hword 0x8 @ delta x
   .hword 0x23f @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 988
   .hword 0x18 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x6956 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 989
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0xca3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 990
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x2b0a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 991
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0xca3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 992
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x5bf6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 993
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x79 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 994
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 995
   .hword 0x0 @ delta x
   .hword 0x37b @ y
   .hword 0x79 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 996
   .hword 0x8 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 997
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 998
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 999
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1000
   .hword 0x0 @ delta x
   .hword 0x23f @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1001
   .hword 0x18 @ delta x
   .hword 0x350 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1002
   .hword 0x30 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1003
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1004
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x37 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1005
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1006
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1007
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3e3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1008
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1009
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c00 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1010
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1011
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x781b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1012
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1013
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1014
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1015
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 1016
   .hword 0x10 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1017
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3e3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1018
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1019
   .hword 0x10 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1020
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c00 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1021
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 1022
   .hword 0x10 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1023
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x781b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1024
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1025
   .hword 0x10 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1026
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1027
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 1028
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1029
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3e3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1030
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1031
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c00 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1032
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1033
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x781b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1034
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x13 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1035
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1036
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1037
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x13 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 1038
   .hword 0x10 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1039
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3e3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1040
   .hword 0x10 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1041
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c00 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1042
   .hword 0x10 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1043
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x781b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1044
   .hword 0x10 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1045
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1046
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1047
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1048
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3e3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1049
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 1050
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1051
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c00 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1052
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1053
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1054
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x781b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1055
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 1056
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1057
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1058
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x7 @ changes LINE for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1059
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1060
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1061
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1062
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1063
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1064
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1065
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 1066
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x2df @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1067
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x2df @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1068
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x3c1c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1069
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x40a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1070
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x413 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1071
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x1e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1072
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x407 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1073
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x1a @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 1074
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x1d @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 1075
   .hword 0x20 @ delta x
   .hword 0x340 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1076
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1077
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1078
   .hword 0x0 @ delta x
   .hword 0x377 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1079
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1080
   .hword 0x0 @ delta x
   .hword 0x377 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1081
   .hword 0x10 @ delta x
   .hword 0x377 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1082
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x2df @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1083
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x2df @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1084
   .hword 0x0 @ delta x
   .hword 0x377 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1085
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x3c1c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1086
   .hword 0x8 @ delta x
   .hword 0x38a @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1087
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1088
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1089
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1090
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1091
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1092
   .hword 0x17 @ delta x
   .hword 0x368 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1093
   .hword 0x9 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x2df @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1094
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x2df @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1095
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1096
   .hword 0x10 @ delta x
   .hword 0x390 @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1097
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x40f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1098
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x357f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1099
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x421f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1100
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x82c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1101
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1102
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1103
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1104
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x40a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1105
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x413 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1106
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x1e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1107
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x407 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1108
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x7c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1109
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x3c1c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1110
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1111
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1112
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x2df @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1113
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x2df @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1114
   .hword 0xe @ delta x
   .hword 0x371 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1115
   .hword 0x2 @ delta x
   .hword 0x340 @ y
   .hword 0x7c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1116
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1117
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1118
   .hword 0xa @ delta x
   .hword 0x353 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1119
   .hword 0x6 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1120
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1121
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1122
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1123
   .hword 0x17 @ delta x
   .hword 0x344 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1124
   .hword 0x9 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1125
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x2df @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1126
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x2df @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1127
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x3c1c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1128
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1129
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1130
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x40f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1131
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x357f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1132
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x421f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1133
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x82c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1134
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1135
   .hword 0xd @ delta x
   .hword 0x38a @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1136
   .hword 0x3 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x40a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1137
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x413 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1138
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x1e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1139
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x407 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1140
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1141
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1142
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1143
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1144
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1145
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1146
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1147
   .hword 0x18 @ delta x
   .hword 0x348 @ y
   .hword 0x7c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1148
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x2df @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1149
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x2df @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1150
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1151
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1152
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x3c1c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1153
   .hword 0x0 @ delta x
   .hword 0x368 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1154
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1155
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1156
   .hword 0x0 @ delta x
   .hword 0x368 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1157
   .hword 0x10 @ delta x
   .hword 0x368 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1158
   .hword 0xc @ delta x
   .hword 0x351 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1159
   .hword 0x4 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x40f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1160
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x357f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1161
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x421f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1162
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x82c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1163
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x2df @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1164
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x2df @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1165
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1166
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x40a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1167
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x413 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1168
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x1e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1169
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x407 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1170
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1171
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1172
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1173
   .hword 0x9 @ delta x
   .hword 0x367 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1174
   .hword 0x17 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3c29 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1175
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7e1a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1176
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7e1a @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1177
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3028 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1178
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1179
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1180
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1181
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x2c07 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1182
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7012 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1183
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7813 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1184
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1c04 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1185
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x13 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 1186
   .hword 0x7 @ delta x
   .hword 0x358 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1187
   .hword 0x1 @ delta x
   .hword 0x38f @ y
   .hword 0x7c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1188
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x7300 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1189
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x5c65 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1190
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7e12 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1191
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7e11 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1192
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3021 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1193
   .hword 0x7 @ delta x
   .hword 0x358 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1194
   .hword 0x7 @ delta x
   .hword 0x341 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1195
   .hword 0x2 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x2c01 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1196
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7002 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1197
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7802 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1198
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x3021 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1199
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x57e0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1200
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x57e0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1201
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1202
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1203
   .hword 0x8 @ delta x
   .hword 0x359 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1204
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1205
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1206
   .hword 0x8 @ delta x
   .hword 0x359 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1207
   .hword 0x0 @ delta x
   .hword 0x38f @ y
   .hword 0x7c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1208
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1209
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1210
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1211
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1212
   .hword 0x10 @ delta x
   .hword 0x390 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1213
   .hword 0x8 @ delta x
   .hword 0x347 @ y
   .hword 0x7c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1214
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x57e0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1215
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x57e0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1216
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x7300 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1217
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x5c65 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1218
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7e12 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1219
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7e11 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1220
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3021 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1221
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1222
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x2c01 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1223
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7002 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1224
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7802 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1225
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x3021 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1226
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1227
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1228
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1229
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1230
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1231
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1232
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1233
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1234
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1235
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1236
   .hword 0x10 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1237
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x57e0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1238
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x57e0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1239
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1240
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1241
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1242
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1243
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1244
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x7300 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1245
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x5c65 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1246
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7e12 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1247
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7e11 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1248
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3021 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1249
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1250
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1251
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1252
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1253
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x2c01 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1254
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7002 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1255
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7802 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1256
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x3021 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1257
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1258
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1259
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1260
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1261
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x7c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1262
   .hword 0x20 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x57e0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1263
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x57e0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1264
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1265
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1266
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1267
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1268
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1269
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1270
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1271
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1272
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x7300 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1273
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1274
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1275
   .hword 0x20 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x57e0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1276
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x57e0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1277
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x5c65 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1278
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7e12 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1279
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7e11 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1280
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3021 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1281
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1282
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x2c01 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1283
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7002 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1284
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7802 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1285
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x3021 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1286
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1287
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1288
   .hword 0x18 @ delta x
   .hword 0x390 @ y
   .hword 0x7c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1289
   .hword 0x8 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1290
   .hword 0x8 @ delta x
   .hword 0x33f @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1291
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x57e0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1292
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x57e0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1293
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x7300 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1294
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1295
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1296
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1297
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1298
   .hword 0x5 @ delta x
   .hword 0x355 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1299
   .hword 0xb @ delta x
   .hword 0x340 @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1300
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1301
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1302
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1303
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1304
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1305
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1306
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1307
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1308
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x57e0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1309
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x57e0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1310
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x5c65 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1311
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7e12 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1312
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7e11 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1313
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3021 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1314
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1315
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x2c01 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1316
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7002 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1317
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7802 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1318
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x3021 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1319
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1320
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x7300 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1321
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x67 @ changes LINE for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1322
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1323
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1324
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1325
   .hword 0x10 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1326
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1327
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1328
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1329
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x92 @ changes 3 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1330
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x1087 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1331
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1332
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x1083 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1333
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1334
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x72 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1335
   .hword 0x40 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1336
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x92 @ changes 3 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1337
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x5adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1338
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1339
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x18c6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1340
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1341
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 10922 @ rotation
@ Object 1342
   .hword 0x9 @ delta x
   .hword 0x367 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1343
   .hword 0x7 @ delta x
   .hword 0x357 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 10922 @ rotation
@ Object 1344
   .hword 0xd @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 10922 @ rotation
@ Object 1345
   .hword 0xa @ delta x
   .hword 0x349 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1346
   .hword 0x3 @ delta x
   .hword 0x390 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 10922 @ rotation
@ Object 1347
   .hword 0x6 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1348
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x92 @ changes 3 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1349
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x1087 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1350
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1351
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x1083 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1352
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1353
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 1354
   .hword 0x17 @ delta x
   .hword 0x38f @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 54613 @ rotation
@ Object 1355
   .hword 0x1 @ delta x
   .hword 0x3a8 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1356
   .hword 0xc @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 54613 @ rotation
@ Object 1357
   .hword 0x3 @ delta x
   .hword 0x348 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1358
   .hword 0x9 @ delta x
   .hword 0x359 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 54613 @ rotation
@ Object 1359
   .hword 0xa @ delta x
   .hword 0x340 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 54613 @ rotation
@ Object 1360
   .hword 0x6 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1361
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x92 @ changes 3 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1362
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x5adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1363
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1364
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x18c6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1365
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1366
   .hword 0x18 @ delta x
   .hword 0x340 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 10922 @ rotation
@ Object 1367
   .hword 0x0 @ delta x
   .hword 0x367 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1368
   .hword 0x10 @ delta x
   .hword 0x357 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 10922 @ rotation
@ Object 1369
   .hword 0xd @ delta x
   .hword 0x371 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 10922 @ rotation
@ Object 1370
   .hword 0x3 @ delta x
   .hword 0x3a6 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1371
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1372
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x92 @ changes 3 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1373
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x1087 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1374
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1375
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x1083 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1376
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1377
   .hword 0x2 @ delta x
   .hword 0x390 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 10922 @ rotation
@ Object 1378
   .hword 0x15 @ delta x
   .hword 0x370 @ y
   .hword 0x8f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1379
   .hword 0x2 @ delta x
   .hword 0x348 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1380
   .hword 0x7 @ delta x
   .hword 0x3af @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 54613 @ rotation
@ Object 1381
   .hword 0xc @ delta x
   .hword 0x38f @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 54613 @ rotation
@ Object 1382
   .hword 0x4 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7ef6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1383
   .hword 0x8 @ delta x
   .hword 0x379 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 54613 @ rotation
@ Object 1384
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1385
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x92 @ changes 3 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1386
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1387
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x18c6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1388
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1389
   .hword 0x2 @ delta x
   .hword 0x360 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 54613 @ rotation
@ Object 1390
   .hword 0x6 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7edc @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1391
   .hword 0x18 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5bf6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1392
   .hword 0x6 @ delta x
   .hword 0x35f @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 10922 @ rotation
@ Object 1393
   .hword 0x2 @ delta x
   .hword 0x338 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1394
   .hword 0xe @ delta x
   .hword 0x377 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 10922 @ rotation
@ Object 1395
   .hword 0xa @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1396
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x92 @ changes 3 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1397
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1398
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x1083 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1399
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1400
   .hword 0x3 @ delta x
   .hword 0x390 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 10922 @ rotation
@ Object 1401
   .hword 0xd @ delta x
   .hword 0x3af @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 10922 @ rotation
@ Object 1402
   .hword 0x18 @ delta x
   .hword 0x3b6 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1403
   .hword 0x1 @ delta x
   .hword 0x398 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 54613 @ rotation
@ Object 1404
   .hword 0xd @ delta x
   .hword 0x378 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 54613 @ rotation
@ Object 1405
   .hword 0x2 @ delta x
   .hword 0x357 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1406
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1407
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x92 @ changes 3 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1408
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1409
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x18c6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1410
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1411
   .hword 0x5 @ delta x
   .hword 0x362 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 54613 @ rotation
@ Object 1412
   .hword 0xb @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5b9f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1413
   .hword 0x0 @ delta x
   .hword 0x388 @ y
   .hword 0x8f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1414
   .hword 0x0 @ delta x
   .hword 0x349 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 54613 @ rotation
@ Object 1415
   .hword 0x7 @ delta x
   .hword 0x330 @ y
   .hword 0xf @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 1416
   .hword 0x10 @ delta x
   .hword 0x367 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 10922 @ rotation
@ Object 1417
   .hword 0x1 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1418
   .hword 0x0 @ delta x
   .hword 0x398 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1419
   .hword 0xc @ delta x
   .hword 0x380 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 10922 @ rotation
@ Object 1420
   .hword 0x5 @ delta x
   .hword 0x367 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1421
   .hword 0x7 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1422
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x92 @ changes 3 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1423
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5edf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1424
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1425
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x1083 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1426
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1427
   .hword 0x1 @ delta x
   .hword 0x28f @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x1087 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1428
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 10922 @ rotation
@ Object 1429
   .hword 0x16 @ delta x
   .hword 0x386 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1430
   .hword 0x5 @ delta x
   .hword 0x3a7 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 54613 @ rotation
@ Object 1431
   .hword 0xc @ delta x
   .hword 0x367 @ y
   .hword 0x91 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1432
   .hword 0x1 @ delta x
   .hword 0x388 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 54613 @ rotation
@ Object 1433
   .hword 0xc @ delta x
   .hword 0x371 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 54613 @ rotation
@ Object 1434
   .hword 0x3 @ delta x
   .hword 0x338 @ y
   .hword 0x90 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1435
   .hword 0x7 @ delta x
   .hword 0x358 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 54613 @ rotation
@ Object 1436
   .hword 0x1 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1437
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x92 @ changes 3 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1438
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x5adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1439
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1440
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x18c6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1441
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1442
   .hword 0x28 @ delta x
   .hword 0x349 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1443
   .hword 0x18 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1444
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x92 @ changes 3 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1445
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1446
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1447
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x1083 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1448
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1449
   .hword 0x10 @ delta x
   .hword 0x36f @ y
   .hword 0x1d @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 1450
   .hword 0x7 @ delta x
   .hword 0x355 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1451
   .hword 0x1 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5b9f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1452
   .hword 0x8 @ delta x
   .hword 0x3a8 @ y
   .hword 0x90 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1453
   .hword 0x10 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5bdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1454
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1455
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x92 @ changes 3 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1456
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1457
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x18c6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1458
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1459
   .hword 0x1 @ delta x
   .hword 0x3a0 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 8192 @ rotation
@ Object 1460
   .hword 0x6 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5bf6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1461
   .hword 0x1 @ delta x
   .hword 0x368 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1462
   .hword 0x18 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7f96 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1463
   .hword 0x17 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7edb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1464
   .hword 0x9 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1465
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x92 @ changes 3 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1466
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1467
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x1083 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1468
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1469
   .hword 0x10 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7edf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1470
   .hword 0x5 @ delta x
   .hword 0x369 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 1471
   .hword 0x10 @ delta x
   .hword 0x379 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 8192 @ rotation
@ Object 1472
   .hword 0x2 @ delta x
   .hword 0x3a6 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1473
   .hword 0x1 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x6adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1474
   .hword 0x1 @ delta x
   .hword 0x366 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1475
   .hword 0xc @ delta x
   .hword 0x389 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 1476
   .hword 0xb @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1477
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x5bf6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1478
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1479
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1480
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x18c6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1481
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1482
   .hword 0x5 @ delta x
   .hword 0x399 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 8192 @ rotation
@ Object 1483
   .hword 0x13 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5b9f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1484
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7f96 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1485
   .hword 0x18 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5bdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1486
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7edb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1487
   .hword 0x8 @ delta x
   .hword 0x368 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1488
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1489
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1490
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x1083 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1491
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1492
   .hword 0x7 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5bf6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1493
   .hword 0x1 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7edf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1494
   .hword 0x0 @ delta x
   .hword 0x388 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1495
   .hword 0x10 @ delta x
   .hword 0x388 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1496
   .hword 0x8 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7f96 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1497
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x8f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1498
   .hword 0x0 @ delta x
   .hword 0x3b7 @ y
   .hword 0x91 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1499
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x6adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1500
   .hword 0x8 @ delta x
   .hword 0x388 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1501
   .hword 0xf @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7edb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1502
   .hword 0x1 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x5adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1503
   .hword 0x0 @ delta x
   .hword 0x388 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1504
   .hword 0x7 @ delta x
   .hword 0x3b7 @ y
   .hword 0x91 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1505
   .hword 0x1 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x93 @ changes 4 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1506
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1507
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x18c6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1508
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1509
   .hword 0x8 @ delta x
   .hword 0x388 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1510
   .hword 0x8 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7edf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1511
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x90 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1512
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x5b9f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1513
   .hword 0x8 @ delta x
   .hword 0x388 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1514
   .hword 0x10 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x6adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1515
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x5bdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1516
   .hword 0x18 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7edb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1517
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x5bf6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1518
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1519
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1520
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x1083 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1521
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1522
   .hword 0x7 @ delta x
   .hword 0x349 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1523
   .hword 0x11 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7edf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1524
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5b9f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1525
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7f96 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1526
   .hword 0x18 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5bdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1527
   .hword 0x0 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x6adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1528
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7edb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1529
   .hword 0x8 @ delta x
   .hword 0x350 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 1530
   .hword 0x8 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1531
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x18c6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1532
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1533
   .hword 0x7 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5bf6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1534
   .hword 0x1 @ delta x
   .hword 0x35f @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 8192 @ rotation
@ Object 1535
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7edf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1536
   .hword 0x0 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x5adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1537
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 1538
   .hword 0x8 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7f96 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1539
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x6adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1540
   .hword 0x1 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x5b9f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1541
   .hword 0x7 @ delta x
   .hword 0x3b0 @ y
   .hword 0x90 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1542
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 8192 @ rotation
@ Object 1543
   .hword 0x1 @ delta x
   .hword 0x366 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1544
   .hword 0xe @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7edb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1545
   .hword 0x1 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x5adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1546
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 1547
   .hword 0x0 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x5bdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1548
   .hword 0x8 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1549
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x1083 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1550
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1551
   .hword 0x8 @ delta x
   .hword 0x3a0 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 8192 @ rotation
@ Object 1552
   .hword 0x8 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7edf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1553
   .hword 0x0 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x5bf6 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1554
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x5b9f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1555
   .hword 0x17 @ delta x
   .hword 0x388 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1556
   .hword 0x1 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x6adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1557
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x5bdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1558
   .hword 0x0 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7f96 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1559
   .hword 0x8 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x3988 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1560
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x31 @ changes 2 for 6 frames
   .hword 0x1529 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1561
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x31 @ changes 2 for 6 frames
   .hword 0x24ec @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1562
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 1563
   .hword 0xa @ delta x
   .hword 0x369 @ y
   .hword 0x91 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1564
   .hword 0x6 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1565
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x18c6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1566
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1567
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 57344 @ rotation
@ Object 1568
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x63 @ changes 4 for 12 frames
   .hword 0x7f96 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1569
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x5bdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1570
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x6adf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1571
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 1572
   .hword 0x6 @ delta x
   .hword 0x348 @ y
   .hword 0x90 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1573
   .hword 0xa @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 57344 @ rotation
@ Object 1574
   .hword 0x20 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1575
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x1083 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1576
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1577
   .hword 0x8 @ delta x
   .hword 0x368 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1578
   .hword 0x18 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x5b9f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1579
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x5b9f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1580
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5b9f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1581
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 1582
   .hword 0x10 @ delta x
   .hword 0x380 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 57344 @ rotation
@ Object 1583
   .hword 0x8 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x5b7f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1584
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x5b7f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1585
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5b7f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1586
   .hword 0x8 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x5ad7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1587
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x18c6 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1588
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1589
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 1590
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x8f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1591
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x5bdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1592
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x5bdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1593
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x5bdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1594
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x80 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x140 @ z index 0 pal 5
   .hword 57344 @ rotation
@ Object 1595
   .hword 0x7 @ delta x
   .hword 0x3b7 @ y
   .hword 0x91 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1596
   .hword 0x1 @ delta x
   .hword 0x381 @ y
   .hword 0x90 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1597
   .hword 0x3 @ delta x
   .hword 0x350 @ y
   .hword 0x2 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 57344 @ rotation
@ Object 1598
   .hword 0x5 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1599
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1600
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1601
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1602
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1603
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1604
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0xa @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 1605
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0xa @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 1606
   .hword 0x8 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1e4 @ changes BG for 60 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1607
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x1e6 @ changes OBJ for 60 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1608
   .hword 0x18 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1609
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1610
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1611
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1612
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1613
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1614
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1615
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1616
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1617
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1618
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1619
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1620
   .hword 0x20 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1621
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1622
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1623
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1624
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x1c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 8192 @ rotation
@ Object 1625
   .hword 0x10 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1626
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1627
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1628
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1629
   .hword 0x20 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1630
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1631
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1632
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1633
   .hword 0x20 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1634
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1635
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1636
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1637
   .hword 0x10 @ delta x
   .hword 0x2df @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1c02 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1638
   .hword 0x8 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1639
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1640
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1641
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1642
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1643
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1644
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1645
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1646
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1647
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1648
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 1649
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1650
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1651
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1652
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1653
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1654
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1655
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1656
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1657
   .hword 0x20 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1658
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1659
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1660
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1661
   .hword 0x20 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1662
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1663
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1664
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1665
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1666
   .hword 0x10 @ delta x
   .hword 0x2ef @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1407 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1667
   .hword 0x8 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1668
   .hword 0x8 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1669
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1670
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1671
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1672
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1673
   .hword 0x10 @ delta x
   .hword 0x310 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1674
   .hword 0x10 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1675
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1676
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1677
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1678
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1679
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1680
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1681
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1682
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1683
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1684
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1685
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1686
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1687
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1688
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1689
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1690
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1691
   .hword 0x10 @ delta x
   .hword 0x2df @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1c02 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1692
   .hword 0x8 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1693
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1694
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1695
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1696
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1697
   .hword 0x20 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1698
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1699
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1700
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1701
   .hword 0x0 @ delta x
   .hword 0x2df @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x4ec @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1702
   .hword 0x8 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1703
   .hword 0x8 @ delta x
   .hword 0x310 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1704
   .hword 0x10 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1705
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1706
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1707
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1708
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1709
   .hword 0x20 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1710
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1711
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1712
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1713
   .hword 0x20 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1714
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1715
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1716
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1717
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x39 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 1718
   .hword 0x10 @ delta x
   .hword 0x2cf @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1c02 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1719
   .hword 0x8 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1720
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1721
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1722
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1723
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1724
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1725
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1726
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1727
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1728
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1729
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1730
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1731
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1732
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1733
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1734
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1735
   .hword 0x20 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1736
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1737
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1738
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1739
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1740
   .hword 0x20 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1741
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1742
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1743
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1744
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1745
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1746
   .hword 0x20 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1747
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1748
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1749
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1750
   .hword 0x0 @ delta x
   .hword 0x2cf @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1960 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1751
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1752
   .hword 0x8 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1753
   .hword 0x18 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1754
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1755
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1756
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1757
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1758
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x1d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1759
   .hword 0x10 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1760
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1761
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1762
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1763
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1764
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1765
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1766
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1767
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1768
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1769
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1770
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1771
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1772
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1773
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1774
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1775
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1776
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1777
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1778
   .hword 0x10 @ delta x
   .hword 0x310 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1779
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1780
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1781
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1782
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1783
   .hword 0x0 @ delta x
   .hword 0x2cf @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1c02 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1784
   .hword 0x8 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1785
   .hword 0x8 @ delta x
   .hword 0x320 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1786
   .hword 0x10 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1787
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1788
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1789
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1790
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1791
   .hword 0x20 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1792
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1793
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1794
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1795
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1796
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1797
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1798
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1799
   .hword 0x10 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1800
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1801
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1802
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1803
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1804
   .hword 0x10 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1805
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1806
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1807
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1808
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1809
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1810
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1811
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1812
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1813
   .hword 0x0 @ delta x
   .hword 0x2cf @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x4ec @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1814
   .hword 0x8 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1815
   .hword 0x8 @ delta x
   .hword 0x330 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1816
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1817
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1818
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1819
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1820
   .hword 0x0 @ delta x
   .hword 0x2cf @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1960 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1821
   .hword 0x8 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1822
   .hword 0x8 @ delta x
   .hword 0x340 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1823
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x4fe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1824
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x21f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1825
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7409 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1826
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x501f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1827
   .hword 0x0 @ delta x
   .hword 0x2cf @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1407 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1828
   .hword 0x10 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7fff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1829
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7fff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1830
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7fff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1831
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1832
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1833
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x72 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1834
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x92 @ changes 3 for 18 frames
   .hword 0x206d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1835
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x206d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1836
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x481f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1837
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x481f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1838
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x94 @ changes BG for 18 frames
   .hword 0x244f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1839
   .hword 0x8 @ delta x
   .hword 0x320 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1840
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1841
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1842
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1843
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1844
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1845
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1846
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x2410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1847
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1848
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x38d4 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1849
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5619 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1850
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x59bd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1851
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3876 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1852
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1853
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1854
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x8f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1855
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1856
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1857
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x63 @ changes 4 for 12 frames
   .hword 0x1007 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1858
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x206d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1859
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x481f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1860
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x66 @ changes OBJ for 12 frames
   .hword 0x481f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1861
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x64 @ changes BG for 12 frames
   .hword 0x244f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1862
   .hword 0x8 @ delta x
   .hword 0x320 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1863
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1864
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1865
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1866
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1867
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1868
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1869
   .hword 0x10 @ delta x
   .hword 0x310 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1870
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1871
   .hword 0x10 @ delta x
   .hword 0x300 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1872
   .hword 0x10 @ delta x
   .hword 0x310 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1873
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1874
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1875
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1876
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1877
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1878
   .hword 0x0 @ delta x
   .hword 0x337 @ y
   .hword 0x1c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 8192 @ rotation
@ Object 1879
   .hword 0x10 @ delta x
   .hword 0x310 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1880
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1881
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1882
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1883
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1884
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x2410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1885
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x38d4 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1886
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5619 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1887
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x59bd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1888
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3876 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1889
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1890
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1891
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1892
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x1007 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1893
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x206d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1894
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x481f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1895
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x66 @ changes OBJ for 12 frames
   .hword 0x481f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1896
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x64 @ changes BG for 12 frames
   .hword 0x244f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1897
   .hword 0x8 @ delta x
   .hword 0x370 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1898
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1899
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1900
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1901
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1902
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1903
   .hword 0x10 @ delta x
   .hword 0x300 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1904
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1905
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1906
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1907
   .hword 0x9 @ delta x
   .hword 0x361 @ y
   .hword 0x90 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1908
   .hword 0x7 @ delta x
   .hword 0x310 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1909
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1910
   .hword 0x10 @ delta x
   .hword 0x300 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1911
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1912
   .hword 0x10 @ delta x
   .hword 0x310 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1913
   .hword 0x10 @ delta x
   .hword 0x300 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1914
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1915
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1916
   .hword 0x8 @ delta x
   .hword 0x360 @ y
   .hword 0x90 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1917
   .hword 0x8 @ delta x
   .hword 0x310 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1918
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1919
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1920
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1921
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x1d @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 8192 @ rotation
@ Object 1922
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x2410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1923
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1924
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x38d4 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1925
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5619 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1926
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x59bd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1927
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3876 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1928
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1929
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1930
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x63 @ changes 4 for 12 frames
   .hword 0x1007 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1931
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x206d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1932
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x481f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1933
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x66 @ changes OBJ for 12 frames
   .hword 0x481f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1934
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x64 @ changes BG for 12 frames
   .hword 0x244f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1935
   .hword 0x8 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1936
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1937
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1938
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1939
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1940
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1941
   .hword 0x8 @ delta x
   .hword 0x356 @ y
   .hword 0x90 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1942
   .hword 0x8 @ delta x
   .hword 0x310 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1943
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1944
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1945
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1946
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1947
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1948
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1949
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x2410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1950
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x38d4 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1951
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5619 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1952
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x59bd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1953
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3876 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1954
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1955
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x1007 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1956
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x206d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1957
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x481f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1958
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x66 @ changes OBJ for 12 frames
   .hword 0x481f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1959
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x64 @ changes BG for 12 frames
   .hword 0x244f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1960
   .hword 0x8 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1961
   .hword 0x10 @ delta x
   .hword 0x310 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1962
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1963
   .hword 0x8 @ delta x
   .hword 0x315 @ y
   .hword 0x90 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1964
   .hword 0x8 @ delta x
   .hword 0x300 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1965
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1966
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1967
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1968
   .hword 0x7 @ delta x
   .hword 0x358 @ y
   .hword 0x90 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1969
   .hword 0x9 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1970
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x2410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1971
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x38d4 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1972
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x5619 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1973
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x59bd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1974
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3876 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1975
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1976
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1977
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1978
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1979
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1980
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1981
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x66 @ changes OBJ for 12 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1982
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x64 @ changes BG for 12 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1983
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1984
   .hword 0x0 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1985
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1986
   .hword 0x8 @ delta x
   .hword 0x1d0 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1987
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1988
   .hword 0x0 @ delta x
   .hword 0x1c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1989
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1990
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1991
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1992
   .hword 0x0 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1993
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1994
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1995
   .hword 0x8 @ delta x
   .hword 0x1d0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1996
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1997
   .hword 0x0 @ delta x
   .hword 0x1c0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1998
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1999
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2000
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x3 @ type
   .hword 0x63 @ changes 4 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2001
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2002
   .hword 0x0 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2003
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2004
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2005
   .hword 0x8 @ delta x
   .hword 0x1d0 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2006
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2007
   .hword 0x0 @ delta x
   .hword 0x1c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2008
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2009
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2010
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2011
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2012
   .hword 0x0 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2013
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2014
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2015
   .hword 0x8 @ delta x
   .hword 0x1d0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2016
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2017
   .hword 0x0 @ delta x
   .hword 0x1c0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2018
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2019
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2020
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x3 @ type
   .hword 0x63 @ changes 4 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2021
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2022
   .hword 0x0 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2023
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2024
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2025
   .hword 0x8 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2026
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2027
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2028
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2029
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2030
   .hword 0x8 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2031
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2032
   .hword 0x0 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2033
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2034
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2035
   .hword 0x8 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2036
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2037
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2038
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2039
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x1d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2040
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2041
   .hword 0x8 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x63 @ changes 4 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2042
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2043
   .hword 0x0 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2044
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2045
   .hword 0x8 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2046
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2047
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2048
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2049
   .hword 0x8 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2050
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2051
   .hword 0x0 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2052
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2053
   .hword 0x8 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2054
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2055
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2056
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2057
   .hword 0x8 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x63 @ changes 4 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2058
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2059
   .hword 0x0 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2060
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2061
   .hword 0x8 @ delta x
   .hword 0x1d0 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2062
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2063
   .hword 0x0 @ delta x
   .hword 0x1c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2064
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2065
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2066
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2067
   .hword 0x0 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2068
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2069
   .hword 0x8 @ delta x
   .hword 0x1d0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2070
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2071
   .hword 0x0 @ delta x
   .hword 0x1c0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2072
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2073
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x3 @ type
   .hword 0x63 @ changes 4 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2074
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2075
   .hword 0x0 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2076
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2077
   .hword 0x8 @ delta x
   .hword 0x1d0 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2078
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2079
   .hword 0x0 @ delta x
   .hword 0x1c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2080
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2081
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2082
   .hword 0x0 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2083
   .hword 0x8 @ delta x
   .hword 0x1d0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2084
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2085
   .hword 0x0 @ delta x
   .hword 0x1c0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2086
   .hword 0x0 @ delta x
   .hword 0x30f @ y
   .hword 0x2 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 57344 @ rotation
@ Object 2087
   .hword 0x7 @ delta x
   .hword 0x308 @ y
   .hword 0xa @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 2088
   .hword 0x0 @ delta x
   .hword 0x2f8 @ y
   .hword 0xa @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 2089
   .hword 0x0 @ delta x
   .hword 0x317 @ y
   .hword 0xa @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 2090
   .hword 0x1 @ delta x
   .hword 0x1b0 @ y
   .hword 0x3 @ type
   .hword 0x63 @ changes 4 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2091
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2092
   .hword 0x0 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2093
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2094
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2095
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2096
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2097
   .hword 0x8 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2098
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2099
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2100
   .hword 0x8 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2101
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2102
   .hword 0x0 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2103
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2104
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2105
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2106
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2107
   .hword 0x8 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2108
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2109
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2110
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2111
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2112
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2113
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2114
   .hword 0x8 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x63 @ changes 4 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2115
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2116
   .hword 0x0 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2117
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0xa @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 2118
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0xa @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 2119
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2120
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2121
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2122
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2123
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2124
   .hword 0x8 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2125
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2126
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2127
   .hword 0x8 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2128
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2129
   .hword 0x0 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2130
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2131
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2132
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2133
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2134
   .hword 0x8 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2135
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2136
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2137
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2138
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2139
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2140
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2141
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2142
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2143
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2144
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2145
   .hword 0x8 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x63 @ changes 4 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2146
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2147
   .hword 0x0 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2148
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2149
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2150
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2151
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2152
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2153
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2154
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2155
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2156
   .hword 0x8 @ delta x
   .hword 0x1d0 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2157
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2158
   .hword 0x0 @ delta x
   .hword 0x1c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2159
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0xa @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 2160
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2161
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0xa @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 2162
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2163
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2164
   .hword 0x0 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2165
   .hword 0x8 @ delta x
   .hword 0x1d0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2166
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2167
   .hword 0x0 @ delta x
   .hword 0x1c0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2168
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2169
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2170
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2171
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2172
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2173
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2174
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2175
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2176
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x3 @ type
   .hword 0x63 @ changes 4 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2177
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2178
   .hword 0x0 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2179
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2180
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2181
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2182
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2183
   .hword 0x8 @ delta x
   .hword 0x1d0 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2184
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2185
   .hword 0x0 @ delta x
   .hword 0x1c0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2186
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2187
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2188
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2189
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2190
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x3 @ type
   .hword 0x61 @ changes 2 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2191
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2192
   .hword 0x0 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2193
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2194
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2195
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2196
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2197
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2198
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2199
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2200
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2201
   .hword 0x8 @ delta x
   .hword 0x1d0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2202
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2203
   .hword 0x0 @ delta x
   .hword 0x1c0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2204
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x3 @ type
   .hword 0x63 @ changes 4 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2205
   .hword 0x8 @ delta x
   .hword 0x310 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2206
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x5e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2207
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2208
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2209
   .hword 0x10 @ delta x
   .hword 0x2d0 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2210
   .hword 0x10 @ delta x
   .hword 0x2c0 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 2211
   .hword 0x10 @ delta x
   .hword 0x2d0 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2212
   .hword 0xf @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2213
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2214
   .hword 0x1 @ delta x
   .hword 0x2c0 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 2215
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2216
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2217
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2218
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2219
   .hword 0x1 @ delta x
   .hword 0x2f0 @ y
   .hword 0x34 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2220
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2221
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2222
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2223
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2224
   .hword 0x9 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2225
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2226
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2227
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2228
   .hword 0x9 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2229
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2230
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2231
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2232
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2233
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2234
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2235
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2236
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2237
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2238
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2239
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2240
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2241
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2242
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2243
   .hword 0x8 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2244
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2245
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2246
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2247
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2248
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2249
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2250
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2251
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2252
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2253
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2254
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2255
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2256
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2257
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2258
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2259
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2260
   .hword 0x9 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2261
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2262
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2263
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2264
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2265
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2266
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2267
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2268
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2269
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2270
   .hword 0x9 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2271
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2272
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2273
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2274
   .hword 0x9 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2275
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2276
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2277
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2278
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2279
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2280
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2281
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2282
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2283
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2284
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2285
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2286
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2287
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2288
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2289
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2290
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2291
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2292
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2293
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2294
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2295
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2296
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2297
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2298
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2299
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2300
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2301
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2302
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2303
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2304
   .hword 0x9 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2305
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2306
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2307
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2308
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2309
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2310
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2311
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2312
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2313
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2314
   .hword 0x9 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2315
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2316
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2317
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2318
   .hword 0x9 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2319
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2320
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2321
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2322
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2323
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2324
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2325
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2326
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2327
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2328
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2329
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2330
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2331
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2332
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2333
   .hword 0x8 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2334
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2335
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2336
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2337
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2338
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2339
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2340
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2341
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2342
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2343
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2344
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2345
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2346
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2347
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2348
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2349
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2350
   .hword 0x1 @ delta x
   .hword 0x2d0 @ y
   .hword 0x35 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 2351
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2352
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2353
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2354
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2355
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2356
   .hword 0x9 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2357
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2358
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2359
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2360
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2361
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2362
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2363
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2364
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2365
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2366
   .hword 0x9 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2367
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2368
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2369
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2370
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2371
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2372
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2373
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2374
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2375
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2376
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2377
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2378
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2379
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2380
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2381
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2382
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2383
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2384
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2385
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2386
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2387
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2388
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2389
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2390
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2391
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2392
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2393
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2394
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2395
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2396
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2397
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2398
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2399
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2400
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2401
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2402
   .hword 0x9 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2403
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2404
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2405
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2406
   .hword 0x1 @ delta x
   .hword 0x2c0 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 2407
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2408
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x4b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2409
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2410
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2411
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2412
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2413
   .hword 0x9 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2414
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2415
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2416
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2417
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2418
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2419
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x77 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2420
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x79 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2421
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7408 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2422
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2423
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2424
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2425
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7410 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2426
   .hword 0x9 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2427
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2428
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2429
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2430
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 2431
   .hword 0x8 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2432
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2433
   .hword 0x7 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2434
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2435
   .hword 0x1 @ delta x
   .hword 0x300 @ y
   .hword 0x13 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2436
   .hword 0x8 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2437
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2438
   .hword 0x8 @ delta x
   .hword 0x2e0 @ y
   .hword 0x36 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2439
   .hword 0xf @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2440
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2441
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2442
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x1 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2443
   .hword 0xf @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2444
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2445
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2446
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2447
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2448
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2449
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2450
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2451
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2452
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2453
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2454
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2455
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2456
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2457
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2458
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2459
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2460
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2461
   .hword 0x6 @ delta x
   .hword 0x2ac @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2462
   .hword 0xa @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2463
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2464
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2465
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2466
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2467
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2468
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2469
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2470
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2471
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2472
   .hword 0x8 @ delta x
   .hword 0x330 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2473
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2474
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2475
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2476
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2477
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2478
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2479
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2480
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2481
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2482
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2483
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2484
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2485
   .hword 0x9 @ delta x
   .hword 0x2ad @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2486
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2487
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2488
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2489
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2490
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2491
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2492
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2493
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2494
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2495
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2496
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2497
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2498
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2499
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2500
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2501
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2502
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2503
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2504
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2505
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2506
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2507
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2508
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2509
   .hword 0x9 @ delta x
   .hword 0x2a9 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2510
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2511
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2512
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2513
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2514
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2515
   .hword 0x10 @ delta x
   .hword 0x328 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2516
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2517
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2518
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2519
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2520
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2521
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2522
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2523
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2524
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2525
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2526
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2527
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2528
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2529
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2530
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2531
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2532
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2533
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2534
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2535
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2536
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2537
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2538
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2539
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2540
   .hword 0x1 @ delta x
   .hword 0x2d0 @ y
   .hword 0xf @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 2541
   .hword 0xf @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2542
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2543
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2544
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2545
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2546
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2547
   .hword 0x9 @ delta x
   .hword 0x31f @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2548
   .hword 0x7 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2549
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2550
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2551
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2552
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2553
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2554
   .hword 0x9 @ delta x
   .hword 0x308 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2555
   .hword 0x7 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2556
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2557
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2558
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2559
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2560
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2561
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2562
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2563
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2564
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2565
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2566
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2567
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2568
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2569
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2570
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2571
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2572
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2573
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2574
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2575
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2576
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2577
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2578
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2579
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2580
   .hword 0x4 @ delta x
   .hword 0x2aa @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2581
   .hword 0xc @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2582
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2583
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2584
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2585
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2586
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2587
   .hword 0x10 @ delta x
   .hword 0x2a0 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2588
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2589
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2590
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2591
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2592
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2593
   .hword 0x1 @ delta x
   .hword 0x310 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2594
   .hword 0xf @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2595
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2596
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2597
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2598
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2599
   .hword 0x7 @ delta x
   .hword 0x2ab @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2600
   .hword 0x9 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2601
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2602
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2603
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2604
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2605
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2606
   .hword 0x0 @ delta x
   .hword 0x3c0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2607
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2608
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2609
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2610
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2611
   .hword 0x9 @ delta x
   .hword 0x2a9 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2612
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2613
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2614
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2615
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2616
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2617
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2618
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2619
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2620
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2621
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2622
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2623
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2624
   .hword 0x1 @ delta x
   .hword 0x328 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2625
   .hword 0xf @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2626
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2627
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2628
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2629
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2630
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2631
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2632
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2633
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2634
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2635
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2636
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2637
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2638
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2639
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2640
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2641
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2642
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2643
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2644
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2645
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2646
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2647
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2648
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2649
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2650
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2651
   .hword 0x1 @ delta x
   .hword 0x2b0 @ y
   .hword 0xf @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 2652
   .hword 0x7 @ delta x
   .hword 0x327 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2653
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2654
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2655
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2656
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2657
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2658
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2659
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2660
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2661
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2662
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2663
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2664
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2665
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2666
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2667
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2668
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2669
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2670
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2671
   .hword 0x6 @ delta x
   .hword 0x2eb @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2672
   .hword 0x3 @ delta x
   .hword 0x327 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2673
   .hword 0x7 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2674
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2675
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2676
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2677
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2678
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2679
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2680
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2681
   .hword 0x0 @ delta x
   .hword 0x2a7 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2682
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2683
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2684
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2685
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2686
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2687
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2688
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2689
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2690
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2691
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2692
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2693
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2694
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2695
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2696
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2697
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2698
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2699
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2700
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2701
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2702
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2703
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2704
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2705
   .hword 0x9 @ delta x
   .hword 0x328 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2706
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2707
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2708
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2709
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2710
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2711
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2712
   .hword 0x8 @ delta x
   .hword 0x2b0 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2713
   .hword 0x8 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2714
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2715
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2716
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2717
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2718
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2719
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2720
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2721
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2722
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2723
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2724
   .hword 0x3 @ delta x
   .hword 0x2ab @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2725
   .hword 0x6 @ delta x
   .hword 0x2c8 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2726
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2727
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2728
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2729
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2730
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2731
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2732
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2733
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2734
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2735
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2736
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2737
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2738
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2739
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2740
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2741
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2742
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2743
   .hword 0xc @ delta x
   .hword 0x2ab @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2744
   .hword 0x4 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2745
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2746
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2747
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2748
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2749
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2750
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2751
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2752
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2753
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2754
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2755
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2756
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2757
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2758
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2759
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2760
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2761
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2762
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2763
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2764
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2765
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2766
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2767
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x14 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2768
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x39 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2769
   .hword 0xf @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2770
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2771
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2772
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2773
   .hword 0x8 @ delta x
   .hword 0x328 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2774
   .hword 0x1 @ delta x
   .hword 0x2b0 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2775
   .hword 0x7 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2776
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2777
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2778
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2779
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2780
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2781
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2782
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2783
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2784
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2785
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2786
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2787
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2788
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2789
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2790
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2791
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2792
   .hword 0x1 @ delta x
   .hword 0x2f0 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2793
   .hword 0xf @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2794
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2795
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2796
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2797
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2798
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2799
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2800
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2801
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2802
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2803
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2804
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2805
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2806
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2807
   .hword 0x8 @ delta x
   .hword 0x2a8 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2808
   .hword 0x8 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2809
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2810
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2811
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2812
   .hword 0x9 @ delta x
   .hword 0x327 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2813
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2814
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2815
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2816
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2817
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2818
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2819
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2820
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c15 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2821
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2822
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2823
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2824
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2825
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x741f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2826
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2827
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2828
   .hword 0x1 @ delta x
   .hword 0x2d0 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2829
   .hword 0xb @ delta x
   .hword 0x2a8 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2830
   .hword 0x4 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2831
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2832
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2833
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2834
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2835
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2836
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2837
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1ff @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2838
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2839
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2840
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2841
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2842
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x33f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2843
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2844
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2845
   .hword 0x3 @ delta x
   .hword 0x30b @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2846
   .hword 0xd @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2847
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2848
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2849
   .hword 0x6 @ delta x
   .hword 0x2fa @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2850
   .hword 0xa @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2851
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2852
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f60 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2853
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2854
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2855
   .hword 0x8 @ delta x
   .hword 0x2b0 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2856
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2857
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2858
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c0d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2859
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2860
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x34 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2861
   .hword 0xf @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4ff3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2862
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x4ff3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2863
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2864
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4ff3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2865
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2866
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x4ff3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2867
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2868
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2869
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x4ff3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2870
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2871
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2872
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x4ff3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2873
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2874
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2875
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2876
   .hword 0xf @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2877
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4ff3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2878
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2879
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2880
   .hword 0x1 @ delta x
   .hword 0x2c0 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 2881
   .hword 0xf @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2882
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4ff3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2883
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2884
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2885
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4ff3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2886
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2887
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2888
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2889
   .hword 0xf @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2890
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x4ff3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2891
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2892
   .hword 0x10 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2893
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x4ff3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2894
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2895
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7f33 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2896
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2897
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7f33 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2898
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2899
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2900
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7f33 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2901
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2902
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f33 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2903
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2904
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2905
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7f33 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2906
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2907
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2908
   .hword 0x10 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2909
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7f33 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2910
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2911
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2912
   .hword 0x10 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2913
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7f33 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2914
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2915
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2916
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2917
   .hword 0xd @ delta x
   .hword 0x2ef @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2918
   .hword 0x3 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7f33 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2919
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2920
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2921
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2922
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2923
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7f33 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2924
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2925
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2926
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7f33 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2927
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2928
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2929
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2930
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7f33 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2931
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2932
   .hword 0x1 @ delta x
   .hword 0x300 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2933
   .hword 0xf @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2934
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7e7e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2935
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7e7e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2936
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2937
   .hword 0x1 @ delta x
   .hword 0x2d0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2938
   .hword 0xf @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2939
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7e7e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2940
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2941
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7e7e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2942
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2943
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2944
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7e7e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2945
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2946
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7e7e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2947
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2948
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7e7e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2949
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2950
   .hword 0x10 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2951
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7e7e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2952
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2953
   .hword 0x10 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2954
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7e7e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2955
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2956
   .hword 0x10 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7e7e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2957
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2958
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2959
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2960
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2961
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7e7e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2962
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2963
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7e7e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2964
   .hword 0x10 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x1e0 @ changes 1 for 60 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2965
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1e6 @ changes OBJ for 60 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2966
   .hword 0x41 @ delta x
   .hword 0x2e0 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2967
   .hword 0x20 @ delta x
   .hword 0x2d0 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2968
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 2969
   .hword 0x20 @ delta x
   .hword 0x2d0 @ y
   .hword 0x13 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2970
   .hword 0x40 @ delta x
   .hword 0x2f0 @ y
   .hword 0x36 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 2971
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x48 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 2972
   .hword 0x40 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7412 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2973
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7412 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2974
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7412 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2975
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7412 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2976
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7412 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2977
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7412 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2978
   .hword 0x8 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2979
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2980
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2981
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2982
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2983
   .hword 0x48 @ delta x
   .hword 0x2c0 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2984
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x74 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2985
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2986
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x74 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2987
   .hword 0x2c @ delta x
   .hword 0x2e0 @ y
   .hword 0xc @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 2988
   .hword 0x0 @ delta x
   .hword 0x311 @ y
   .hword 0xc @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2989
   .hword 0x3 @ delta x
   .hword 0x2d0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 3281 @ metatile ID appareance
@ Object 2990
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 3283 @ metatile ID appareance
@ Object 2991
   .hword 0x1 @ delta x
   .hword 0x2f8 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2992
   .hword 0xf @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x21d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2993
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x21d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2994
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x21d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2995
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x21d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2996
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x21d @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2997
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x21d @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2998
   .hword 0x1 @ delta x
   .hword 0x2f8 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2999
   .hword 0x7 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3000
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3001
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3002
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3003
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3004
   .hword 0x8 @ delta x
   .hword 0x2b0 @ y
   .hword 0x28 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3005
   .hword 0x1 @ delta x
   .hword 0x2f8 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3006
   .hword 0x10 @ delta x
   .hword 0x2f8 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 3007
   .hword 0x10 @ delta x
   .hword 0x300 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3008
   .hword 0x2f @ delta x
   .hword 0x2d0 @ y
   .hword 0xc @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3009
   .hword 0x1 @ delta x
   .hword 0x2f9 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 3010
   .hword 0x10 @ delta x
   .hword 0x2f9 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3011
   .hword 0xf @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0xfc0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3012
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0xfc0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3013
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0xfc0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3014
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0xfc0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3015
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0xfc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3016
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0xfc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3017
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x28 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3018
   .hword 0x1 @ delta x
   .hword 0x2f9 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3019
   .hword 0x7 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3020
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3021
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3022
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3023
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3024
   .hword 0x9 @ delta x
   .hword 0x2f9 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 3025
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3026
   .hword 0xf @ delta x
   .hword 0x2aa @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3027
   .hword 0x20 @ delta x
   .hword 0x310 @ y
   .hword 0xc @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3028
   .hword 0x1 @ delta x
   .hword 0x2f8 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 3029
   .hword 0xf @ delta x
   .hword 0x338 @ y
   .hword 0x28 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3030
   .hword 0x1 @ delta x
   .hword 0x2c0 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3031
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x74 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 3032
   .hword 0x0 @ delta x
   .hword 0x2f8 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3033
   .hword 0xf @ delta x
   .hword 0x2a7 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3034
   .hword 0x1 @ delta x
   .hword 0x2f8 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3035
   .hword 0x10 @ delta x
   .hword 0x2f8 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 3036
   .hword 0xf @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x77a0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3037
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x77a0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3038
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x77a0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3039
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x77a0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3040
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x77a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3041
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x77a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3042
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3043
   .hword 0x7 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3044
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3045
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3046
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3047
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3048
   .hword 0x9 @ delta x
   .hword 0x2af @ y
   .hword 0x28 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3049
   .hword 0xf @ delta x
   .hword 0x2e0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 47 @ metatile ID appareance
@ Object 3050
   .hword 0x10 @ delta x
   .hword 0x2f0 @ y
   .hword 0xc @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3051
   .hword 0x1 @ delta x
   .hword 0x308 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 3052
   .hword 0xf @ delta x
   .hword 0x330 @ y
   .hword 0xc @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3053
   .hword 0x1 @ delta x
   .hword 0x308 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3054
   .hword 0xf @ delta x
   .hword 0x2d0 @ y
   .hword 0x28 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3055
   .hword 0x1 @ delta x
   .hword 0x308 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3056
   .hword 0x10 @ delta x
   .hword 0x308 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 3057
   .hword 0x10 @ delta x
   .hword 0x2f0 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3058
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x74 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 3059
   .hword 0x7 @ delta x
   .hword 0x2d0 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3060
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3dd @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3061
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3dd @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3062
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3dd @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3063
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3dd @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3064
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3dd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3065
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3dd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3066
   .hword 0x8 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3067
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3068
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3069
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3070
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3071
   .hword 0x18 @ delta x
   .hword 0x308 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 3072
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x28 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3073
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 47 @ metatile ID appareance
@ Object 3074
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 23 @ metatile ID appareance
@ Object 3075
   .hword 0x10 @ delta x
   .hword 0x308 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3076
   .hword 0x10 @ delta x
   .hword 0x308 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3077
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0xc @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3078
   .hword 0x8 @ delta x
   .hword 0x331 @ y
   .hword 0xc @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3079
   .hword 0x8 @ delta x
   .hword 0x308 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 3080
   .hword 0x21 @ delta x
   .hword 0x2f0 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 3081
   .hword 0x1f @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x1d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3082
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x1d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3083
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3084
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3085
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1d @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3086
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1d @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3087
   .hword 0x1 @ delta x
   .hword 0x308 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 3088
   .hword 0x7 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3089
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3090
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3091
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3092
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3093
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x28 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3094
   .hword 0x8 @ delta x
   .hword 0x320 @ y
   .hword 0xc @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3095
   .hword 0x1 @ delta x
   .hword 0x308 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3096
   .hword 0xf @ delta x
   .hword 0x2e0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 47 @ metatile ID appareance
@ Object 3097
   .hword 0x1 @ delta x
   .hword 0x308 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3098
   .hword 0xf @ delta x
   .hword 0x2f0 @ y
   .hword 0xc @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3099
   .hword 0x1 @ delta x
   .hword 0x308 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 3100
   .hword 0xf @ delta x
   .hword 0x2e0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 47 @ metatile ID appareance
@ Object 3101
   .hword 0x10 @ delta x
   .hword 0x2b0 @ y
   .hword 0x28 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3102
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0xc @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3103
   .hword 0x30 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7803 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3104
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7803 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3105
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7803 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3106
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7803 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3107
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7803 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3108
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7803 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3109
   .hword 0x1 @ delta x
   .hword 0x300 @ y
   .hword 0x49 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3110
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x13 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3111
   .hword 0x7 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3112
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3113
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3114
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3115
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3116
   .hword 0x9 @ delta x
   .hword 0x300 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3117
   .hword 0xf @ delta x
   .hword 0x2e0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 23 @ metatile ID appareance
@ Object 3118
   .hword 0x30 @ delta x
   .hword 0x2f8 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 3119
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3120
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3121
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3122
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7417 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3123
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7417 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3124
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7417 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3125
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 27 @ metatile ID appareance
@ Object 3126
   .hword 0x1 @ delta x
   .hword 0x310 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3127
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x74 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 3128
   .hword 0x7 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3129
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3130
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3131
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3132
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3133
   .hword 0x8 @ delta x
   .hword 0x2f8 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3134
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7412 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3135
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7412 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3136
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7412 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3137
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7412 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3138
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7412 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3139
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7412 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3140
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 26 @ metatile ID appareance
@ Object 3141
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3142
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x74 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 3143
   .hword 0x7 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3144
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3145
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3146
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3147
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3148
   .hword 0x8 @ delta x
   .hword 0x2f8 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3149
   .hword 0x10 @ delta x
   .hword 0x2f0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 27 @ metatile ID appareance
@ Object 3150
   .hword 0x1 @ delta x
   .hword 0x310 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3151
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x74 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 3152
   .hword 0x10 @ delta x
   .hword 0x2f8 @ y
   .hword 0x81 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 3153
   .hword 0xd @ delta x
   .hword 0x2d8 @ y
   .hword 0x74 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 3154
   .hword 0x2 @ delta x
   .hword 0x300 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 26 @ metatile ID appareance
@ Object 3155
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3156
   .hword 0x19 @ delta x
   .hword 0x2c8 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3157
   .hword 0x6 @ delta x
   .hword 0x2e0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 27 @ metatile ID appareance
@ Object 3158
   .hword 0x1 @ delta x
   .hword 0x300 @ y
   .hword 0x1 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 3159
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x1d @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 3160
   .hword 0x7 @ delta x
   .hword 0x337 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3161
   .hword 0x8 @ delta x
   .hword 0x2e0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3162
   .hword 0x10 @ delta x
   .hword 0x2f0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 27 @ metatile ID appareance
@ Object 3163
   .hword 0x9 @ delta x
   .hword 0x2d7 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3164
   .hword 0x7 @ delta x
   .hword 0x2e0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3165
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 26 @ metatile ID appareance
@ Object 3166
   .hword 0x10 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3167
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3168
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3169
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3170
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3171
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3172
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3173
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3174
   .hword 0x8 @ delta x
   .hword 0x2f0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3175
   .hword 0x0 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3176
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3177
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3178
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3179
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3180
   .hword 0x8 @ delta x
   .hword 0x2e0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3181
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3182
   .hword 0x10 @ delta x
   .hword 0x2e0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3183
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 26 @ metatile ID appareance
@ Object 3184
   .hword 0x9 @ delta x
   .hword 0x2c7 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3185
   .hword 0x0 @ delta x
   .hword 0x347 @ y
   .hword 0x2a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3186
   .hword 0x7 @ delta x
   .hword 0x2f0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 27 @ metatile ID appareance
@ Object 3187
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3188
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3189
   .hword 0x9 @ delta x
   .hword 0x337 @ y
   .hword 0x2a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3190
   .hword 0x7 @ delta x
   .hword 0x310 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 26 @ metatile ID appareance
@ Object 3191
   .hword 0x1 @ delta x
   .hword 0x2c7 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3192
   .hword 0xf @ delta x
   .hword 0x310 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3193
   .hword 0x10 @ delta x
   .hword 0x2f0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 26 @ metatile ID appareance
@ Object 3194
   .hword 0x8 @ delta x
   .hword 0x327 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3195
   .hword 0x8 @ delta x
   .hword 0x2d0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 27 @ metatile ID appareance
@ Object 3196
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3197
   .hword 0x8 @ delta x
   .hword 0x2f8 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3198
   .hword 0x8 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x1fd @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3199
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x1fd @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3200
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1fd @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3201
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1fd @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3202
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1fd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3203
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1fd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3204
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 27 @ metatile ID appareance
@ Object 3205
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3206
   .hword 0x8 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3207
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3208
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3209
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3210
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3211
   .hword 0x8 @ delta x
   .hword 0x2f0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 26 @ metatile ID appareance
@ Object 3212
   .hword 0x9 @ delta x
   .hword 0x327 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3213
   .hword 0x7 @ delta x
   .hword 0x300 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3214
   .hword 0x10 @ delta x
   .hword 0x300 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 26 @ metatile ID appareance
@ Object 3215
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3216
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3217
   .hword 0xf @ delta x
   .hword 0x2d0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 27 @ metatile ID appareance
@ Object 3218
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3219
   .hword 0x9 @ delta x
   .hword 0x347 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3220
   .hword 0x7 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 26 @ metatile ID appareance
@ Object 3221
   .hword 0x10 @ delta x
   .hword 0x300 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 27 @ metatile ID appareance
@ Object 3222
   .hword 0x9 @ delta x
   .hword 0x2d6 @ y
   .hword 0x2a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3223
   .hword 0x7 @ delta x
   .hword 0x2f0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3224
   .hword 0x1 @ delta x
   .hword 0x330 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 3225
   .hword 0xf @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x39e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3226
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x39e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3227
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x39e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3228
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x39e @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3229
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x39e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3230
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x39e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3231
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3232
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3233
   .hword 0x8 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3234
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3235
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3236
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3237
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3238
   .hword 0x2 @ delta x
   .hword 0x2d7 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3239
   .hword 0x6 @ delta x
   .hword 0x2f0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3240
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 26 @ metatile ID appareance
@ Object 3241
   .hword 0x10 @ delta x
   .hword 0x310 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 27 @ metatile ID appareance
@ Object 3242
   .hword 0x9 @ delta x
   .hword 0x2c7 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3243
   .hword 0x7 @ delta x
   .hword 0x2f0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3244
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3245
   .hword 0x10 @ delta x
   .hword 0x2f0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3246
   .hword 0x9 @ delta x
   .hword 0x2e7 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3247
   .hword 0x1 @ delta x
   .hword 0x348 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3248
   .hword 0x6 @ delta x
   .hword 0x300 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 27 @ metatile ID appareance
@ Object 3249
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 26 @ metatile ID appareance
@ Object 3250
   .hword 0x8 @ delta x
   .hword 0x2c7 @ y
   .hword 0x2a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3251
   .hword 0x21 @ delta x
   .hword 0x2d7 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3252
   .hword 0x7 @ delta x
   .hword 0x300 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 27 @ metatile ID appareance
@ Object 3253
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 26 @ metatile ID appareance
@ Object 3254
   .hword 0x9 @ delta x
   .hword 0x337 @ y
   .hword 0x2a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3255
   .hword 0x7 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3a3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3256
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3a3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3257
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3a3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3258
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3a3 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3259
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3a3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3260
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3a3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3261
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x14 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 3262
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 23 @ metatile ID appareance
@ Object 3263
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1 @ metatile ID appareance
@ Object 3264
   .hword 0x8 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3265
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3266
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3267
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3268
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3269
   .hword 0x8 @ delta x
   .hword 0x300 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 23 @ metatile ID appareance
@ Object 3270
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1 @ metatile ID appareance
@ Object 3271
   .hword 0x10 @ delta x
   .hword 0x2e0 @ y
   .hword 0x14 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 3272
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 23 @ metatile ID appareance
@ Object 3273
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1 @ metatile ID appareance
@ Object 3274
   .hword 0x9 @ delta x
   .hword 0x2c6 @ y
   .hword 0x2a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3275
   .hword 0x7 @ delta x
   .hword 0x300 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 27 @ metatile ID appareance
@ Object 3276
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 26 @ metatile ID appareance
@ Object 3277
   .hword 0x8 @ delta x
   .hword 0x2e7 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3278
   .hword 0x0 @ delta x
   .hword 0x338 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3279
   .hword 0x29 @ delta x
   .hword 0x2d0 @ y
   .hword 0x28 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3280
   .hword 0x8 @ delta x
   .hword 0x327 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3281
   .hword 0x7 @ delta x
   .hword 0x340 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3282
   .hword 0x8 @ delta x
   .hword 0x2dc @ y
   .hword 0x2a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3283
   .hword 0x8 @ delta x
   .hword 0x330 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3284
   .hword 0x9 @ delta x
   .hword 0x2c7 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3285
   .hword 0x7 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7460 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3286
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7460 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3287
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7460 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3288
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7460 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3289
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7460 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3290
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7460 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3291
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3292
   .hword 0x1 @ delta x
   .hword 0x2f0 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3293
   .hword 0x7 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3294
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3295
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3296
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3297
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3298
   .hword 0x8 @ delta x
   .hword 0x330 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3299
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3300
   .hword 0x1 @ delta x
   .hword 0x2d0 @ y
   .hword 0x28 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3301
   .hword 0xf @ delta x
   .hword 0x330 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3302
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3303
   .hword 0x1 @ delta x
   .hword 0x2c0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3304
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3305
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3306
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3307
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3308
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3309
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3310
   .hword 0xf @ delta x
   .hword 0x2d0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3311
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3312
   .hword 0x20 @ delta x
   .hword 0x2d0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3313
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3314
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3315
   .hword 0x1 @ delta x
   .hword 0x2c0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3316
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3317
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3318
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3319
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3320
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3321
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3322
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3323
   .hword 0xf @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7412 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3324
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7412 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3325
   .hword 0x0 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7412 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3326
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7412 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3327
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7412 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3328
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7412 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3329
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3330
   .hword 0x1 @ delta x
   .hword 0x2c0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 44 @ metatile ID appareance
@ Object 3331
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0xa @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 3332
   .hword 0x7 @ delta x
   .hword 0x1e0 @ y
   .hword 0x3 @ type
   .hword 0x33 @ changes 4 for 6 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3333
   .hword 0x0 @ delta x
   .hword 0x1f0 @ y
   .hword 0x3 @ type
   .hword 0x62 @ changes 3 for 12 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3334
   .hword 0x0 @ delta x
   .hword 0x200 @ y
   .hword 0x3 @ type
   .hword 0xc1 @ changes 2 for 24 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3335
   .hword 0x0 @ delta x
   .hword 0x210 @ y
   .hword 0x3 @ type
   .hword 0x150 @ changes 1 for 42 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3336
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3337
   .hword 0x18 @ delta x
   .hword 0x2f0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3338
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3339
   .hword 0x1 @ delta x
   .hword 0x310 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3340
   .hword 0xf @ delta x
   .hword 0x2e0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3341
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3342
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3343
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3344
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3345
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3346
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3347
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3348
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 43 @ metatile ID appareance
@ Object 3349
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3350
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3351
   .hword 0x7 @ delta x
   .hword 0x328 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 3352
   .hword 0x8 @ delta x
   .hword 0x2f0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3353
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3354
   .hword 0x1 @ delta x
   .hword 0x330 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 43 @ metatile ID appareance
@ Object 3355
   .hword 0xf @ delta x
   .hword 0x330 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3356
   .hword 0x1 @ delta x
   .hword 0x300 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3357
   .hword 0xf @ delta x
   .hword 0x2d0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3358
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3359
   .hword 0x10 @ delta x
   .hword 0x300 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3360
   .hword 0x1 @ delta x
   .hword 0x2c0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3361
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3362
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3363
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3364
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5518 @ metatile ID appareance
@ Object 3365
   .hword 0xf @ delta x
   .hword 0x2d0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3366
   .hword 0x0 @ delta x
   .hword 0x310 @ y
   .hword 0x24 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3367
   .hword 0x1 @ delta x
   .hword 0x2e0 @ y
   .hword 0x34 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3368
   .hword 0x1f @ delta x
   .hword 0x2e0 @ y
   .hword 0x24 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 3369
   .hword 0x11 @ delta x
   .hword 0x340 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3370
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3371
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 3372
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3373
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 3374
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3375
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 3376
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3377
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 3378
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3379
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 3380
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x13 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3381
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3382
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3383
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3384
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x108d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3385
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3386
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3387
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3388
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3389
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x13 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3390
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3391
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x37 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3392
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x1d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3393
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x1 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3394
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3395
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3396
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3397
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3398
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x25 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3399
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3400
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x110c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3401
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3402
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3403
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x48 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3404
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3405
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3406
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3407
   .hword 0x20 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3408
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x85 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3409
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3410
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x118c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3411
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3412
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3413
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5534 @ metatile ID appareance
@ Object 3414
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5530 @ metatile ID appareance
@ Object 3415
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3416
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3417
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3418
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5528 @ metatile ID appareance
@ Object 3419
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5534 @ metatile ID appareance
@ Object 3420
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5533 @ metatile ID appareance
@ Object 3421
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5532 @ metatile ID appareance
@ Object 3422
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5535 @ metatile ID appareance
@ Object 3423
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5531 @ metatile ID appareance
@ Object 3424
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3425
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3426
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3427
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5529 @ metatile ID appareance
@ Object 3428
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5535 @ metatile ID appareance
@ Object 3429
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3430
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xa1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3431
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3432
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x15c5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3433
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fed @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3434
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3435
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5534 @ metatile ID appareance
@ Object 3436
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5530 @ metatile ID appareance
@ Object 3437
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3438
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3439
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3440
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5528 @ metatile ID appareance
@ Object 3441
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5534 @ metatile ID appareance
@ Object 3442
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5533 @ metatile ID appareance
@ Object 3443
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3444
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5532 @ metatile ID appareance
@ Object 3445
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3446
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x8a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3447
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3448
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x25a4 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3449
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x5beb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3450
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3451
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5535 @ metatile ID appareance
@ Object 3452
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5531 @ metatile ID appareance
@ Object 3453
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3454
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3455
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3456
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5529 @ metatile ID appareance
@ Object 3457
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5530 @ metatile ID appareance
@ Object 3458
   .hword 0x10 @ delta x
   .hword 0x3a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5529 @ metatile ID appareance
@ Object 3459
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3460
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3461
   .hword 0x8 @ delta x
   .hword 0x35f @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3462
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3463
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x14a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3464
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3465
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2d64 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3466
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7feb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3467
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3468
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3469
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3470
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3471
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x79 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3472
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3473
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1480 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3474
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3475
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2ce5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3476
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3477
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3478
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5534 @ metatile ID appareance
@ Object 3479
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5530 @ metatile ID appareance
@ Object 3480
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3481
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3482
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3483
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3484
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3485
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3486
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3487
   .hword 0xd @ delta x
   .hword 0x396 @ y
   .hword 0x79 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3488
   .hword 0x3 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3489
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1420 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3490
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3491
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3085 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3492
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3493
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3494
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3495
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3496
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3497
   .hword 0x3 @ delta x
   .hword 0x38c @ y
   .hword 0x78 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3498
   .hword 0x1d @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3499
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1401 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3500
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3501
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x34a9 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3502
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3503
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3504
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5534 @ metatile ID appareance
@ Object 3505
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5530 @ metatile ID appareance
@ Object 3506
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3507
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3508
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5528 @ metatile ID appareance
@ Object 3509
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5534 @ metatile ID appareance
@ Object 3510
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5534 @ metatile ID appareance
@ Object 3511
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5534 @ metatile ID appareance
@ Object 3512
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5535 @ metatile ID appareance
@ Object 3513
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5531 @ metatile ID appareance
@ Object 3514
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5532 @ metatile ID appareance
@ Object 3515
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3516
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3517
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5529 @ metatile ID appareance
@ Object 3518
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5535 @ metatile ID appareance
@ Object 3519
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5535 @ metatile ID appareance
@ Object 3520
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5535 @ metatile ID appareance
@ Object 3521
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3522
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1403 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3523
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3524
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x308a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3525
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3526
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3527
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3528
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3529
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3530
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3531
   .hword 0x18 @ delta x
   .hword 0x32c @ y
   .hword 0x78 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3532
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3533
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1005 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3534
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3535
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x208c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3536
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x517f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3537
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3538
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3539
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3540
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3541
   .hword 0x8 @ delta x
   .hword 0x388 @ y
   .hword 0x1c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 8192 @ rotation
@ Object 3542
   .hword 0x8 @ delta x
   .hword 0x330 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3543
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5529 @ metatile ID appareance
@ Object 3544
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3545
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3546
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3547
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3548
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3549
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3550
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x108d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3551
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3552
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3553
   .hword 0x0 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5534 @ metatile ID appareance
@ Object 3554
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5534 @ metatile ID appareance
@ Object 3555
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5530 @ metatile ID appareance
@ Object 3556
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5533 @ metatile ID appareance
@ Object 3557
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3558
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3559
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5535 @ metatile ID appareance
@ Object 3560
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5535 @ metatile ID appareance
@ Object 3561
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5531 @ metatile ID appareance
@ Object 3562
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5529 @ metatile ID appareance
@ Object 3563
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5535 @ metatile ID appareance
@ Object 3564
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3565
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x25 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3566
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3567
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x110c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3568
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3569
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3570
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3571
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3572
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3573
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x78 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3574
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3575
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3576
   .hword 0x8 @ delta x
   .hword 0x395 @ y
   .hword 0x79 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3577
   .hword 0x0 @ delta x
   .hword 0x33f @ y
   .hword 0x79 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3578
   .hword 0x8 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3579
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x85 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3580
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3581
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x118c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3582
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3583
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3584
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0xf @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 3585
   .hword 0x5 @ delta x
   .hword 0x32a @ y
   .hword 0x78 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3586
   .hword 0xb @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3587
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3588
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3589
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x1d @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 3590
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3591
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xa1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3592
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3593
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x15c5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3594
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fed @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3595
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3596
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3597
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3598
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3599
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3600
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3601
   .hword 0x20 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3602
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3603
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3604
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3605
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x8a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3606
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3607
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x25a4 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3608
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x5beb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3609
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3610
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3611
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3612
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3613
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3614
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3615
   .hword 0x9 @ delta x
   .hword 0x360 @ y
   .hword 0x72 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3616
   .hword 0x17 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3617
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x14a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3618
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3619
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2d64 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3620
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7feb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3621
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3622
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3623
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3624
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3625
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3626
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3627
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3628
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3629
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1480 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3630
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3631
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2ce5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3632
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3633
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3634
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3635
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3636
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3637
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3638
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3639
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3640
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3641
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1420 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3642
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3643
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3085 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3644
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3645
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3646
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3647
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3648
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3649
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3650
   .hword 0x10 @ delta x
   .hword 0x317 @ y
   .hword 0x28 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3651
   .hword 0x0 @ delta x
   .hword 0x368 @ y
   .hword 0x73 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3652
   .hword 0x0 @ delta x
   .hword 0x3b0 @ y
   .hword 0x28 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3653
   .hword 0x0 @ delta x
   .hword 0x368 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3654
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3655
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1401 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3656
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3657
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x34a9 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3658
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3659
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3660
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3661
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3662
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3663
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3664
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3665
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3666
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3667
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1403 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3668
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3669
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x308a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3670
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3671
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3672
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3673
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3674
   .hword 0x10 @ delta x
   .hword 0x330 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3675
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3676
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3677
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3678
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3679
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1005 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3680
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3681
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x208c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3682
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x517f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3683
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3684
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3685
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3686
   .hword 0x8 @ delta x
   .hword 0x3b7 @ y
   .hword 0x2a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3687
   .hword 0x8 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3688
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3689
   .hword 0x19 @ delta x
   .hword 0x3b7 @ y
   .hword 0x2a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3690
   .hword 0x7 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3691
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3692
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3693
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x108d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3694
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3695
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3696
   .hword 0x8 @ delta x
   .hword 0x38f @ y
   .hword 0x79 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3697
   .hword 0x0 @ delta x
   .hword 0x367 @ y
   .hword 0x73 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3698
   .hword 0x0 @ delta x
   .hword 0x367 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3699
   .hword 0x28 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3700
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x25 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3701
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3702
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x110c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3703
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3704
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3705
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3706
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3707
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3708
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3709
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3710
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3711
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3712
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x85 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3713
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3714
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x118c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3715
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3716
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3717
   .hword 0x0 @ delta x
   .hword 0x330 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3718
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3719
   .hword 0x8 @ delta x
   .hword 0x367 @ y
   .hword 0x28 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3720
   .hword 0x8 @ delta x
   .hword 0x330 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3721
   .hword 0x0 @ delta x
   .hword 0x3a0 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3722
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3723
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3724
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3725
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xa1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3726
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3727
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x15c5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3728
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fed @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3729
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3730
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3731
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3732
   .hword 0x10 @ delta x
   .hword 0x320 @ y
   .hword 0x2a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3733
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3734
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3735
   .hword 0x18 @ delta x
   .hword 0x317 @ y
   .hword 0x2a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3736
   .hword 0x8 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3737
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x8a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3738
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3739
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x25a4 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3740
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x5beb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3741
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3742
   .hword 0x0 @ delta x
   .hword 0x368 @ y
   .hword 0x73 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3743
   .hword 0x0 @ delta x
   .hword 0x368 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3744
   .hword 0x7 @ delta x
   .hword 0x390 @ y
   .hword 0x79 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3745
   .hword 0x1 @ delta x
   .hword 0x327 @ y
   .hword 0x2a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3746
   .hword 0x18 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3747
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3748
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3749
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x14a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3750
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3751
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2d64 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3752
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7feb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3753
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3754
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3755
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3756
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3757
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3758
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3759
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1480 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3760
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3761
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2ce5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3762
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3763
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3764
   .hword 0x8 @ delta x
   .hword 0x3b6 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3765
   .hword 0x0 @ delta x
   .hword 0x317 @ y
   .hword 0x29 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3766
   .hword 0x8 @ delta x
   .hword 0x360 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3767
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x16 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3768
   .hword 0x10 @ delta x
   .hword 0x368 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3769
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3770
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1420 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3771
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3772
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3085 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3773
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3774
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3775
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3776
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3777
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3778
   .hword 0x20 @ delta x
   .hword 0x340 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3779
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3780
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3781
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3782
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1401 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3783
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3784
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x34a9 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3785
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3786
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3787
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3788
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3789
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3790
   .hword 0xf @ delta x
   .hword 0x380 @ y
   .hword 0x2 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 3791
   .hword 0x11 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3792
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1403 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3793
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3794
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x308a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3795
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3796
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3797
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3798
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3799
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3800
   .hword 0x18 @ delta x
   .hword 0x338 @ y
   .hword 0x7c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3801
   .hword 0x8 @ delta x
   .hword 0x340 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3802
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3803
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3804
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3805
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3806
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1005 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3807
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3808
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x208c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3809
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x517f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3810
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3811
   .hword 0xf @ delta x
   .hword 0x390 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3812
   .hword 0x1 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3813
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3814
   .hword 0x20 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3815
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3816
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3817
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x108d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3818
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3819
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3820
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3821
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3822
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3823
   .hword 0x20 @ delta x
   .hword 0x340 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3824
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3825
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3826
   .hword 0xf @ delta x
   .hword 0x340 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3827
   .hword 0x1 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3828
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x25 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3829
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3830
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x110c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3831
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3832
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3833
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3834
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3835
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3836
   .hword 0x9 @ delta x
   .hword 0x388 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3837
   .hword 0x17 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3838
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x85 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3839
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3840
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x118c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3841
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3842
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3843
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3844
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3845
   .hword 0xf @ delta x
   .hword 0x370 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3846
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3847
   .hword 0x11 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3848
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3849
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3850
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xa1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3851
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3852
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x15c5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3853
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fed @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3854
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3855
   .hword 0x7 @ delta x
   .hword 0x340 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3856
   .hword 0x9 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3857
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3858
   .hword 0x20 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3859
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x8a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3860
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3861
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x25a4 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3862
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x5beb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3863
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3864
   .hword 0x20 @ delta x
   .hword 0x340 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3865
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3866
   .hword 0x8 @ delta x
   .hword 0x38f @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3867
   .hword 0x8 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3868
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x14a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3869
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3870
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2d64 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3871
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7feb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3872
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3873
   .hword 0x0 @ delta x
   .hword 0x340 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3874
   .hword 0x10 @ delta x
   .hword 0x340 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3875
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3876
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3877
   .hword 0x10 @ delta x
   .hword 0x387 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3878
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3879
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1480 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3880
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3881
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2ce5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3882
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3883
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3884
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3885
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3886
   .hword 0xf @ delta x
   .hword 0x370 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3887
   .hword 0x9 @ delta x
   .hword 0x390 @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3888
   .hword 0x8 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3889
   .hword 0xf @ delta x
   .hword 0x360 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3890
   .hword 0x1 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3891
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1420 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3892
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3893
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3085 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3894
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3895
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3896
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3897
   .hword 0x20 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3898
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1401 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3899
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3900
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x34a9 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3901
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3902
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3903
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3904
   .hword 0x20 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3905
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3906
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1403 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3907
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3908
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x308a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3909
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3910
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3911
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3912
   .hword 0x20 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3913
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1005 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3914
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3915
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x208c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3916
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x517f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3917
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3918
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3919
   .hword 0x0 @ delta x
   .hword 0x341 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3920
   .hword 0x0 @ delta x
   .hword 0x386 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3921
   .hword 0x20 @ delta x
   .hword 0x386 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3922
   .hword 0x10 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3923
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3924
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3925
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3926
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3927
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3928
   .hword 0x10 @ delta x
   .hword 0x386 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3929
   .hword 0x20 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3930
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3931
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3932
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x108d @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3933
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3934
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2d7f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3935
   .hword 0x0 @ delta x
   .hword 0x386 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3936
   .hword 0x20 @ delta x
   .hword 0x386 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3937
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3938
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x25 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3939
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3940
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x110c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3941
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3942
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2ebf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3943
   .hword 0x0 @ delta x
   .hword 0x347 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3944
   .hword 0xf @ delta x
   .hword 0x340 @ y
   .hword 0xf @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 3945
   .hword 0x11 @ delta x
   .hword 0x347 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3946
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3947
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x85 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3948
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3949
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x118c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3950
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3951
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3952
   .hword 0x10 @ delta x
   .hword 0x347 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3953
   .hword 0x20 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3954
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0xa1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3955
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3956
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x15c5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3957
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x2fed @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3958
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x2fed @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3959
   .hword 0x0 @ delta x
   .hword 0x347 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3960
   .hword 0x20 @ delta x
   .hword 0x347 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 3961
   .hword 0xf @ delta x
   .hword 0x348 @ y
   .hword 0x1d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3962
   .hword 0x1 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3963
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x8a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3964
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3965
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x25a4 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3966
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x5beb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3967
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x5beb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3968
   .hword 0xf @ delta x
   .hword 0x350 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3969
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x49 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3970
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x1 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3971
   .hword 0x1 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3972
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x14a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3973
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3974
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2d64 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3975
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7feb @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3976
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7feb @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3977
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3978
   .hword 0x20 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3979
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1480 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3980
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3981
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x2ce5 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3982
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3983
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7e6b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3984
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3985
   .hword 0x20 @ delta x
   .hword 0x360 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3986
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3987
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1420 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3988
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3989
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3085 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3990
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3991
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d6c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3992
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 3993
   .hword 0x20 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3994
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1401 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3995
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3996
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x34a9 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3997
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3998
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d75 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3999
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4000
   .hword 0x20 @ delta x
   .hword 0x360 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4001
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4002
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1403 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4003
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4004
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x308a @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4005
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4006
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7d7c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4007
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4008
   .hword 0x20 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4009
   .hword 0x0 @ delta x
   .hword 0x280 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1005 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4010
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4011
   .hword 0x0 @ delta x
   .hword 0x2b0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x208c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4012
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x517f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4013
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x517f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4014
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4015
   .hword 0x20 @ delta x
   .hword 0x360 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4016
   .hword 0x20 @ delta x
   .hword 0x360 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4017
   .hword 0xf @ delta x
   .hword 0x360 @ y
   .hword 0x34 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4018
   .hword 0x1 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4e5f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4019
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x7 @ changes LINE for 0 frames
   .hword 0x4e5f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4020
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x4e5f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4021
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x7c @ changes BG for 15 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4022
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4023
   .hword 0x0 @ delta x
   .hword 0x2e0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4024
   .hword 0x0 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4025
   .hword 0x0 @ delta x
   .hword 0x300 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4026
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3c0 @ changes 1 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4027
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3c7 @ changes LINE for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4028
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x3c6 @ changes OBJ for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4029
   .hword 0x8 @ delta x
   .hword 0x360 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4030
   .hword 0xb1 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4b5f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4031
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x7 @ changes LINE for 0 frames
   .hword 0x4b5f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4032
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x4b5f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4033
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3c0 @ changes 1 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4034
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3c7 @ changes LINE for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4035
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x3c6 @ changes OBJ for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4036
   .hword 0xb9 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4bdf @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4037
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x7 @ changes LINE for 0 frames
   .hword 0x4bdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4038
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x4bdf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4039
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3c0 @ changes 1 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4040
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3c7 @ changes LINE for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4041
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x3c6 @ changes OBJ for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4042
   .hword 0xa9 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x4bd2 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4043
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x7 @ changes LINE for 0 frames
   .hword 0x4bd2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4044
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x4bd2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4045
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3c0 @ changes 1 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4046
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3c7 @ changes LINE for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4047
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x3c6 @ changes OBJ for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4048
   .hword 0x51 @ delta x
   .hword 0x380 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 446 @ metatile ID appareance
@ Object 4049
   .hword 0x0 @ delta x
   .hword 0x390 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 27 @ metatile ID appareance
@ Object 4050
   .hword 0x8 @ delta x
   .hword 0x240 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7e92 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4051
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x7 @ changes LINE for 0 frames
   .hword 0x7e92 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4052
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7e92 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4053
   .hword 0x7 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x3c0 @ changes 1 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4054
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3c7 @ changes LINE for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4055
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x3c6 @ changes OBJ for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4056
   .hword 0x58 @ delta x
   .hword 0x360 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4057
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4058
   .hword 0x1 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x2807 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4059
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c15 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4060
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x480c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4061
   .hword 0x7 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3c4 @ changes BG for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4062
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x3c6 @ changes OBJ for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4063
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x3c0 @ changes 1 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4064
   .hword 0x18 @ delta x
   .hword 0x380 @ y
   .hword 0xf @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 4065
   .hword 0x1 @ delta x
   .hword 0x350 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4066
   .hword 0x7 @ delta x
   .hword 0x345 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4067
   .hword 0x16 @ delta x
   .hword 0x345 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4068
   .hword 0x3 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4069
   .hword 0x7 @ delta x
   .hword 0x356 @ y
   .hword 0x65 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4070
   .hword 0x9 @ delta x
   .hword 0x387 @ y
   .hword 0x65 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4071
   .hword 0x0 @ delta x
   .hword 0x388 @ y
   .hword 0x78 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4072
   .hword 0x1a @ delta x
   .hword 0x378 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4073
   .hword 0x6 @ delta x
   .hword 0x380 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4074
   .hword 0x8 @ delta x
   .hword 0x388 @ y
   .hword 0x65 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4075
   .hword 0x1f @ delta x
   .hword 0x348 @ y
   .hword 0x79 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4076
   .hword 0x0 @ delta x
   .hword 0x348 @ y
   .hword 0x65 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4077
   .hword 0x9 @ delta x
   .hword 0x360 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4078
   .hword 0x8 @ delta x
   .hword 0x361 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4079
   .hword 0x18 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4080
   .hword 0x0 @ delta x
   .hword 0x369 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4081
   .hword 0x9 @ delta x
   .hword 0x378 @ y
   .hword 0x31 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4082
   .hword 0x7 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0xe9 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4083
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x33f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4084
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1d1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4085
   .hword 0x7 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3c4 @ changes BG for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4086
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x3c6 @ changes OBJ for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4087
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x3c1 @ changes 2 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4088
   .hword 0x9 @ delta x
   .hword 0x360 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4089
   .hword 0xf @ delta x
   .hword 0x350 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 4090
   .hword 0x11 @ delta x
   .hword 0x387 @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4091
   .hword 0x0 @ delta x
   .hword 0x387 @ y
   .hword 0x2f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4092
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4093
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4094
   .hword 0x7 @ delta x
   .hword 0x350 @ y
   .hword 0x7c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4095
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x31 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4096
   .hword 0x2 @ delta x
   .hword 0x377 @ y
   .hword 0x30 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4097
   .hword 0x17 @ delta x
   .hword 0x350 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4098
   .hword 0x8 @ delta x
   .hword 0x347 @ y
   .hword 0x32 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4099
   .hword 0x8 @ delta x
   .hword 0x380 @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4100
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x30 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4101
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4102
   .hword 0x20 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4103
   .hword 0x1f @ delta x
   .hword 0x350 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 4104
   .hword 0x1 @ delta x
   .hword 0x350 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4105
   .hword 0x10 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0xcf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4106
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x23f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4107
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x152 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4108
   .hword 0x7 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x3c4 @ changes BG for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4109
   .hword 0x0 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0x3c6 @ changes OBJ for 120 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4110
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0x3c2 @ changes 3 for 120 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4111
   .hword 0x9 @ delta x
   .hword 0x360 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4112
   .hword 0x10 @ delta x
   .hword 0x380 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4113
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4114
   .hword 0x10 @ delta x
   .hword 0x380 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4115
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4116
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4117
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x7e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4118
   .hword 0x10 @ delta x
   .hword 0x350 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4119
   .hword 0x8 @ delta x
   .hword 0x380 @ y
   .hword 0x91 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4120
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4121
   .hword 0x8 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4122
   .hword 0x10 @ delta x
   .hword 0x360 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4123
   .hword 0x8 @ delta x
   .hword 0x350 @ y
   .hword 0x91 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4124
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4125
   .hword 0x18 @ delta x
   .hword 0x350 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4126
   .hword 0x10 @ delta x
   .hword 0x380 @ y
   .hword 0x90 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4127
   .hword 0x0 @ delta x
   .hword 0x380 @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4128
   .hword 0x10 @ delta x
   .hword 0x370 @ y
   .hword 0x80 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4129
   .hword 0x2f @ delta x
   .hword 0x360 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4130
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x37 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4131
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x13 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 4132
   .hword 0x0 @ delta x
   .hword 0x370 @ y
   .hword 0x13 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 4133
   .hword 0x1 @ delta x
   .hword 0x220 @ y
   .hword 0x3 @ type
   .hword 0x7 @ changes LINE for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4134
   .hword 0x0 @ delta x
   .hword 0x230 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4135
   .hword 0x0 @ delta x
   .hword 0x250 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4136
   .hword 0x0 @ delta x
   .hword 0x260 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4137
   .hword 0x0 @ delta x
   .hword 0x270 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4138
   .hword 0x0 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4139
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0xe @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4140
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x76 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4141
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x4a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 4142
   .hword 0x7 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4143
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4144
   .hword 0x48 @ delta x
   .hword 0x350 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4145
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4146
   .hword 0x1 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4147
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x2a1 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4148
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x73 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4149
   .hword 0x0 @ delta x
   .hword 0x350 @ y
   .hword 0x76 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 4150
   .hword 0x7 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4151
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4152
   .hword 0x48 @ delta x
   .hword 0x360 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4153
   .hword 0x1 @ delta x
   .hword 0x2a0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7c00 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4154
   .hword 0x0 @ delta x
   .hword 0x2d0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3400 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4155
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x76 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4156
   .hword 0x0 @ delta x
   .hword 0x360 @ y
   .hword 0x7d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 4157
   .hword 0x7 @ delta x
   .hword 0x290 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4158
   .hword 0x0 @ delta x
   .hword 0x2c0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 4159
   .hword 0x38 @ delta x
   .hword 0x380 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4160
   .hword 0x1 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4e @ changes OBJ for 9 frames
   .hword 0x2dbf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4161
   .hword 0xf @ delta x
   .hword 0x370 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 4162
   .hword 0x1 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4e @ changes OBJ for 9 frames
   .hword 0x2eff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4163
   .hword 0x10 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4e @ changes OBJ for 9 frames
   .hword 0x2ffe @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4164
   .hword 0x10 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4e @ changes OBJ for 9 frames
   .hword 0x2ff0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4165
   .hword 0x10 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4e @ changes OBJ for 9 frames
   .hword 0x7eab @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4166
   .hword 0x10 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4e @ changes OBJ for 9 frames
   .hword 0x7d76 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4167
   .hword 0x10 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x4e @ changes OBJ for 9 frames
   .hword 0x717f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4168
   .hword 0x10 @ delta x
   .hword 0x2f0 @ y
   .hword 0x3 @ type
   .hword 0x786 @ changes OBJ for 240 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
   .byte 0xff
