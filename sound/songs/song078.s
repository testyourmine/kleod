	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song078_1
song078_1:	@ 0x0817678C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 19
	.byte	BENDR	, 32
	.byte	PAN	, c_v
	.byte	VOL	, v064
	.byte	W02
	.byte	BEND	, c_v-54
	.byte		N24	, As4, v127
	.byte	W07
	.byte	BEND	, c_v-48
	.byte	W01
	.byte		c_v-41
	.byte	W01
	.byte		c_v-38
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-11
	.byte	W02
	.byte		c_v-10
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v
	.byte	W03
	.byte		N07	, As4, v100
	.byte	W09
	.byte			As4, v060
	.byte	W09
	.byte			As4, v028
	.byte	W07
	.byte	FINE

	.align 2
	.global song078
song078:	@ 0x081767D0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song078_1		@ track
