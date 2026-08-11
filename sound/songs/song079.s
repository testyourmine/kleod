	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song079_1
song079_1:	@ 0x081767DC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 49
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N88	, Cs3, v127
	.byte	W88
	.byte	W01
	.byte	FINE

	.align 2
	.global song079
song079:	@ 0x081767EC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song079_1		@ track
