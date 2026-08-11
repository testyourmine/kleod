	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song093_1
song093_1:	@ 0x08176A84
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 9
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v071
	.byte	MOD	, 20
	.byte	W01
	.byte		TIE	, Bn3, v040
	.byte	W23
song093_1_1:
	.byte	W72
	.byte	W96
	.byte	GOTO	
		.word	song093_1_1
	.byte	W05
	.byte		EOT	, Bn3
	.byte	FINE

	.align 2
	.global song093
song093:	@ 0x08176AA4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song093_1		@ track
