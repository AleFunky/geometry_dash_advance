@ Sprite Data Export

.section .rodata
.align 2
.global part_03_spr_data
.hidden part_03_spr_data
part_03_spr_data:
@ Object 1
   .hword 0xe8 @ delta x
   .hword 0x1a0 @ y
   .hword 0x9 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2
   .hword 0x48 @ delta x
   .hword 0x1a0 @ y
   .hword 0xb @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
   .byte 0xff
