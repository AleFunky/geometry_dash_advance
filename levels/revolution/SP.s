@ Sprite Data Export

.section .rodata
.align 2
.global revolution_spr_data
.hidden revolution_spr_data
revolution_spr_data:
@ Object 1
   .hword 0xa0 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xb3c @ changes BG for 359 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xb3d @ changes GROUND for 359 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 3
   .hword 0xb0 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x11c @ changes BG for 35 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 4
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x11d @ changes GROUND for 35 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 5
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x132 @ changes 3 for 38 frames
   .hword 0x641f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 6
   .hword 0xf @ delta x
   .hword 0x1ad @ y
   .hword 0xd @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 7
   .hword 0x1e @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 8
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x5 @ changes GROUND for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 9
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 10
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x1ec @ changes BG for 61 frames
   .hword 0x3405 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 11
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x1ed @ changes GROUND for 61 frames
   .hword 0x3405 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 12
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x372 @ changes 3 for 110 frames
   .hword 0x3405 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 13
   .hword 0x1 @ delta x
   .hword 0x1a0 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 14
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6638 @ metatile ID appareance
@ Object 15
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 5838 @ metatile ID appareance
@ Object 16
   .hword 0x10 @ delta x
   .hword 0x1b8 @ y
   .hword 0x31 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x10 @ z index 16
@ Object 17
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x7b @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 18
   .hword 0x1f @ delta x
   .hword 0x1ad @ y
   .hword 0xb @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 19
   .hword 0x1 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6638 @ metatile ID appareance
@ Object 20
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 5838 @ metatile ID appareance
@ Object 21
   .hword 0x20 @ delta x
   .hword 0x1b8 @ y
   .hword 0x31 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x10 @ z index 16
@ Object 22
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x7b @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 23
   .hword 0x2e @ delta x
   .hword 0x1ae @ y
   .hword 0xc @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 24
   .hword 0x12 @ delta x
   .hword 0x160 @ y
   .hword 0x14 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 25
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x7b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 26
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x31 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x10 @ z index 16
@ Object 27
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x14 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 28
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x7a @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 29
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x10 @ z index 16
@ Object 30
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5474 @ metatile ID appareance
@ Object 31
   .hword 0xe @ delta x
   .hword 0x1ae @ y
   .hword 0xc @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 32
   .hword 0x21 @ delta x
   .hword 0x1ae @ y
   .hword 0x1e @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 33
   .hword 0x6 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7440 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 34
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x5 @ changes GROUND for 0 frames
   .hword 0x7440 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 35
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7dc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 36
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x1ec @ changes BG for 61 frames
   .hword 0x3400 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 37
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x1ed @ changes GROUND for 61 frames
   .hword 0x3400 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 38
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7401 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 39
   .hword 0x5 @ delta x
   .hword 0x1ae @ y
   .hword 0x22 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 40
   .hword 0x4 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6638 @ metatile ID appareance
@ Object 41
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 5838 @ metatile ID appareance
@ Object 42
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 43
   .hword 0x3 @ delta x
   .hword 0x1ae @ y
   .hword 0x9a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 44
   .hword 0xd @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5252 @ metatile ID appareance
@ Object 45
   .hword 0x10 @ delta x
   .hword 0x1ad @ y
   .hword 0x97 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 46
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5576 @ metatile ID appareance
@ Object 47
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 48
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5576 @ metatile ID appareance
@ Object 49
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 50
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5252 @ metatile ID appareance
@ Object 51
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5576 @ metatile ID appareance
@ Object 52
   .hword 0x10 @ delta x
   .hword 0x1ae @ y
   .hword 0x98 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 53
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 54
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5576 @ metatile ID appareance
@ Object 55
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 56
   .hword 0xe @ delta x
   .hword 0x18e @ y
   .hword 0xa @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 57
   .hword 0x2 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5252 @ metatile ID appareance
@ Object 58
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5576 @ metatile ID appareance
@ Object 59
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 60
   .hword 0x0 @ delta x
   .hword 0x1ad @ y
   .hword 0x96 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 61
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x2f @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x1 @ z index 1
@ Object 62
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x7a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 63
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5488 @ metatile ID appareance
@ Object 64
   .hword 0x10 @ delta x
   .hword 0x1ae @ y
   .hword 0x98 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 65
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x1 @ z index 1
@ Object 66
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x7b @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 67
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5488 @ metatile ID appareance
@ Object 68
   .hword 0x9 @ delta x
   .hword 0x180 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 69
   .hword 0x7 @ delta x
   .hword 0x1ad @ y
   .hword 0x96 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 70
   .hword 0xa @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x740e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 71
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x5 @ changes GROUND for 0 frames
   .hword 0x740e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 72
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7dc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 73
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x1ec @ changes BG for 61 frames
   .hword 0x3406 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 74
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x1ed @ changes GROUND for 61 frames
   .hword 0x3406 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 75
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7460 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 76
   .hword 0x4 @ delta x
   .hword 0x140 @ y
   .hword 0x2f @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x1 @ z index 1
@ Object 77
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x7a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 78
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5488 @ metatile ID appareance
@ Object 79
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 80
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5576 @ metatile ID appareance
@ Object 81
   .hword 0xe @ delta x
   .hword 0x17e @ y
   .hword 0xc @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 82
   .hword 0x12 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 83
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5576 @ metatile ID appareance
@ Object 84
   .hword 0xd @ delta x
   .hword 0x18e @ y
   .hword 0xd @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 85
   .hword 0x33 @ delta x
   .hword 0x150 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 86
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x558 @ bg layer 3   z index 21 
   .hword 5488 @ metatile ID appareance
@ Object 87
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x418 @ bg layer 3   z index 16 
   .hword 6248 @ metatile ID appareance
@ Object 88
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 6784 @ metatile ID appareance
@ Object 89
   .hword 0x5 @ delta x
   .hword 0x1ad @ y
   .hword 0xd @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 90
   .hword 0xb @ delta x
   .hword 0x150 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 91
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x558 @ bg layer 3   z index 21 
   .hword 5488 @ metatile ID appareance
@ Object 92
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 6100 @ metatile ID appareance
@ Object 93
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 6628 @ metatile ID appareance
@ Object 94
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x558 @ bg layer 3   z index 21 
   .hword 5488 @ metatile ID appareance
@ Object 95
   .hword 0xe @ delta x
   .hword 0x19e @ y
   .hword 0xa @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 96
   .hword 0x22 @ delta x
   .hword 0x1b7 @ y
   .hword 0x30 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x10 @ z index 16
@ Object 97
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7a @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 98
   .hword 0x8 @ delta x
   .hword 0x164 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 99
   .hword 0x2 @ delta x
   .hword 0x183 @ y
   .hword 0x32 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x10 @ z index 16
@ Object 100
   .hword 0x0 @ delta x
   .hword 0x183 @ y
   .hword 0x7c @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 101
   .hword 0x4 @ delta x
   .hword 0x199 @ y
   .hword 0x31 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x10 @ z index 16
@ Object 102
   .hword 0x0 @ delta x
   .hword 0x199 @ y
   .hword 0x7b @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 103
   .hword 0xc @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7440 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 104
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x5 @ changes GROUND for 0 frames
   .hword 0x7440 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 105
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7dc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 106
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x1ec @ changes BG for 61 frames
   .hword 0x3400 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 107
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x1ed @ changes GROUND for 61 frames
   .hword 0x3400 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 108
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7401 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 109
   .hword 0x2 @ delta x
   .hword 0x17c @ y
   .hword 0x31 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x10 @ z index 16
@ Object 110
   .hword 0x0 @ delta x
   .hword 0x17c @ y
   .hword 0x7b @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 111
   .hword 0x1 @ delta x
   .hword 0x1af @ y
   .hword 0x31 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x10 @ z index 16
@ Object 112
   .hword 0x0 @ delta x
   .hword 0x1af @ y
   .hword 0x7b @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 113
   .hword 0x21 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 114
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 115
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x19 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 116
   .hword 0x1a @ delta x
   .hword 0x190 @ y
   .hword 0xf @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 5279 @ rotation
@ Object 117
   .hword 0x16 @ delta x
   .hword 0x140 @ y
   .hword 0x2f @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x1 @ z index 1
@ Object 118
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x7a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 119
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x18 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 120
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x1 @ z index 1
@ Object 121
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x7b @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 122
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 123
   .hword 0x1a @ delta x
   .hword 0x1ad @ y
   .hword 0x31 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x10 @ z index 16
@ Object 124
   .hword 0x0 @ delta x
   .hword 0x1ad @ y
   .hword 0x7b @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 125
   .hword 0x6 @ delta x
   .hword 0x140 @ y
   .hword 0x2f @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x1 @ z index 1
@ Object 126
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x7a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 127
   .hword 0x6 @ delta x
   .hword 0x19c @ y
   .hword 0x32 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x10 @ z index 16
@ Object 128
   .hword 0x0 @ delta x
   .hword 0x19c @ y
   .hword 0x7c @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 129
   .hword 0xd @ delta x
   .hword 0x172 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 60074 @ rotation
@ Object 130
   .hword 0x7 @ delta x
   .hword 0x1a6 @ y
   .hword 0x31 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x10 @ z index 16
@ Object 131
   .hword 0x0 @ delta x
   .hword 0x1a6 @ y
   .hword 0x7b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 132
   .hword 0x16 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x214 @ changes BG for 66 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 133
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x215 @ changes GROUND for 66 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 134
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xe0 @ changes 1 for 28 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 135
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x418 @ bg layer 3   z index 16 
   .hword 5488 @ metatile ID appareance
@ Object 136
   .hword 0xb @ delta x
   .hword 0x193 @ y
   .hword 0xf @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 137
   .hword 0x5 @ delta x
   .hword 0x1b0 @ y
   .hword 0x19 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 138
   .hword 0x11 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x418 @ bg layer 3   z index 16 
   .hword 5488 @ metatile ID appareance
