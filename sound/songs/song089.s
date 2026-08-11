	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song089_1
song089_1:	@ 0x08176980
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 35
	.byte	PAN	, c_v
	.byte	VOL	, v077
	.byte		N04	, Gn2, v127
	.byte	W04
	.byte	VOICE	, 23
	.byte	VOL	, v127
	.byte	PAN	, c_v
	.byte	MODT	, 0
	.byte		N12	, Dn4
	.byte	W01
	.byte	MOD	, 64
	.byte	W11
	.byte		0
	.byte	FINE

	.align 2
	.global song089
song089:	@ 0x081769A0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song089_1		@ track
