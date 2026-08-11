	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song147_1
song147_1:	@ 0x081888E8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 25
	.byte	BENDR	, 6
	.byte	PAN	, c_v
	.byte	VOL	, v102
	.byte		N03	, Gn2, v127
	.byte	W05
	.byte		N12	
	.byte	W12
	.byte	FINE

	.align 2
	.global song147
song147:	@ 0x081888FC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song147_1		@ track
