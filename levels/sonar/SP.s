@ Sprite Data Export

.section .rodata
.align 2
.global sonar_spr_data
.hidden sonar_spr_data
sonar_spr_data:
@ Object 1
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x4e80 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x41a0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 3
   .hword 0xd8 @ delta x
   .hword 0x1b0 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 4
   .hword 0x0 @ delta x
   .hword 0x1b1 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 5
   .hword 0x90 @ delta x
   .hword 0x1b0 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 6
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 7
   .hword 0xa0 @ delta x
   .hword 0x1b0 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 8
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 9
   .hword 0x40 @ delta x
   .hword 0x142 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 10
   .hword 0x0 @ delta x
   .hword 0x142 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 11
   .hword 0xc @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 940 @ metatile ID appareance
@ Object 12
   .hword 0x1b @ delta x
   .hword 0x131 @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 13
   .hword 0x0 @ delta x
   .hword 0x131 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 14
   .hword 0x20 @ delta x
   .hword 0x13f @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 15
   .hword 0x0 @ delta x
   .hword 0x13f @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 16
   .hword 0x1c @ delta x
   .hword 0x19e @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 17
   .hword 0x0 @ delta x
   .hword 0x19e @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 18
   .hword 0x9 @ delta x
   .hword 0x146 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 19
   .hword 0x0 @ delta x
   .hword 0x146 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 20
   .hword 0xc @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 21
   .hword 0x15 @ delta x
   .hword 0x14f @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 22
   .hword 0x0 @ delta x
   .hword 0x14f @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 23
   .hword 0x0 @ delta x
   .hword 0x14f @ y
   .hword 0x5f @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 24
   .hword 0xb @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 25
   .hword 0xf @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 26
   .hword 0x1 @ delta x
   .hword 0x1a0 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 27
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x76 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 28
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 29
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 30
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 31
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 32
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 33
   .hword 0x20 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1354 @ metatile ID appareance
@ Object 34
   .hword 0x3 @ delta x
   .hword 0x14e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 35
   .hword 0xd @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 36
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 37
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 38
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1355 @ metatile ID appareance
@ Object 39
   .hword 0x20 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8608 @ metatile ID appareance
@ Object 40
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 41
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 42
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 43
   .hword 0x8 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8611 @ metatile ID appareance
@ Object 44
   .hword 0x20 @ delta x
   .hword 0x190 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 45
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 46
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1354 @ metatile ID appareance
@ Object 47
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x3 @ type
   .hword 0x12c4 @ changes BG for 600 frames
   .hword 0x3408 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 48
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x3 @ type
   .hword 0x12c5 @ changes GROUND for 600 frames
   .hword 0x2405 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 49
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x3 @ type
   .hword 0x12c2 @ changes 3 for 600 frames
   .hword 0x5413 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 50
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x3 @ type
   .hword 0x12c0 @ changes 1 for 600 frames
   .hword 0x400c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 51
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x3 @ type
   .hword 0x12c1 @ changes 2 for 600 frames
   .hword 0x5014 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 52
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 53
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1355 @ metatile ID appareance
@ Object 54
   .hword 0x1 @ delta x
   .hword 0x14e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 55
   .hword 0xf @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 30 @ metatile ID appareance
@ Object 56
   .hword 0x6 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 57
   .hword 0xb @ delta x
   .hword 0x14d @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 58
   .hword 0x0 @ delta x
   .hword 0x14d @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 59
   .hword 0xf @ delta x
   .hword 0x190 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 60
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x76 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 61
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 62
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 63
   .hword 0x15 @ delta x
   .hword 0x135 @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 64
   .hword 0x0 @ delta x
   .hword 0x135 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 65
   .hword 0x11 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 66
   .hword 0x17 @ delta x
   .hword 0x126 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 67
   .hword 0x0 @ delta x
   .hword 0x126 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 68
   .hword 0x3 @ delta x
   .hword 0x180 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 69
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x76 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 70
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 71
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 72
   .hword 0x20 @ delta x
   .hword 0x121 @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 73
   .hword 0x0 @ delta x
   .hword 0x121 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 74
   .hword 0x16 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 75
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 76
   .hword 0x12 @ delta x
   .hword 0x130 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 77
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 78
   .hword 0x26 @ delta x
   .hword 0x141 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 79
   .hword 0x0 @ delta x
   .hword 0x141 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 80
   .hword 0x12 @ delta x
   .hword 0x180 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 81
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 82
   .hword 0x23 @ delta x
   .hword 0x13e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 83
   .hword 0xd @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8608 @ metatile ID appareance
@ Object 84
   .hword 0x8 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 85
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 86
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 87
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8611 @ metatile ID appareance
@ Object 88
   .hword 0x11 @ delta x
   .hword 0x13e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 89
   .hword 0xf @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 90
   .hword 0x6 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 91
   .hword 0x46 @ delta x
   .hword 0x18e @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 940 @ metatile ID appareance
@ Object 92
   .hword 0xd @ delta x
   .hword 0x18e @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 932 @ metatile ID appareance
@ Object 93
   .hword 0x27 @ delta x
   .hword 0x190 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 94
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 95
   .hword 0x30 @ delta x
   .hword 0x13a @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 96
   .hword 0x0 @ delta x
   .hword 0x13a @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 97
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 98
   .hword 0x20 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 99
   .hword 0x7 @ delta x
   .hword 0x12a @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 100
   .hword 0x0 @ delta x
   .hword 0x12a @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 101
   .hword 0x9 @ delta x
   .hword 0x190 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 102
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x76 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 103
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 104
   .hword 0x18 @ delta x
   .hword 0x138 @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 105
   .hword 0x0 @ delta x
   .hword 0x138 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 106
   .hword 0x18 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 107
   .hword 0xd @ delta x
   .hword 0x140 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 108
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 109
   .hword 0x21 @ delta x
   .hword 0x149 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 110
   .hword 0x0 @ delta x
   .hword 0x149 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 111
   .hword 0x12 @ delta x
   .hword 0x1a0 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 112
   .hword 0x11 @ delta x
   .hword 0x149 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 113
   .hword 0x0 @ delta x
   .hword 0x149 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 114
   .hword 0x2a @ delta x
   .hword 0x15b @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 115
   .hword 0x0 @ delta x
   .hword 0x15b @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 116
   .hword 0x28 @ delta x
   .hword 0x15e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 117
   .hword 0x8d @ delta x
   .hword 0x1b0 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 118
   .hword 0x11 @ delta x
   .hword 0x15e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 119
   .hword 0x2a @ delta x
   .hword 0x15a @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 120
   .hword 0x0 @ delta x
   .hword 0x15a @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 121
   .hword 0x17 @ delta x
   .hword 0x148 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 122
   .hword 0x0 @ delta x
   .hword 0x148 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 123
   .hword 0x21 @ delta x
   .hword 0x141 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 124
   .hword 0x0 @ delta x
   .hword 0x141 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 125
   .hword 0x2d @ delta x
   .hword 0x190 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 126
   .hword 0x20 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 127
   .hword 0x10 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 128
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 129
   .hword 0x2 @ delta x
   .hword 0x16e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 130
   .hword 0x19 @ delta x
   .hword 0x130 @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 131
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 132
   .hword 0x17 @ delta x
   .hword 0x17e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 133
   .hword 0x5 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 134
   .hword 0x9 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 135
   .hword 0x7 @ delta x
   .hword 0x13d @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 136
   .hword 0x0 @ delta x
   .hword 0x13d @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 137
   .hword 0x23 @ delta x
   .hword 0x128 @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 138
   .hword 0x0 @ delta x
   .hword 0x128 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 139
   .hword 0x6 @ delta x
   .hword 0x170 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 140
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 141
   .hword 0x2 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 142
   .hword 0x1a @ delta x
   .hword 0x111 @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 143
   .hword 0x0 @ delta x
   .hword 0x111 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 144
   .hword 0x18 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 145
   .hword 0xc @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 146
   .hword 0x2 @ delta x
   .hword 0x15e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 147
   .hword 0xa @ delta x
   .hword 0x110 @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 148
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 149
   .hword 0x26 @ delta x
   .hword 0x122 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 150
   .hword 0x0 @ delta x
   .hword 0x122 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 151
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 152
   .hword 0x4e @ delta x
   .hword 0x180 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 153
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 154
   .hword 0x20 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1352 @ metatile ID appareance
@ Object 155
   .hword 0x3 @ delta x
   .hword 0x13e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 156
   .hword 0xd @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 157
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1353 @ metatile ID appareance
@ Object 158
   .hword 0x20 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 159
   .hword 0x6 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 160
   .hword 0x3a @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1354 @ metatile ID appareance
@ Object 161
   .hword 0xc @ delta x
   .hword 0x18e @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 940 @ metatile ID appareance
@ Object 162
   .hword 0x4 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 163
   .hword 0x9 @ delta x
   .hword 0x18e @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 932 @ metatile ID appareance
