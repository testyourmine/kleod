	.section .rodata
    
    .incbin "baserom.gba", 0x51BD4, 0xD9150-0x51BD4

gUnk_080D9150:: @ 0x
    .incbin "baserom.gba", 0xD9150, 0x1

    .incbin "baserom.gba", 0xD9151, 0x1179E4-0xD9151