@ Object 139
   .hword 0x2 @ delta x
   .hword 0x160 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 140
   .hword 0x19 @ delta x
   .hword 0x178 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 141
   .hword 0x4 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x43e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 142
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x5 @ changes GROUND for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 143
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x739c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 144
   .hword 0x0 @ delta x
   .hword 0x178 @ y
   .hword 0x39 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 145
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x9c @ changes BG for 19 frames
   .hword 0x2620 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 146
   .hword 0x13 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x43e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 147
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c00 @ color
   .hword 0x31 @ copies {copy_channel} blending normal trigger
@ Object 148
   .hword 0xd @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3426 @ metatile ID appareance
@ Object 149
   .hword 0x3 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x9c @ changes BG for 19 frames
   .hword 0x2620 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 150
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1e1 @ changes 2 for 60 frames
   .hword 0x7c00 @ color
   .hword 0x31 @ copies {copy_channel} blending normal trigger
@ Object 151
   .hword 0xd @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3410 @ metatile ID appareance
@ Object 152
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3427 @ metatile ID appareance
@ Object 153
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3411 @ metatile ID appareance
@ Object 154
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3426 @ metatile ID appareance
@ Object 155
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3427 @ metatile ID appareance
@ Object 156
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 157
   .hword 0x2b @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x43e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 158
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3e0 @ color
   .hword 0x33 @ copies {copy_channel} blending normal trigger
@ Object 159
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x9c @ changes BG for 19 frames
   .hword 0x2620 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 160
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x1da @ changes 3 for 59 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 161
   .hword 0x15 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3426 @ metatile ID appareance
@ Object 162
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 163
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 164
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 165
   .hword 0x20 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3410 @ metatile ID appareance
@ Object 166
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3411 @ metatile ID appareance
@ Object 167
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 168
   .hword 0x1 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x43e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 169
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x6419 @ color
   .hword 0x33 @ copies {copy_channel} blending normal trigger
@ Object 170
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x9c @ changes BG for 19 frames
   .hword 0x2620 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 171
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1e1 @ changes 2 for 60 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 172
   .hword 0x2f @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3410 @ metatile ID appareance
@ Object 173
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3411 @ metatile ID appareance
@ Object 174
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3426 @ metatile ID appareance
@ Object 175
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 176
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3427 @ metatile ID appareance
@ Object 177
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3410 @ metatile ID appareance
@ Object 178
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3410 @ metatile ID appareance
@ Object 179
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x43e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 180
   .hword 0x0 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x43e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 181
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7fff @ color
   .hword 0x33 @ copies {copy_channel} blending normal trigger
@ Object 182
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7fff @ color
   .hword 0x33 @ copies {copy_channel} blending normal trigger
@ Object 183
   .hword 0xe @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3411 @ metatile ID appareance
@ Object 184
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x9c @ changes BG for 19 frames
   .hword 0x2620 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 185
   .hword 0x0 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x9c @ changes BG for 19 frames
   .hword 0x2620 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 186
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x1da @ changes 3 for 59 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 187
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x1da @ changes 3 for 59 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 188
   .hword 0xe @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3426 @ metatile ID appareance
@ Object 189
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3410 @ metatile ID appareance
@ Object 190
   .hword 0xb @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x43e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 191
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x6419 @ color
   .hword 0x31 @ copies {copy_channel} blending normal trigger
@ Object 192
   .hword 0x5 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3427 @ metatile ID appareance
@ Object 193
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 194
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3411 @ metatile ID appareance
@ Object 195
   .hword 0xb @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x9c @ changes BG for 19 frames
   .hword 0x2620 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 196
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1e1 @ changes 2 for 60 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 197
   .hword 0x5 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3426 @ metatile ID appareance
@ Object 198
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3410 @ metatile ID appareance
@ Object 199
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3427 @ metatile ID appareance
@ Object 200
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3411 @ metatile ID appareance
@ Object 201
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x43e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 202
   .hword 0x0 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x43e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 203
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7fff @ color
   .hword 0x31 @ copies {copy_channel} blending normal trigger
@ Object 204
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7fff @ color
   .hword 0x33 @ copies {copy_channel} blending normal trigger
@ Object 205
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x9c @ changes BG for 19 frames
   .hword 0x2620 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 206
   .hword 0x0 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x9c @ changes BG for 19 frames
   .hword 0x2620 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 207
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x1da @ changes 3 for 59 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 208
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x1da @ changes 3 for 59 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 209
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3415 @ metatile ID appareance
@ Object 210
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 211
   .hword 0x20 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3426 @ metatile ID appareance
@ Object 212
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3427 @ metatile ID appareance
@ Object 213
   .hword 0x20 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3410 @ metatile ID appareance
@ Object 214
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3411 @ metatile ID appareance
@ Object 215
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x2d0 @ bg layer 2   z index 11 
   .hword 3410 @ metatile ID appareance
@ Object 216
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3461 @ metatile ID appareance
@ Object 217
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3426 @ metatile ID appareance
@ Object 218
   .hword 0x8 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x9c @ changes BG for 19 frames
   .hword 0x2620 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 219
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1e1 @ changes 2 for 60 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 220
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3411 @ metatile ID appareance
@ Object 221
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3427 @ metatile ID appareance
@ Object 222
   .hword 0x1e @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x48c @ changes BG for 145 frames
   .hword 0x414 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 223
   .hword 0x2 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 224
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 225
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x13 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 226
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 227
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 228
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x13 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 229
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 230
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 231
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 232
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 233
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x13 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 234
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 235
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 236
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x13 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 237
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 238
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 239
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 240
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 241
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x13 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 242
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 243
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 244
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x13 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 245
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 246
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 247
   .hword 0x5 @ delta x
   .hword 0x150 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 248
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 249
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 250
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 251
   .hword 0xb @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 252
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 253
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 254
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 255
   .hword 0x5 @ delta x
   .hword 0x150 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 256
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 257
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 258
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 259
   .hword 0xb @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3461 @ metatile ID appareance
@ Object 260
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3460 @ metatile ID appareance
@ Object 261
   .hword 0x8 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 5248 @ metatile ID appareance
@ Object 262
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 761 @ metatile ID appareance
@ Object 263
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 264
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 265
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 760 @ metatile ID appareance
@ Object 266
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5248 @ metatile ID appareance
@ Object 267
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3461 @ metatile ID appareance
@ Object 268
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 269
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 5248 @ metatile ID appareance
@ Object 270
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 271
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 272
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5248 @ metatile ID appareance
@ Object 273
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 767 @ metatile ID appareance
@ Object 274
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 3460 @ metatile ID appareance
@ Object 275
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 761 @ metatile ID appareance
@ Object 276
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x10 @ bg layer 2   z index 0 
   .hword 5248 @ metatile ID appareance
