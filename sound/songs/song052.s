	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song052_1
song052_1:	@ 0x081761FC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 72
	.byte	VOICE	, 28
	.byte	PAN	, c_v
	.byte	VOL	, v105
	.byte		N04	, Gn3, v127
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Bn3
	.byte	W04
	.byte			Bn3, v076
	.byte	W04
	.byte			Bn3, v040
	.byte	W04
	.byte	FINE

	.align 2
	.global song052
song052:	@ 0x08176218
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song052_1		@ track
