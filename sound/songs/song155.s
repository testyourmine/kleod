	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song155_1
song155_1:	@ 0x08188BC0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 70
	.byte	VOICE	, 34
	.byte	BENDR	, 16
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte		N28	, An2, v120
	.byte	W03
	.byte	BEND	, c_v+4
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v+14
	.byte	W01
	.byte		c_v+21
	.byte	W01
	.byte		c_v+26
	.byte	W01
	.byte		c_v+26
	.byte	W01
	.byte		c_v+22
	.byte	W01
	.byte		c_v+17
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v
	.byte	W02
	.byte		c_v-2
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-21
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-26
	.byte	W12
	.byte		c_v
	.byte	FINE

	.align 2
	.global song155
song155:	@ 0x08188BF8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song155_1		@ track
