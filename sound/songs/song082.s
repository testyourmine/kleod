	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song082_1
song082_1:	@ 0x08176840
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 56
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte		N15	, Cn3, v127
	.byte	W15
	.byte	FINE

	.align 2
	.global song082
song082:	@ 0x08176850
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song082_1		@ track
