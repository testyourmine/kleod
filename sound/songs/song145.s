	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song145_1
song145_1:	@ 0x08188880
	.byte	KEYSH	, 0
	.byte	TEMPO	, 67
	.byte	VOICE	, 37
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte		N04	, Cn5, v080
	.byte	W04
	.byte			Dn5, v112
	.byte	W04
	.byte			Cn5, v080
	.byte	W04
	.byte			Dn5, v112
	.byte	W04
	.byte			Cn5, v080
	.byte	W04
	.byte			Dn5, v112
	.byte	W04
	.byte			Gn5
	.byte	W04
	.byte			En5
	.byte	W04
	.byte			Cn5
	.byte	W04
	.byte			Gn5
	.byte	W05
	.byte		N05	, En5
	.byte	W05
	.byte			En5, v072
	.byte	W05
	.byte			En5, v032
	.byte	W05
	.byte	FINE

	.align 2
	.global song145
song145:	@ 0x081888B0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song145_1		@ track
