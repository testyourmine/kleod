	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song123_1
song123_1:	@ 0x08177198
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 8
	.byte	PAN	, c_v
	.byte	VOL	, v117
	.byte		N02	, An3, v127
	.byte	W02
	.byte			Dn4
	.byte	W02
	.byte			En4
	.byte	W02
	.byte		N03	, Gn4
	.byte	W03
	.byte		N02	, An3, v068
	.byte	W02
	.byte			Dn4
	.byte	W02
	.byte			En4
	.byte	W02
	.byte		N03	, Gn4
	.byte	W03
	.byte		N02	, An3, v028
	.byte	W02
	.byte			Dn4
	.byte	W02
	.byte			En4
	.byte	W02
	.byte		N03	, Gn4
	.byte	W03
	.byte	FINE

	.align 2
	.global song123
song123:	@ 0x081771C4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song123_1		@ track
