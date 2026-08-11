	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song070_1
song070_1:	@ 0x08176640
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 15
	.byte	PAN	, c_v
	.byte	VOL	, v117
	.byte		N02	, An4, v127
	.byte	W02
	.byte		N42	, An5
	.byte	W42
	.byte	FINE

	.align 2
	.global song070
song070:	@ 0x08176654
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song070_1		@ track
