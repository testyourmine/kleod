    .include "asm/macros.inc"

    .section .data

    nonmatching _18958C, 0x189A24-0x18958C
_18958C::
    .incbin "baserom.gba", 0x18958C, 0x189A24-0x18958C

    nonmatching gUnk_08189A24, 0x6*0x9*0x4
gUnk_08189A24:: @ 0x08189A24
    .incbin "baserom.gba", 0x189A24, 0x6*0x9*0x4