@ Object 164
   .hword 0x7 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1355 @ metatile ID appareance
@ Object 165
   .hword 0x1 @ delta x
   .hword 0x13e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 166
   .hword 0x1f @ delta x
   .hword 0x190 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 167
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 168
   .hword 0x5 @ delta x
   .hword 0x149 @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 169
   .hword 0x0 @ delta x
   .hword 0x149 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 170
   .hword 0x28 @ delta x
   .hword 0x138 @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 171
   .hword 0x0 @ delta x
   .hword 0x138 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 172
   .hword 0x3 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 173
   .hword 0x20 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 174
   .hword 0x4 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 175
   .hword 0xc @ delta x
   .hword 0x190 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 176
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x76 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 177
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 178
   .hword 0x2b @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 179
   .hword 0x5 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 180
   .hword 0xe @ delta x
   .hword 0x119 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 181
   .hword 0x0 @ delta x
   .hword 0x119 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 182
   .hword 0x2 @ delta x
   .hword 0x180 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 183
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x76 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 184
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 185
   .hword 0x1a @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 186
   .hword 0x5 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 187
   .hword 0x6 @ delta x
   .hword 0x12a @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 188
   .hword 0x0 @ delta x
   .hword 0x12a @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 189
   .hword 0x1b @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1352 @ metatile ID appareance
@ Object 190
   .hword 0x3 @ delta x
   .hword 0x12e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 191
   .hword 0xd @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 192
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 193
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 194
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1353 @ metatile ID appareance
@ Object 195
   .hword 0x20 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8616 @ metatile ID appareance
@ Object 196
   .hword 0x8 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 197
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 198
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 199
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8619 @ metatile ID appareance
@ Object 200
   .hword 0x20 @ delta x
   .hword 0x170 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 201
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 202
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1352 @ metatile ID appareance
@ Object 203
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 204
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1353 @ metatile ID appareance
@ Object 205
   .hword 0x1 @ delta x
   .hword 0x12e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 206
   .hword 0xf @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 30 @ metatile ID appareance
@ Object 207
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 208
   .hword 0x6 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 209
   .hword 0xe @ delta x
   .hword 0x13a @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 210
   .hword 0x0 @ delta x
   .hword 0x13a @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 211
   .hword 0x28 @ delta x
   .hword 0x12a @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 212
   .hword 0x0 @ delta x
   .hword 0x12a @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 213
   .hword 0x14 @ delta x
   .hword 0x180 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 214
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 215
   .hword 0xc @ delta x
   .hword 0x17e @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 940 @ metatile ID appareance
@ Object 216
   .hword 0xc @ delta x
   .hword 0x11e @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 217
   .hword 0x0 @ delta x
   .hword 0x11e @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 218
   .hword 0x1 @ delta x
   .hword 0x17e @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 932 @ metatile ID appareance
@ Object 219
   .hword 0x1f @ delta x
   .hword 0x12e @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 220
   .hword 0x0 @ delta x
   .hword 0x12e @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 221
   .hword 0x28 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 222
   .hword 0x6 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 223
   .hword 0xa @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 224
   .hword 0x50 @ delta x
   .hword 0x190 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 225
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 226
   .hword 0x24 @ delta x
   .hword 0x13e @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 227
   .hword 0x0 @ delta x
   .hword 0x13e @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 228
   .hword 0x1d @ delta x
   .hword 0x18e @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 940 @ metatile ID appareance
@ Object 229
   .hword 0x7 @ delta x
   .hword 0x128 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 230
   .hword 0x0 @ delta x
   .hword 0x128 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 231
   .hword 0x4 @ delta x
   .hword 0x14e @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 232
   .hword 0x0 @ delta x
   .hword 0x14e @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 233
   .hword 0x4 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 234
   .hword 0x6 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 235
   .hword 0x1a @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1354 @ metatile ID appareance
@ Object 236
   .hword 0x3 @ delta x
   .hword 0x14e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 237
   .hword 0xd @ delta x
   .hword 0x1a0 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 238
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 239
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 240
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1355 @ metatile ID appareance
@ Object 241
   .hword 0x40 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1354 @ metatile ID appareance
@ Object 242
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0xd @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 243
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x8 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 244
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 245
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1355 @ metatile ID appareance
@ Object 246
   .hword 0x1 @ delta x
   .hword 0x14e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 247
   .hword 0xf @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 248
   .hword 0xe @ delta x
   .hword 0x14a @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 249
   .hword 0x0 @ delta x
   .hword 0x14a @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 250
   .hword 0x12 @ delta x
   .hword 0x12c @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 251
   .hword 0x0 @ delta x
   .hword 0x12c @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 252
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 253
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 254
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x76 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 255
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 256
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 257
   .hword 0x9 @ delta x
   .hword 0x115 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 258
   .hword 0x0 @ delta x
   .hword 0x115 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 259
   .hword 0x17 @ delta x
   .hword 0x180 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 260
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x76 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 261
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 262
   .hword 0x7 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 263
   .hword 0x9 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 264
   .hword 0x2 @ delta x
   .hword 0x122 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 265
   .hword 0x0 @ delta x
   .hword 0x122 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 266
   .hword 0x2e @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3cc @ changes BG for 121 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 267
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1352 @ metatile ID appareance
@ Object 268
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 269
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1353 @ metatile ID appareance
@ Object 270
   .hword 0x40 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1354 @ metatile ID appareance
@ Object 271
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 272
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1355 @ metatile ID appareance
@ Object 273
   .hword 0x40 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1354 @ metatile ID appareance
@ Object 274
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 275
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1355 @ metatile ID appareance
@ Object 276
   .hword 0x40 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1352 @ metatile ID appareance
@ Object 277
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 278
   .hword 0x10 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7c1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 279
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x4834 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 280
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x6c1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 281
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf5 @ changes GROUND for 30 frames
   .hword 0x4412 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 282
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x304e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 283
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x1 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 284
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x64 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 285
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x4a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 286
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x73 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 287
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1353 @ metatile ID appareance
@ Object 288
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 289
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 290
   .hword 0x10 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 291
   .hword 0x1 @ delta x
   .hword 0x120 @ y
   .hword 0x4 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 292
   .hword 0xf @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 293
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 294
   .hword 0x8 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 295
   .hword 0x18 @ delta x
   .hword 0x180 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 296
   .hword 0x8 @ delta x
   .hword 0x119 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 297
   .hword 0x0 @ delta x
   .hword 0x121 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 298
   .hword 0x2 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 299
   .hword 0x16 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 300
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 301
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 302
   .hword 0x10 @ delta x
   .hword 0x119 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 303
   .hword 0xb @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 304
   .hword 0x5 @ delta x
   .hword 0x178 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 305
   .hword 0x16 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 306
   .hword 0x2 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 307
   .hword 0x8 @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 308
   .hword 0x20 @ delta x
   .hword 0x119 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 309
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 310
   .hword 0x0 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 311
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 312
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 313
   .hword 0x18 @ delta x
   .hword 0x186 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 314
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 315
   .hword 0x16 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 316
   .hword 0x2 @ delta x
   .hword 0x119 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 317
   .hword 0x8 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 318
   .hword 0xa @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 319
   .hword 0x6 @ delta x
   .hword 0x180 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 320
   .hword 0x10 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x12c1 @ changes 2 for 600 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 321
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x12c0 @ changes 1 for 600 frames
   .hword 0x834 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 322
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x12c2 @ changes 3 for 600 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 323
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x12c5 @ changes GROUND for 600 frames
   .hword 0x12 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 324
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x12c4 @ changes BG for 600 frames
   .hword 0x8 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 325
   .hword 0x0 @ delta x
   .hword 0x144 @ y
   .hword 0x59 @ type
   .hword 0x8 @ coin 0 bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 326
   .hword 0x0 @ delta x
   .hword 0x14a @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6896 @ metatile ID appareance
@ Object 327
   .hword 0x0 @ delta x
   .hword 0x14a @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 6368 @ metatile ID appareance
@ Object 328
   .hword 0x0 @ delta x
   .hword 0x15a @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 624 @ metatile ID appareance
@ Object 329
   .hword 0x0 @ delta x
   .hword 0x166 @ y
   .hword 0x33 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 330
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 331
   .hword 0x0 @ delta x
   .hword 0x14a @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6928 @ metatile ID appareance
@ Object 332
   .hword 0x0 @ delta x
   .hword 0x14a @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 6400 @ metatile ID appareance
@ Object 333
   .hword 0x0 @ delta x
   .hword 0x15a @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6908 @ metatile ID appareance
@ Object 334
   .hword 0x0 @ delta x
   .hword 0x15a @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 6380 @ metatile ID appareance
