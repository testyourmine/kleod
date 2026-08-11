	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song108_1
song108_1:	@ 0x08176DAC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 40
	.byte	BENDR	, 30
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte		N18	, En4, v100
	.byte	W07
	.byte	BEND	, c_v-2
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v-21
	.byte	W01
	.byte		c_v-27
	.byte	W01
	.byte		c_v-29
	.byte	W01
	.byte		c_v-33
	.byte	W01
	.byte		c_v-36
	.byte	W01
	.byte		c_v-38
	.byte	W01
	.byte		c_v-39
	.byte	W01
	.byte		c_v-43
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-45
	.byte	W02
	.byte		c_v-45
	.byte	W01
	.byte		c_v-45
	.byte	W01
	.byte		c_v-45
	.byte	W01
	.byte		c_v-43
	.byte	W01
	.byte		c_v-39
	.byte	W05
	.byte		c_v
	.byte	FINE

	.align 2
	.global song108
song108:	@ 0x08176DEC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song108_1		@ track
