	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song121_1
song121_1:	@ 0x08177144
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 48
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte		TIE	, As1, v127
	.byte	W24
song121_1_1:
	.byte	W72
	.byte	W48
	.byte	GOTO	
		.word	song121_1_1
	.byte	W24
	.byte	W02
	.byte		EOT	, As1
	.byte	FINE

	.align 2
	.global song121
song121:	@ 0x08177160
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song121_1		@ track
