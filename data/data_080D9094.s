	.section .rodata

    .incbin "baserom.gba", 0xD9094, 0xD9150-0xD9094

gUnk_080D9150:: @ 0x080D9150
    .incbin "baserom.gba", 0xD9150, 0x1

    .incbin "baserom.gba", 0xD9151, 0xD927C-0xD9151

gUnk_080D927C:: @ 0x080D927C
    .incbin "baserom.gba", 0xD927C, 0x200

gUnk_080D947C:: @ 0x080D947C
    .incbin "baserom.gba", 0xD947C, 0x9600

    .incbin "baserom.gba", 0xE2A7C, 0x116620-0xE2A7C

gUnk_08116620:: @ 0x08116620
    .incbin "baserom.gba", 0x116620, 0x6*0x9*0x4

    .incbin "baserom.gba", 0x1166F8, 0x1179E4-0x1166F8
