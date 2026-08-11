	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song109_1
song109_1:	@ 0x08176DF8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 33
	.byte	MODT	, 0
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte	BEND	, c_v-2
	.byte		N02	, Fn1, v127
	.byte	W01
	.byte	BEND	, c_v-4
	.byte	W01
	.byte		c_v-6
	.byte		N02	, As2, v108
	.byte	W01
	.byte	BEND	, c_v-11
	.byte	W01
	.byte		c_v-22
	.byte		N02	, Fs1, v127
	.byte	W01
	.byte	BEND	, c_v-49
	.byte	W01
	.byte		c_v-53
	.byte		N24	, Bn1
	.byte	W01
	.byte	BEND	, c_v-33
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v+7
	.byte	W01
	.byte		c_v+15
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte	MOD	, 13
	.byte	BEND	, c_v+24
	.byte	W02
	.byte		c_v+29
	.byte	W01
	.byte		c_v+30
	.byte	W16
	.byte	MOD	, 0
	.byte	BEND	, c_v
	.byte	FINE

	.align 2
	.global song109
song109:	@ 0x08176E44
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song109_1		@ track
