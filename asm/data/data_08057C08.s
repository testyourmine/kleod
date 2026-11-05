    .include "asm/macros.inc"

	.section .rodata

    nonmatching _57C08, 0x57C50-0x57C08
_57C08::
    .incbin "baserom.gba", 0x57C08, 0x57C50-0x57C08

    nonmatching gUnk_08057C50, 0x1*0x2
gUnk_08057C50:: @ 0x08057C50
    .incbin "baserom.gba", 0x57C50, 0x1*0x2

    nonmatching _57C52, 0x57C58-0x57C52
_57C52::
    .incbin "baserom.gba", 0x57C52, 0x57C58-0x57C52

    nonmatching gUnk_08057C58, 0x1*0x2
gUnk_08057C58:: @ 0x08057C58
    .incbin "baserom.gba", 0x57C58, 0x1*0x2

    nonmatching _57C5A, 0x57C70-0x57C5A
_57C5A::
    .incbin "baserom.gba", 0x57C5A, 0x57C70-0x57C5A

    nonmatching gUnk_08057C70, 2
gUnk_08057C70:: @ 0x08057C70
    .incbin "baserom.gba", 0x57C70, 2

    nonmatching _57C72, 0x5C4E8-0x57C72
_57C72::
    .incbin "baserom.gba", 0x57C72, 0x5C4E8-0x57C72
