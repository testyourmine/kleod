	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song097_1
song097_1:	@ 0x08176B5C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 12
	.byte	BENDR	, 32
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N06	, Dn2, v127
	.byte	W07
	.byte		N10	, Ds2
	.byte	W10
	.byte		N04	, Dn2
	.byte	W04
	.byte		N20	, Cn2
	.byte	W10
	.byte	VOL	, v094
	.byte	W01
	.byte		v086
	.byte	W01
	.byte		v078
	.byte	W01
	.byte		v068
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v046
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v030
	.byte	W01
	.byte		v020
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v002
	.byte	FINE

	.align 2
	.global song097
song097:	@ 0x08176B8C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song097_1		@ track
