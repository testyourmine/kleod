	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song139_1
song139_1:	@ 0x0817B804
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 29
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N02	, Cs4, v127
	.byte	W02
	.byte	BEND	, c_v-36
	.byte		N09	, Ds4
	.byte	W01
	.byte	BEND	, c_v-30
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v
	.byte	W02
	.byte		N03	
	.byte	W04
	.byte			Ds4, v080
	.byte	W04
	.byte			Ds4, v040
	.byte	W03
	.byte	FINE

	.align 2
	.global song139
song139:	@ 0x0817B834
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song139_1		@ track
