	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song001_1
song001_1:	@ 0x0816CB28
	.byte	KEYSH	, 0
	.byte	TEMPO	, 62
	.byte	VOICE	, 5
	.byte	PAN	, c_v+15
	.byte	VOL	, v081
	.byte	W04
	.byte		N19	, Fs4, v112
	.byte	W68
	.byte	TEMPO	, 59
	.byte	W04
	.byte			En4, v096
	.byte	W68
	.byte	TEMPO	, 56
	.byte	W04
	.byte			En4, v088
	.byte	W66
	.byte	W01
	.byte	MOD	, 4
	.byte	W01
	.byte	TEMPO	, 52
	.byte		N84	, Ds4, v100
	.byte	W72
	.byte	W13
	.byte	FINE

	@********************** Track  2 **********************@

	.global song001_2
song001_2:	@ 0x0816CB4F
	.byte	KEYSH	, 0
	.byte	VOICE	, 5
	.byte	PAN	, c_v
	.byte	VOL	, v081
	.byte		N23	, Bn3, v088
	.byte		N23	, Ds4, v108
	.byte	W24
	.byte			Bn3, v100
	.byte	W24
	.byte			Ds4, v084
	.byte	W24
	.byte			Bn3, v088
	.byte		N23	, Cs4, v108
	.byte	W24
	.byte			Cs4, v092
	.byte	W24
	.byte			Ds4, v084
	.byte	W24
	.byte		N20	, Bn3, v092
	.byte	W24
	.byte		N23	, Cs4, v072
	.byte	W24
	.byte			An3, v088
	.byte	W23
	.byte	MOD	, 4
	.byte	W01
	.byte		N84	, Gn3, v092
	.byte	W72
	.byte	W13
	.byte	FINE

	@********************** Track  3 **********************@

	.global song001_3
song001_3:	@ 0x0816CB84
	.byte	KEYSH	, 0
	.byte	VOICE	, 5
	.byte	PAN	, c_v-15
	.byte	VOL	, v081
	.byte		N68	, Ds3, v084
	.byte	W72
	.byte			Dn3, v088
	.byte	W72
	.byte			Cs3, v084
	.byte	W68
	.byte	W03
	.byte	MOD	, 4
	.byte	W01
	.byte		N84	, Bn2
	.byte	W72
	.byte	W13
	.byte	FINE

	@********************** Track  4 **********************@

	.global song001_4
song001_4:	@ 0x0816CB9F
	.byte	KEYSH	, 0
	.byte	VOICE	, 87
	.byte	PAN	, c_v+15
	.byte	VOL	, v081
	.byte	W11
	.byte	PAN	, c_v-30
	.byte	W01
	.byte		N14	, Fs4, v056
	.byte	W23
	.byte	PAN	, c_v+30
	.byte	W01
	.byte		N14	, Fs4, v024
	.byte	W36
song001_4_1:
	.byte	W11
	.byte	PAN	, c_v-30
	.byte	W01
	.byte		N14	, En4, v056
	.byte	W23
	.byte	PAN	, c_v+30
	.byte	W01
	.byte		N14	, En4, v024
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song001_4_1
	.byte	FINE

	.align 2
	.global song001
song001:	@ 0x0816CBCC
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	168		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song001_1		@ track
	.word	song001_2		@ track
	.word	song001_3		@ track
	.word	song001_4		@ track