@ Object 277
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 278
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 279
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 760 @ metatile ID appareance
@ Object 280
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5248 @ metatile ID appareance
@ Object 281
   .hword 0x8 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xec @ changes BG for 29 frames
   .hword 0xa @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 282
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xfd @ changes GROUND for 31 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 283
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xfe @ changes OBJ for 31 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 284
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 285
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x36 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 286
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x72 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 287
   .hword 0xa @ delta x
   .hword 0x168 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 288
   .hword 0x16 @ delta x
   .hword 0x1b0 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 289
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 290
   .hword 0x20 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x104 @ changes BG for 32 frames
   .hword 0xce @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 291
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xed @ changes GROUND for 29 frames
   .hword 0x1bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 292
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xee @ changes OBJ for 29 frames
   .hword 0x1bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 293
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x1bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 294
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 295
   .hword 0x40 @ delta x
   .hword 0x140 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 296
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xfc @ changes BG for 31 frames
   .hword 0x1cd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 297
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x105 @ changes GROUND for 32 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 298
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xe6 @ changes OBJ for 28 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 299
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xe1 @ changes 2 for 28 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 300
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 301
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xec @ changes BG for 29 frames
   .hword 0x161 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 302
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x1dd @ changes GROUND for 59 frames
   .hword 0x3e5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 303
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x1de @ changes OBJ for 59 frames
   .hword 0x3e5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 304
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1e9 @ changes 2 for 61 frames
   .hword 0x3e5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 305
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 306
   .hword 0x40 @ delta x
   .hword 0x180 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 307
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x104 @ changes BG for 32 frames
   .hword 0x3de0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 308
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xf5 @ changes GROUND for 30 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 309
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 310
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 311
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xe4 @ changes BG for 28 frames
   .hword 0x3c80 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 312
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xf5 @ changes GROUND for 30 frames
   .hword 0x7d20 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 313
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d20 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 314
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d20 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 315
   .hword 0x30 @ delta x
   .hword 0x160 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 316
   .hword 0x20 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xfc @ changes BG for 31 frames
   .hword 0x3c07 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 317
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x105 @ changes GROUND for 32 frames
   .hword 0x7c0e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 318
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xfe @ changes OBJ for 31 frames
   .hword 0x7c0e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 319
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf9 @ changes 2 for 31 frames
   .hword 0x7c0e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 320
   .hword 0x40 @ delta x
   .hword 0x140 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 321
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xfc @ changes BG for 31 frames
   .hword 0x300f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 322
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xed @ changes GROUND for 29 frames
   .hword 0x641f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 323
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xfe @ changes OBJ for 31 frames
   .hword 0x641f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 324
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x641f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 325
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xec @ changes BG for 29 frames
   .hword 0xa @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 326
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xfd @ changes GROUND for 31 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 327
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xfe @ changes OBJ for 31 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 328
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 329
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 330
   .hword 0x30 @ delta x
   .hword 0x180 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 331
   .hword 0x20 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x104 @ changes BG for 32 frames
   .hword 0xce @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 332
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xed @ changes GROUND for 29 frames
   .hword 0x1bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 333
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xee @ changes OBJ for 29 frames
   .hword 0x1bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 334
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x1bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 335
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 336
   .hword 0x40 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xfc @ changes BG for 31 frames
   .hword 0x1cd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 337
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x105 @ changes GROUND for 32 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 338
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xe6 @ changes OBJ for 28 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 339
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xe1 @ changes 2 for 28 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 340
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 341
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 342
   .hword 0x20 @ delta x
   .hword 0x140 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 343
   .hword 0x20 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xec @ changes BG for 29 frames
   .hword 0x161 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 344
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x1dd @ changes GROUND for 59 frames
   .hword 0x3e5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 345
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x1de @ changes OBJ for 59 frames
   .hword 0x3e5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 346
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1e9 @ changes 2 for 61 frames
   .hword 0x3e5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 347
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 348
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 349
   .hword 0x40 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x104 @ changes BG for 32 frames
   .hword 0x3de0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 350
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xf5 @ changes GROUND for 30 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 351
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 352
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 353
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 354
   .hword 0x20 @ delta x
   .hword 0x140 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 355
   .hword 0x30 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xe4 @ changes BG for 28 frames
   .hword 0x3c80 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 356
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xf5 @ changes GROUND for 30 frames
   .hword 0x7d20 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 357
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d20 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 358
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d20 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 359
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 360
   .hword 0x20 @ delta x
   .hword 0x130 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 361
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 362
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xfc @ changes BG for 31 frames
   .hword 0x3c07 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 363
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x105 @ changes GROUND for 32 frames
   .hword 0x7c0e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 364
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xfe @ changes OBJ for 31 frames
   .hword 0x7c0e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 365
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf9 @ changes 2 for 31 frames
   .hword 0x7c0e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 366
   .hword 0x20 @ delta x
   .hword 0x190 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 367
   .hword 0x20 @ delta x
   .hword 0x160 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 368
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xfc @ changes BG for 31 frames
   .hword 0x300f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 369
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xed @ changes GROUND for 29 frames
   .hword 0x641f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 370
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xfe @ changes OBJ for 31 frames
   .hword 0x641f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 371
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x641f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 372
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 373
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 374
   .hword 0x30 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xec @ changes BG for 29 frames
   .hword 0xa @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 375
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xfd @ changes GROUND for 31 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 376
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xfe @ changes OBJ for 31 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 377
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 378
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 379
   .hword 0x20 @ delta x
   .hword 0x170 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 380
   .hword 0x30 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x104 @ changes BG for 32 frames
   .hword 0xce @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 381
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xed @ changes GROUND for 29 frames
   .hword 0x1bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 382
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xee @ changes OBJ for 29 frames
   .hword 0x1bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 383
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x1bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 384
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 385
   .hword 0x30 @ delta x
   .hword 0x180 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 386
   .hword 0x20 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xfc @ changes BG for 31 frames
   .hword 0x1cd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 387
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x105 @ changes GROUND for 32 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 388
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xe6 @ changes OBJ for 28 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 389
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xe1 @ changes 2 for 28 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 390
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 391
   .hword 0x20 @ delta x
   .hword 0x150 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 392
   .hword 0x30 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xec @ changes BG for 29 frames
   .hword 0x161 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 393
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x1dd @ changes GROUND for 59 frames
   .hword 0x3e5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 394
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x1de @ changes OBJ for 59 frames
   .hword 0x3e5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 395
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1e9 @ changes 2 for 61 frames
   .hword 0x3e5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 396
   .hword 0x20 @ delta x
   .hword 0x130 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 397
   .hword 0x20 @ delta x
   .hword 0x170 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 398
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 399
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x104 @ changes BG for 32 frames
   .hword 0x3de0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 400
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xf5 @ changes GROUND for 30 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 401
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 402
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 403
   .hword 0x20 @ delta x
   .hword 0x180 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 404
   .hword 0x20 @ delta x
   .hword 0x1b0 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 405
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xe4 @ changes BG for 28 frames
   .hword 0x3c80 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 406
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xf5 @ changes GROUND for 30 frames
   .hword 0x7d20 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 407
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7d20 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 408
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7d20 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 409
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 410
   .hword 0x30 @ delta x
   .hword 0x160 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 411
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xfc @ changes BG for 31 frames
   .hword 0x3c07 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 412
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x105 @ changes GROUND for 32 frames
   .hword 0x7c0e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 413
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xfe @ changes OBJ for 31 frames
   .hword 0x7c0e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 414
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf9 @ changes 2 for 31 frames
   .hword 0x7c0e @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 415
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 416
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 417
   .hword 0x30 @ delta x
   .hword 0x190 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 418
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xfc @ changes BG for 31 frames
   .hword 0x300f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 419
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xed @ changes GROUND for 29 frames
   .hword 0x641f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 420
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xfe @ changes OBJ for 31 frames
   .hword 0x641f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 421
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x641f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 422
   .hword 0x20 @ delta x
   .hword 0x170 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 423
   .hword 0x30 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xec @ changes BG for 29 frames
   .hword 0xa @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 424
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xfd @ changes GROUND for 31 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 425
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xfe @ changes OBJ for 31 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 426
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 427
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 428
   .hword 0x30 @ delta x
   .hword 0x160 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 429
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x104 @ changes BG for 32 frames
   .hword 0xce @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 430
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xed @ changes GROUND for 29 frames
   .hword 0x1bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 431
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xee @ changes OBJ for 29 frames
   .hword 0x1bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 432
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x1bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 433
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 434
   .hword 0x30 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x700d @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 435
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 436
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xfc @ changes BG for 31 frames
   .hword 0x1cd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 437
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x105 @ changes GROUND for 32 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 438
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xe6 @ changes OBJ for 28 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 439
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xe1 @ changes 2 for 28 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 440
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 441
   .hword 0x30 @ delta x
   .hword 0x120 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 442
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 443
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xec @ changes BG for 29 frames
   .hword 0x161 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 444
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x1dd @ changes GROUND for 59 frames
   .hword 0x3e5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 445
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x1de @ changes OBJ for 59 frames
   .hword 0x3e5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 446
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1e9 @ changes 2 for 61 frames
   .hword 0x3e5 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 447
   .hword 0x20 @ delta x
   .hword 0x170 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 448
   .hword 0x20 @ delta x
   .hword 0x150 @ y
   .hword 0x1b @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x100 @ z index 0 pal 4
   .hword 8192 @ rotation
@ Object 449
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x104 @ changes BG for 32 frames
   .hword 0x3de0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 450
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xf5 @ changes GROUND for 30 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 451
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 452
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x101 @ changes 2 for 32 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 453
   .hword 0x0 @ delta x
   .hword 0x158 @ y
   .hword 0x34 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 454
   .hword 0x0 @ delta x
   .hword 0x158 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 455
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x77dd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 456
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x5 @ changes GROUND for 0 frames
   .hword 0x77dd @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 457
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 458
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 459
   .hword 0x1 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x1c4 @ changes BG for 56 frames
   .hword 0x4001 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 460
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x1c5 @ changes GROUND for 56 frames
   .hword 0x4001 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 461
   .hword 0x1d @ delta x
   .hword 0x16e @ y
   .hword 0xb @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 462
   .hword 0x22 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5472 @ metatile ID appareance
@ Object 463
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5472 @ metatile ID appareance
@ Object 464
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5472 @ metatile ID appareance
@ Object 465
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5478 @ metatile ID appareance
@ Object 466
   .hword 0xe @ delta x
   .hword 0x17e @ y
   .hword 0xb @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 467
   .hword 0x2 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5493 @ metatile ID appareance
@ Object 468
   .hword 0x20 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x5ac @ changes BG for 181 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 469
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x5ad @ changes GROUND for 181 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 470
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 471
   .hword 0xe @ delta x
   .hword 0x18e @ y
   .hword 0xb @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 472
   .hword 0x2 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5472 @ metatile ID appareance
@ Object 473
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5478 @ metatile ID appareance
@ Object 474
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5495 @ metatile ID appareance
@ Object 475
   .hword 0xe @ delta x
   .hword 0x19e @ y
   .hword 0xb @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 476
   .hword 0x2 @ delta x
   .hword 0x1a0 @ y
   .hword 0xa @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 477
   .hword 0x90 @ delta x
   .hword 0x1b0 @ y
   .hword 0x11 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 478
   .hword 0x30 @ delta x
   .hword 0x140 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 479
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5488 @ metatile ID appareance
@ Object 480
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5477 @ metatile ID appareance
@ Object 481
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5472 @ metatile ID appareance
@ Object 482
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5472 @ metatile ID appareance
@ Object 483
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5472 @ metatile ID appareance
@ Object 484
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5478 @ metatile ID appareance
@ Object 485
   .hword 0x5 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 486
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x5 @ changes GROUND for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 487
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 488
   .hword 0x9 @ delta x
   .hword 0x15e @ y
   .hword 0xb @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 489
   .hword 0x7 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x5813 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 490
   .hword 0x29 @ delta x
   .hword 0x16e @ y
   .hword 0xb @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 491
   .hword 0x22 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x5b4 @ changes BG for 182 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 492
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x5b5 @ changes GROUND for 182 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 493
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5493 @ metatile ID appareance
@ Object 494
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5472 @ metatile ID appareance
@ Object 495
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5495 @ metatile ID appareance
@ Object 496
   .hword 0xe @ delta x
   .hword 0x17e @ y
   .hword 0xb @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 497
   .hword 0x22 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5472 @ metatile ID appareance
@ Object 498
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5494 @ metatile ID appareance
@ Object 499
   .hword 0xe @ delta x
   .hword 0x18e @ y
   .hword 0xb @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 500
   .hword 0x2 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5472 @ metatile ID appareance
@ Object 501
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0xa @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 502
   .hword 0x90 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xe64 @ changes BG for 460 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 503
   .hword 0x40 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 504
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7de0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 505
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 506
   .hword 0x30 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 507
   .hword 0x1b @ delta x
   .hword 0x1b7 @ y
   .hword 0x7a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 508
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 509
   .hword 0x15 @ delta x
   .hword 0x180 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 510
   .hword 0xb @ delta x
   .hword 0x1b7 @ y
   .hword 0x31 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 511
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 512
   .hword 0x20 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 513
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 514
   .hword 0x5 @ delta x
   .hword 0x160 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 515
   .hword 0x1b @ delta x
   .hword 0x1b7 @ y
   .hword 0x31 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 516
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 517
   .hword 0x15 @ delta x
   .hword 0x140 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 518
   .hword 0xb @ delta x
   .hword 0x1b7 @ y
   .hword 0x7a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 519
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 520
   .hword 0x20 @ delta x
   .hword 0x1b7 @ y
   .hword 0x31 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 521
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 522
   .hword 0x5 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5968 @ metatile ID appareance
