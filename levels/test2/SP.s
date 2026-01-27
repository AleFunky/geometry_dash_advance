@ Sprite Data Export

.section .rodata
.align 2
.global test2_spr_data
.hidden test2_spr_data
test2_spr_data:
@ Object 1
   .hword 0x0 @ delta x
   .hword 0x720 @ y
   .hword 0x3 @ type
   .hword 0x60 @ changes 1 for 12 frames
   .hword 0x6c1f @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 2
   .hword 0x20 @ delta x
   .hword 0x778 @ y
   .hword 0x34 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3
   .hword 0x10 @ delta x
   .hword 0x740 @ y
   .hword 0x99 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 4
   .hword 0x30 @ delta x
   .hword 0x770 @ y
   .hword 0xa1 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 5
   .hword 0x30 @ delta x
   .hword 0x770 @ y
   .hword 0xa5 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 6
   .hword 0x30 @ delta x
   .hword 0x710 @ y
   .hword 0xa3 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 7
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0xa5 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 8
   .hword 0x8 @ delta x
   .hword 0x6e0 @ y
   .hword 0xac @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 9
   .hword 0x10 @ delta x
   .hword 0x6e0 @ y
   .hword 0xac @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 10
   .hword 0x10 @ delta x
   .hword 0x6e0 @ y
   .hword 0xac @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 11
   .hword 0x8 @ delta x
   .hword 0x738 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 2 @ metatile ID appareance
@ Object 12
   .hword 0x10 @ delta x
   .hword 0x690 @ y
   .hword 0x3 @ type
   .hword 0x1 @ changes 2 for 0 frames
   .hword 0x3e0 @ color
   .hword 0x11 @ copies {copy_channel} normal trigger
@ Object 13
   .hword 0x0 @ delta x
   .hword 0x6a0 @ y
   .hword 0x3 @ type
   .hword 0x0 @ changes 1 for 0 frames
   .hword 0x3e0 @ color
   .hword 0x31 @ copies {copy_channel} blending normal trigger
@ Object 14
   .hword 0x0 @ delta x
   .hword 0x6c0 @ y
   .hword 0x3 @ type
   .hword 0x6 @ changes OBJ for 0 frames
   .hword 0x3e0 @ color
   .hword 0x11 @ copies {copy_channel} normal trigger
@ Object 15
   .hword 0x0 @ delta x
   .hword 0x6e0 @ y
   .hword 0x3 @ type
   .hword 0x4 @ changes BG for 0 frames
   .hword 0x581a @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 16
   .hword 0x0 @ delta x
   .hword 0x710 @ y
   .hword 0xa6 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 17
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0xa1 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 60802 @ rotation
@ Object 18
   .hword 0x10 @ delta x
   .hword 0x690 @ y
   .hword 0x3 @ type
   .hword 0x91 @ changes 2 for 18 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 19
   .hword 0x0 @ delta x
   .hword 0x6a0 @ y
   .hword 0x3 @ type
   .hword 0x90 @ changes 1 for 18 frames
   .hword 0x0 @ color
   .hword 0x20 @ doesn't copy any channel blending normal trigger
@ Object 20
   .hword 0x0 @ delta x
   .hword 0x6c0 @ y
   .hword 0x3 @ type
   .hword 0x96 @ changes OBJ for 18 frames
   .hword 0x7fff @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 21
   .hword 0x0 @ delta x
   .hword 0x6e0 @ y
   .hword 0x3 @ type
   .hword 0xf4 @ changes BG for 30 frames
   .hword 0x0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 22
   .hword 0x20 @ delta x
   .hword 0x700 @ y
   .hword 0xa2 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 12743 @ rotation
