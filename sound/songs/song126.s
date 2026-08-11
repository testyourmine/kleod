	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song126_1
song126_1:	@ 0x0817728C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 77
	.byte	VOICE	, 50
	.byte	BENDR	, 8
	.byte	PAN	, c_v
	.byte	VOL	, v097
	.byte		N13	, Cn6, v127
	.byte	W05
	.byte	BEND	, c_v-2
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-8
	.byte	W02
	.byte		c_v-12
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-21
	.byte	W01
	.byte		c_v-25
	.byte	W01
	.byte		c_v-27
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-34
	.byte	W01
	.byte		c_v-38
	.byte	W01
	.byte		c_v-39
	.byte	W23
	.byte		c_v
	.byte	FINE

	.align 2
	.global song126
song126:	@ 0x081772BC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song126_1		@ track
