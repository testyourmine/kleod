	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song154_1
song154_1:	@ 0x08188B78
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 58
	.byte	BENDR	, 16
	.byte	PAN	, c_v
	.byte	VOL	, v073
	.byte	BEND	, c_v-63
	.byte	W01
	.byte		N44	, An5, v127
	.byte	W02
	.byte	BEND	, c_v-62
	.byte	W01
	.byte		c_v-60
	.byte	W01
	.byte		c_v-58
	.byte	W01
	.byte		c_v-56
	.byte	W02
	.byte		c_v-54
	.byte	W02
	.byte		c_v-52
	.byte	W02
	.byte		c_v-50
	.byte	W01
	.byte		c_v-47
	.byte	W01
	.byte		c_v-46
	.byte	W01
	.byte		c_v-44
	.byte	W02
	.byte		c_v-42
	.byte	W02
	.byte		c_v-39
	.byte	W02
	.byte		c_v-36
	.byte	W03
	.byte		c_v-32
	.byte	W03
	.byte		c_v-28
	.byte	W04
	.byte		c_v-23
	.byte	W05
	.byte		c_v-16
	.byte	W05
	.byte		c_v-10
	.byte	W05
	.byte		c_v
	.byte	W02
	.byte	FINE

	.align 2
	.global song154
song154:	@ 0x08188BB4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song154_1		@ track
