	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song065_1
song065_1:	@ 0x08176454
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 15
	.byte	BENDR	, 34
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte	W03
	.byte	BEND	, c_v-40
	.byte	W01
	.byte		N60	, Cn7, v127
	.byte	W01
	.byte	BEND	, c_v-41
	.byte	W02
	.byte		c_v-32
	.byte	W01
	.byte		c_v-23
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v
	.byte	W54
	.byte	W01
	.byte	FINE

	.align 2
	.global song065
song065:	@ 0x08176478
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song065_1		@ track
