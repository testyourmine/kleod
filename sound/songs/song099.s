	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song099_1
song099_1:	@ 0x08176BC8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 55
	.byte	PAN	, c_v
	.byte	VOL	, v062
	.byte		TIE	, Cn3, v127
	.byte	W96
	.byte	W11
	.byte		EOT	
	.byte	FINE

	.align 2
	.global song099
song099:	@ 0x08176BDC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song099_1		@ track