@ Object 523
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 524
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5968 @ metatile ID appareance
@ Object 525
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 526
   .hword 0xb @ delta x
   .hword 0x1b7 @ y
   .hword 0x7a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 527
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 528
   .hword 0x5 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5968 @ metatile ID appareance
@ Object 529
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 530
   .hword 0x9 @ delta x
   .hword 0x13f @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 34 @ metatile ID appareance
@ Object 531
   .hword 0x7 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5968 @ metatile ID appareance
@ Object 532
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 533
   .hword 0x2 @ delta x
   .hword 0x13f @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 34 @ metatile ID appareance
@ Object 534
   .hword 0x9 @ delta x
   .hword 0x11b @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 535
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x31 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 536
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 537
   .hword 0x4 @ delta x
   .hword 0x13f @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1 @ metatile ID appareance
@ Object 538
   .hword 0x1 @ delta x
   .hword 0x150 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 539
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5968 @ metatile ID appareance
@ Object 540
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 541
   .hword 0x0 @ delta x
   .hword 0xf0 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 542
   .hword 0xb @ delta x
   .hword 0x1b7 @ y
   .hword 0x7a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 543
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 544
   .hword 0x4 @ delta x
   .hword 0x10f @ y
   .hword 0x11 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 545
   .hword 0x1 @ delta x
   .hword 0xe0 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 546
   .hword 0x0 @ delta x
   .hword 0xf0 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 547
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5968 @ metatile ID appareance
@ Object 548
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 549
   .hword 0xf @ delta x
   .hword 0x10f @ y
   .hword 0x11 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 550
   .hword 0x1 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5968 @ metatile ID appareance
@ Object 551
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 552
   .hword 0xb @ delta x
   .hword 0x1b7 @ y
   .hword 0x31 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 553
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 554
   .hword 0x4 @ delta x
   .hword 0x10f @ y
   .hword 0x11 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 555
   .hword 0x1 @ delta x
   .hword 0xd0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5968 @ metatile ID appareance
@ Object 556
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 557
   .hword 0x0 @ delta x
   .hword 0xf0 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 558
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 559
   .hword 0x10 @ delta x
   .hword 0xe0 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 560
   .hword 0x0 @ delta x
   .hword 0xf0 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 561
   .hword 0xb @ delta x
   .hword 0x18b @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 562
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 563
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 564
   .hword 0x10 @ delta x
   .hword 0x16b @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 565
   .hword 0x5 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 5968 @ metatile ID appareance
@ Object 566
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 567
   .hword 0xb @ delta x
   .hword 0x1b7 @ y
   .hword 0x31 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 568
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 569
   .hword 0x5 @ delta x
   .hword 0x150 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 570
   .hword 0xb @ delta x
   .hword 0x16b @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 571
   .hword 0x10 @ delta x
   .hword 0x14b @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 572
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 573
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 574
   .hword 0x15 @ delta x
   .hword 0x130 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 575
   .hword 0xb @ delta x
   .hword 0x14b @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 576
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x31 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 577
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 578
   .hword 0x10 @ delta x
   .hword 0x12b @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 579
   .hword 0x10 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 580
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 581
   .hword 0x5 @ delta x
   .hword 0x110 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 582
   .hword 0xb @ delta x
   .hword 0x12b @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 583
   .hword 0x10 @ delta x
   .hword 0x10b @ y
   .hword 0x7b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 584
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x31 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 585
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 586
   .hword 0x15 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x174 @ changes BG for 46 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 587
   .hword 0x0 @ delta x
   .hword 0xf0 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 588
   .hword 0xb @ delta x
   .hword 0x10b @ y
   .hword 0x7a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 589
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 590
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 591
   .hword 0x20 @ delta x
   .hword 0x1b7 @ y
   .hword 0x31 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 592
   .hword 0x0 @ delta x
   .hword 0x1b7 @ y
   .hword 0x7b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 593
   .hword 0x115 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 594
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 595
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 596
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 597
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 598
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x48 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 599
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x36 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 600
   .hword 0xc0 @ delta x
   .hword 0x150 @ y
   .hword 0x80 @ type
   .hword 0xc @ bg layer 1 rotated   
   .hword 0x1c0 @ z index 0 pal 7
   .hword 49152 @ rotation
@ Object 601
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x80 @ type
   .hword 0xc @ bg layer 1 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 602
   .hword 0x10 @ delta x
   .hword 0x13c @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 724 @ metatile ID appareance
@ Object 603
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0xc @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 604
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0xc @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 605
   .hword 0x0 @ delta x
   .hword 0x1a4 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 725 @ metatile ID appareance
@ Object 606
   .hword 0x10 @ delta x
   .hword 0x13c @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 724 @ metatile ID appareance
@ Object 607
   .hword 0x0 @ delta x
   .hword 0x1a4 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 725 @ metatile ID appareance
@ Object 608
   .hword 0x10 @ delta x
   .hword 0x13c @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 724 @ metatile ID appareance
@ Object 609
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0xc @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 610
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0xc @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 611
   .hword 0x0 @ delta x
   .hword 0x1a4 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 725 @ metatile ID appareance
@ Object 612
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x80 @ type
   .hword 0xc @ bg layer 1 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 613
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x80 @ type
   .hword 0xc @ bg layer 1 rotated   
   .hword 0x1c0 @ z index 0 pal 7
   .hword 16384 @ rotation
@ Object 614
   .hword 0x20 @ delta x
   .hword 0x137 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 726 @ metatile ID appareance
@ Object 615
   .hword 0x0 @ delta x
   .hword 0x1a9 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 726 @ metatile ID appareance
@ Object 616
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x80 @ type
   .hword 0xc @ bg layer 1 rotated   
   .hword 0x1c0 @ z index 0 pal 7
   .hword 49152 @ rotation
@ Object 617
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x80 @ type
   .hword 0xc @ bg layer 1 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 618
   .hword 0xc @ delta x
   .hword 0x12b @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 727 @ metatile ID appareance
@ Object 619
   .hword 0x0 @ delta x
   .hword 0x1b5 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 727 @ metatile ID appareance
@ Object 620
   .hword 0x4 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x6bc @ changes BG for 215 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 621
   .hword 0x1 @ delta x
   .hword 0x13c @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 726 @ metatile ID appareance
@ Object 622
   .hword 0x0 @ delta x
   .hword 0x143 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 727 @ metatile ID appareance
@ Object 623
   .hword 0x0 @ delta x
   .hword 0x154 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 7640 @ metatile ID appareance
@ Object 624
   .hword 0x0 @ delta x
   .hword 0x18c @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 7637 @ metatile ID appareance
@ Object 625
   .hword 0x0 @ delta x
   .hword 0x19d @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 727 @ metatile ID appareance
@ Object 626
   .hword 0x0 @ delta x
   .hword 0x1a4 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 726 @ metatile ID appareance
@ Object 627
   .hword 0x1d @ delta x
   .hword 0x140 @ y
   .hword 0xb @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 628
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0xb @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 629
   .hword 0x2 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 630
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 631
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 632
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 633
   .hword 0x9 @ delta x
   .hword 0x140 @ y
   .hword 0x80 @ type
   .hword 0xc @ bg layer 1 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 634
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x80 @ type
   .hword 0xc @ bg layer 1 rotated   
   .hword 0x1c0 @ z index 0 pal 7
   .hword 16384 @ rotation
@ Object 635
   .hword 0xa @ delta x
   .hword 0x140 @ y
   .hword 0xb @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 636
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0xb @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 637
   .hword 0x4d @ delta x
   .hword 0x140 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 638
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x80 @ type
   .hword 0xc @ bg layer 1 rotated   
   .hword 0x1c0 @ z index 0 pal 7
   .hword 49152 @ rotation
@ Object 639
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x80 @ type
   .hword 0xc @ bg layer 1 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 640
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 641
   .hword 0x30 @ delta x
   .hword 0x12c @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 125 @ metatile ID appareance
@ Object 642
   .hword 0x0 @ delta x
   .hword 0x13c @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1330 @ metatile ID appareance
@ Object 643
   .hword 0x0 @ delta x
   .hword 0x1a4 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1328 @ metatile ID appareance
@ Object 644
   .hword 0x0 @ delta x
   .hword 0x1b4 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 125 @ metatile ID appareance
@ Object 645
   .hword 0x10 @ delta x
   .hword 0x12c @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 125 @ metatile ID appareance
@ Object 646
   .hword 0x0 @ delta x
   .hword 0x13b @ y
   .hword 0x7b @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 647
   .hword 0x0 @ delta x
   .hword 0x13b @ y
   .hword 0x30 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x10 @ z index 16
@ Object 648
   .hword 0x0 @ delta x
   .hword 0x1a5 @ y
   .hword 0x7b @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 649
   .hword 0x0 @ delta x
   .hword 0x1a5 @ y
   .hword 0x30 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x10 @ z index 16
@ Object 650
   .hword 0x0 @ delta x
   .hword 0x1b4 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 125 @ metatile ID appareance
@ Object 651
   .hword 0x10 @ delta x
   .hword 0x12c @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 125 @ metatile ID appareance
@ Object 652
   .hword 0x0 @ delta x
   .hword 0x13c @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1331 @ metatile ID appareance
@ Object 653
   .hword 0x0 @ delta x
   .hword 0x1a4 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1329 @ metatile ID appareance
@ Object 654
   .hword 0x0 @ delta x
   .hword 0x1b4 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 125 @ metatile ID appareance
@ Object 655
   .hword 0x30 @ delta x
   .hword 0x140 @ y
   .hword 0x64 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 656
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x80 @ type
   .hword 0xc @ bg layer 1 rotated   
   .hword 0x1c0 @ z index 0 pal 7
   .hword 49152 @ rotation
@ Object 657
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x80 @ type
   .hword 0xc @ bg layer 1 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 658
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x64 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 659
   .hword 0x50 @ delta x
   .hword 0x130 @ y
   .hword 0x96 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 660
   .hword 0x0 @ delta x
   .hword 0x155 @ y
   .hword 0x7c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 661
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x7a @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 662
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2f @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x10 @ z index 16
@ Object 663
   .hword 0x0 @ delta x
   .hword 0x18b @ y
   .hword 0x7c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 664
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x96 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 665
   .hword 0x50 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1417 @ metatile ID appareance
