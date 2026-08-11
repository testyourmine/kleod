	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song059_1
song059_1:	@ 0x0817634C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 10
	.byte	BENDR	, 34
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte		N03	, An3, v084
	.byte	W03
	.byte			Cn4, v088
	.byte	W03
	.byte			Dn4
	.byte	W05
	.byte			Cn4, v036
	.byte	W03
	.byte			Cn5
	.byte	W05
	.byte			Cn4, v016
	.byte	W04
	.byte			Cn5
	.byte	W03
	.byte	FINE

	.align 2
	.global song059
song059:	@ 0x0817636C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song059_1		@ track