@ Object 335
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 336
   .hword 0xb @ delta x
   .hword 0x121 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 337
   .hword 0x5 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 338
   .hword 0x10 @ delta x
   .hword 0x119 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 339
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 340
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 341
   .hword 0x16 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 342
   .hword 0x2 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 343
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 344
   .hword 0x18 @ delta x
   .hword 0x180 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 345
   .hword 0x8 @ delta x
   .hword 0x119 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 346
   .hword 0x8 @ delta x
   .hword 0x150 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 347
   .hword 0x10 @ delta x
   .hword 0x121 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 348
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 349
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 350
   .hword 0x8 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 351
   .hword 0x18 @ delta x
   .hword 0x119 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 352
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 353
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 30 @ metatile ID appareance
@ Object 354
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 355
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 356
   .hword 0x20 @ delta x
   .hword 0x140 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 357
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 30 @ metatile ID appareance
@ Object 358
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 359
   .hword 0x8 @ delta x
   .hword 0x121 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 360
   .hword 0x0 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 361
   .hword 0x8 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 362
   .hword 0x18 @ delta x
   .hword 0x119 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 363
   .hword 0x10 @ delta x
   .hword 0x121 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 364
   .hword 0x8 @ delta x
   .hword 0x190 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 365
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 366
   .hword 0x20 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 367
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 368
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 369
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 370
   .hword 0x8 @ delta x
   .hword 0x121 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 371
   .hword 0x18 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 372
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 373
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 374
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 375
   .hword 0x8 @ delta x
   .hword 0x121 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 376
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 377
   .hword 0x22 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 378
   .hword 0x6 @ delta x
   .hword 0x119 @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 379
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 31 @ metatile ID appareance
@ Object 380
   .hword 0x10 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 381
   .hword 0x10 @ delta x
   .hword 0x121 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 382
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 383
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 384
   .hword 0x10 @ delta x
   .hword 0x119 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 385
   .hword 0xb @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 386
   .hword 0x15 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 387
   .hword 0x6 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 388
   .hword 0x12 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 389
   .hword 0x8 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 390
   .hword 0x20 @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 6908 @ metatile ID appareance
@ Object 391
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 392
   .hword 0x10 @ delta x
   .hword 0x131 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 393
   .hword 0x0 @ delta x
   .hword 0x1a7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 394
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 395
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 396
   .hword 0x8 @ delta x
   .hword 0x129 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 397
   .hword 0x12 @ delta x
   .hword 0x1a0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 398
   .hword 0x16 @ delta x
   .hword 0x170 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 399
   .hword 0x5 @ delta x
   .hword 0x130 @ y
   .hword 0x4 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 400
   .hword 0xb @ delta x
   .hword 0x150 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 401
   .hword 0x0 @ delta x
   .hword 0x1a7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 402
   .hword 0x10 @ delta x
   .hword 0x19f @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 403
   .hword 0x10 @ delta x
   .hword 0x129 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 404
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 405
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 406
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 30 @ metatile ID appareance
@ Object 407
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 408
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 409
   .hword 0x8 @ delta x
   .hword 0x119 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 410
   .hword 0x17 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 411
   .hword 0x1 @ delta x
   .hword 0x121 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 412
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 413
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 414
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 415
   .hword 0x10 @ delta x
   .hword 0x119 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 416
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 417
   .hword 0x20 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 418
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 419
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 420
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 421
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 422
   .hword 0x10 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 423
   .hword 0x7 @ delta x
   .hword 0x121 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 424
   .hword 0x1 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 425
   .hword 0x18 @ delta x
   .hword 0x160 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 426
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 427
   .hword 0x8 @ delta x
   .hword 0x119 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 428
   .hword 0x18 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 429
   .hword 0x0 @ delta x
   .hword 0x136 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 430
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 431
   .hword 0x10 @ delta x
   .hword 0x119 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 432
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 433
   .hword 0x10 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 434
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 435
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 436
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 437
   .hword 0x10 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 438
   .hword 0x1 @ delta x
   .hword 0x120 @ y
   .hword 0x4 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 439
   .hword 0x17 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 440
   .hword 0x8 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 441
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 442
   .hword 0x18 @ delta x
   .hword 0x121 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 443
   .hword 0x2 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 444
   .hword 0x6 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 31 @ metatile ID appareance
@ Object 445
   .hword 0x10 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 446
   .hword 0x10 @ delta x
   .hword 0x121 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 447
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 448
   .hword 0x10 @ delta x
   .hword 0x119 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 449
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 450
   .hword 0x9 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 451
   .hword 0x7 @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 452
   .hword 0x16 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 453
   .hword 0xa @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 454
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 455
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 30 @ metatile ID appareance
@ Object 456
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 457
   .hword 0x10 @ delta x
   .hword 0x119 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 458
   .hword 0x0 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 459
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 460
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 461
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 462
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 463
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 464
   .hword 0x8 @ delta x
   .hword 0x119 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 465
   .hword 0x12 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 466
   .hword 0x6 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 467
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 468
   .hword 0x5 @ delta x
   .hword 0x120 @ y
   .hword 0x4 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 469
   .hword 0xb @ delta x
   .hword 0x160 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 470
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 471
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 472
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 473
   .hword 0x0 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 474
   .hword 0x10 @ delta x
   .hword 0x119 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 475
   .hword 0x16 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 476
   .hword 0x2 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 477
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 478
   .hword 0x8 @ delta x
   .hword 0x150 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 479
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 480
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 481
   .hword 0x18 @ delta x
   .hword 0x119 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 482
   .hword 0x17 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 483
   .hword 0x1 @ delta x
   .hword 0x121 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xd0 @ z index 16 pal 3
@ Object 484
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 485
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 486
   .hword 0x20 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1354 @ metatile ID appareance
@ Object 487
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 488
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1355 @ metatile ID appareance
@ Object 489
   .hword 0x20 @ delta x
   .hword 0x168 @ y
   .hword 0x3d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 490
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x4a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 491
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 492
   .hword 0x30 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8608 @ metatile ID appareance
@ Object 493
   .hword 0x8 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 494
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 495
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 496
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 497
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8611 @ metatile ID appareance
@ Object 498
   .hword 0x30 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x109 @ changes 2 for 33 frames
   .hword 0x47ee @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 499
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x108 @ changes 1 for 33 frames
   .hword 0x1320 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 500
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x102 @ changes 3 for 32 frames
   .hword 0xbe0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 501
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x10d @ changes GROUND for 33 frames
   .hword 0x4e1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 502
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x10c @ changes BG for 33 frames
   .hword 0x1a3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 503
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 504
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x64 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 505
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x4a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 506
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 507
   .hword 0x20 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1354 @ metatile ID appareance
@ Object 508
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 509
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1355 @ metatile ID appareance
@ Object 510
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 511
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x2c8 @ bg layer 1   z index 11 
   .hword 6896 @ metatile ID appareance
@ Object 512
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6908 @ metatile ID appareance
@ Object 513
   .hword 0x1a @ delta x
   .hword 0x135 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 514
   .hword 0x0 @ delta x
   .hword 0x135 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 515
   .hword 0x6 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 516
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 517
   .hword 0x20 @ delta x
   .hword 0x170 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 518
   .hword 0x2 @ delta x
   .hword 0x142 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 519
   .hword 0x0 @ delta x
   .hword 0x142 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 520
   .hword 0xe @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x12c1 @ changes 2 for 600 frames
   .hword 0x7f80 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 521
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x12c0 @ changes 1 for 600 frames
   .hword 0x5261 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 522
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x12c2 @ changes 3 for 600 frames
   .hword 0x7fc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 523
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x12c5 @ changes GROUND for 600 frames
   .hword 0x20e1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 524
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x12c4 @ changes BG for 600 frames
   .hword 0x4200 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 525
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 526
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 527
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 528
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 529
   .hword 0x15 @ delta x
   .hword 0x145 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 530
   .hword 0x0 @ delta x
   .hword 0x145 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 531
   .hword 0xb @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 532
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 30 @ metatile ID appareance
@ Object 533
   .hword 0x9 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 534
   .hword 0x7 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 535
   .hword 0x1 @ delta x
   .hword 0x139 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 536
   .hword 0x0 @ delta x
   .hword 0x139 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 537
   .hword 0x4 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 538
   .hword 0x1b @ delta x
   .hword 0x150 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 539
   .hword 0x9 @ delta x
   .hword 0x132 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 540
   .hword 0x0 @ delta x
   .hword 0x132 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 541
   .hword 0x7 @ delta x
   .hword 0x160 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 542
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 543
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 544
   .hword 0x18 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 545
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 546
   .hword 0x4 @ delta x
   .hword 0x124 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 547
   .hword 0x0 @ delta x
   .hword 0x124 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 548
   .hword 0xc @ delta x
   .hword 0x188 @ y
   .hword 0x59 @ type
   .hword 0x88 @ coin 1 bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 549
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 550
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 551
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 552
   .hword 0x2 @ delta x
   .hword 0x11e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 553
   .hword 0x6 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 7687 @ metatile ID appareance
@ Object 554
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 555
   .hword 0x8 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 7687 @ metatile ID appareance
