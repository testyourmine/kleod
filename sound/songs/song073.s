	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song073_1
song073_1:	@ 0x0817669C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 14
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v048
	.byte	MOD	, 94
	.byte		N09	, Fn3, v127
	.byte	W36
	.byte			Fs3
	.byte	W10
	.byte	MOD	, 0
	.byte	FINE

	.align 2
	.global song073
song073:	@ 0x081766B4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song073_1		@ track
