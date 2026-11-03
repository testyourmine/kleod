    .include "asm/macros.inc"

	.section .rodata

    nonmatching gUnk_0805769C, 1
gUnk_0805769C:: @ 0x0805769C
    .incbin "baserom.gba", 0x5769C, 1

    nonmatching _5769D, 0x576B4-0x5769D
_5769D::
    .incbin "baserom.gba", 0x5769D, 0x576B4-0x5769D

    nonmatching gUnk_080576B4, 0x20
gUnk_080576B4:: @ 0x080576B4
    .incbin "baserom.gba", 0x576B4, 0x20

    nonmatching gUnk_080576D4, 0x20*0x2*0x1
gUnk_080576D4:: @ 0x080576D4
    .incbin "baserom.gba", 0x576D4, 0x20*0x2*0x1

    nonmatching gUnk_08057714, 0x20*0x2*0x2
gUnk_08057714:: @ 0x08057714
    .incbin "baserom.gba", 0x57714, 0x20*0x2*0x2

    nonmatching gUnk_08057794, 0x20*0x2*0x2
gUnk_08057794:: @ 0x08057794
    .incbin "baserom.gba", 0x57794, 0x20*0x2*0x2

    nonmatching gUnk_08057814, 0x20*0x2*0x2
gUnk_08057814:: @ 0x08057814
    .incbin "baserom.gba", 0x57814, 0x20*0x2*0x2

    nonmatching gUnk_08057894, 0x20*0x2*0x1
gUnk_08057894:: @ 0x08057894
    .incbin "baserom.gba", 0x57894, 0x20*0x2*0x1

    nonmatching gUnk_080578D4, 0x20*0x2*0x1
gUnk_080578D4:: @ 0x080578D4
    .incbin "baserom.gba", 0x578D4, 0x20*0x2*0x1

    nonmatching gUnk_08057914, 0x20*0x2*0x1
gUnk_08057914:: @ 0x08057914
    .incbin "baserom.gba", 0x57914, 0x20*0x2*0x1

    nonmatching gUnk_08057954, 1
gUnk_08057954:: @ 0x08057954
    .incbin "baserom.gba", 0x57954, 1

    nonmatching _57955, 0x57ACC-0x57955
_57955::
    .incbin "baserom.gba", 0x57955, 0x57ACC-0x57955

    nonmatching gUnk_08057ACC, 0x20*0x2*0x2*0x1
gUnk_08057ACC:: @ 0x08057ACC
    .incbin "baserom.gba", 0x57ACC, 0x20*0x2*0x2*0x1

    nonmatching gUnk_08057B4C, 1
gUnk_08057B4C:: @ 0x08057B4C
    .incbin "baserom.gba", 0x57B4C, 1

    nonmatching _57B4D, 0x57B6C-0x57B4D
_57B4D::
    .incbin "baserom.gba", 0x57B4D, 0x57B6C-0x57B4D

    .asciz "Klonoa Sleeping Empire Programmed by Kenichi-Koshida , Yoshiharu-Kanai & Yumiko-Motomura\n\t\t\t\t\t\t (c) Copyright 1997 2001 namco LTD.,  All rights reserved."

    .align 2, 0

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