@ Object 556
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 557
   .hword 0x2 @ delta x
   .hword 0x11e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 558
   .hword 0x1e @ delta x
   .hword 0x160 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 559
   .hword 0x3 @ delta x
   .hword 0x18e @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 940 @ metatile ID appareance
@ Object 560
   .hword 0xd @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 561
   .hword 0x0 @ delta x
   .hword 0x18e @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 932 @ metatile ID appareance
@ Object 562
   .hword 0x20 @ delta x
   .hword 0x150 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 563
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 564
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 565
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 566
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 567
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 568
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 569
   .hword 0x6 @ delta x
   .hword 0x140 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 570
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 571
   .hword 0xa @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 30 @ metatile ID appareance
@ Object 572
   .hword 0x9 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 573
   .hword 0xf @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 574
   .hword 0xa @ delta x
   .hword 0x132 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 575
   .hword 0x0 @ delta x
   .hword 0x132 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 576
   .hword 0xe @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 577
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 578
   .hword 0xb @ delta x
   .hword 0x12c @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 579
   .hword 0x0 @ delta x
   .hword 0x12c @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 580
   .hword 0x5 @ delta x
   .hword 0x150 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 581
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 582
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 583
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 584
   .hword 0x24 @ delta x
   .hword 0x11e @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 585
   .hword 0x0 @ delta x
   .hword 0x11e @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 586
   .hword 0xc @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 587
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6896 @ metatile ID appareance
@ Object 588
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 7056 @ metatile ID appareance
@ Object 589
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 590
   .hword 0x19 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 591
   .hword 0x5 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 592
   .hword 0x2 @ delta x
   .hword 0x150 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 593
   .hword 0x20 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 594
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 595
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 596
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 597
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 598
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 599
   .hword 0xd @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 600
   .hword 0xc @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 601
   .hword 0x7 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 602
   .hword 0x20 @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 603
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
@ Object 604
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 605
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6785 @ metatile ID appareance
@ Object 606
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6785 @ metatile ID appareance
@ Object 607
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6930 @ metatile ID appareance
@ Object 608
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6996 @ metatile ID appareance
@ Object 609
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 6400 @ metatile ID appareance
@ Object 610
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 7032 @ metatile ID appareance
@ Object 611
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 612
   .hword 0x9 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 613
   .hword 0x3 @ delta x
   .hword 0x141 @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 614
   .hword 0x0 @ delta x
   .hword 0x141 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 615
   .hword 0x4 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 616
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 6897 @ metatile ID appareance
@ Object 617
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6930 @ metatile ID appareance
@ Object 618
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6996 @ metatile ID appareance
@ Object 619
   .hword 0x9 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 620
   .hword 0x7 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 6897 @ metatile ID appareance
@ Object 621
   .hword 0x8 @ delta x
   .hword 0x143 @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 622
   .hword 0x0 @ delta x
   .hword 0x143 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 623
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 624
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6785 @ metatile ID appareance
@ Object 625
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 626
   .hword 0x8 @ delta x
   .hword 0x190 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 627
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6930 @ metatile ID appareance
@ Object 628
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6996 @ metatile ID appareance
@ Object 629
   .hword 0x10 @ delta x
   .hword 0x14b @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 630
   .hword 0x0 @ delta x
   .hword 0x14b @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 631
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 632
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 633
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 634
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 635
   .hword 0xb @ delta x
   .hword 0x158 @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 636
   .hword 0x0 @ delta x
   .hword 0x158 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 637
   .hword 0x29 @ delta x
   .hword 0x167 @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 638
   .hword 0x0 @ delta x
   .hword 0x167 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 639
   .hword 0xc @ delta x
   .hword 0x190 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 640
   .hword 0x1e @ delta x
   .hword 0x169 @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 641
   .hword 0x0 @ delta x
   .hword 0x169 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 642
   .hword 0x2 @ delta x
   .hword 0x1a0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 643
   .hword 0x22 @ delta x
   .hword 0x15e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 644
   .hword 0x1 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 756 @ metatile ID appareance
@ Object 645
   .hword 0x5 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 646
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 647
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 648
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 649
   .hword 0x5 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 757 @ metatile ID appareance
@ Object 650
   .hword 0x5 @ delta x
   .hword 0x15e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 651
   .hword 0x1e @ delta x
   .hword 0x1a0 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 652
   .hword 0xc @ delta x
   .hword 0x16c @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 653
   .hword 0x0 @ delta x
   .hword 0x16c @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 654
   .hword 0x4 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 655
   .hword 0x22 @ delta x
   .hword 0x15e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 656
   .hword 0x2 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 765 @ metatile ID appareance
@ Object 657
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 764 @ metatile ID appareance
@ Object 658
   .hword 0x18 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 765 @ metatile ID appareance
@ Object 659
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 764 @ metatile ID appareance
@ Object 660
   .hword 0x6 @ delta x
   .hword 0x15e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 661
   .hword 0x1e @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 662
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 663
   .hword 0x16 @ delta x
   .hword 0x18c @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 664
   .hword 0x2a @ delta x
   .hword 0x170 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 665
   .hword 0x4 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 940 @ metatile ID appareance
@ Object 666
   .hword 0xc @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 667
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
@ Object 668
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 669
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6785 @ metatile ID appareance
@ Object 670
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6785 @ metatile ID appareance
@ Object 671
   .hword 0x4 @ delta x
   .hword 0x159 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 672
   .hword 0x0 @ delta x
   .hword 0x159 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 673
   .hword 0xc @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6930 @ metatile ID appareance
@ Object 674
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6996 @ metatile ID appareance
@ Object 675
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 6400 @ metatile ID appareance
@ Object 676
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 7032 @ metatile ID appareance
@ Object 677
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 678
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 679
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 680
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 681
   .hword 0xf @ delta x
   .hword 0x14a @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 682
   .hword 0x0 @ delta x
   .hword 0x14a @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 683
   .hword 0x21 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 684
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 685
   .hword 0x8 @ delta x
   .hword 0x13a @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 686
   .hword 0x0 @ delta x
   .hword 0x13a @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 687
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 688
   .hword 0x9 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 689
   .hword 0x17 @ delta x
   .hword 0x180 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 690
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x76 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 691
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 692
   .hword 0x3 @ delta x
   .hword 0x12d @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 693
   .hword 0x0 @ delta x
   .hword 0x12d @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 694
   .hword 0xd @ delta x
   .hword 0x150 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 695
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 696
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 697
   .hword 0xb @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 698
   .hword 0x1 @ delta x
   .hword 0x125 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 699
   .hword 0x0 @ delta x
   .hword 0x125 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 700
   .hword 0x24 @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 701
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 702
   .hword 0x8 @ delta x
   .hword 0x123 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 703
   .hword 0x0 @ delta x
   .hword 0x123 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 704
   .hword 0x5 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 705
   .hword 0x13 @ delta x
   .hword 0x130 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 706
   .hword 0x9 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 707
   .hword 0x7 @ delta x
   .hword 0x160 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 708
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x76 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 709
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 710
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 711
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 712
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 713
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 714
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
@ Object 715
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6785 @ metatile ID appareance
@ Object 716
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6785 @ metatile ID appareance
@ Object 717
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6930 @ metatile ID appareance
@ Object 718
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6996 @ metatile ID appareance
@ Object 719
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 6400 @ metatile ID appareance
@ Object 720
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 7032 @ metatile ID appareance
@ Object 721
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 722
   .hword 0x6 @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 723
   .hword 0xa @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
@ Object 724
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 725
   .hword 0xc @ delta x
   .hword 0x121 @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 726
   .hword 0x0 @ delta x
   .hword 0x121 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 727
   .hword 0x4 @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 728
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6930 @ metatile ID appareance
@ Object 729
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6996 @ metatile ID appareance
@ Object 730
   .hword 0x9 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 731
   .hword 0x7 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
@ Object 732
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 733
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6785 @ metatile ID appareance
@ Object 734
   .hword 0x7 @ delta x
   .hword 0x123 @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 735
   .hword 0x0 @ delta x
   .hword 0x123 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 736
   .hword 0x9 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6930 @ metatile ID appareance
@ Object 737
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6996 @ metatile ID appareance
@ Object 738
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 739
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 740
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 741
   .hword 0xf @ delta x
   .hword 0x12b @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 742
   .hword 0x0 @ delta x
   .hword 0x12b @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 743
   .hword 0x1 @ delta x
   .hword 0x150 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 744
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 745
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 746
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
@ Object 747
   .hword 0x8 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 748
   .hword 0x3 @ delta x
   .hword 0x138 @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 749
   .hword 0x0 @ delta x
   .hword 0x138 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 750
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 751
   .hword 0x5 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6930 @ metatile ID appareance