@ Object 666
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1417 @ metatile ID appareance
@ Object 667
   .hword 0x20 @ delta x
   .hword 0x138 @ y
   .hword 0x97 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 668
   .hword 0x0 @ delta x
   .hword 0x1a8 @ y
   .hword 0x97 @ type
   .hword 0x9 @ bg layer 1 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 669
   .hword 0x30 @ delta x
   .hword 0x138 @ y
   .hword 0x97 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 670
   .hword 0x0 @ delta x
   .hword 0x1a8 @ y
   .hword 0x97 @ type
   .hword 0x9 @ bg layer 1 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 671
   .hword 0x20 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1417 @ metatile ID appareance
@ Object 672
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 1417 @ metatile ID appareance
@ Object 673
   .hword 0x30 @ delta x
   .hword 0x170 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x200 @ z index 0 pal 8
@ Object 674
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x13 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 675
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 676
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x13 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 677
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x81 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x200 @ z index 0 pal 8
@ Object 678
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 679
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 680
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 681
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x99 @ changes 2 for 19 frames
   .hword 0x39f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 682
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x82 @ changes 3 for 16 frames
   .hword 0x3e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 683
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xa3 @ changes 4 for 20 frames
   .hword 0x7c00 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 684
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x72 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 685
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 686
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 687
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x3e4 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 688
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x7be0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 689
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x7c00 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 690
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x7c14 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 691
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x601f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 692
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 693
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x1ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 694
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 695
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x3e4 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 696
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x7be0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 697
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x7c00 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 698
   .hword 0x8 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 944 @ metatile ID appareance
@ Object 699
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1298 @ metatile ID appareance
@ Object 700
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 944 @ metatile ID appareance
@ Object 701
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 893 @ metatile ID appareance
@ Object 702
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1245 @ metatile ID appareance
@ Object 703
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1298 @ metatile ID appareance
@ Object 704
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 769 @ metatile ID appareance
@ Object 705
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 717 @ metatile ID appareance
@ Object 706
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1069 @ metatile ID appareance
@ Object 707
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1123 @ metatile ID appareance
@ Object 708
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 769 @ metatile ID appareance
@ Object 709
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1123 @ metatile ID appareance
@ Object 710
   .hword 0x18 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x7c14 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 711
   .hword 0x48 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 944 @ metatile ID appareance
@ Object 712
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1298 @ metatile ID appareance
@ Object 713
   .hword 0x8 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x601f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 714
   .hword 0x8 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 944 @ metatile ID appareance
@ Object 715
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 893 @ metatile ID appareance
@ Object 716
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1245 @ metatile ID appareance
@ Object 717
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1298 @ metatile ID appareance
@ Object 718
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 769 @ metatile ID appareance
@ Object 719
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 717 @ metatile ID appareance
@ Object 720
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1069 @ metatile ID appareance
@ Object 721
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1123 @ metatile ID appareance
@ Object 722
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 769 @ metatile ID appareance
@ Object 723
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1123 @ metatile ID appareance
@ Object 724
   .hword 0x28 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 725
   .hword 0xb @ delta x
   .hword 0x168 @ y
   .hword 0x2e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 726
   .hword 0x5 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 727
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 728
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x11 @ copies {copy_channel} normal trigger
@ Object 729
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 730
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 731
   .hword 0x0 @ delta x
   .hword 0x148 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 732
   .hword 0x0 @ delta x
   .hword 0x158 @ y
   .hword 0x34 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 733
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 734
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x34 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 735
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x49 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 736
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 737
   .hword 0x0 @ delta x
   .hword 0x178 @ y
   .hword 0x34 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 738
   .hword 0x0 @ delta x
   .hword 0x188 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 739
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 740
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 741
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 742
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 743
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 744
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 745
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 746
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 747
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 748
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 749
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 750
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 751
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 752
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 753
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 754
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 755
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 756
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 757
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 758
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 759
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 760
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 761
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 762
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 763
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 764
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 765
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 766
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 767
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 768
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 769
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 770
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 771
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 772
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 773
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 774
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 775
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 776
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 777
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 778
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 779
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 780
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 781
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 782
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 783
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 784
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 785
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 786
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 787
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 788
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 789
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 790
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 791
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 792
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 793
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 794
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 795
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 796
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 797
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 798
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 799
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 800
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 801
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 802
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 803
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 804
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 805
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 806
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 807
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 808
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 809
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 810
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 811
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 812
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 813
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 814
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 815
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 816
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 817
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 818
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 819
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 820
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 821
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 822
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 823
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 824
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 825
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 826
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 827
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 828
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 829
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 830
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 831
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 832
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 833
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 834
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 835
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 836
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 837
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 838
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 839
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 840
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 841
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 842
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 843
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 844
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 845
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 846
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 847
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 848
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 849
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 850
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 851
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 852
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 853
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 854
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 855
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 856
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 857
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 858
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 859
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 860
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 861
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 862
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 863
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 864
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 865
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 866
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 867
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 868
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 869
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 870
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 871
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 872
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 873
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 874
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 875
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 876
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 877
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 878
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 879
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 880
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 881
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 882
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 883
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 884
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 885
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 886
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 887
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 888
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 889
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 890
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 891
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 892
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 893
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 894
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 895
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 896
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 897
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 898
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 899
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 900
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 901
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 902
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 903
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 904
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 905
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 906
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 907
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 908
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 909
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 910
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 911
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 912
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 913
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 914
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 915
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 916
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 917
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 918
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 919
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 920
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 921
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 922
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 923
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 924
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 925
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 926
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 927
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 928
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 929
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 930
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 931
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 932
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 933
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 934
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 935
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 936
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 937
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 938
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 939
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 940
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 941
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 942
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 943
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 944
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 945
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 946
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 947
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 948
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 949
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 950
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 951
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 952
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 953
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 954
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 955
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 956
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 957
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 958
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 959
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 960
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 961
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 962
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 963
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 964
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 965
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 966
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 967
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 968
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 969
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 970
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 971
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 972
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 973
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 974
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 975
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 976
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 977
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 978
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 979
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 980
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 981
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 982
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 983
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 984
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 985
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 986
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 987
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 988
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 989
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 990
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 991
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 992
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 993
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 994
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 995
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 996
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 997
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 998
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 999
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1000
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1001
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1002
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1003
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1004
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1005
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1006
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1007
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1008
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1009
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1010
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1011
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1012
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1013
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1014
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1015
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1016
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1017
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1018
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1019
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1020
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1021
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x5 @ changes GROUND for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1022
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1023
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1024
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x53 @ changes 4 for 10 frames
   .hword 0x0 @ color
   .hword 0x13 @ copies {copy_channel} normal trigger
@ Object 1025
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1026
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x1d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1027
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1028
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xe4 @ changes BG for 28 frames
   .hword 0x201 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1029
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xe5 @ changes GROUND for 28 frames
   .hword 0x201 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1030
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x1018 @ changes 1 for 515 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1031
   .hword 0x50 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3a1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1032
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x5 @ changes GROUND for 0 frames
   .hword 0x3a1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1033
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1034
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1035
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1036
   .hword 0xd @ delta x
   .hword 0x18e @ y
   .hword 0x2b @ type
   .hword 0x2c8 @ bg layer 1   z index 11 
   .hword 5074 @ metatile ID appareance
@ Object 1037
   .hword 0x0 @ delta x
   .hword 0x18e @ y
   .hword 0x15 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0xb @ z index 11
@ Object 1038
   .hword 0x3 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xe4 @ changes BG for 28 frames
   .hword 0x201 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1039
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xe5 @ changes GROUND for 28 frames
   .hword 0x201 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1040
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xe8 @ changes 1 for 29 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1041
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5252 @ metatile ID appareance
@ Object 1042
   .hword 0x20 @ delta x
   .hword 0x1b0 @ y
   .hword 0x7a @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 1043
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x10 @ z index 16
@ Object 1044
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1045
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1046
   .hword 0xd @ delta x
   .hword 0x17e @ y
   .hword 0x2b @ type
   .hword 0x2c8 @ bg layer 1   z index 11 
   .hword 5074 @ metatile ID appareance
@ Object 1047
   .hword 0x0 @ delta x
   .hword 0x17e @ y
   .hword 0x15 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0xb @ z index 11
@ Object 1048
   .hword 0x3 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5252 @ metatile ID appareance
@ Object 1049
   .hword 0x20 @ delta x
   .hword 0x1b0 @ y
   .hword 0x7a @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 1050
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x10 @ z index 16
@ Object 1051
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1052
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1053
   .hword 0xd @ delta x
   .hword 0x16e @ y
   .hword 0x2b @ type
   .hword 0x2c8 @ bg layer 1   z index 11 
   .hword 5074 @ metatile ID appareance
@ Object 1054
   .hword 0x0 @ delta x
   .hword 0x16e @ y
   .hword 0x15 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0xb @ z index 11
@ Object 1055
   .hword 0x3 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5252 @ metatile ID appareance
@ Object 1056
   .hword 0x20 @ delta x
   .hword 0x1b0 @ y
   .hword 0x31 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x10 @ z index 16
@ Object 1057
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x7b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 1058
   .hword 0x10 @ delta x
   .hword 0x12e @ y
   .hword 0x8 @ type
   .hword 0x18 @ bg layer 3 non rotated   
   .hword 0x0 @ z index 0
@ Object 1059
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x7a @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 1060
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x30 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x10 @ z index 16
@ Object 1061
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1062
   .hword 0x10 @ delta x
   .hword 0x1b0 @ y
   .hword 0x31 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x10 @ z index 16
@ Object 1063
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x7b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 1064
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1065
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1066
   .hword 0x5 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3a1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1067
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x5 @ changes GROUND for 0 frames
   .hword 0x3a1 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1068
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1069
   .hword 0x8 @ delta x
   .hword 0x16e @ y
   .hword 0x2b @ type
   .hword 0x2c8 @ bg layer 1   z index 11 
   .hword 5074 @ metatile ID appareance
