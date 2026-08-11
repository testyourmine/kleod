	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song041_1
song041_1:	@ 0x0817601C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 10
	.byte	PAN	, c_v
	.byte	VOL	, v117
	.byte		N02	, Fn2, v004
	.byte	W02
	.byte			Fn3, v127
	.byte	W02
	.byte	VOL	, v058
	.byte		N02	, Fn2
	.byte	W01
	.byte		N06	, Cn5
	.byte	W06
	.byte	FINE

	.align 2
	.global song041
song041:	@ 0x08176038
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song041_1		@ track