@ Object 752
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6996 @ metatile ID appareance
@ Object 753
   .hword 0x10 @ delta x
   .hword 0x175 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 754
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
@ Object 755
   .hword 0x9 @ delta x
   .hword 0x156 @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 756
   .hword 0x0 @ delta x
   .hword 0x156 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 757
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 758
   .hword 0x7 @ delta x
   .hword 0x198 @ y
   .hword 0xa @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 759
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6785 @ metatile ID appareance
@ Object 760
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 761
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6930 @ metatile ID appareance
@ Object 762
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6996 @ metatile ID appareance
@ Object 763
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 764
   .hword 0x10 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x109 @ changes 2 for 33 frames
   .hword 0x7d5c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 765
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x108 @ changes 1 for 33 frames
   .hword 0x502f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 766
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x10a @ changes 3 for 33 frames
   .hword 0x7c16 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 767
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x10d @ changes GROUND for 33 frames
   .hword 0x480b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 768
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x10c @ changes BG for 33 frames
   .hword 0x2005 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 769
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 770
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 771
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x72 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 772
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x64 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 773
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x4a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 774
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 775
   .hword 0x10 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 776
   .hword 0x20 @ delta x
   .hword 0x150 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 777
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 778
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 779
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 780
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 781
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 782
   .hword 0x9 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 783
   .hword 0x7 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 784
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 785
   .hword 0xb @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xd0 @ z index 16 pal 3
@ Object 786
   .hword 0x5 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 787
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 788
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 789
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 790
   .hword 0x10 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 791
   .hword 0x10 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x12c1 @ changes 2 for 600 frames
   .hword 0x741f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 792
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x12c0 @ changes 1 for 600 frames
   .hword 0x4434 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 793
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x12c2 @ changes 3 for 600 frames
   .hword 0x6c1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 794
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x12c5 @ changes GROUND for 600 frames
   .hword 0x4012 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 795
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x12c4 @ changes BG for 600 frames
   .hword 0x2008 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 796
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 797
   .hword 0x8 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 798
   .hword 0x3 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xd0 @ z index 16 pal 3
@ Object 799
   .hword 0x5 @ delta x
   .hword 0x150 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 800
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 801
   .hword 0x5 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 802
   .hword 0xb @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 803
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 804
   .hword 0x4 @ delta x
   .hword 0x190 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 805
   .hword 0x6 @ delta x
   .hword 0x18b @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 806
   .hword 0x5 @ delta x
   .hword 0x185 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 807
   .hword 0x1 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 808
   .hword 0x5 @ delta x
   .hword 0x180 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 809
   .hword 0x5 @ delta x
   .hword 0x17a @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 810
   .hword 0x6 @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 811
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x4 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 812
   .hword 0x10 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 813
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 814
   .hword 0x0 @ delta x
   .hword 0x16e @ y
   .hword 0x2b @ type
   .hword 0xc @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
   .hword 8192 @ rotation
@ Object 815
   .hword 0x9 @ delta x
   .hword 0x169 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 816
   .hword 0x5 @ delta x
   .hword 0x170 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 817
   .hword 0x2 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 818
   .hword 0x4 @ delta x
   .hword 0x174 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 819
   .hword 0x5 @ delta x
   .hword 0x17b @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 820
   .hword 0x6 @ delta x
   .hword 0x17f @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 821
   .hword 0x1 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 822
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 823
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 824
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 825
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 826
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 827
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 828
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 829
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 830
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 831
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 8359 @ metatile ID appareance
@ Object 832
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 833
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 834
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 835
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 836
   .hword 0x4 @ delta x
   .hword 0x140 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 837
   .hword 0x7 @ delta x
   .hword 0x145 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 838
   .hword 0x4 @ delta x
   .hword 0x14b @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 839
   .hword 0x1 @ delta x
   .hword 0x180 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 840
   .hword 0x6 @ delta x
   .hword 0x150 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 841
   .hword 0x2 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 842
   .hword 0x2 @ delta x
   .hword 0x156 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 843
   .hword 0x16 @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 844
   .hword 0x10 @ delta x
   .hword 0x161 @ y
   .hword 0x2b @ type
   .hword 0x24 @ bg layer 4   z index 0 
   .hword 6899 @ metatile ID appareance
   .hword 57344 @ rotation
@ Object 845
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 846
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 847
   .hword 0x8 @ delta x
   .hword 0x166 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 848
   .hword 0x4 @ delta x
   .hword 0x160 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 849
   .hword 0x4 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 850
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 851
   .hword 0x3 @ delta x
   .hword 0x15b @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 852
   .hword 0x4 @ delta x
   .hword 0x155 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 853
   .hword 0x7 @ delta x
   .hword 0x150 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 854
   .hword 0x2 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 855
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 856
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 857
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 858
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 859
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 860
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 861
   .hword 0xb @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 862
   .hword 0x5 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 8367 @ metatile ID appareance
@ Object 863
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 864
   .hword 0x5 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 865
   .hword 0xb @ delta x
   .hword 0x150 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 866
   .hword 0x8 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 867
   .hword 0x8 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 868
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 869
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 870
   .hword 0x20 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 871
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 872
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 873
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 874
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 875
   .hword 0x10 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 876
   .hword 0x9 @ delta x
   .hword 0x1ac @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 877
   .hword 0x0 @ delta x
   .hword 0x1ac @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 878
   .hword 0x0 @ delta x
   .hword 0x1ac @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 879
   .hword 0x5 @ delta x
   .hword 0x1a6 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 880
   .hword 0x0 @ delta x
   .hword 0x1a6 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 881
   .hword 0x0 @ delta x
   .hword 0x1a6 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 882
   .hword 0x6 @ delta x
   .hword 0x1a1 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 883
   .hword 0x0 @ delta x
   .hword 0x1a1 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 884
   .hword 0x0 @ delta x
   .hword 0x1a1 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 885
   .hword 0x5 @ delta x
   .hword 0x19b @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 886
   .hword 0x0 @ delta x
   .hword 0x19b @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 887
   .hword 0x0 @ delta x
   .hword 0x19b @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 888
   .hword 0x7 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 889
   .hword 0x20 @ delta x
   .hword 0x141 @ y
   .hword 0x2b @ type
   .hword 0x24 @ bg layer 4   z index 0 
   .hword 6899 @ metatile ID appareance
   .hword 57344 @ rotation
@ Object 890
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 891
   .hword 0x0 @ delta x
   .hword 0x18e @ y
   .hword 0x2b @ type
   .hword 0xc @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
   .hword 8192 @ rotation
@ Object 892
   .hword 0x9 @ delta x
   .hword 0x189 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 893
   .hword 0x5 @ delta x
   .hword 0x190 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 894
   .hword 0x2 @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 895
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 896
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 897
   .hword 0x4 @ delta x
   .hword 0x194 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 898
   .hword 0x2 @ delta x
   .hword 0x134 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 899
   .hword 0x3 @ delta x
   .hword 0x19b @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 900
   .hword 0x1 @ delta x
   .hword 0x12e @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 901
   .hword 0x5 @ delta x
   .hword 0x19f @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 902
   .hword 0x1 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 903
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 904
   .hword 0x1 @ delta x
   .hword 0x129 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 905
   .hword 0x4 @ delta x
   .hword 0x123 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 906
   .hword 0x6 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 907
   .hword 0x5 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 908
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 8367 @ metatile ID appareance
@ Object 909
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 8359 @ metatile ID appareance
@ Object 910
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 911
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 912
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 913
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 914
   .hword 0x8 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 915
   .hword 0x3 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 916
   .hword 0x5 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 917
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 918
   .hword 0x5 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 919
   .hword 0x3 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 920
   .hword 0x8 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 921
   .hword 0xa @ delta x
   .hword 0x124 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 922
   .hword 0x4 @ delta x
   .hword 0x12a @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 923
   .hword 0x7 @ delta x
   .hword 0x12f @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 924
   .hword 0x4 @ delta x
   .hword 0x135 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 925
   .hword 0x7 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 926
   .hword 0x20 @ delta x
   .hword 0x141 @ y
   .hword 0x2b @ type
   .hword 0x24 @ bg layer 4   z index 0 
   .hword 6899 @ metatile ID appareance
   .hword 57344 @ rotation
@ Object 927
   .hword 0x0 @ delta x
   .hword 0x18e @ y
   .hword 0x2b @ type
   .hword 0xc @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
   .hword 8192 @ rotation
