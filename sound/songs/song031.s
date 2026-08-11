	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song031_1
song031_1:	@ 0x08175C20
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 15
	.byte	PAN	, c_v
	.byte	VOL	, v081
	.byte		N11	, An2, v108
	.byte	W12
	.byte			Cs3, v104
	.byte	W12
	.byte		N16	, Cs3, v100
	.byte		N16	, An3, v108
	.byte	W24
	.byte		N20	, Bn2, v104
	.byte		N20	, Gs3, v108
	.byte	W24
	.byte		N11	, Fs2
	.byte	W12
	.byte			Bn2, v112
	.byte	W12
	.byte		N16	, Fs3, v116
	.byte	W24
	.byte		N24	, Bn2, v112
	.byte		N24	, En3, v116
	.byte	W24
	.byte	FINE

	@********************** Track  2 **********************@

	.global song031_2
song031_2:	@ 0x08175C51
	.byte	KEYSH	, 0
	.byte	VOICE	, 5
	.byte	MODT	, 0
	.byte	PAN	, c_v+10
	.byte	VOL	, v074
	.byte		N22	, En3, v096
	.byte	W24
	.byte		N12	, Gs3, v100
	.byte	W24
	.byte		N22	, Bn3, v104
	.byte	W12
	.byte	MOD	, 2
	.byte	W11
	.byte		0
	.byte	W01
	.byte		N22	, An3
	.byte	W24
	.byte		N08	, Bn3
	.byte	W12
	.byte		N12	, Ds4, v100
	.byte	W12
	.byte		N24	, En4, v108
	.byte	W12
	.byte	MOD	, 2
	.byte	W12
	.byte		0
	.byte	FINE

	@********************** Track  3 **********************@

	.global song031_3
song031_3:	@ 0x08175C7F
	.byte	KEYSH	, 0
	.byte	VOICE	, 5
	.byte	TUNE	, c_v-10
	.byte	MODT	, 0
	.byte	PAN	, c_v-10
	.byte	VOL	, v035
	.byte	W08
	.byte		N22	, En3, v096
	.byte	W24
	.byte		N12	, Gs3, v100
	.byte	W24
	.byte		N22	, Bn3, v104
	.byte	W12
	.byte	MOD	, 2
	.byte	W04
	.byte	W07
	.byte		0
	.byte	W01
	.byte		N22	, An3
	.byte	W24
	.byte		N08	, Bn3
	.byte	W12
	.byte		N12	, Ds4, v100
	.byte	W12
	.byte		N24	, En4, v108
	.byte	W12
	.byte	MOD	, 2
	.byte	W04
	.byte	W08
	.byte		0
	.byte	FINE

	.align 2
	.global song031
song031:	@ 0x08175CB4
	.byte	3		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup002		@ voicegroup/tone

	.word	song031_1		@ track
	.word	song031_2		@ track
	.word	song031_3		@ track
