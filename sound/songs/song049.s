	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song049_1
song049_1:	@ 0x08176184
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 8
	.byte	PAN	, c_v
	.byte	VOL	, v112
	.byte		N02	, An3, v127
	.byte	W02
	.byte			Dn4
	.byte	W02
	.byte			En4
	.byte	W02
	.byte		N06	, Gn4
	.byte	W06
	.byte	FINE

	.align 2
	.global song049
song049:	@ 0x0817619C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song049_1		@ track
