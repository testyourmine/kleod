	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song091_1
song091_1:	@ 0x08176A08
	.byte	KEYSH	, 0
	.byte	TEMPO	, 70
	.byte	VOICE	, 28
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte		N02	, Fn1, v127
	.byte	W03
	.byte			Ds2
	.byte	W03
	.byte			Gn1
	.byte	W03
	.byte			En2
	.byte	W03
	.byte			An1
	.byte	W03
	.byte			Fn2
	.byte	W02
	.byte	FINE

	.align 2
	.global song091
song091:	@ 0x08176A24
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song091_1		@ track