@ Object 23
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 23 @ metatile ID appareance
@ Object 24
   .hword 0x0 @ delta x
   .hword 0x760 @ y
   .hword 0xab @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 25
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0xab @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 26
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 27
   .hword 0x0 @ delta x
   .hword 0x780 @ y
   .hword 0xab @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 28
   .hword 0x20 @ delta x
   .hword 0x710 @ y
   .hword 0xa4 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 29
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0xad @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 30
   .hword 0x10 @ delta x
   .hword 0x770 @ y
   .hword 0xad @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 31
   .hword 0x10 @ delta x
   .hword 0x770 @ y
   .hword 0xad @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 32
   .hword 0x10 @ delta x
   .hword 0x730 @ y
   .hword 0x1e @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 33
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0xa5 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 34
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0xad @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 35
   .hword 0x1f @ delta x
   .hword 0x710 @ y
   .hword 0xa6 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 36
   .hword 0x1 @ delta x
   .hword 0x768 @ y
   .hword 0xaf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 37
   .hword 0x10 @ delta x
   .hword 0x768 @ y
   .hword 0xaf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 38
   .hword 0x0 @ delta x
   .hword 0x790 @ y
   .hword 0xaf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 39
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0xa7 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 40
   .hword 0x0 @ delta x
   .hword 0x758 @ y
   .hword 0xa8 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 41
   .hword 0x0 @ delta x
   .hword 0x768 @ y
   .hword 0xaf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 42
   .hword 0x0 @ delta x
   .hword 0x790 @ y
   .hword 0xaf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 43
   .hword 0x10 @ delta x
   .hword 0x790 @ y
   .hword 0xaf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 44
   .hword 0x10 @ delta x
   .hword 0x670 @ y
   .hword 0xaa @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 45
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0xa9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
   .hword 256 @ orange orb offset
@ Object 46
   .hword 0x0 @ delta x
   .hword 0x790 @ y
   .hword 0xaf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 47
   .hword 0x10 @ delta x
   .hword 0x760 @ y
   .hword 0xa5 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 48
   .hword 0x10 @ delta x
   .hword 0x770 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 49
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0x1d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 50
   .hword 0x10 @ delta x
   .hword 0x760 @ y
   .hword 0x63 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 51
   .hword 0x0 @ delta x
   .hword 0x760 @ y
   .hword 0x60 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 52
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0x1 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 53
   .hword 0x20 @ delta x
   .hword 0x6f0 @ y
   .hword 0xa8 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 54
   .hword 0x0 @ delta x
   .hword 0x720 @ y
   .hword 0x62 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 55
   .hword 0x0 @ delta x
   .hword 0x720 @ y
   .hword 0x5f @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 56
   .hword 0x0 @ delta x
   .hword 0x784 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1488 @ metatile ID appareance
@ Object 57
   .hword 0x10 @ delta x
   .hword 0x774 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1492 @ metatile ID appareance
@ Object 58
   .hword 0x10 @ delta x
   .hword 0x774 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1493 @ metatile ID appareance
@ Object 59
   .hword 0x10 @ delta x
   .hword 0x764 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1492 @ metatile ID appareance
@ Object 60
   .hword 0x10 @ delta x
   .hword 0x764 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1493 @ metatile ID appareance
@ Object 61
   .hword 0x1a @ delta x
   .hword 0x736 @ y
   .hword 0x83 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0xc0 @ z index 0 pal 3
   .hword 40960 @ rotation
@ Object 62
   .hword 0x6 @ delta x
   .hword 0x610 @ y
   .hword 0xb4 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 32768 @ rotation
@ Object 63
   .hword 0x0 @ delta x
   .hword 0x690 @ y
   .hword 0xb3 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
   .hword 128 @ orange portal offset
@ Object 64
   .hword 0x10 @ delta x
   .hword 0x40 @ y
   .hword 0xa1 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 12743 @ rotation
@ Object 65
   .hword 0x10 @ delta x
   .hword 0x778 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1488 @ metatile ID appareance
@ Object 66
   .hword 0x10 @ delta x
   .hword 0x5e0 @ y
   .hword 0xb4 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 49152 @ rotation
@ Object 67
   .hword 0x0 @ delta x
   .hword 0x650 @ y
   .hword 0xb3 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 112 @ orange portal offset
   .hword 16384 @ rotation
@ Object 68
   .hword 0x0 @ delta x
   .hword 0x768 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1488 @ metatile ID appareance
@ Object 69
   .hword 0x20 @ delta x
   .hword 0x40 @ y
   .hword 0xa1 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 52792 @ rotation
@ Object 70
   .hword 0x10 @ delta x
   .hword 0x690 @ y
   .hword 0xa9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
   .hword -128 @ orange orb offset
@ Object 71
   .hword 0x0 @ delta x
   .hword 0x710 @ y
   .hword 0xaa @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 72
   .hword 0x10 @ delta x
   .hword 0x730 @ y
   .hword 0x76 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 73
   .hword 0x30 @ delta x
   .hword 0x40 @ y
   .hword 0xa1 @ type
   .hword 0x24 @ bg layer 4 rotated   
   .hword 0x0 @ z index 0
   .hword 20024 @ rotation
