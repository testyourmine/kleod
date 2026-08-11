	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song050_1
song050_1:	@ 0x081761A8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 29
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N05	, En3, v127
	.byte	W05
	.byte		N05	
	.byte	W07
	.byte			Bn3
	.byte	W06
	.byte		N24	, Fs3
	.byte	W24
	.byte	FINE

	.align 2
	.global song050
song050:	@ 0x081761C0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song050_1		@ track
