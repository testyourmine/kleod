	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song094_1
song094_1:	@ 0x08176AB0
	.byte	VOL	, v127
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 37
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte		N03	, Cn5, v100
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Dn5
	.byte	W09
	.byte			Dn5, v040
	.byte	W03
	.byte	FINE

	.align 2
	.global song094
song094:	@ 0x08176AC8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song094_1		@ track