@ Object 74
   .hword 0x28 @ delta x
   .hword 0x738 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 75
   .hword 0x4 @ delta x
   .hword 0x738 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 76
   .hword 0x94 @ delta x
   .hword 0x730 @ y
   .hword 0x77 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x144 @ z index 4 pal 5
@ Object 77
   .hword 0x0 @ delta x
   .hword 0x730 @ y
   .hword 0x78 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x103 @ z index 3 pal 4
@ Object 78
   .hword 0x0 @ delta x
   .hword 0x730 @ y
   .hword 0x79 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0xc2 @ z index 2 pal 3
@ Object 79
   .hword 0x40 @ delta x
   .hword 0x770 @ y
   .hword 0x72 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 80
   .hword 0x20 @ delta x
   .hword 0x780 @ y
   .hword 0xae @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 81
   .hword 0x10 @ delta x
   .hword 0x770 @ y
   .hword 0xae @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 82
   .hword 0x10 @ delta x
   .hword 0x750 @ y
   .hword 0xae @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 83
   .hword 0x0 @ delta x
   .hword 0x760 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1490 @ metatile ID appareance
@ Object 84
   .hword 0x0 @ delta x
   .hword 0x760 @ y
   .hword 0xae @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 85
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0xae @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 86
   .hword 0x10 @ delta x
   .hword 0x750 @ y
   .hword 0xae @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 87
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1490 @ metatile ID appareance
@ Object 88
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0xae @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 89
   .hword 0x0 @ delta x
   .hword 0x780 @ y
   .hword 0xae @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 90
   .hword 0x10 @ delta x
   .hword 0x770 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 91
   .hword 0x40 @ delta x
   .hword 0x770 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 92
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0x36 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 93
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 94
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0x4a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 95
   .hword 0x60 @ delta x
   .hword 0x770 @ y
   .hword 0x1 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 96
   .hword 0x0 @ delta x
   .hword 0x780 @ y
   .hword 0xa @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 97
   .hword 0x20 @ delta x
   .hword 0x40 @ y
   .hword 0x59 @ type
   .hword 0x20 @ coin 0 bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 98
   .hword 0x60 @ delta x
   .hword 0x40 @ y
   .hword 0x59 @ type
   .hword 0xa0 @ coin 1 bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 99
   .hword 0x20 @ delta x
   .hword 0x770 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 100
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0x1d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 101
   .hword 0x10 @ delta x
   .hword 0x770 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 102
   .hword 0x30 @ delta x
   .hword 0x40 @ y
   .hword 0x59 @ type
   .hword 0x120 @ coin 2 bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 103
   .hword 0x10 @ delta x
   .hword 0x770 @ y
   .hword 0x48 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 104
   .hword 0x50 @ delta x
   .hword 0x40 @ y
   .hword 0x59 @ type
   .hword 0x1a0 @ coin 3 bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 105
   .hword 0x30 @ delta x
   .hword 0x780 @ y
   .hword 0xa @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 106
   .hword 0x20 @ delta x
   .hword 0x700 @ y
   .hword 0x1c @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 107
   .hword 0x0 @ delta x
   .hword 0x760 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 108
   .hword 0x10 @ delta x
   .hword 0x40 @ y
   .hword 0x59 @ type
   .hword 0x220 @ coin 4 bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 109
   .hword 0x0 @ delta x
   .hword 0x700 @ y
   .hword 0x39 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 110
   .hword 0x50 @ delta x
   .hword 0x710 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 111
   .hword 0x10 @ delta x
   .hword 0x40 @ y
   .hword 0x59 @ type
   .hword 0x2a0 @ coin 5 bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 112
   .hword 0x10 @ delta x
   .hword 0x700 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 113
   .hword 0x10 @ delta x
   .hword 0x720 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 114
   .hword 0x10 @ delta x
   .hword 0x700 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 115
   .hword 0x10 @ delta x
   .hword 0x720 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 116
   .hword 0x10 @ delta x
   .hword 0x740 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 117
   .hword 0x10 @ delta x
   .hword 0x40 @ y
   .hword 0x59 @ type
   .hword 0x320 @ coin 6 bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 118
   .hword 0x0 @ delta x
   .hword 0x710 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 119
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0x37 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 120
   .hword 0x20 @ delta x
   .hword 0x700 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 121
   .hword 0x0 @ delta x
   .hword 0x720 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 122
   .hword 0x10 @ delta x
   .hword 0x740 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 123
   .hword 0x10 @ delta x
   .hword 0x720 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 124
   .hword 0x0 @ delta x
   .hword 0x720 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 125
   .hword 0x10 @ delta x
   .hword 0x720 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 126
   .hword 0x10 @ delta x
   .hword 0x40 @ y
   .hword 0x59 @ type
   .hword 0x3a0 @ coin 7 bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 127
   .hword 0x0 @ delta x
   .hword 0x720 @ y
   .hword 0x12 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 128
   .hword 0xa0 @ delta x
   .hword 0x30 @ y
   .hword 0x38 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 129
   .hword 0x0 @ delta x
   .hword 0x778 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 130
   .hword 0x20 @ delta x
   .hword 0x20 @ y
   .hword 0xa8 @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 131
   .hword 0x10 @ delta x
   .hword 0x700 @ y
   .hword 0x1d @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 132
   .hword 0x10 @ delta x
   .hword 0x700 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 133
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0x2 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 134
   .hword 0x40 @ delta x
   .hword 0x6f0 @ y
   .hword 0xa @ type
   .hword 0x21 @ bg layer 4 non rotated  flipped vertically 
   .hword 0x0 @ z index 0
