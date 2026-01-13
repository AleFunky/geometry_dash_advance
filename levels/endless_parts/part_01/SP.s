@ Sprite Data Export

.section .rodata
.align 2
.global part_01_spr_data
.hidden part_01_spr_data
part_01_spr_data:
@ Object 1
   .hword 0x30 @ delta x
   .hword 0x160 @ y
   .hword 0x8 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
@ Object 2
   .hword 0x4 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1 @ metatile ID appareance
@ Object 3
   .hword 0x18 @ delta x
   .hword 0x1b0 @ y
   .hword 0x2b @ type
   .hword 0x20 @ bg layer 4   z index 0 
   .hword 1 @ metatile ID appareance
@ Object 4
   .hword 0x4 @ delta x
   .hword 0x160 @ y
   .hword 0x8 @ type
   .hword 0x20 @ bg layer 4 non rotated   
   .hword 0x0 @ z index 0
   .byte 0xff
