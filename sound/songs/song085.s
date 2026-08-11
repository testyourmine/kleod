	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song085_1
song085_1:	@ 0x081768C0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 28
	.byte	BENDR	, 32
	.byte	PAN	, c_v
	.byte	VOL	, v077
	.byte		N02	, Gn3, v127
	.byte	W02
	.byte			Gs3
	.byte	W02
	.byte			Cs4
	.byte	W02
	.byte	BEND	, c_v-36
	.byte		N02	, Ds4
	.byte	W01
	.byte	BEND	, c_v-30
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-16
	.byte		N02	, Ds4, v060
	.byte	W01
	.byte	BEND	, c_v-12
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-4
	.byte		N02	, Ds4, v028
	.byte	W01
	.byte	BEND	, c_v-2
	.byte	W01
	.byte		c_v
	.byte	FINE

	.align 2
	.global song085
song085:	@ 0x081768F4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song085_1		@ track
