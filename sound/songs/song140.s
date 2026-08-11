	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song140_1
song140_1:	@ 0x0817B840
	.byte	KEYSH	, 0
	.byte	TEMPO	, 80
	.byte	VOICE	, 24
	.byte	MODT	, 0
	.byte	BENDR	, 6
	.byte	PAN	, c_v
	.byte	VOL	, v051
	.byte		N22	, An5, v127
	.byte	W01
	.byte	BEND	, c_v-47
	.byte	W01
	.byte		c_v-48
	.byte	W01
	.byte		c_v-49
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-41
	.byte	W01
	.byte		c_v-37
	.byte	W01
	.byte		c_v-34
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-21
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-15
	.byte	W02
	.byte		c_v-11
	.byte	W01
	.byte		c_v-9
	.byte	W02
	.byte		c_v-6
	.byte	W02
	.byte		c_v-3
	.byte	W01
	.byte		c_v
	.byte	W20
	.byte		c_v-2
	.byte		N15	, Gn5, v108
	.byte	W01
	.byte	BEND	, c_v-4
	.byte	W02
	.byte		c_v-6
	.byte	W01
	.byte		c_v-8
	.byte	W02
	.byte		c_v-10
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-25
	.byte	W03
	.byte	FINE

	.align 2
	.global song140
song140:	@ 0x0817B898
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song140_1		@ track
