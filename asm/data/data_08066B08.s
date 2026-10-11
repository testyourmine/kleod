    .include "asm/macros.inc"

	.section .rodata

    nonmatching _66B08, 0x77E28-0x66B08
_66B08:: @ 0x08066B08
    .incbin "baserom.gba", 0x66B08, 0x77E28-0x66B08
