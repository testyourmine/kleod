	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song110_1
song110_1:	@ 0x08176E50
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 36
	.byte	BENDR	, 32
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte		N03	, An2, v127
	.byte	W03
	.byte			En3, v068
	.byte	W03
	.byte			An2, v127
	.byte	W03
	.byte			En3, v068
	.byte	W03
	.byte			An2, v127
	.byte	W03
	.byte			En3, v068
	.byte	W03
	.byte			An2, v127
	.byte	W03
	.byte	BEND	, c_v-29
	.byte		N04	, Gn3
	.byte	W01
	.byte	BEND	, c_v-28
	.byte	W02
	.byte		c_v-26
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		N04	, Dn4
	.byte	W02
	.byte	BEND	, c_v-22
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		N04	, Gn3, v100
	.byte	W01
	.byte	BEND	, c_v-16
	.byte	W02
	.byte		c_v-15
	.byte	W02
	.byte		N04	, Dn4
	.byte	W02
	.byte	BEND	, c_v-12
	.byte	W02
	.byte		c_v-10
	.byte	W01
	.byte		N04	, Gn3, v068
	.byte	W02
	.byte	BEND	, c_v-8
	.byte	W03
	.byte		N04	, Dn4
	.byte	W01
	.byte	BEND	, c_v-7
	.byte	W02
	.byte		c_v-6
	.byte	W02
	.byte		N04	, Gn3, v040
	.byte	W01
	.byte	BEND	, c_v-4
	.byte	W04
	.byte		N04	, Dn4
	.byte	W02
	.byte	BEND	, c_v-2
	.byte	W05
	.byte		c_v
	.byte	FINE

	.align 2
	.global song110
song110:	@ 0x08176EB8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song110_1		@ track
