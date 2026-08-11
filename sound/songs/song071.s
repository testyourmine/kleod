	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song071_1
song071_1:	@ 0x08176660
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 25
	.byte	PAN	, c_v
	.byte	VOL	, v117
	.byte		N06	, Gn2, v127
	.byte	W07
	.byte		N14	, Cn3, v088
	.byte	W14
	.byte	FINE

	.align 2
	.global song071
song071:	@ 0x08176674
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song071_1		@ track
