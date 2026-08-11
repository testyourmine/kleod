	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song048_1
song048_1:	@ 0x08176164
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 4
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte		N32	, Cn3, v127
	.byte	W24
	.byte	BEND	, c_v-2
	.byte	W09
	.byte	FINE

	.align 2
	.global song048
song048:	@ 0x08176178
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song048_1		@ track
