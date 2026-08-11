	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song153_1
song153_1:	@ 0x08188B34
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 60
	.byte	BENDR	, 16
	.byte	PAN	, c_v
	.byte	VOL	, v090
	.byte		N24	, Gn3, v100
	.byte	W01
	.byte	BEND	, c_v-48
	.byte	W04
	.byte		c_v-44
	.byte	W03
	.byte		c_v-42
	.byte	W02
	.byte		c_v-39
	.byte	W02
	.byte		c_v-36
	.byte	W02
	.byte		c_v-33
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-29
	.byte	W01
	.byte		c_v-26
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte	VOICE	, 61
	.byte	BEND	, c_v
	.byte	W01
	.byte		N44	, Cn3
	.byte	W44
	.byte	FINE

	.align 2
	.global song153
song153:	@ 0x08188B6C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song153_1		@ track
