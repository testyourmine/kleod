	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song111_1
song111_1:	@ 0x08176EC4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 80
	.byte	VOICE	, 40
	.byte	BENDR	, 16
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte	BEND	, c_v-46
	.byte		N36	, An3, v127
	.byte	W02
	.byte	BEND	, c_v-44
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-43
	.byte	W01
	.byte		c_v-43
	.byte	W01
	.byte		c_v-42
	.byte	W01
	.byte		c_v-40
	.byte	W01
	.byte		c_v-38
	.byte	W01
	.byte		c_v-36
	.byte	W01
	.byte		c_v-35
	.byte	W02
	.byte		c_v-32
	.byte	W02
	.byte		c_v-28
	.byte	W02
	.byte		c_v-24
	.byte	W02
	.byte		c_v-20
	.byte	W03
	.byte		c_v-14
	.byte	W02
	.byte		c_v-6
	.byte	W03
	.byte		c_v+2
	.byte	W10
	.byte		N08	, An3, v088
	.byte	W09
	.byte			An3, v060
	.byte	W09
	.byte			An3, v028
	.byte	W08
	.byte	FINE

	.align 2
	.global song111
song111:	@ 0x08176F08
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song111_1		@ track
