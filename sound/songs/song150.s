	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song150_1
song150_1:	@ 0x081889C4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 58
	.byte	MODT	, 0
	.byte	BENDR	, 24
	.byte	PAN	, c_v
	.byte	VOL	, v060
	.byte		N48	, Cn3, v080
	.byte	W01
	.byte	MOD	, 0
	.byte	W03
	.byte	BEND	, c_v
	.byte	W01
	.byte		c_v+2
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v+6
	.byte	W02
	.byte		c_v+8
	.byte	W01
	.byte		c_v+12
	.byte	W02
	.byte		c_v+14
	.byte	W02
	.byte		c_v+17
	.byte	W02
	.byte		c_v+21
	.byte	W01
	.byte		c_v+24
	.byte	W02
	.byte		c_v+28
	.byte	W02
	.byte		c_v+32
	.byte	W03
	.byte		c_v+37
	.byte	W04
	.byte		c_v+32
	.byte	W02
	.byte		c_v+27
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte		c_v+23
	.byte	W01
	.byte		c_v+21
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+16
	.byte	W01
	.byte		c_v+13
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v+3
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v-3
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-18
	.byte	W09
	.byte		c_v
	.byte	FINE

	.align 2
	.global song150
song150:	@ 0x08188A1C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song150_1		@ track