@ Object 1070
   .hword 0x0 @ delta x
   .hword 0x16e @ y
   .hword 0x15 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0xb @ z index 11
@ Object 1071
   .hword 0x3 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5252 @ metatile ID appareance
@ Object 1072
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x11 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1073
   .hword 0x5 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xe4 @ changes BG for 28 frames
   .hword 0x201 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1074
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0xe5 @ changes GROUND for 28 frames
   .hword 0x201 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1075
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xe8 @ changes 1 for 29 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1076
   .hword 0xb @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 3449 @ metatile ID appareance
@ Object 1077
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1078
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 3443 @ metatile ID appareance
@ Object 1079
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5475 @ metatile ID appareance
@ Object 1080
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5475 @ metatile ID appareance
@ Object 1081
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5475 @ metatile ID appareance
@ Object 1082
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x11 @ type
   .hword 0x9 @ bg layer 1 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 1083
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 3443 @ metatile ID appareance
@ Object 1084
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5475 @ metatile ID appareance
@ Object 1085
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 3451 @ metatile ID appareance
@ Object 1086
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1087
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5475 @ metatile ID appareance
@ Object 1088
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5475 @ metatile ID appareance
@ Object 1089
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1090
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1091
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1092
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1093
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5475 @ metatile ID appareance
@ Object 1094
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1095
   .hword 0xd @ delta x
   .hword 0x16e @ y
   .hword 0x2b @ type
   .hword 0x2c8 @ bg layer 1   z index 11 
   .hword 5074 @ metatile ID appareance
@ Object 1096
   .hword 0x0 @ delta x
   .hword 0x16e @ y
   .hword 0x15 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0xb @ z index 11
@ Object 1097
   .hword 0x3 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5252 @ metatile ID appareance
@ Object 1098
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x11 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1099
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5476 @ metatile ID appareance
@ Object 1100
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 3449 @ metatile ID appareance
@ Object 1101
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5475 @ metatile ID appareance
@ Object 1102
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5475 @ metatile ID appareance
@ Object 1103
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x18 @ bg layer 3   z index 0 
   .hword 5475 @ metatile ID appareance
@ Object 1104
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x11 @ type
   .hword 0x9 @ bg layer 1 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 1105
   .hword 0x10 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x144 @ changes BG for 40 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1106
   .hword 0x0 @ delta x
   .hword 0x90 @ y
   .hword 0x3 @ type
   .hword 0x145 @ changes GROUND for 40 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1107
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1108
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1109
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1110
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1111
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1112
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1113
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1114
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x8f @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1115
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1116
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1117
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x90 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1118
   .hword 0x10 @ delta x
   .hword 0xf0 @ y
   .hword 0x90 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1119
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1120
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x91 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1121
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1122
   .hword 0x0 @ delta x
   .hword 0x1b0 @ y
   .hword 0x91 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 1123
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1124
   .hword 0x10 @ delta x
   .hword 0x100 @ y
   .hword 0x8f @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1125
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1126
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x8f @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1127
   .hword 0x10 @ delta x
   .hword 0x70 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 1128
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x3e @ changes OBJ for 7 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1129
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x36 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1130
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x1 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1131
   .hword 0x0 @ delta x
   .hword 0x1b8 @ y
   .hword 0x8f @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 1132
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1133
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1134
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1135
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1136
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1137
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1138
   .hword 0x20 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1139
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1140
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1141
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1142
   .hword 0x20 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1143
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1144
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1145
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1146
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1147
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1148
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1149
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1150
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1151
   .hword 0x20 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1152
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1153
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1154
   .hword 0x20 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1155
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1156
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1157
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1158
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1159
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1160
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1161
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1162
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1163
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1164
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1165
   .hword 0x10 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1166
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1167
   .hword 0x20 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1168
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1169
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1170
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1171
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1172
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1173
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1174
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1175
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1176
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1177
   .hword 0x10 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1178
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1179
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1180
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1181
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1182
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1183
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1184
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1185
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1186
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1187
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1188
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1189
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1190
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1191
   .hword 0x10 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1192
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1193
   .hword 0x20 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1194
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1195
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1196
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1197
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1198
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1199
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1200
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1201
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1202
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1203
   .hword 0x10 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1204
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1205
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1206
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1207
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1208
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1209
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1210
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1211
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1212
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1213
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1214
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1215
   .hword 0x20 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1216
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1217
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1218
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1219
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1220
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1221
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1222
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1223
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1224
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1225
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1226
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1227
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1228
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1229
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1230
   .hword 0x10 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1231
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1232
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1233
   .hword 0x20 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1234
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1235
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1236
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1237
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1238
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1239
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1240
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1241
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1242
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1243
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1244
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1245
   .hword 0x10 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1246
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1247
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1248
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1249
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1250
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1251
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1252
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1253
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1254
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1255
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1256
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1257
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1258
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1259
   .hword 0x10 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1260
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1261
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1262
   .hword 0x20 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1263
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1264
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1265
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1266
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1267
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1268
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1269
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1270
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1271
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1272
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1273
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1274
   .hword 0x10 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1275
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1276
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1277
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1278
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1279
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1280
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1281
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1282
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1283
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1284
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1285
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1286
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1287
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1288
   .hword 0x10 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1289
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1290
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1291
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1292
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1293
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1294
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1295
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1296
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1297
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1298
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1299
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1300
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1301
   .hword 0x20 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1302
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1303
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1304
   .hword 0x10 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1305
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1306
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1307
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1308
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1309
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1310
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1311
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1312
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1313
   .hword 0x20 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1314
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1315
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1316
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1317
   .hword 0x20 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1318
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1319
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1320
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1321
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1322
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1323
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1324
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1325
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1326
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1327
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1328
   .hword 0x20 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1329
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1330
   .hword 0x0 @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1331
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1332
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1333
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1334
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1335
   .hword 0x20 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1336
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1337
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1338
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1339
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1340
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1341
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1342
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1343
   .hword 0x10 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1344
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1345
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1346
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1347
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1348
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1349
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1350
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1351
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1352
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1353
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1354
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1355
   .hword 0x20 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1356
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1357
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1358
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1359
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1360
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1361
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1362
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1363
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1364
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1365
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1366
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1367
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x68 @ changes 1 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1368
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1369
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1370
   .hword 0x20 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x59 @ changes 2 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1371
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x72 @ changes 3 for 14 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1372
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1373
   .hword 0x10 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x5a @ changes 3 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1374
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x6b @ changes 4 for 13 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1375
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1376
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1377
   .hword 0x10 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x73 @ changes 4 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1378
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1379
   .hword 0x20 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 1380
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 1381
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 1382
   .hword 0x20 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x739c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1383
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1384
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1385
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1386
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1387
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 1388
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x2d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1389
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1390
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1391
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1392
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1393
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1394
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1395
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1396
   .hword 0xa @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x6b5b @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1397
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1d @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1398
   .hword 0x4 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1399
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1400
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1401
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1402
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1403
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1404
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1405
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1406
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1407
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1408
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1409
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1410
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1411
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1412
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1413
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1414
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1415
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1416
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1417
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1418
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1419
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1420
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1421
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1422
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1423
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1424
   .hword 0x5 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1425
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x31d @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1426
   .hword 0x29 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1427
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1428
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1429
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1430
   .hword 0x20 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1431
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1432
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1433
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1434
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1435
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1436
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1437
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1438
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1439
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1440
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1441
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1442
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1443
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1444
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1445
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1446
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1447
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x3a3 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1448
   .hword 0xc @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1449
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1450
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1451
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1452
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1453
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1454
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1455
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1456
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1457
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1458
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1459
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1460
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1461
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1462
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1463
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1464
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1465
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1466
   .hword 0xb @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1467
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7780 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1468
   .hword 0x3 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1469
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1470
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1471
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1472
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1473
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1474
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1475
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1476
   .hword 0x20 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1477
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1478
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1479
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1480
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1481
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1482
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1483
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1484
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1485
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1486
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1487
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1488
   .hword 0x19 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1489
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7540 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1490
   .hword 0x15 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1491
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1492
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1493
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1494
   .hword 0x50 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1495
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1496
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1497
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1498
   .hword 0x20 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1499
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1500
   .hword 0x5 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1501
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x740a @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1502
   .hword 0x9 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1503
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1504
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1505
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1506
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1507
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1508
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1509
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1510
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1511
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1512
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1513
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1514
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1515
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1516
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1517
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1518
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1519
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1520
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1521
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1522
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1523
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1524
   .hword 0x14 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1525
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x641d @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1526
   .hword 0x3a @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1527
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1528
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1529
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1530
   .hword 0x35 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1531
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1d @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1532
   .hword 0x19 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1533
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1534
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1535
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1536
   .hword 0x3 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1537
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x33d @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1538
   .hword 0x3b @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1539
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1540
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1541
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1542
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1543
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1544
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1545
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1546
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1547
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1548
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1549
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1550
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1551
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1552
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1553
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1554
   .hword 0xa @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1555
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x17a0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1556
   .hword 0x4 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1557
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1558
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1559
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1560
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1561
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1562
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1563
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1564
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1565
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1566
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1567
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1568
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1569
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1570
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1571
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1572
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1573
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1574
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1575
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1576
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1577
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1578
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1579
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1580
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1581
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1582
   .hword 0x7 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1583
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7760 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1584
   .hword 0x7 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1585
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1586
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1587
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1588
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1589
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1590
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1591
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1592
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1593
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1594
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1595
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1596
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1597
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1598
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1599
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1600
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1601
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1602
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1603
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1604
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1605
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1606
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1607
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1608
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1609
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1610
   .hword 0x4 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1611
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7401 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1612
   .hword 0xa @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1613
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1614
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1615
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1616
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1617
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1618
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1619
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1620
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1621
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1622
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1623
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1624
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1625
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1626
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1627
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1628
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1629
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1630
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1631
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1632
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1633
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1634
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1635
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1636
   .hword 0xd @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1637
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x740d @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1638
   .hword 0x41 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1639
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1640
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1641
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1642
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1643
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1644
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1645
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1646
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1647
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1648
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1649
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1650
   .hword 0xb @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1651
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x741c @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1652
   .hword 0x3 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1653
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1654
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1655
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1656
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1657
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1658
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1659
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1660
   .hword 0x20 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1661
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1662
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1663
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1664
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1665
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1666
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1667
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1668
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1669
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1670
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1671
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1672
   .hword 0x15 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1673
   .hword 0x2 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x1d @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1674
   .hword 0x9 @ delta x
   .hword 0x80 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1675
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1676
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1677
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1678
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1679
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1680
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1681
   .hword 0x0 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1682
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1683
   .hword 0x10 @ delta x
   .hword 0x110 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3457 @ metatile ID appareance
