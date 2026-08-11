	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song134_1
song134_1:	@ 0x08177598
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 47
	.byte	MODT	, 0
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N90	, Dn3, v127
	.byte	W06
	.byte		TIE	, An2
	.byte	W04
	.byte	MOD	, 101
	.byte	W11
	.byte		0
	.byte	W08
	.byte		78
	.byte	W13
	.byte		0
	.byte	W07
	.byte	BEND	, c_v
	.byte	W03
	.byte		c_v-2
	.byte	W02
	.byte	MOD	, 75
	.byte	W04
	.byte	BEND	, c_v-3
	.byte	W04
	.byte		c_v-4
	.byte	W01
	.byte	MOD	, 0
	.byte	W05
	.byte	BEND	, c_v-6
	.byte	W10
	.byte		c_v-8
	.byte	W01
	.byte	MOD	, 92
	.byte	W03
	.byte	BEND	, c_v-10
	.byte	W04
	.byte		c_v-11
	.byte	W03
	.byte	MOD	, 0
	.byte	W01
	.byte	BEND	, c_v-12
	.byte	W04
	.byte		c_v-14
	.byte	W02
	.byte	W05
	.byte		c_v-16
	.byte	W03
	.byte	MOD	, 44
	.byte	W01
	.byte	BEND	, c_v-18
	.byte	W07
	.byte		c_v-20
	.byte	W03
	.byte		c_v-22
	.byte	W02
	.byte	MOD	, 0
	.byte	W03
	.byte		EOT	
	.byte	BEND	, c_v
	.byte	FINE

	.align 2
	.global song134
song134:	@ 0x081775F0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song134_1		@ track
