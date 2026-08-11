	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song127_1
song127_1:	@ 0x081772C8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 67
	.byte	VOICE	, 38
	.byte	BENDR	, 18
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte		N06	, Ds3, v127
	.byte	W01
	.byte	BEND	, c_v-10
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-54
	.byte	W01
	.byte		c_v-61
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v
	.byte		N03	, Gs3
	.byte	W03
	.byte	BEND	, c_v-10
	.byte		N09	, Gn3, v108
	.byte	W01
	.byte	BEND	, c_v-20
	.byte	W01
	.byte		c_v-40
	.byte	W01
	.byte		c_v-54
	.byte	W01
	.byte		c_v-61
	.byte	W02
	.byte		c_v-58
	.byte	W01
	.byte		c_v-50
	.byte	W02
	.byte		c_v-15
	.byte	W01
	.byte		c_v
	.byte	FINE

	.align 2
	.global song127
song127:	@ 0x08177300
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song127_1		@ track
