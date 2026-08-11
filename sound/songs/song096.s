	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song096_1
song096_1:	@ 0x08176B04
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 39
	.byte	BENDR	, 32
	.byte	PAN	, c_v
	.byte	VOL	, v081
	.byte	BEND	, c_v-32
	.byte	W01
	.byte		N04	, Dn5, v127
	.byte	W01
	.byte	BEND	, c_v-30
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		N04	, Gn5
	.byte	W01
	.byte	BEND	, c_v-26
	.byte	W01
	.byte		c_v-24
	.byte	W02
	.byte		c_v-22
	.byte	W01
	.byte		N04	, Dn5
	.byte	W02
	.byte	BEND	, c_v-20
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		N04	, Gn5
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		N04	, Dn5
	.byte	W01
	.byte	BEND	, c_v-10
	.byte	W02
	.byte		c_v-8
	.byte	W01
	.byte		N04	, Gn5
	.byte	W01
	.byte	BEND	, c_v-6
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte	FINE

	.align 2
	.global song096
song096:	@ 0x08176B50
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song096_1		@ track
