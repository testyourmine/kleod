    .include "asm/macros.inc"

	.section .rodata

    nonmatching gUnk_08078FC8, 0xD*0x8
gUnk_08078FC8:: @ 0x08078FC8
    .incbin "baserom.gba", 0x78FC8, 0xD*0x8

    nonmatching _79030, 0x7D248-0x79030
_79030::
    .incbin "baserom.gba", 0x79030, 0x7D248-0x79030

    nonmatching gUnk_0807D248, 1
gUnk_0807D248:: @ 0x0807D248
    .incbin "baserom.gba", 0x7D248, 1

    nonmatching _7D249, 0x7D7B0-0x7D249
_7D249::
    .incbin "baserom.gba", 0x7D249, 0x7D7B0-0x7D249

    nonmatching gUnk_0807D7B0, 1
gUnk_0807D7B0:: @ 0x0807D7B0
    .incbin "baserom.gba", 0x7D7B0, 1

    nonmatching _7D7B1, 0x7D808-0x7D7B1
_7D7B1::
    .incbin "baserom.gba", 0x7D7B1, 0x7D808-0x7D7B1
