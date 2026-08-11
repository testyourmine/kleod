	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song137_1
song137_1:	@ 0x0817B76C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 28
	.byte	PAN	, c_v
	.byte	VOL	, v090
	.byte		N03	, As3, v127
	.byte	W03
	.byte		N01	, Dn4
	.byte	W01
	.byte		N02	, Ds4
	.byte	W02
	.byte	FINE

	.align 2
	.global song137
song137:	@ 0x0817B784
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song137_1		@ track
