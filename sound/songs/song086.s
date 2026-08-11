	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song086_1
song086_1:	@ 0x08176900
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 28
	.byte	PAN	, c_v
	.byte	VOL	, v052
	.byte		N04	, Bn4, v127
	.byte	W04
	.byte	FINE

	.align 2
	.global song086
song086:	@ 0x08176910
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song086_1		@ track
