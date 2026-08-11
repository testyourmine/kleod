	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song149_1
song149_1:	@ 0x08188970
	.byte	KEYSH	, 0
	.byte	TEMPO	, 50
	.byte	VOICE	, 58
	.byte	MODT	, 0
	.byte	BENDR	, 24
	.byte	PAN	, c_v
	.byte	VOL	, v060
	.byte		N42	, Cn3, v080
	.byte	W01
	.byte	MOD	, 0
	.byte	W06
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v+3
	.byte	W01
	.byte		c_v+7
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+11
	.byte	W02
	.byte		c_v+14
	.byte	W01
	.byte		c_v+16
	.byte	W02
	.byte		c_v+18
	.byte	W03
	.byte		c_v+20
	.byte	W04
	.byte		c_v+18
	.byte	W01
	.byte		c_v+17
	.byte	W02
	.byte		c_v+14
	.byte	W02
	.byte		c_v+11
	.byte	W01
	.byte		c_v+8
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v+3
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v-3
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-10
	.byte	W03
	.byte		c_v-12
	.byte	W08
	.byte		c_v
	.byte	FINE

	.align 2
	.global song149
song149:	@ 0x081889B8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song149_1		@ track
