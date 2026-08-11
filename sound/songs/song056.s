	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song056_1
song056_1:	@ 0x081762A0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v117
	.byte		N17	, Bn2, v116
	.byte	W17
	.byte	FINE

	.align 2
	.global song056
song056:	@ 0x081762B0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song056_1		@ track
