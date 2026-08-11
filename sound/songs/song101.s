	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song101_1
song101_1:	@ 0x08176C04
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 43
	.byte	BENDR	, 32
	.byte	PAN	, c_v
	.byte	VOL	, v077
	.byte	BEND	, c_v-32
	.byte	W01
	.byte		N11	, Cn3, v100
	.byte	W01
	.byte	BEND	, c_v-34
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v+3
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+25
	.byte	W01
	.byte		c_v+29
	.byte	W01
	.byte		c_v+35
	.byte	W01
	.byte		c_v
	.byte	FINE

	.align 2
	.global song101
song101:	@ 0x08176C30
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song101_1		@ track
