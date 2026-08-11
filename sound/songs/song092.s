	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song092_1
song092_1:	@ 0x08176A30
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 28
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte	BEND	, c_v-50
	.byte		N02	, Fn2, v100
	.byte	W01
	.byte	BEND	, c_v-46
	.byte	W01
	.byte		c_v-42
	.byte		N02	, Fs2
	.byte	W01
	.byte	BEND	, c_v-38
	.byte	W01
	.byte		c_v-34
	.byte		N09	, Gn2
	.byte	W01
	.byte	BEND	, c_v-30
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		c_v-26
	.byte	W01
	.byte		c_v-22
	.byte	W02
	.byte		c_v-18
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-12
	.byte		N02	, Fn2
	.byte	W01
	.byte	BEND	, c_v-11
	.byte	W01
	.byte		c_v-10
	.byte		N02	, Fs2
	.byte	W01
	.byte	BEND	, c_v-8
	.byte	W01
	.byte		N09	, Gn2
	.byte	W02
	.byte	BEND	, c_v-4
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v
	.byte	W05
	.byte	FINE

	.align 2
	.global song092
song092:	@ 0x08176A78
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song092_1		@ track
