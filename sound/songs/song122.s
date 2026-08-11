	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song122_1
song122_1:	@ 0x0817716C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 48
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte	MOD	, 3
	.byte		TIE	, Fn2, v127
	.byte	W24
song122_1_1:
	.byte	W72
	.byte	W24
	.byte	GOTO	
		.word	song122_1_1
	.byte	W48
	.byte		EOT	, Fn2
	.byte	FINE

	.align 2
	.global song122
song122:	@ 0x0817718C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song122_1		@ track
