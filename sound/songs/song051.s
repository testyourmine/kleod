	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song051_1
song051_1:	@ 0x081761CC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 29
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte	W01
	.byte		N02	, Ds3, v127
	.byte	W02
	.byte			As3
	.byte	W03
	.byte			Ds4
	.byte	W03
	.byte			As3
	.byte	W02
	.byte			Fn4
	.byte	W03
	.byte			As3, v068
	.byte	W03
	.byte			Fn4
	.byte	W02
	.byte			As3, v040
	.byte	W03
	.byte			Fn4
	.byte	W03
	.byte	FINE

	.align 2
	.global song051
song051:	@ 0x081761F0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song051_1		@ track