@ Object 1684
   .hword 0x0 @ delta x
   .hword 0x1a0 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 3456 @ metatile ID appareance
@ Object 1685
   .hword 0x10 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0xf0 @ changes 1 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1686
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0xf1 @ changes 2 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1687
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0xf2 @ changes 3 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1688
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xf3 @ changes 4 for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1689
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1330 @ metatile ID appareance
@ Object 1690
   .hword 0x0 @ delta x
   .hword 0x158 @ y
   .hword 0x34 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1691
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1328 @ metatile ID appareance
@ Object 1692
   .hword 0x6b @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1693
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1694
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1695
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1696
   .hword 0x7 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1697
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1698
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1699
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1700
   .hword 0x9 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1701
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1702
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1703
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3ff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1704
   .hword 0x8 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1705
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1706
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1707
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1708
   .hword 0x9 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1709
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1710
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1711
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e2 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1712
   .hword 0x8 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1713
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1714
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1715
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1716
   .hword 0x9 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1717
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1718
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1719
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7c40 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1720
   .hword 0x9 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1721
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1722
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1723
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1724
   .hword 0x1a @ delta x
   .hword 0x158 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1725
   .hword 0x0 @ delta x
   .hword 0x158 @ y
   .hword 0x2e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1726
   .hword 0x0 @ delta x
   .hword 0x158 @ y
   .hword 0x1d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1727
   .hword 0x0 @ delta x
   .hword 0x158 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1728
   .hword 0x10 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1729
   .hword 0x19 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1730
   .hword 0x7 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1328 @ metatile ID appareance
@ Object 1731
   .hword 0x1 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1732
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1733
   .hword 0x9 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1734
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1735
   .hword 0x6 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1736
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1737
   .hword 0x2 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x6a @ changes 3 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1738
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1739
   .hword 0xe @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1740
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1741
   .hword 0x9 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1742
   .hword 0x7 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1743
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1744
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1330 @ metatile ID appareance
@ Object 1745
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1329 @ metatile ID appareance
@ Object 1746
   .hword 0x8 @ delta x
   .hword 0x68 @ y
   .hword 0x1b @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1747
   .hword 0x0 @ delta x
   .hword 0x68 @ y
   .hword 0x82 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 1748
   .hword 0x0 @ delta x
   .hword 0x148 @ y
   .hword 0x1b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 1749
   .hword 0x0 @ delta x
   .hword 0x148 @ y
   .hword 0x82 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 1750
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1751
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1752
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1331 @ metatile ID appareance
@ Object 1753
   .hword 0xf @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1754
   .hword 0x1 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1755
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1756
   .hword 0x7 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1757
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1758
   .hword 0x9 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1759
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1760
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1761
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1762
   .hword 0x8 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x6a @ changes 3 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1763
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1764
   .hword 0x8 @ delta x
   .hword 0x130 @ y
   .hword 0x11 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 1765
   .hword 0xf @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1766
   .hword 0x1 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1767
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1768
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x9 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1769
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1770
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1771
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1772
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1773
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1774
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1775
   .hword 0x8 @ delta x
   .hword 0x168 @ y
   .hword 0x1b @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1776
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x82 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1777
   .hword 0x5 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3e4 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1778
   .hword 0x3 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1779
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1780
   .hword 0x5 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1781
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3e4 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1782
   .hword 0x9 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1783
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3e4 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1784
   .hword 0x2 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1328 @ metatile ID appareance
@ Object 1785
   .hword 0x6 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x6a @ changes 3 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1786
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e4 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1787
   .hword 0xa @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1788
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1789
   .hword 0xd @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1790
   .hword 0x3 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1791
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1792
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1329 @ metatile ID appareance
@ Object 1793
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1794
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1795
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1796
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1797
   .hword 0x8 @ delta x
   .hword 0x140 @ y
   .hword 0xe @ type
   .hword 0xc @ bg layer 1 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 1798
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1799
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1800
   .hword 0x1 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7fc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1801
   .hword 0x8 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1802
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7fc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1803
   .hword 0x7 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1804
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1805
   .hword 0x2 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1806
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7fc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1807
   .hword 0x6 @ delta x
   .hword 0x148 @ y
   .hword 0x1b @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1808
   .hword 0x0 @ delta x
   .hword 0x148 @ y
   .hword 0x82 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1809
   .hword 0x2 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x6a @ changes 3 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1810
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7fc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1811
   .hword 0x6 @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 7476 @ metatile ID appareance
@ Object 1812
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1328 @ metatile ID appareance
@ Object 1813
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1814
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1815
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x11 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1816
   .hword 0x1 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1817
   .hword 0xf @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1818
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1819
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x11 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1820
   .hword 0x8 @ delta x
   .hword 0x140 @ y
   .hword 0x10 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1821
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1822
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1823
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1329 @ metatile ID appareance
@ Object 1824
   .hword 0x1d @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7c00 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1825
   .hword 0x3 @ delta x
   .hword 0x170 @ y
   .hword 0x10 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1826
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1827
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1828
   .hword 0x5 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1829
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c00 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1830
   .hword 0x9 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1831
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c00 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1832
   .hword 0x2 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1330 @ metatile ID appareance
@ Object 1833
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1834
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1835
   .hword 0x6 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x6a @ changes 3 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1836
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7c00 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1837
   .hword 0xa @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1838
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1839
   .hword 0xd @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1840
   .hword 0x3 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1841
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1842
   .hword 0x8 @ delta x
   .hword 0x168 @ y
   .hword 0x1b @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1843
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x82 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1844
   .hword 0x8 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1845
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1846
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1847
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1848
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 35 @ metatile ID appareance
@ Object 1849
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0xf @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 1850
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1851
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1852
   .hword 0xd @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7c14 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1853
   .hword 0x3 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1331 @ metatile ID appareance
@ Object 1854
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1855
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1856
   .hword 0x5 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1857
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c14 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1858
   .hword 0x9 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1859
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c14 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1860
   .hword 0x8 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x6a @ changes 3 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1861
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7c14 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1862
   .hword 0xa @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1863
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1864
   .hword 0xd @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1865
   .hword 0x3 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1866
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1867
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 1868
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1869
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1870
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1871
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1872
   .hword 0x8 @ delta x
   .hword 0x148 @ y
   .hword 0x1b @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1873
   .hword 0x0 @ delta x
   .hword 0x148 @ y
   .hword 0x82 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1874
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1875
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1876
   .hword 0xf @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1877
   .hword 0x1 @ delta x
   .hword 0x170 @ y
   .hword 0xf @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 16384 @ rotation
@ Object 1878
   .hword 0x7 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1879
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1880
   .hword 0x9 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1881
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1882
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1883
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1884
   .hword 0x8 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x6a @ changes 3 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1885
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1886
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1887
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1888
   .hword 0xf @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1889
   .hword 0x11 @ delta x
   .hword 0x140 @ y
   .hword 0xe @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 1890
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1891
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1892
   .hword 0x3 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1893
   .hword 0x8 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1894
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1895
   .hword 0x5 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1896
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1897
   .hword 0x4 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1898
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1899
   .hword 0x8 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x6a @ changes 3 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1900
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3bf @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1901
   .hword 0x4 @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1330 @ metatile ID appareance
@ Object 1902
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x9 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1903
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1904
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1905
   .hword 0x3 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1906
   .hword 0x5 @ delta x
   .hword 0x168 @ y
   .hword 0x1b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 1907
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x82 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 1908
   .hword 0x3 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x58 @ changes 1 for 11 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1909
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1910
   .hword 0x5 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1911
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1912
   .hword 0x3 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1913
   .hword 0x1 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x71 @ changes 2 for 14 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1914
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1915
   .hword 0x8 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x6a @ changes 3 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1916
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1917
   .hword 0x4 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1918
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1919
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1331 @ metatile ID appareance
@ Object 1920
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1921
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1922
   .hword 0x3 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1923
   .hword 0xd @ delta x
   .hword 0x160 @ y
   .hword 0x9 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1924
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1925
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1926
   .hword 0x20 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1927
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1928
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1929
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1930
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x10 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1931
   .hword 0x4 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7fc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1932
   .hword 0x8 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1933
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7fc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1934
   .hword 0x4 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1935
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1936
   .hword 0x5 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x69 @ changes 2 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1937
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7fc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1938
   .hword 0x8 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x52 @ changes 3 for 10 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1939
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7fc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1940
   .hword 0x3 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1941
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1942
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x10 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1943
   .hword 0x8 @ delta x
   .hword 0x148 @ y
   .hword 0x1b @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1944
   .hword 0x0 @ delta x
   .hword 0x148 @ y
   .hword 0x82 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1945
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1946
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1947
   .hword 0x4 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1948
   .hword 0xc @ delta x
   .hword 0x150 @ y
   .hword 0x10 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1949
   .hword 0x0 @ delta x
   .hword 0x180 @ y
   .hword 0x10 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1950
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1951
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1952
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x10 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1953
   .hword 0x1c @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7cc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1954
   .hword 0x4 @ delta x
   .hword 0x130 @ y
   .hword 0x10 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1955
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1328 @ metatile ID appareance
@ Object 1956
   .hword 0x4 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1957
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7cc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1958
   .hword 0x9 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x69 @ changes 2 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1959
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7cc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1960
   .hword 0x3 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1961
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1962
   .hword 0x5 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x52 @ changes 3 for 10 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1963
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7cc0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1964
   .hword 0xb @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1965
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1966
   .hword 0xc @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1967
   .hword 0x4 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1968
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1969
   .hword 0x8 @ delta x
   .hword 0x168 @ y
   .hword 0x1b @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1970
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x82 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1971
   .hword 0x8 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1972
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1973
   .hword 0x10 @ delta x
   .hword 0x124 @ y
   .hword 0xe @ type
   .hword 0xc @ bg layer 1 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 1974
   .hword 0x0 @ delta x
   .hword 0x140 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 34 @ metatile ID appareance
