	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song158_1
song158_1:	@ 0x08188C88
	.byte	KEYSH	, 0
	.byte	TEMPO	, 70
	.byte	VOICE	, 28
	.byte	MODT	, 0
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v059
	.byte		N02	, Fn3, v100
	.byte	W02
	.byte			Gn3
	.byte	W03
	.byte			Gn3, v040
	.byte	W02
	.byte			Fn3, v100
	.byte	W02
	.byte			Gn3
	.byte	W03
	.byte			Gn3, v040
	.byte	W02
	.byte	FINE

	.align 2
	.global song158
song158:	@ 0x08188CA8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song158_1		@ track
