	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song106_1
song106_1:	@ 0x08176D40
	.byte	KEYSH	, 0
	.byte	TEMPO	, 70
	.byte	VOICE	, 45
	.byte	BENDR	, 24
	.byte	PAN	, c_v
	.byte	VOL	, v117
	.byte	BEND	, c_v-14
	.byte	W01
	.byte		N02	, Fn2, v084
	.byte	W01
	.byte	BEND	, c_v-24
	.byte		N03	, Gn2, v088
	.byte	W01
	.byte	BEND	, c_v-26
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-22
	.byte		N08	, Cn3, v096
	.byte	W01
	.byte	BEND	, c_v-15
	.byte	W01
	.byte		c_v-5
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v+2
	.byte	W01
	.byte		c_v+30
	.byte	W01
	.byte		c_v+55
	.byte	W01
	.byte		c_v+60
	.byte	W01
	.byte		c_v+63
	.byte	W02
	.byte		c_v+58
	.byte	W01
	.byte		c_v+51
	.byte	W01
	.byte		c_v+46
	.byte	W01
	.byte		c_v+28
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v
	.byte	FINE

	.align 2
	.global song106
song106:	@ 0x08176D80
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song106_1		@ track
