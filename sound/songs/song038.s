	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song038_1
song038_1:	@ 0x08175FC0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 30
	.byte	W02
	.byte	VOL	, v117
	.byte	W03
	.byte	PAN	, c_v
	.byte	W02
	.byte		N44	, Cn3, v127
	.byte	W44
	.byte	W02
	.byte	FINE

	.align 2
	.global song038
song038:	@ 0x08175FD4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	21		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song038_1		@ track
