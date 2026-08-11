	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song077_1
song077_1:	@ 0x08176764
	.byte	KEYSH	, 0
song077_1_1:
	.byte	TEMPO	, 75
	.byte	VOICE	, 27
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte	MOD	, 74
	.byte		TIE	, Gs4, v127
	.byte	W96
	.byte	GOTO	
		.word	song077_1_1
	.byte	W04
	.byte		EOT	, Gs4
	.byte	FINE

	.align 2
	.global song077
song077:	@ 0x08176780
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song077_1		@ track
