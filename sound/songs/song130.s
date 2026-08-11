	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song130_1
song130_1:	@ 0x08177374
	.byte	KEYSH	, 0
	.byte	TEMPO	, 70
	.byte	VOICE	, 4
	.byte	BENDR	, 6
	.byte	PAN	, c_v
	.byte	VOL	, v064
	.byte	BEND	, c_v-33
	.byte		N28	, An5, v127
	.byte	W01
	.byte	BEND	, c_v-50
	.byte	W01
	.byte		c_v-40
	.byte	W01
	.byte		c_v-34
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		c_v-26
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-2
	.byte	W02
	.byte		c_v
	.byte	W07
	.byte	FINE

	.align 2
	.global song130
song130:	@ 0x081773B4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song130_1		@ track
