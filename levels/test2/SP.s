@ Sprite Data Export

.section .rodata
.align 2
.global test2_spr_data
.hidden test2_spr_data
test2_spr_data:
@ Object 1
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x6c1f @ color
   .hword 0x0 @ doesn't copy any channel
   .hword 0x1 @ blending normal trigger
@ Object 2
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3
   .hword 0x20 @ delta x
   .hword 0x1a8 @ y
   .hword 0x34 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x66 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 5
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x6a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 6
   .hword 0x20 @ delta x
   .hword 0x1b0 @ y
   .hword 0xa @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 7
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x6c1f @ color
   .hword 0x0 @ doesn't copy any channel
   .hword 0x0 @ normal trigger
@ Object 8
   .hword 0x8 @ delta x
   .hword 0x168 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   
   .hword 704 @ metatile ID appareance
   .hword 0x0 @ z index 0
@ Object 9
   .hword 0x28 @ delta x
   .hword 0x160 @ y
   .hword 0x75 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 10
   .hword 0x10 @ delta x
   .hword 0x176 @ y
   .hword 0x5b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 11
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x65 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 12
   .hword 0x20 @ delta x
   .hword 0x150 @ y
   .hword 0x65 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 13
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x69 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 14
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 15
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x5a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 16
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x73 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 17
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 18
   .hword 0x10 @ delta x
   .hword 0x198 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 19
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x5d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 20
   .hword 0x10 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3e0 @ color
   .hword 0x11 @ copies {copy_channel}
   .hword 0x0 @ normal trigger
@ Object 21
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3e0 @ color
   .hword 0x11 @ copies {copy_channel}
   .hword 0x1 @ blending normal trigger
@ Object 22
   .hword 0x0 @ delta x
   .hword 0xf0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e0 @ color
   .hword 0x11 @ copies {copy_channel}
   .hword 0x0 @ normal trigger
@ Object 23
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x581a @ color
   .hword 0x0 @ doesn't copy any channel
   .hword 0x0 @ normal trigger
@ Object 24
   .hword 0x10 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel
   .hword 0x0 @ normal trigger
@ Object 25
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel
   .hword 0x1 @ blending normal trigger
@ Object 26
   .hword 0x0 @ delta x
   .hword 0xf0 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel
   .hword 0x0 @ normal trigger
@ Object 27
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel
   .hword 0x0 @ normal trigger
@ Object 28
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x5c @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 29
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x64 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 30
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x68 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 31
   .hword 0x20 @ delta x
   .hword 0x1b0 @ y
   .hword 0x67 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 32
   .hword 0x20 @ delta x
   .hword 0x170 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 33
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x74 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 34
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x67 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 35
   .hword 0xb0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 36
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 37
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x63 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 38
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x60 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 39
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 40
   .hword 0x20 @ delta x
   .hword 0x150 @ y
   .hword 0x62 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 41
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 42
   .hword 0x0 @ delta x
   .hword 0x1b4 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   
   .hword 1488 @ metatile ID appareance
   .hword 0x0 @ z index 0
@ Object 43
   .hword 0x10 @ delta x
   .hword 0x1a4 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   
   .hword 1492 @ metatile ID appareance
   .hword 0x0 @ z index 0
@ Object 44
   .hword 0x10 @ delta x
   .hword 0x1a4 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   
   .hword 1493 @ metatile ID appareance
   .hword 0x0 @ z index 0
@ Object 45
   .hword 0x10 @ delta x
   .hword 0x194 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   
   .hword 1492 @ metatile ID appareance
   .hword 0x0 @ z index 0
@ Object 46
   .hword 0x10 @ delta x
   .hword 0x194 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   
   .hword 1493 @ metatile ID appareance
   .hword 0x0 @ z index 0
@ Object 47
   .hword 0x40 @ delta x
   .hword 0x1a8 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   
   .hword 1488 @ metatile ID appareance
   .hword 0x0 @ z index 0
@ Object 48
   .hword 0x10 @ delta x
   .hword 0x198 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   
   .hword 1488 @ metatile ID appareance
   .hword 0x0 @ z index 0
@ Object 49
   .hword 0x40 @ delta x
   .hword 0x160 @ y
   .hword 0x76 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 50
   .hword 0x58 @ delta x
   .hword 0x168 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 51
   .hword 0x4 @ delta x
   .hword 0x168 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 52
   .hword 0x94 @ delta x
   .hword 0x160 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x144 @ z index 4 pal 5
@ Object 53
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x78 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x103 @ z index 3 pal 4
@ Object 54
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x79 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc2 @ z index 2 pal 3
@ Object 55
   .hword 0x40 @ delta x
   .hword 0x1a0 @ y
   .hword 0x72 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 56
   .hword 0x40 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   
   .hword 1490 @ metatile ID appareance
   .hword 0x0 @ z index 0
@ Object 57
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   
   .hword 1490 @ metatile ID appareance
   .hword 0x0 @ z index 0
@ Object 58
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 59
   .hword 0x40 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 60
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x36 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 61
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 62
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x4a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 63
   .hword 0x60 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 64
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0xa @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 65
   .hword 0xa0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 66
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 67
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 68
   .hword 0x40 @ delta x
   .hword 0x1a0 @ y
   .hword 0x48 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 69
   .hword 0x80 @ delta x
   .hword 0x1b0 @ y
   .hword 0xa @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 70
   .hword 0x20 @ delta x
   .hword 0x130 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 71
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 72
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x39 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 73
   .hword 0xc0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x37 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 74
   .hword 0x100 @ delta x
   .hword 0x1a8 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 75
   .hword 0x30 @ delta x
   .hword 0x130 @ y
   .hword 0x1d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 76
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 77
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 78
   .hword 0x40 @ delta x
   .hword 0x120 @ y
   .hword 0xa @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 79
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0xa @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 80
   .hword 0x50 @ delta x
   .hword 0x150 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 81
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 82
   .hword 0xc0 @ delta x
   .hword 0x1a0 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 83
   .hword 0x80 @ delta x
   .hword 0x140 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 84
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 85
   .hword 0x80 @ delta x
   .hword 0x130 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 86
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 87
   .hword 0xe0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x49 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 88
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 89
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 90
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x38 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 91
   .hword 0x160 @ delta x
   .hword 0x1a0 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 92
   .hword 0x30 @ delta x
   .hword 0x1a0 @ y
   .hword 0x39 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 93
   .hword 0x20 @ delta x
   .hword 0x1a0 @ y
   .hword 0x37 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
   .byte 0xff
