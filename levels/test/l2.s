@ Level Data Export
@ Compressed using RLE

.section .rodata
.align 2
.global test_l2_level_data
.hidden test_l2_level_data
test_l2_level_data:
    .word 0b00000000000000001111111111000000 @ 0x0000ffc0
    .word 0b00000000001111111111000000000000 @ 0x003ff000
    .word 0b00001111111111000000000000000011 @ 0x0ffc0003
    .word 0b11111111000000000000000011111111 @ 0xff0000ff
    .word 0b11000000000000000011111111110000 @ 0xc0003ff0
    .word 0b00000000000011111111110000000000 @ 0x000ffc00
    .word 0b00000011111111110000000000000000 @ 0x03ff0000
    .word 0b11111111110000000000000000111111 @ 0xffc0003f
    .word 0b11110000000000000000111111111100 @ 0xf0000ffc
    .word 0b00000000000000111111111100000000 @ 0x0003ff00
    .word 0b00000000111111111100000000000000 @ 0x00ffc000
    .word 0b00111111111100000000000000001111 @ 0x3ff0000f
    .word 0b11111100000000000000001111111111 @ 0xfc0003ff
    .word 0b00000000000000001111111111000000 @ 0x0000ffc0
    .word 0b00000000001111111111000000000000 @ 0x003ff000
    .word 0b00001111111111000000000000000011 @ 0x0ffc0003
    .word 0b11111111000000000000000011111111 @ 0xff0000ff
    .word 0b11000000000000000011111111110000 @ 0xc0003ff0
    .word 0b00000000000011111111110000000000 @ 0x000ffc00
    .word 0b00000010011001000000000000000000 @ 0x02640000
