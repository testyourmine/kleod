	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song125_1
song125_1:	@ 0x08177258
	.byte	KEYSH	, 0
	.byte	TEMPO	, 77
	.byte	VOICE	, 43
	.byte	BENDR	, 8
	.byte	PAN	, c_v
	.byte	VOL	, v066
	.byte	BEND	, c_v-50
	.byte	W01
	.byte		N09	, Gs4, v127
	.byte	W01
	.byte	BEND	, c_v-51
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-41
	.byte	W01
	.byte		c_v-36
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v
	.byte	FINE

	.align 2
	.global song125
song125:	@ 0x08177280
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song125_1		@ track
