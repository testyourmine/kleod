	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song112_1
song112_1:	@ 0x08176F14
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 5
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v117
	.byte	MOD	, 127
	.byte		N02	, Ds4, v127
	.byte	W03
	.byte			Fs4
	.byte	W02
	.byte		N14	, Fn4
	.byte	W10
	.byte	MOD	, 0
	.byte	W04
	.byte	FINE

	.align 2
	.global song112
song112:	@ 0x08176F30
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song112_1		@ track
