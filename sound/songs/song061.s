	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song061_1
song061_1:	@ 0x081763A4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 48
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte	MOD	, 3
	.byte	W02
	.byte		TIE	, Fn2, v127
	.byte	W22
song061_1_1:
	.byte	W72
	.byte	W24
	.byte	GOTO	
		.word	song061_1_1
	.byte	W48
	.byte		EOT	, Fn2
	.byte	FINE

	.align 2
	.global song061
song061:	@ 0x081763C4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song061_1		@ track
