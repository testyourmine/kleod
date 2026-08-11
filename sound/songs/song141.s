	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song141_1
song141_1:	@ 0x0817B8A4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 3
	.byte	PAN	, c_v
	.byte	VOL	, v000
	.byte		N01	, Cs3, v004
	.byte	W01
	.byte	FINE

	.align 2
	.global song141
song141:	@ 0x0817B8B4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song141_1		@ track
