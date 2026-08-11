	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song054_1
song054_1:	@ 0x08176258
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 11
	.byte	PAN	, c_v
	.byte	VOL	, v092
	.byte		N04	, En1, v124
	.byte	W08
	.byte		N05	, En1, v120
	.byte	W08
	.byte		N07	, En1, v116
	.byte	W07
	.byte	FINE

	.align 2
	.global song054
song054:	@ 0x08176270
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song054_1		@ track
