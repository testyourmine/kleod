	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song055_1
song055_1:	@ 0x0817627C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 11
	.byte	PAN	, c_v
	.byte	VOL	, v117
	.byte		N04	, En1, v127
	.byte	W04
	.byte	VOICE	, 12
	.byte		N23	, Cn3, v116
	.byte	W23
	.byte	FINE

	.align 2
	.global song055
song055:	@ 0x08176294
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song055_1		@ track
