	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song157_1
song157_1:	@ 0x08188C64
	.byte	KEYSH	, 0
	.byte	TEMPO	, 80
	.byte	VOICE	, 63
	.byte	BENDR	, 16
	.byte	PAN	, c_v
	.byte	VOL	, v056
	.byte		N03	, Dn3, v127
	.byte	W03
	.byte		N02	, As2, v108
	.byte	W03
	.byte			As2, v040
	.byte	W02
	.byte	FINE

	.align 2
	.global song157
song157:	@ 0x08188C7C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song157_1		@ track
