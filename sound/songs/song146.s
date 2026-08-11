	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song146_1
song146_1:	@ 0x081888BC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 67
	.byte	VOICE	, 57
	.byte	PAN	, c_v
	.byte	VOL	, v122
	.byte		N06	, An4, v100
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte		N18	, En4
	.byte	W18
	.byte		N09	, An4
	.byte	W10
	.byte			An4, v060
	.byte	W10
	.byte		N16	, An4, v032
	.byte	W16
	.byte	FINE

	.align 2
	.global song146
song146:	@ 0x081888DC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song146_1		@ track
