	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song136_1
song136_1:	@ 0x0817B6C8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 50
	.byte	MODT	, 0
	.byte	BENDR	, 18
	.byte	PAN	, c_v
	.byte	VOL	, v094
	.byte	MOD	, 127
	.byte	BEND	, c_v-54
	.byte		N05	, Cn4, v127
	.byte	W01
	.byte	BEND	, c_v-52
	.byte	W04
	.byte		c_v-48
	.byte	W01
	.byte		c_v-46
	.byte		N05	, Dn4
	.byte	W04
	.byte	BEND	, c_v-42
	.byte	W01
	.byte		c_v-40
	.byte		N05	, Fn4, v100
	.byte	W01
	.byte	BEND	, c_v-38
	.byte	W02
	.byte		c_v-35
	.byte	W03
	.byte		c_v-32
	.byte	W03
	.byte		c_v-28
	.byte	W02
	.byte		c_v-25
	.byte		N05	, Cn4, v127
	.byte	W03
	.byte	BEND	, c_v-22
	.byte	W01
	.byte		c_v-20
	.byte	W02
	.byte		c_v-18
	.byte		N05	, Dn4
	.byte	W03
	.byte	BEND	, c_v-16
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		N05	, Fn4, v100
	.byte	W01
	.byte	BEND	, c_v-12
	.byte	W03
	.byte		c_v-9
	.byte	W03
	.byte		c_v-6
	.byte	W02
	.byte		c_v-4
	.byte	W02
	.byte		c_v-2
	.byte		N05	, Cn4, v127
	.byte	W02
	.byte	BEND	, c_v
	.byte	W03
	.byte		c_v+2
	.byte	W01
	.byte		N05	, Dn4
	.byte	W01
	.byte	BEND	, c_v+4
	.byte	W02
	.byte		c_v+6
	.byte	W02
	.byte		c_v+8
	.byte		N05	, Fn4, v100
	.byte	W06
	.byte	BEND	, c_v+10
	.byte	W05
	.byte		c_v+12
	.byte		N05	, Cn4
	.byte	W06
	.byte			Dn4
	.byte	W05
	.byte			Fn4, v072
	.byte	W07
	.byte	BEND	, c_v+10
	.byte		N05	, Cn4, v056
	.byte	W06
	.byte			Dn4
	.byte	W05
	.byte			Fn4, v028
	.byte	W01
	.byte	BEND	, c_v+8
	.byte	W04
	.byte		c_v+6
	.byte	W01
	.byte		N05	, Cn4
	.byte	W03
	.byte	BEND	, c_v+4
	.byte	W02
	.byte		c_v+2
	.byte	W01
	.byte		N05	, Dn4
	.byte	W02
	.byte	BEND	, c_v
	.byte	W03
	.byte		N05	, Fn4, v020
	.byte	W14
	.byte	MOD	, 0
	.byte	FINE

	.align 2
	.global song136
song136:	@ 0x0817B760
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song136_1		@ track
