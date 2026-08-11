	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song037_1
song037_1:	@ 0x08175FA0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 31
	.byte	W02
	.byte	VOL	, v117
	.byte	W03
	.byte	PAN	, c_v
	.byte	W02
	.byte		N16	, Cn3, v127
	.byte	W16
	.byte	FINE

	.align 2
	.global song037
song037:	@ 0x08175FB4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	21		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song037_1		@ track
