	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song133_1
song133_1:	@ 0x08177558
	.byte	KEYSH	, 0
	.byte	TEMPO	, 77
	.byte	VOICE	, 40
	.byte	BENDR	, 19
	.byte	PAN	, c_v
	.byte	VOL	, v066
	.byte		N19	, En4, v108
	.byte	W04
	.byte	BEND	, c_v-5
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-26
	.byte	W01
	.byte		c_v-29
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-40
	.byte	W01
	.byte		c_v-45
	.byte	W01
	.byte		c_v-49
	.byte	W01
	.byte		c_v-51
	.byte	W02
	.byte		c_v-54
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-46
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-21
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v
	.byte	FINE

	.align 2
	.global song133
song133:	@ 0x0817758C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song133_1		@ track
