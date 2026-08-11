	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song116_1
song116_1:	@ 0x0817706C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 25
	.byte	PAN	, c_v
	.byte	VOL	, v097
	.byte		N02	, Dn3, v127
	.byte	W03
	.byte		N16	, Gs3, v100
	.byte	W16
	.byte	FINE

	.align 2
	.global song116
song116:	@ 0x08177080
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song116_1		@ track
