	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song076_1
song076_1:	@ 0x08176704
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 26
	.byte	BENDR	, 34
	.byte	PAN	, c_v
	.byte	VOL	, v117
	.byte	W03
	.byte	BEND	, c_v-50
	.byte	W01
	.byte		N40	, Gn5, v127
	.byte	W01
	.byte	BEND	, c_v-38
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-26
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-17
	.byte	W02
	.byte		c_v-14
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-8
	.byte	W02
	.byte		c_v-6
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-3
	.byte	W03
	.byte		c_v-2
	.byte	W01
	.byte	VOL	, v022
	.byte	W01
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-3
	.byte	W01
	.byte		c_v
	.byte	W07
	.byte	FINE

	.align 2
	.global song076
song076:	@ 0x08176758
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song076_1		@ track
