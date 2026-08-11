	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song060_1
song060_1:	@ 0x08176378
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 48
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v090
	.byte	MOD	, 1
	.byte		TIE	, Cn3, v127
	.byte	W24
song060_1_1:
	.byte	W72
	.byte	W24
	.byte	GOTO	
		.word	song060_1_1
	.byte	W48
	.byte		EOT	, Cn3
	.byte	FINE

	.align 2
	.global song060
song060:	@ 0x08176398
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song060_1		@ track
