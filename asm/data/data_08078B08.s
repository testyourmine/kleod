    .include "asm/macros.inc"

	.section .rodata

    nonmatching _78B08, 0x78F88-0x78B08
_78B08::
    .incbin "baserom.gba", 0x78B08, 0x78F88-0x78B08

    nonmatching gUnk_08078F88, 0x20
gUnk_08078F88:: @ 0x08078F88
    .incbin "baserom.gba", 0x78F88, 0x20

    nonmatching gUnk_08078FA8, 0x20
gUnk_08078FA8:: @ 0x08078FA8
    .incbin "baserom.gba", 0x78FA8, 0x20

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

    nonmatching _7D7B1, 0x9AC08-0x7D7B1
_7D7B1::
    .incbin "baserom.gba", 0x7D7B1, 0x9AC08-0x7D7B1

    nonmatching gUnk_0809AC08, 0x80
gUnk_0809AC08:: @ 0x0809AC08
    .incbin "baserom.gba", 0x9AC08, 0x80

    nonmatching gUnk_0809AC88, 0x80
gUnk_0809AC88:: @ 0x0809AC88
    .incbin "baserom.gba", 0x9AC88, 0x80

    nonmatching _9AD08, 0xA4888-0x9AD08
_9AD08::
    .incbin "baserom.gba", 0x9AD08, 0xA4888-0x9AD08

    nonmatching gUnk_080A4888, 0x800
gUnk_080A4888:: @ 0x080A4888
    .incbin "baserom.gba", 0xA4888, 0x800

    nonmatching gUnk_080A5088, 0x800
gUnk_080A5088:: @ gUnk_080A5088
    .incbin "baserom.gba", 0xA5088, 0x800

    nonmatching gUnk_080A5888, 0x800
gUnk_080A5888:: @ 0x080A5888
    .incbin "baserom.gba", 0xA5888, 0x800

    nonmatching _A6088, 0xB8F68-0xA6088
_A6088::
    .incbin "baserom.gba", 0xA6088, 0xB8F68-0xA6088

    nonmatching gUnk_080B8F68, 0x80
gUnk_080B8F68:: @ 0x080B8F68
    .incbin "baserom.gba", 0xB8F68, 0x80

    nonmatching gUnk_080B8FE8, 0x80
gUnk_080B8FE8:: @ 0x080B8FE8
    .incbin "baserom.gba", 0xB8FE8, 0x80

    nonmatching gUnk_080B9068, 0x80
gUnk_080B9068:: @ 0x080B9068
    .incbin "baserom.gba", 0xB9068, 0x80

    nonmatching gUnk_080B90E8, 0x80
gUnk_080B90E8:: @ 0x080B90E8
    .incbin "baserom.gba", 0xB90E8, 0x80

    nonmatching gUnk_080B9168, 0x80
gUnk_080B9168:: @ 0x080B9168
    .incbin "baserom.gba", 0xB9168, 0x80

    nonmatching gUnk_080B91E8, 0x80
gUnk_080B91E8:: @ 0x080B91E8
    .incbin "baserom.gba", 0xB91E8, 0x80

    nonmatching gUnk_080B9268, 0x80
gUnk_080B9268:: @ 0x080B9268
    .incbin "baserom.gba", 0xB9268, 0x80

    nonmatching gUnk_080B92E8, 0x80
gUnk_080B92E8:: @ 0x080B92E8
    .incbin "baserom.gba", 0xB92E8, 0x80

    nonmatching gUnk_080B9368, 0x100
gUnk_080B9368:: @ 0x080B9368
    .incbin "baserom.gba", 0xB9368, 0x100

    nonmatching gUnk_080B9468, 0x200
gUnk_080B9468:: @ 0x080B9468
    .incbin "baserom.gba", 0xB9468, 0x200

    nonmatching gUnk_080B9668, 0x200
gUnk_080B9668:: @ 0x080B9668
    .incbin "baserom.gba", 0xB9668, 0x200

    nonmatching _B9868, 0xD2E88-0xB9868
_B9868::
    .incbin "baserom.gba", 0xB9868, 0xD2E88-0xB9868

    nonmatching gUnk_080D2E88, 0x6*0x7*0x14*0x8
gUnk_080D2E88:: @ 0x080D2E88
    .incbin "baserom.gba", 0xD2E88, 0x6*0x7*0x14*0x8

    nonmatching gUnk_080D48C8, 0x6*0x7*0x15*0x8
gUnk_080D48C8:: @ 0x080D48C8
    .incbin "baserom.gba", 0xD48C8, 0x6*0x7*0x15*0x8

    nonmatching gUnk_080D6458, 0x6*0x8
gUnk_080D6458:: @ 0x080D6458
    .incbin "baserom.gba", 0xD6458, 0x6*0x8

    nonmatching _D6488, 0xD821C-0xD6488
_D6488:: 
    .incbin "baserom.gba", 0xD6488, 0xD821C-0xD6488

    nonmatching gUnk_080D821C, 0xD*0xC
gUnk_080D821C:: @ 0x080D821C
    .incbin "baserom.gba", 0xD821C, 0xD*0xC

    nonmatching _D82B8, 0xD89A8-0xD82B8
_D82B8::
    .incbin "baserom.gba", 0xD82B8, 0xD89A8-0xD82B8

    nonmatching gUnk_080D89A8, 0x5*0x5*0x8
gUnk_080D89A8:: @ 0x080D89A8
    .incbin "baserom.gba", 0xD89A8, 0x5*0x5*0x8

    nonmatching gUnk_080D8A70, 0x4*0x20
gUnk_080D8A70:: @ 0x080D8A70
    .incbin "baserom.gba", 0xD8A70, 0x4*0x20

    nonmatching gUnk_080D8AF0, 0x2*0x20
gUnk_080D8AF0:: @ 0x080D8AF0
    .incbin "baserom.gba", 0xD8AF0, 0x2*0x20

    nonmatching gUnk_080D8B30, 0x8*0x20
gUnk_080D8B30:: @ 0x080D8B30
    .incbin "baserom.gba", 0xD8B30, 0x8*0x20

    nonmatching gUnk_080D8C30, 0x6*0x40*0x1
gUnk_080D8C30:: @ 0x080D8C30
    .incbin "baserom.gba", 0xD8C30, 0x6*0x40*0x1

    nonmatching _D8DB0, 0xD8E10-0xD8DB0
_D8DB0::
    .incbin "baserom.gba", 0xD8DB0, 0xD8E10-0xD8DB0

    nonmatching gUnk_080D8E10, 0x3*0x1
gUnk_080D8E10:: @ 0x080D8E10
    .incbin "baserom.gba", 0xD8E10, 0x3*0x1

    .align 2, 0
