	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song057_1
song057_1:	@ 0x081762BC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 13
	.byte	BENDR	, 15
	.byte	PAN	, c_v
	.byte	VOL	, v097
	.byte	W02
	.byte	BEND	, c_v+63
	.byte	W01
	.byte		N44	, En2, v127
	.byte	W06
	.byte	BEND	, c_v+62
	.byte	W01
	.byte		c_v+57
	.byte	W01
	.byte		c_v+53
	.byte	W01
	.byte		c_v+52
	.byte	W01
	.byte		c_v+51
	.byte	W01
	.byte		c_v+49
	.byte	W01
	.byte		c_v+47
	.byte	W01
	.byte		c_v+45
	.byte	W01
	.byte		c_v+42
	.byte	W01
	.byte		c_v+42
	.byte	W01
	.byte		c_v+41
	.byte	W01
	.byte		c_v+40
	.byte	W01
	.byte		c_v+39
	.byte	W02
	.byte		c_v+38
	.byte	W01
	.byte		c_v+38
	.byte	W01
	.byte		c_v+37
	.byte	W01
	.byte		c_v+37
	.byte	W01
	.byte		c_v+36
	.byte	W01
	.byte		c_v+35
	.byte	W01
	.byte		c_v+34
	.byte	W01
	.byte		c_v+33
	.byte	W01
	.byte		c_v+31
	.byte	W01
	.byte		c_v+29
	.byte	W01
	.byte		c_v+26
	.byte	W02
	.byte		c_v+25
	.byte	W02
	.byte		c_v+22
	.byte	W01
	.byte		c_v+21
	.byte	W02
	.byte		c_v+20
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+16
	.byte	W01
	.byte		c_v+16
	.byte	W01
	.byte		c_v+14
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+8
	.byte	W01
	.byte		c_v+8
	.byte	W02
	.byte		c_v+4
	.byte	W02
	.byte		c_v
	.byte	FINE

	.align 2
	.global song057
song057:	@ 0x08176320
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song057_1		@ track
