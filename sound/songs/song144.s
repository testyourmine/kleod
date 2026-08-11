	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song144_1
song144_1:	@ 0x0817B8F8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 33
	.byte	PAN	, c_v
	.byte	VOL	, v000
	.byte		N01	, Cs3, v004
	.byte	W01
	.byte	FINE

	.align 2
	.global song144
song144:	@ 0x0817B908
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song144_1		@ track
