    .section .rodata

gSongTable:: @ 0x08118AE4
    .incbin "baserom.gba", 0x118AE4, 0x1    @ TODO: length

    .incbin "baserom.gba", 0x118AE5, 0x188DD8-0x118AE5
