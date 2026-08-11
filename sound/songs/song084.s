	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song084_1
song084_1:	@ 0x08176888
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 59
	.byte	BENDR	, 8
	.byte	PAN	, c_v
	.byte	VOL	, v050
	.byte	BEND	, c_v-63
	.byte		N09	, Cn5, v112
	.byte	W03
	.byte	BEND	, c_v-62
	.byte	W01
	.byte		c_v-55
	.byte	W01
	.byte		c_v-47
	.byte	W01
	.byte		c_v-36
	.byte	W01
	.byte		c_v-26
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		N03	, Cn5, v080
	.byte	W04
	.byte			Cn5, v052
	.byte	W03
	.byte	FINE

	.align 2
	.global song084
song084:	@ 0x081768B4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song084_1		@ track
