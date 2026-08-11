	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song039_1
song039_1:	@ 0x08175FE0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 32
	.byte	W02
	.byte	VOL	, v117
	.byte	W03
	.byte	PAN	, c_v
	.byte	W02
	.byte		N60	, Cn3, v127
	.byte	W60
	.byte	W02
	.byte	FINE

	.align 2
	.global song039
song039:	@ 0x08175FF4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	21		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song039_1		@ track
