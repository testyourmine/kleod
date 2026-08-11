	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song107_1
song107_1:	@ 0x08176D8C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 25
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N06	, An2, v127
	.byte	W07
	.byte		N11	, An2, v068
	.byte	W11
	.byte	FINE

	.align 2
	.global song107
song107:	@ 0x08176DA0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song107_1		@ track
