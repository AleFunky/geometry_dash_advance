@ Sprite Data Export

.section .rodata
.align 2
.global part_00_spr_data
.hidden part_00_spr_data
part_00_spr_data:
@ Object 1
   .hword 0x30 @ delta x
   .hword 0x150 @ y
   .hword 0x8 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2
   .hword 0x38 @ delta x
   .hword 0x1b0 @ y
   .hword 0xb @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 3
   .hword 0x68 @ delta x
   .hword 0x1a0 @ y
   .hword 0xb @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
   .byte 0xff
