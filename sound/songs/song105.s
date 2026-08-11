	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song105_1
song105_1:	@ 0x08176D20
	.byte	KEYSH	, 0
	.byte	TEMPO	, 70
	.byte	VOICE	, 43
	.byte	PAN	, c_v
	.byte	VOL	, v097
	.byte		N02	, Bn1, v127
	.byte	W03
	.byte			En2
	.byte	W03
	.byte			Cs2
	.byte	W02
	.byte	FINE

	.align 2
	.global song105
song105:	@ 0x08176D34
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song105_1		@ track
