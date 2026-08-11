	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song124_1
song124_1:	@ 0x081771D0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 70
	.byte	VOICE	, 52
	.byte	BENDR	, 16
	.byte	PAN	, c_v
	.byte	VOL	, v117
	.byte	BEND	, c_v-51
	.byte	W01
	.byte		N08	, Gn4, v127
	.byte	W01
	.byte	BEND	, c_v-60
	.byte	W01
	.byte		c_v-64
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v
	.byte	W12
	.byte		c_v-51
	.byte	W01
	.byte		N08	, Dn5
	.byte	W01
	.byte	BEND	, c_v-60
	.byte	W01
	.byte		c_v-64
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v
	.byte	W22
	.byte		c_v-51
	.byte	W01
	.byte		N08	, Gn4
	.byte	W01
	.byte	BEND	, c_v-60
	.byte	W01
	.byte		c_v-64
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v
	.byte	W12
	.byte		c_v-51
	.byte	W01
	.byte		N08	, Dn5
	.byte	W01
	.byte	BEND	, c_v-60
	.byte	W01
	.byte		c_v-64
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v
	.byte	W22
	.byte		c_v-51
	.byte	W01
	.byte		N08	, Gn4
	.byte	W01
	.byte	BEND	, c_v-60
	.byte	W01
	.byte		c_v-64
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v
	.byte	W12
	.byte		c_v-51
	.byte	W01
	.byte		N08	, Dn5
	.byte	W01
	.byte	BEND	, c_v-60
	.byte	W01
	.byte		c_v-64
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-35
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v
	.byte	W02
	.byte	FINE

	.align 2
	.global song124
song124:	@ 0x0817724C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song124_1		@ track
