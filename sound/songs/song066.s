	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song066_1
song066_1:	@ 0x08176484
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 23
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N24	, Fn6, v127
	.byte	W03
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v-4
	.byte	W02
	.byte		c_v-6
	.byte	W03
	.byte		c_v-9
	.byte	W02
	.byte		c_v-10
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-14
	.byte	W02
	.byte		c_v-16
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-20
	.byte	W02
	.byte		c_v-22
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-26
	.byte	W01
	.byte		c_v-27
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-32
	.byte	W02
	.byte		c_v-36
	.byte	W02
	.byte		c_v-38
	.byte	W01
	.byte		c_v-40
	.byte	W02
	.byte		c_v-44
	.byte	W01
	.byte		c_v-45
	.byte	W02
	.byte		c_v-50
	.byte	W02
	.byte		c_v-54
	.byte	W08
	.byte		c_v
	.byte	FINE

	.align 2
	.global song066
song066:	@ 0x081764CC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song066_1		@ track
