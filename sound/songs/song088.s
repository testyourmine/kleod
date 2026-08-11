	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song088_1
song088_1:	@ 0x08176960
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 25
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N02	, An2, v127
	.byte	W03
	.byte		N12	, Ds3, v100
	.byte	W12
	.byte	FINE

	.align 2
	.global song088
song088:	@ 0x08176974
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song088_1		@ track