@ Object 135
   .hword 0x0 @ delta x
   .hword 0x780 @ y
   .hword 0xa @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 136
   .hword 0x50 @ delta x
   .hword 0x720 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 137
   .hword 0x0 @ delta x
   .hword 0x750 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 138
   .hword 0xc0 @ delta x
   .hword 0x770 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 139
   .hword 0x80 @ delta x
   .hword 0x710 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 140
   .hword 0x0 @ delta x
   .hword 0x760 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 141
   .hword 0x80 @ delta x
   .hword 0x700 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 142
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 143
   .hword 0xe0 @ delta x
   .hword 0x770 @ y
   .hword 0x49 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 144
   .hword 0x10 @ delta x
   .hword 0x770 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 145
   .hword 0x10 @ delta x
   .hword 0x770 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 146
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0x38 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 147
   .hword 0x160 @ delta x
   .hword 0x770 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 148
   .hword 0x30 @ delta x
   .hword 0x770 @ y
   .hword 0x39 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 149
   .hword 0x20 @ delta x
   .hword 0x770 @ y
   .hword 0x37 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 150
   .hword 0x280 @ delta x
   .hword 0x730 @ y
   .hword 0x48 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 151
   .hword 0x10 @ delta x
   .hword 0x730 @ y
   .hword 0x1a @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 152
   .hword 0x10 @ delta x
   .hword 0x730 @ y
   .hword 0x35 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 153
   .hword 0xa0 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 154
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 155
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 156
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 157
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 158
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 159
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 160
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 161
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 162
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 163
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 164
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 165
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 166
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 167
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 168
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 169
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 170
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 171
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 172
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 173
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 174
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 175
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 176
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 177
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 178
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 179
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 180
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 181
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 182
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 183
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 184
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 185
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 186
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 187
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 188
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 189
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 190
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 191
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 192
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 193
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 194
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 195
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 196
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 197
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 198
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 199
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 200
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 201
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 202
   .hword 0x10 @ delta x
   .hword 0x6f0 @ y
   .hword 0x10 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 203
   .hword 0x10 @ delta x
   .hword 0x6a0 @ y
   .hword 0x3 @ type
   .hword 0xa4 @ changes BG for 20 frames
   .hword 0x7ea0 @ color
   .hword 0x0 @ doesn't copy any channel normal trigger
@ Object 204
   .hword 0x10 @ delta x
   .hword 0x770 @ y
   .hword 0x49 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 205
   .hword 0x4 @ delta x
   .hword 0x770 @ y
   .hword 0xe @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 206
   .hword 0x2c @ delta x
   .hword 0x770 @ y
   .hword 0x1 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 207
   .hword 0x1f0 @ delta x
   .hword 0x700 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 208
   .hword 0x0 @ delta x
   .hword 0x738 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 209
   .hword 0x0 @ delta x
   .hword 0x770 @ y
   .hword 0xf @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
   .byte 0xff