@ Object 1975
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1976
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1977
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 1329 @ metatile ID appareance
@ Object 1978
   .hword 0xd @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7c14 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1979
   .hword 0x3 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 1980
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 1981
   .hword 0x5 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1982
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7c14 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1983
   .hword 0x9 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x69 @ changes 2 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1984
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7c14 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1985
   .hword 0x8 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x52 @ changes 3 for 10 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1986
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7c14 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1987
   .hword 0xa @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1988
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1989
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x9 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1990
   .hword 0xd @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 1991
   .hword 0x3 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1992
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1993
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1994
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1995
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 1996
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 1997
   .hword 0x8 @ delta x
   .hword 0x148 @ y
   .hword 0x1b @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1998
   .hword 0x0 @ delta x
   .hword 0x148 @ y
   .hword 0x82 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 1999
   .hword 0x8 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 2000
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 2001
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x9 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 2002
   .hword 0xe @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2003
   .hword 0x2 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 2004
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 2005
   .hword 0x0 @ delta x
   .hword 0x178 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 34 @ metatile ID appareance
@ Object 2006
   .hword 0x0 @ delta x
   .hword 0x188 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 126 @ metatile ID appareance
@ Object 2007
   .hword 0x6 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2008
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2009
   .hword 0x9 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x69 @ changes 2 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2010
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2011
   .hword 0x1 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 2012
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 2013
   .hword 0x7 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x52 @ changes 3 for 10 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2014
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2015
   .hword 0x9 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 2016
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 2017
   .hword 0xe @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2018
   .hword 0x2 @ delta x
   .hword 0x150 @ y
   .hword 0x10 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 2019
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x11 @ type
   .hword 0x9 @ bg layer 1 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 2020
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 2021
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 2022
   .hword 0x10 @ delta x
   .hword 0x150 @ y
   .hword 0x11 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 2023
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x11 @ type
   .hword 0x9 @ bg layer 1 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 2024
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 2025
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 2026
   .hword 0xa @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x39f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2027
   .hword 0x6 @ delta x
   .hword 0x160 @ y
   .hword 0x11 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 2028
   .hword 0x2 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2029
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x39f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2030
   .hword 0x6 @ delta x
   .hword 0x168 @ y
   .hword 0x1b @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 2031
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x82 @ type
   .hword 0x10 @ bg layer 2 non rotated   
   .hword 0x0 @ z index 0
@ Object 2032
   .hword 0x3 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x69 @ changes 2 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2033
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x39f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2034
   .hword 0x5 @ delta x
   .hword 0x150 @ y
   .hword 0x11 @ type
   .hword 0x9 @ bg layer 1 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 2035
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 2036
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 2037
   .hword 0x3 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x52 @ changes 3 for 10 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2038
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x39f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2039
   .hword 0xd @ delta x
   .hword 0x170 @ y
   .hword 0x11 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 2040
   .hword 0xa @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2041
   .hword 0x6 @ delta x
   .hword 0x160 @ y
   .hword 0x11 @ type
   .hword 0x9 @ bg layer 1 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 2042
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3460 @ metatile ID appareance
@ Object 2043
   .hword 0x0 @ delta x
   .hword 0x190 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5496 @ metatile ID appareance
@ Object 2044
   .hword 0x10 @ delta x
   .hword 0x180 @ y
   .hword 0x11 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 2045
   .hword 0x10 @ delta x
   .hword 0x160 @ y
   .hword 0x11 @ type
   .hword 0x9 @ bg layer 1 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 2046
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 2047
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 2048
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x11 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 2049
   .hword 0xa @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2050
   .hword 0x6 @ delta x
   .hword 0x150 @ y
   .hword 0x11 @ type
   .hword 0x9 @ bg layer 1 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 2051
   .hword 0x2 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2052
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2053
   .hword 0x9 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x69 @ changes 2 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2054
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x3e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2055
   .hword 0x5 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 2056
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 2057
   .hword 0x0 @ delta x
   .hword 0x160 @ y
   .hword 0x11 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 2058
   .hword 0x3 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x52 @ changes 3 for 10 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2059
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x3e0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2060
   .hword 0xd @ delta x
   .hword 0x140 @ y
   .hword 0x11 @ type
   .hword 0x9 @ bg layer 1 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 2061
   .hword 0x8 @ delta x
   .hword 0x148 @ y
   .hword 0x1b @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 2062
   .hword 0x0 @ delta x
   .hword 0x148 @ y
   .hword 0x82 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 2063
   .hword 0x2 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2064
   .hword 0x6 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x408 @ bg layer 1   z index 16 
   .hword 3461 @ metatile ID appareance
@ Object 2065
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x2b @ type
   .hword 0x8 @ bg layer 1   z index 0 
   .hword 5497 @ metatile ID appareance
@ Object 2066
   .hword 0x0 @ delta x
   .hword 0x150 @ y
   .hword 0x11 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 2067
   .hword 0x10 @ delta x
   .hword 0x130 @ y
   .hword 0x11 @ type
   .hword 0x9 @ bg layer 1 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 2068
   .hword 0x10 @ delta x
   .hword 0x120 @ y
   .hword 0x11 @ type
   .hword 0x9 @ bg layer 1 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 2069
   .hword 0x10 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2070
   .hword 0x0 @ delta x
   .hword 0x120 @ y
   .hword 0x11 @ type
   .hword 0x9 @ bg layer 1 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 2071
   .hword 0x9 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2072
   .hword 0x7 @ delta x
   .hword 0x120 @ y
   .hword 0x11 @ type
   .hword 0x19 @ bg layer 3 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 2073
   .hword 0x1 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2074
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2075
   .hword 0x9 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x69 @ changes 2 for 13 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2076
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2077
   .hword 0x8 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x52 @ changes 3 for 10 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2078
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7fe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2079
   .hword 0x17 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0xeb @ changes 4 for 29 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2080
   .hword 0x1f @ delta x
   .hword 0x168 @ y
   .hword 0x1b @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 2081
   .hword 0x0 @ delta x
   .hword 0x168 @ y
   .hword 0x82 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x0 @ z index 0
@ Object 2082
   .hword 0x48 @ delta x
   .hword 0x170 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2083
   .hword 0x10 @ delta x
   .hword 0x70 @ y
   .hword 0x3 @ type
   .hword 0xf7 @ changes LINE for 30 frames
   .hword 0x7fde @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2084
   .hword 0x0 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0xf6 @ changes OBJ for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2085
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x1 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2086
   .hword 0x0 @ delta x
   .hword 0x170 @ y
   .hword 0x34 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2087
   .hword 0x16 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2088
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2089
   .hword 0x80 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x1de @ changes OBJ for 59 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2090
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x1f0 @ changes 1 for 62 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2091
   .hword 0x2c @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x39f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2092
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x39f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2093
   .hword 0x80 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x1de @ changes OBJ for 59 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2094
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1d1 @ changes 2 for 58 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2095
   .hword 0x37 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0xbe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2096
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0xbe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2097
   .hword 0x80 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x1de @ changes OBJ for 59 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2098
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x1da @ changes 3 for 59 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2099
   .hword 0x34 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c60 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2100
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7c60 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2101
   .hword 0x80 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x1de @ changes OBJ for 59 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2102
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x1db @ changes 4 for 59 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2103
   .hword 0x3c @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2104
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x1f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2105
   .hword 0x80 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x1de @ changes OBJ for 59 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2106
   .hword 0x0 @ delta x
   .hword 0xb0 @ y
   .hword 0x3 @ type
   .hword 0x1f0 @ changes 1 for 62 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2107
   .hword 0x7 @ delta x
   .hword 0x1a0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2108
   .hword 0x10 @ delta x
   .hword 0x140 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2109
   .hword 0x1c @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x39f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2110
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x39f @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2111
   .hword 0x24 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc0 @ z index 0 pal 3
@ Object 2112
   .hword 0x30 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2113
   .hword 0x2c @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x1de @ changes OBJ for 59 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2114
   .hword 0x0 @ delta x
   .hword 0xc0 @ y
   .hword 0x3 @ type
   .hword 0x1d1 @ changes 2 for 58 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2115
   .hword 0x4 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2116
   .hword 0x10 @ delta x
   .hword 0x190 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2117
   .hword 0x26 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0xbe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2118
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x2 @ changes 3 for 0 frames
   .hword 0xbe0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2119
   .hword 0xa @ delta x
   .hword 0x130 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x100 @ z index 0 pal 4
@ Object 2120
   .hword 0x30 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2121
   .hword 0x10 @ delta x
   .hword 0x1a0 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2122
   .hword 0x20 @ delta x
   .hword 0x170 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2123
   .hword 0x16 @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x1de @ changes OBJ for 59 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2124
   .hword 0x0 @ delta x
   .hword 0xd0 @ y
   .hword 0x3 @ type
   .hword 0x1da @ changes 3 for 59 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2125
   .hword 0x2a @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2126
   .hword 0xf @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x7c60 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2127
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x3 @ changes 4 for 0 frames
   .hword 0x7c60 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2128
   .hword 0x11 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x140 @ z index 0 pal 5
@ Object 2129
   .hword 0x50 @ delta x
   .hword 0x160 @ y
   .hword 0x17 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x180 @ z index 0 pal 6
@ Object 2130
   .hword 0x1f @ delta x
   .hword 0xa0 @ y
   .hword 0x3 @ type
   .hword 0x1de @ changes OBJ for 59 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2131
   .hword 0x0 @ delta x
   .hword 0xe0 @ y
   .hword 0x3 @ type
   .hword 0x1db @ changes 4 for 59 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 2132
   .hword 0x11 @ delta x
   .hword 0x180 @ y
   .hword 0x17 @ type
   .hword 0x8 @ bg layer 1 non rotated   
   .hword 0x180 @ z index 0 pal 6
   .byte 0xff
