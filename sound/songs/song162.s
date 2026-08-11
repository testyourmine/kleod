	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song162_1
song162_1:	@ 0x08188D54
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 28
	.byte	MODT	, 0
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v080
	.byte	W02
	.byte		N02	, Fs5, v120
	.byte	W02
	.byte			Gs4, v080
	.byte	W02
	.byte			Cs6, v120
	.byte	W02
	.byte			Fs4, v100
	.byte	W04
	.byte			Gs4
	.byte	W04
	.byte			Fs4, v060
	.byte	W04
	.byte			Gs4
	.byte	W04
	.byte			Fs4, v020
	.byte	W04
	.byte			Gs4
	.byte	W02
	.byte	FINE

	.align 2
	.global song162
song162:	@ 0x08188D80
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song162_1		@ track