@ Object 928
   .hword 0x7 @ delta x
   .hword 0x145 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 929
   .hword 0x3 @ delta x
   .hword 0x189 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 930
   .hword 0x1 @ delta x
   .hword 0x13f @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 931
   .hword 0x4 @ delta x
   .hword 0x190 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 932
   .hword 0x1 @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 933
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 934
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 935
   .hword 0x2 @ delta x
   .hword 0x13a @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 936
   .hword 0x3 @ delta x
   .hword 0x194 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 937
   .hword 0x1 @ delta x
   .hword 0x134 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 938
   .hword 0x4 @ delta x
   .hword 0x19b @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 939
   .hword 0x3 @ delta x
   .hword 0x12f @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 940
   .hword 0x3 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 941
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 942
   .hword 0x0 @ delta x
   .hword 0x19f @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 943
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 944
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 8367 @ metatile ID appareance
@ Object 945
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 8359 @ metatile ID appareance
@ Object 946
   .hword 0xb @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 947
   .hword 0x5 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 948
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 949
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 950
   .hword 0x8 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 951
   .hword 0x8 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 952
   .hword 0x20 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 953
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 954
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 955
   .hword 0x10 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 956
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 957
   .hword 0x9 @ delta x
   .hword 0x1ac @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 958
   .hword 0x5 @ delta x
   .hword 0x1a6 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 959
   .hword 0x2 @ delta x
   .hword 0x170 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 960
   .hword 0x4 @ delta x
   .hword 0x1a1 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 961
   .hword 0x5 @ delta x
   .hword 0x19b @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 962
   .hword 0x7 @ delta x
   .hword 0x150 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 963
   .hword 0x20 @ delta x
   .hword 0x141 @ y
   .hword 0x2b @ type
   .hword 0x24 @ bg layer 4   z index 0 
   .hword 6899 @ metatile ID appareance
   .hword 57344 @ rotation
@ Object 964
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 965
   .hword 0x0 @ delta x
   .hword 0x18e @ y
   .hword 0x2b @ type
   .hword 0xc @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
   .hword 8192 @ rotation
@ Object 966
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 967
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 968
   .hword 0x6 @ delta x
   .hword 0x134 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 969
   .hword 0x1 @ delta x
   .hword 0x19a @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 970
   .hword 0x3 @ delta x
   .hword 0x12e @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 971
   .hword 0x2 @ delta x
   .hword 0x1a1 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 972
   .hword 0x4 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 973
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 974
   .hword 0x1 @ delta x
   .hword 0x129 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 975
   .hword 0x1 @ delta x
   .hword 0x1a5 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 976
   .hword 0x3 @ delta x
   .hword 0x123 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 977
   .hword 0x2 @ delta x
   .hword 0x1ac @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 978
   .hword 0x9 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 8367 @ metatile ID appareance
@ Object 979
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 980
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 8359 @ metatile ID appareance
@ Object 981
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 982
   .hword 0x3 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 983
   .hword 0x5 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 984
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 985
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 986
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 987
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 988
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 989
   .hword 0x4 @ delta x
   .hword 0x140 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 990
   .hword 0x7 @ delta x
   .hword 0x145 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 991
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 992
   .hword 0x4 @ delta x
   .hword 0x14b @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 993
   .hword 0x7 @ delta x
   .hword 0x150 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 994
   .hword 0x4 @ delta x
   .hword 0x156 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 995
   .hword 0xe @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 996
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 997
   .hword 0x10 @ delta x
   .hword 0x161 @ y
   .hword 0x2b @ type
   .hword 0x24 @ bg layer 4   z index 0 
   .hword 6899 @ metatile ID appareance
   .hword 57344 @ rotation
@ Object 998
   .hword 0x8 @ delta x
   .hword 0x166 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 999
   .hword 0x4 @ delta x
   .hword 0x160 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 1000
   .hword 0x4 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 1001
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1002
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1003
   .hword 0x3 @ delta x
   .hword 0x15b @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 1004
   .hword 0x4 @ delta x
   .hword 0x155 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 1005
   .hword 0x7 @ delta x
   .hword 0x150 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 1006
   .hword 0x2 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 1007
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1008
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1009
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 1010
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 1011
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1012
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1013
   .hword 0xb @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1014
   .hword 0x5 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 8367 @ metatile ID appareance
@ Object 1015
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1016
   .hword 0xe @ delta x
   .hword 0x1a6 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 1017
   .hword 0x2 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1018
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1019
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1020
   .hword 0x20 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1021
   .hword 0x6 @ delta x
   .hword 0x17e @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 1022
   .hword 0xa @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1023
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1024
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1025
   .hword 0x8 @ delta x
   .hword 0x1a8 @ y
   .hword 0x59 @ type
   .hword 0x120 @ coin 2 bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1026
   .hword 0x8 @ delta x
   .hword 0x130 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1027
   .hword 0x0 @ delta x
   .hword 0x16e @ y
   .hword 0x2b @ type
   .hword 0xc @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
   .hword 8192 @ rotation
@ Object 1028
   .hword 0x9 @ delta x
   .hword 0x169 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 1029
   .hword 0x5 @ delta x
   .hword 0x170 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 1030
   .hword 0x2 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 1031
   .hword 0x4 @ delta x
   .hword 0x174 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 1032
   .hword 0x4 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1033
   .hword 0x8 @ delta x
   .hword 0x140 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1034
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1035
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 1036
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 1037
   .hword 0x5 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1038
   .hword 0xb @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1039
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 1040
   .hword 0x10 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1041
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1042
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 8359 @ metatile ID appareance
@ Object 1043
   .hword 0x8 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1044
   .hword 0x8 @ delta x
   .hword 0x190 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1045
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1046
   .hword 0x4 @ delta x
   .hword 0x140 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 1047
   .hword 0x7 @ delta x
   .hword 0x145 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 1048
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1049
   .hword 0x4 @ delta x
   .hword 0x14b @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 1050
   .hword 0x7 @ delta x
   .hword 0x150 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 1051
   .hword 0x4 @ delta x
   .hword 0x156 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 1052
   .hword 0x6 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1053
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1054
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1055
   .hword 0xb @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1056
   .hword 0x5 @ delta x
   .hword 0x161 @ y
   .hword 0x2b @ type
   .hword 0x24 @ bg layer 4   z index 0 
   .hword 6899 @ metatile ID appareance
   .hword 57344 @ rotation
@ Object 1057
   .hword 0x8 @ delta x
   .hword 0x166 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 1058
   .hword 0x4 @ delta x
   .hword 0x160 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 1059
   .hword 0x4 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 1060
   .hword 0x3 @ delta x
   .hword 0x15b @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 1061
   .hword 0x4 @ delta x
   .hword 0x155 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 1062
   .hword 0x1 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1063
   .hword 0x6 @ delta x
   .hword 0x150 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 24576 @ rotation
@ Object 1064
   .hword 0x2 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 1065
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1066
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 1067
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1068
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8365 @ metatile ID appareance
@ Object 1069
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1070
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1071
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1072
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 8367 @ metatile ID appareance
@ Object 1073
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1074
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1075
   .hword 0x8 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1076
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1077
   .hword 0x4 @ delta x
   .hword 0x190 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 1078
   .hword 0x6 @ delta x
   .hword 0x18b @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 1079
   .hword 0x5 @ delta x
   .hword 0x185 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 1080
   .hword 0x1 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1081
   .hword 0x5 @ delta x
   .hword 0x180 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 1082
   .hword 0x5 @ delta x
   .hword 0x17a @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 57344 @ rotation
@ Object 1083
   .hword 0x6 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1084
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1085
   .hword 0x10 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1086
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1087
   .hword 0x0 @ delta x
   .hword 0x16e @ y
   .hword 0x2b @ type
   .hword 0xc @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
   .hword 8192 @ rotation
@ Object 1088
   .hword 0x9 @ delta x
   .hword 0x169 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 1089
   .hword 0x5 @ delta x
   .hword 0x170 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 1090
   .hword 0x2 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 1091
   .hword 0x4 @ delta x
   .hword 0x174 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 1092
   .hword 0x5 @ delta x
   .hword 0x17b @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 1093
   .hword 0x6 @ delta x
   .hword 0x17f @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 1094
   .hword 0x1 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1095
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 1096
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1097
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 1098
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1099
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 8357 @ metatile ID appareance
@ Object 1100
   .hword 0x8 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1101
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1102
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 8359 @ metatile ID appareance
@ Object 1103
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1104
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1105
   .hword 0x5 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1106
   .hword 0x1b @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1107
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1108
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1109
   .hword 0x5 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1110
   .hword 0x3 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1111
   .hword 0x13 @ delta x
   .hword 0x125 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 1112
   .hword 0x4 @ delta x
   .hword 0x12b @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 1113
   .hword 0x1 @ delta x
   .hword 0x150 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1114
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1115
   .hword 0x6 @ delta x
   .hword 0x130 @ y
   .hword 0x9c @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 1116
   .hword 0x4 @ delta x
   .hword 0x136 @ y
   .hword 0x87 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 40960 @ rotation
@ Object 1117
   .hword 0x6 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1118
   .hword 0x20 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1354 @ metatile ID appareance
