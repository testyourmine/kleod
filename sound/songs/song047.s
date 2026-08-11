	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song047_1
song047_1:	@ 0x081760FC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 7
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte	BEND	, c_v-51
	.byte	W01
	.byte		N08	, Gs4, v127
	.byte	W01
	.byte	BEND	, c_v-33
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v
	.byte	W09
	.byte		c_v-51
	.byte	W01
	.byte		N08	
	.byte	W01
	.byte	BEND	, c_v-33
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v
	.byte	W10
	.byte		c_v-51
	.byte	W01
	.byte		N08	
	.byte	W01
	.byte	BEND	, c_v-33
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v
	.byte	W09
	.byte		c_v-51
	.byte	W01
	.byte		N08	
	.byte	W01
	.byte	BEND	, c_v-33
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte	FINE

	.align 2
	.global song047
song047:	@ 0x08176158
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	6		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song047_1		@ track
