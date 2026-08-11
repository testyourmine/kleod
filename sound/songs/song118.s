	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song118_1
song118_1:	@ 0x081770AC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 46
	.byte	BENDR	, 5
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N04	, Dn2, v127
	.byte	W05
	.byte		N10	, Bn2, v108
	.byte	W09
	.byte	BEND	, c_v+23
	.byte	W02
	.byte		c_v
	.byte	FINE

	.align 2
	.global song118
song118:	@ 0x081770C8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song118_1		@ track