@ Object 1119
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 1120
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1355 @ metatile ID appareance
@ Object 1121
   .hword 0x10 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x109 @ changes 2 for 33 frames
   .hword 0x77c7 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1122
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x41c0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1123
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x10a @ changes 3 for 33 frames
   .hword 0x54e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1124
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x125 @ changes GROUND for 36 frames
   .hword 0x2480 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1125
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x3480 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1126
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1127
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x64 @ type
   .hword 0x0 @ bg layer 0 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1128
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x4a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1129
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1130
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1352 @ metatile ID appareance
@ Object 1131
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 1132
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1353 @ metatile ID appareance
@ Object 1133
   .hword 0x12 @ delta x
   .hword 0x159 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1134
   .hword 0xe @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1135
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1136
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1354 @ metatile ID appareance
@ Object 1137
   .hword 0x10 @ delta x
   .hword 0x13e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1138
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 1139
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1355 @ metatile ID appareance
@ Object 1140
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1141
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 30 @ metatile ID appareance
@ Object 1142
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1143
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1144
   .hword 0x8 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x12c1 @ changes 2 for 600 frames
   .hword 0x5014 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1145
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x12c0 @ changes 1 for 600 frames
   .hword 0x400c @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1146
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x12c2 @ changes 3 for 600 frames
   .hword 0x5413 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1147
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x12c5 @ changes GROUND for 600 frames
   .hword 0x2405 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1148
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x12c4 @ changes BG for 600 frames
   .hword 0x3408 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1149
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1352 @ metatile ID appareance
@ Object 1150
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 1151
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1353 @ metatile ID appareance
@ Object 1152
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1153
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7056 @ metatile ID appareance
@ Object 1154
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1354 @ metatile ID appareance
@ Object 1155
   .hword 0x10 @ delta x
   .hword 0x13e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1156
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7056 @ metatile ID appareance
@ Object 1157
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8659 @ metatile ID appareance
@ Object 1158
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1355 @ metatile ID appareance
@ Object 1159
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1160
   .hword 0xc @ delta x
   .hword 0x141 @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1161
   .hword 0x0 @ delta x
   .hword 0x141 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1162
   .hword 0x14 @ delta x
   .hword 0x170 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1163
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1164
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1165
   .hword 0x7 @ delta x
   .hword 0x143 @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1166
   .hword 0x0 @ delta x
   .hword 0x143 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1167
   .hword 0x1 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1168
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1169
   .hword 0x18 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1170
   .hword 0x10 @ delta x
   .hword 0x14b @ y
   .hword 0x29 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1171
   .hword 0x0 @ delta x
   .hword 0x14b @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1172
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1173
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1174
   .hword 0x6 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1175
   .hword 0x15 @ delta x
   .hword 0x157 @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1176
   .hword 0x0 @ delta x
   .hword 0x157 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1177
   .hword 0x5 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1178
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1179
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1180
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1181
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1182
   .hword 0x8 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1183
   .hword 0x28 @ delta x
   .hword 0x150 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1184
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1185
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1186
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1187
   .hword 0x20 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1188
   .hword 0x8 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1189
   .hword 0x18 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1190
   .hword 0x6 @ delta x
   .hword 0x148 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1191
   .hword 0x0 @ delta x
   .hword 0x148 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1192
   .hword 0xd @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1193
   .hword 0xd @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1194
   .hword 0x11 @ delta x
   .hword 0x13b @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1195
   .hword 0x0 @ delta x
   .hword 0x13b @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1196
   .hword 0x12 @ delta x
   .hword 0x150 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1197
   .hword 0x5 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1198
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1199
   .hword 0xa @ delta x
   .hword 0x133 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1200
   .hword 0x0 @ delta x
   .hword 0x133 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1201
   .hword 0x16 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1202
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1203
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1204
   .hword 0x4 @ delta x
   .hword 0x131 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1205
   .hword 0x0 @ delta x
   .hword 0x131 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1206
   .hword 0xc @ delta x
   .hword 0x180 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1207
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x76 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1208
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1209
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1210
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1211
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1212
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1213
   .hword 0x6 @ delta x
   .hword 0x12d @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1214
   .hword 0x0 @ delta x
   .hword 0x12d @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1215
   .hword 0x1a @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1216
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1217
   .hword 0x4 @ delta x
   .hword 0x13b @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1218
   .hword 0x0 @ delta x
   .hword 0x13b @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1219
   .hword 0x4 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1220
   .hword 0x8 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1221
   .hword 0x1c @ delta x
   .hword 0x144 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1222
   .hword 0x0 @ delta x
   .hword 0x144 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1223
   .hword 0x4 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1224
   .hword 0x6 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1225
   .hword 0xa @ delta x
   .hword 0x170 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1226
   .hword 0x14 @ delta x
   .hword 0x153 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1227
   .hword 0x0 @ delta x
   .hword 0x153 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1228
   .hword 0xc @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1229
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1230
   .hword 0x15 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1231
   .hword 0x3 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1232
   .hword 0x18 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1233
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1234
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x76 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1235
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1236
   .hword 0x20 @ delta x
   .hword 0x170 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1237
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1238
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1239
   .hword 0x20 @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1240
   .hword 0x20 @ delta x
   .hword 0x190 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1241
   .hword 0x1e @ delta x
   .hword 0x169 @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1242
   .hword 0x0 @ delta x
   .hword 0x169 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1243
   .hword 0x2 @ delta x
   .hword 0x1a0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1244
   .hword 0x22 @ delta x
   .hword 0x15e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1245
   .hword 0x6 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 1246
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 1247
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 1248
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 8662 @ metatile ID appareance
@ Object 1249
   .hword 0xa @ delta x
   .hword 0x15e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1250
   .hword 0x1e @ delta x
   .hword 0x1a0 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1251
   .hword 0xc @ delta x
   .hword 0x16c @ y
   .hword 0x28 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1252
   .hword 0x0 @ delta x
   .hword 0x16c @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1253
   .hword 0x4 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1254
   .hword 0x22 @ delta x
   .hword 0x15e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1255
   .hword 0x20 @ delta x
   .hword 0x15e @ y
   .hword 0x67 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1256
   .hword 0x1e @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1257
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1258
   .hword 0x16 @ delta x
   .hword 0x18c @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1259
   .hword 0x2a @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1260
   .hword 0xa @ delta x
   .hword 0x165 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1261
   .hword 0x0 @ delta x
   .hword 0x165 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1262
   .hword 0x26 @ delta x
   .hword 0x188 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1263
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1264
   .hword 0x1 @ delta x
   .hword 0x152 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1265
   .hword 0x0 @ delta x
   .hword 0x152 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1266
   .hword 0xf @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1267
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1268
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1269
   .hword 0x1a @ delta x
   .hword 0x145 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1270
   .hword 0x0 @ delta x
   .hword 0x145 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1271
   .hword 0x16 @ delta x
   .hword 0x170 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1272
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1273
   .hword 0x8 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1274
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1275
   .hword 0x3 @ delta x
   .hword 0x13e @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1276
   .hword 0x0 @ delta x
   .hword 0x13e @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1277
   .hword 0x5 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1278
   .hword 0x26 @ delta x
   .hword 0x12c @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1279
   .hword 0x0 @ delta x
   .hword 0x12c @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1280
   .hword 0x2 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1281
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1282
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1283
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1284
   .hword 0x1b @ delta x
   .hword 0x120 @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1285
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1286
   .hword 0x15 @ delta x
   .hword 0x150 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1287
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1288
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1289
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1290
   .hword 0x2 @ delta x
   .hword 0x11a @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1291
   .hword 0x0 @ delta x
   .hword 0x11a @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1292
   .hword 0xe @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1293
   .hword 0x1e @ delta x
   .hword 0x11b @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1294
   .hword 0x0 @ delta x
   .hword 0x11b @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1295
   .hword 0x2 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1296
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1297
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1298
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1299
   .hword 0x10 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1300
   .hword 0x24 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1301
   .hword 0x4 @ delta x
   .hword 0x126 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1302
   .hword 0x0 @ delta x
   .hword 0x126 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1303
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1304
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1305
   .hword 0x20 @ delta x
   .hword 0x160 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1306
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1307
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1308
   .hword 0x15 @ delta x
   .hword 0x12f @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1309
   .hword 0x0 @ delta x
   .hword 0x12f @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1310
   .hword 0x13 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1311
   .hword 0x8 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1312
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1313
   .hword 0x13 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1314
   .hword 0xd @ delta x
   .hword 0x136 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1315
   .hword 0x0 @ delta x
   .hword 0x136 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1316
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1317
   .hword 0x10 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1318
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1319
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1320
   .hword 0x9 @ delta x
   .hword 0x13a @ y
   .hword 0x29 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1321
   .hword 0x0 @ delta x
   .hword 0x13a @ y
   .hword 0x74 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1322
   .hword 0x7 @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1323
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1324
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1325
   .hword 0x18 @ delta x
   .hword 0x1af @ y
   .hword 0x6 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1326
   .hword 0x8 @ delta x
   .hword 0x160 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1327
   .hword 0x5 @ delta x
   .hword 0x135 @ y
   .hword 0x28 @ type
   .hword 0xa @ bg layer 1 non rotated flipped horizontally  
   .hword 0x0 @ z index 0
