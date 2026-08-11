	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song120_1
song120_1:	@ 0x0817710C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 65
	.byte	VOICE	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N06	, Dn4, v088
	.byte	W06
	.byte		N08	, Gn4, v127
	.byte	W08
	.byte	FINE

	@********************** Track  2 **********************@

	.global song120_2
song120_2:	@ 0x0817711F
	.byte	KEYSH	, 0
	.byte	VOICE	, 51
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte	W09
	.byte		N24	, Cn6, v060
	.byte	W06
	.byte	MOD	, 12
	.byte	W24
	.byte	W01
	.byte		0
	.byte	FINE

	.align 2
	.global song120
song120:	@ 0x08177134
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song120_1		@ track
	.word	song120_2		@ track
