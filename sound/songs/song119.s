	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song119_1
song119_1:	@ 0x081770D4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 40
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v070
	.byte		N02	, Gn4, v088
	.byte	W05
	.byte		N04	, Dn4, v100
	.byte	W06
	.byte		N05	, Gn3, v127
	.byte	W05
	.byte	MOD	, 127
	.byte	W01
	.byte		TIE	, Fs3, v108
	.byte	W07
song119_1_1:
	.byte	W72
	.byte	W84
	.byte	GOTO	
		.word	song119_1_1
	.byte	W09
	.byte		EOT	, Fs3
	.byte	FINE

	.align 2
	.global song119
song119:	@ 0x08177100
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song119_1		@ track