@ Object 1328
   .hword 0x0 @ delta x
   .hword 0x135 @ y
   .hword 0x73 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1329
   .hword 0x13 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1330
   .hword 0x8 @ delta x
   .hword 0x180 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1331
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1332
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1333
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1334
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1335
   .hword 0x10 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x109 @ changes 2 for 33 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1336
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x834 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1337
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x10a @ changes 3 for 33 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1338
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x125 @ changes GROUND for 36 frames
   .hword 0x12 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1339
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x8 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1340
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x39 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1341
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x34 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1342
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1343
   .hword 0x20 @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1344
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x4 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1345
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1346
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1347
   .hword 0x10 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1348
   .hword 0x8 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1349
   .hword 0x8 @ delta x
   .hword 0x140 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1350
   .hword 0x6 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1351
   .hword 0x2 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1352
   .hword 0x8 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1353
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1354
   .hword 0x8 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1355
   .hword 0x8 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x12c1 @ changes 2 for 600 frames
   .hword 0x7c1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1356
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x12c0 @ changes 1 for 600 frames
   .hword 0x4834 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1357
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x12c2 @ changes 3 for 600 frames
   .hword 0x6c1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1358
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x12c5 @ changes GROUND for 600 frames
   .hword 0x4412 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1359
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x12c4 @ changes BG for 600 frames
   .hword 0x304e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1360
   .hword 0xb @ delta x
   .hword 0x151 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1361
   .hword 0x5 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1362
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1363
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1364
   .hword 0x10 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1365
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1366
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1367
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1368
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1369
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1370
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1371
   .hword 0x8 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1372
   .hword 0x8 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1373
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1374
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
@ Object 1375
   .hword 0x18 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1376
   .hword 0x10 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1377
   .hword 0x8 @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1378
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6930 @ metatile ID appareance
@ Object 1379
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6996 @ metatile ID appareance
@ Object 1380
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 6620 @ metatile ID appareance
@ Object 1381
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 7032 @ metatile ID appareance
@ Object 1382
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1383
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1384
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1385
   .hword 0x8 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1386
   .hword 0x8 @ delta x
   .hword 0x150 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1387
   .hword 0x6 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1388
   .hword 0x2 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1389
   .hword 0x8 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1390
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1391
   .hword 0x8 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1392
   .hword 0x8 @ delta x
   .hword 0x190 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1393
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1394
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1395
   .hword 0x10 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1396
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1397
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6908 @ metatile ID appareance
@ Object 1398
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1399
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1400
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1401
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1402
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1403
   .hword 0x8 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1404
   .hword 0x8 @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1405
   .hword 0x18 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1406
   .hword 0x2 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1407
   .hword 0x6 @ delta x
   .hword 0x180 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1408
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1409
   .hword 0x8 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1410
   .hword 0x8 @ delta x
   .hword 0x150 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1411
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1412
   .hword 0x8 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1413
   .hword 0x18 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6897 @ metatile ID appareance
@ Object 1414
   .hword 0x20 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1415
   .hword 0x20 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1416
   .hword 0x40 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1417
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1418
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6908 @ metatile ID appareance
@ Object 1419
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6930 @ metatile ID appareance
@ Object 1420
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 6620 @ metatile ID appareance
@ Object 1421
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 7032 @ metatile ID appareance
@ Object 1422
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6996 @ metatile ID appareance
@ Object 1423
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 30 @ metatile ID appareance
@ Object 1424
   .hword 0x8 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1425
   .hword 0x18 @ delta x
   .hword 0x160 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1426
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1427
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1428
   .hword 0x2 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1429
   .hword 0xe @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1430
   .hword 0x8 @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1431
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1432
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1433
   .hword 0x6 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1434
   .hword 0x2 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1435
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1436
   .hword 0x18 @ delta x
   .hword 0x180 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1437
   .hword 0x8 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1438
   .hword 0x8 @ delta x
   .hword 0x150 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1439
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1440
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1441
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1442
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1443
   .hword 0x8 @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1444
   .hword 0x10 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1445
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1446
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 30 @ metatile ID appareance
@ Object 1447
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1448
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1449
   .hword 0x18 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1450
   .hword 0x8 @ delta x
   .hword 0x140 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1451
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 30 @ metatile ID appareance
@ Object 1452
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1453
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1454
   .hword 0x8 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1455
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1456
   .hword 0x8 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1457
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1458
   .hword 0x18 @ delta x
   .hword 0x190 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1459
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1460
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1461
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1462
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1463
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1464
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1465
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1466
   .hword 0x18 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1467
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 7060 @ metatile ID appareance
@ Object 1468
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1469
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1470
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1471
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1472
   .hword 0x22 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1473
   .hword 0x6 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 31 @ metatile ID appareance
@ Object 1474
   .hword 0x16 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1475
   .hword 0xa @ delta x
   .hword 0x140 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1476
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1477
   .hword 0x8 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1478
   .hword 0x10 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1479
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1480
   .hword 0x8 @ delta x
   .hword 0x170 @ y
   .hword 0x51 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1481
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 219 @ metatile ID appareance
@ Object 1482
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 6896 @ metatile ID appareance
@ Object 1483
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1484
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 219 @ metatile ID appareance
@ Object 1485
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 7056 @ metatile ID appareance
@ Object 1486
   .hword 0x10 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1487
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 7056 @ metatile ID appareance
@ Object 1488
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1489
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1490
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 221 @ metatile ID appareance
@ Object 1491
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 7056 @ metatile ID appareance
@ Object 1492
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 219 @ metatile ID appareance
@ Object 1493
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 7056 @ metatile ID appareance
@ Object 1494
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1495
   .hword 0x0 @ delta x
   .hword 0x16a @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1496
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1497
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 221 @ metatile ID appareance
@ Object 1498
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 7056 @ metatile ID appareance
@ Object 1499
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6908 @ metatile ID appareance
@ Object 1500
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6896 @ metatile ID appareance
@ Object 1501
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 218 @ metatile ID appareance
@ Object 1502
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 7056 @ metatile ID appareance
@ Object 1503
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1504
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 218 @ metatile ID appareance
@ Object 1505
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 7056 @ metatile ID appareance
@ Object 1506
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1507
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1508
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1509
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 7056 @ metatile ID appareance
@ Object 1510
   .hword 0x8 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1511
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 7056 @ metatile ID appareance
@ Object 1512
   .hword 0xa @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x1a @ bg layer 3 non rotated flipped horizontally  
   .hword 0xc0 @ z index 0 pal 3
@ Object 1513
   .hword 0x6 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 220 @ metatile ID appareance
@ Object 1514
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 7056 @ metatile ID appareance
@ Object 1515
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1516
   .hword 0x4 @ delta x
   .hword 0x13c @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3314 @ metatile ID appareance
@ Object 1517
   .hword 0x2 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1518
   .hword 0xa @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 219 @ metatile ID appareance
@ Object 1519
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 7056 @ metatile ID appareance
@ Object 1520
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 7056 @ metatile ID appareance
@ Object 1521
   .hword 0x4 @ delta x
   .hword 0x13c @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3314 @ metatile ID appareance
@ Object 1522
   .hword 0x4 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1523
   .hword 0x0 @ delta x
   .hword 0x18f @ y
   .hword 0x2b @ type
   .hword 0x410 @ bg layer 2   z index 16 
   .hword 641 @ metatile ID appareance
@ Object 1524
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 641 @ metatile ID appareance
@ Object 1525
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 638 @ metatile ID appareance
@ Object 1526
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1527
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 7056 @ metatile ID appareance
@ Object 1528
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1529
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 218 @ metatile ID appareance
@ Object 1530
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 6928 @ metatile ID appareance
@ Object 1531
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1532
   .hword 0x0 @ delta x
   .hword 0x166 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1533
   .hword 0x20 @ delta x
   .hword 0x118 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1534
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x51 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1535
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1536
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x5 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1537
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1538
   .hword 0x0 @ delta x
   .hword 0x166 @ y
   .hword 0x52 @ type
   .hword 0x22 @ bg layer 4 non rotated flipped horizontally  
   .hword 0x100 @ z index 0 pal 4
@ Object 1539
   .hword 0x10 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5f @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1540
   .hword 0x20 @ delta x
   .hword 0x150 @ y
   .hword 0x50 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1541
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x6 @ type
   .hword 0x1b @ bg layer 3 non rotated flipped horizontally flipped vertically 
   .hword 0xc0 @ z index 0 pal 3
@ Object 1542
   .hword 0x8 @ delta x
   .hword 0x1b0 @ y
   .hword 0x6 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1543
   .hword 0x8 @ delta x
   .hword 0x118 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1544
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x5e @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x110 @ z index 16 pal 4
@ Object 1545
   .hword 0x8 @ delta x
   .hword 0x140 @ y
   .hword 0x52 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1546
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1547
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x33 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
   .byte 0xff
