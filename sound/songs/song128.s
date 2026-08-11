	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song128_1
song128_1:	@ 0x0817730C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 77
	.byte	VOICE	, 14
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v089
	.byte	MOD	, 127
	.byte		N05	, An3, v127
	.byte	W05
	.byte		N02	, En3, v100
	.byte	W06
	.byte		N05	, Bn3, v127
	.byte	W05
	.byte		N02	, Fs3, v108
	.byte	W06
	.byte		N05	, Gn3, v100
	.byte	W04
	.byte		N02	, Dn3, v068
	.byte	W06
	.byte		N05	, As3
	.byte	W05
	.byte		N02	, Fn3, v040
	.byte	W05
	.byte		N05	, Gs3
	.byte	W09
	.byte	MOD	, 0
	.byte	FINE

	.align 2
	.global song128
song128:	@ 0x08177340
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song128_1		@ track
