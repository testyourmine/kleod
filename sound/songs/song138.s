	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song138_1
song138_1:	@ 0x0817B790
	.byte	KEYSH	, 0
	.byte	TEMPO	, 65
	.byte	VOICE	, 28
	.byte	BENDR	, 24
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte	BEND	, c_v-50
	.byte		N03	, En3, v127
	.byte	W01
	.byte	BEND	, c_v-44
	.byte	W01
	.byte		c_v-40
	.byte	W01
	.byte		c_v-36
	.byte		N03	, An3
	.byte	W01
	.byte	BEND	, c_v-33
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-28
	.byte		N03	, Ds3
	.byte	W01
	.byte	BEND	, c_v-24
	.byte	W01
	.byte		c_v-23
	.byte	W01
	.byte		c_v-22
	.byte		N03	, As3
	.byte	W01
	.byte	BEND	, c_v-18
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-16
	.byte		N03	, En3
	.byte	W01
	.byte	BEND	, c_v-14
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		N03	, Bn3
	.byte	W01
	.byte	BEND	, c_v-11
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		N03	, Ds3
	.byte	W01
	.byte	BEND	, c_v-8
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		N03	, Cn4
	.byte	W01
	.byte	BEND	, c_v-5
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		N03	, En3
	.byte	W01
	.byte	BEND	, c_v-2
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		N03	, Cs4
	.byte	W05
	.byte			Cs4, v080
	.byte	W04
	.byte			Cs4, v048
	.byte	W04
	.byte			Cs4, v028
	.byte	W03
	.byte	FINE

	.align 2
	.global song138
song138:	@ 0x0817B7F8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song138_1		@ track
