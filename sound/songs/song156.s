	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song156_1
song156_1:	@ 0x08188C04
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 58
	.byte	TUNE	, c_v-64
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte	BEND	, c_v+52
	.byte		N92	, Cn4, v127
	.byte	W01
	.byte	BEND	, c_v+44
	.byte	W01
	.byte		c_v+34
	.byte	W01
	.byte		c_v+17
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-57
	.byte	W01
	.byte		c_v-51
	.byte	W01
	.byte		c_v-48
	.byte	W01
	.byte		c_v-44
	.byte	W02
	.byte		c_v-40
	.byte	W01
	.byte		c_v-38
	.byte	W01
	.byte		c_v-35
	.byte	W02
	.byte		c_v-32
	.byte	W02
	.byte		c_v-30
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte	MOD	, 13
	.byte	W01
	.byte	BEND	, c_v-25
	.byte	W02
	.byte		c_v-24
	.byte	W03
	.byte		c_v-22
	.byte	W02
	.byte		c_v-20
	.byte	W02
	.byte		c_v-18
	.byte	W04
	.byte		c_v-17
	.byte	W04
	.byte		c_v-16
	.byte	W04
	.byte		c_v-14
	.byte	W05
	.byte		c_v-12
	.byte	W12
	.byte		c_v-9
	.byte	W13
	.byte		c_v-6
	.byte	W17
	.byte		c_v-2
	.byte	W09
	.byte		c_v
	.byte	W01
	.byte	MOD	, 0
	.byte	FINE

	.align 2
	.global song156
song156:	@ 0x08188C58
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song156_1		@ track
