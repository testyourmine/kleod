	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song018_1
song018_1:	@ 0x08172240
	.byte	KEYSH	, 0
song018_1_1:
	.byte	TEMPO	, 40
	.byte	VOICE	, 87
	.byte	PAN	, c_v
	.byte	VOL	, v081
	.byte		N44	, An3, v092
	.byte	W48
	.byte		N48	, Fs4
	.byte	W48
	.byte		N44	, Gn4
	.byte	W48
	.byte		N23	, Dn4
	.byte	W24
	.byte			En4
	.byte	W24
	.byte	W24
	.byte			Fs4
	.byte	W24
	.byte			En4
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte		N44	, Fs3
	.byte		N44	, An3
	.byte	W48
	.byte		N48	, Fs4
	.byte		N92	, An4
	.byte	W48
	.byte		N44	, Gn4
	.byte	W48
	.byte		N24	, Dn4
	.byte		N48	, Gn4
	.byte	W24
	.byte		N23	, En4
	.byte	W24
	.byte	W24
	.byte		N22	, Dn4
	.byte		N22	, Fs4
	.byte	W24
	.byte			Cs4
	.byte		N22	, En4
	.byte	W24
	.byte			Bn3
	.byte		N22	, Dn4
	.byte	W24
	.byte			As3
	.byte		N22	, Cs4
	.byte	W24
	.byte			An3
	.byte		N22	, Cn4
	.byte	W24
	.byte		N44	, Gn3
	.byte		N44	, As3
	.byte	W48
	.byte	GOTO	
		.word	song018_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song018_2
song018_2:	@ 0x0817229E
	.byte	KEYSH	, 0
song018_2_1:
	.byte	VOICE	, 90
	.byte	PAN	, c_v-15
	.byte	VOL	, v089
	.byte		N04	, Dn2, v080
	.byte	W04
	.byte			An2
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			Dn2
	.byte	W04
	.byte			An2
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			Dn2
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			Gn3
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			Gn3
	.byte	W04
	.byte			Bn3
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Fs2
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Cs4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Cs5
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Cs4
	.byte	W04
	.byte			Fs2
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Cs4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Cs5
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Fs5
	.byte	W04
	.byte			Cs5
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			Gn3
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			Gn3
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Gn5
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Dn2
	.byte	W04
	.byte			An2
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			An2
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			An4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Dn2
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			Gn3
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			Gn3
	.byte	W04
	.byte			Bn3
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Gn5
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			Bn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Fs2
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Cs4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Cs5
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Cs4
	.byte	W04
	.byte			As2
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			Cs4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Cs5
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			Fs5
	.byte	W04
	.byte			Cs5
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Gn2
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			Gn3
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Dn5
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			As4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte		N11	, As4
	.byte	W01
	.byte		N09	, Dn5
	.byte	W02
	.byte		N08	, Gn5
	.byte	W09
	.byte		N11	, Gn4
	.byte	W01
	.byte		N09	, As4
	.byte	W02
	.byte		N08	, Dn5
	.byte	W09
	.byte		N11	, Dn4
	.byte	W01
	.byte		N09	, Gn4
	.byte	W02
	.byte		N08	, As4
	.byte	W09
	.byte		N11	, As3
	.byte	W01
	.byte		N09	, Dn4
	.byte	W02
	.byte		N08	, Gn4
	.byte	W09
	.byte	GOTO	
		.word	song018_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song018_3
song018_3:	@ 0x0817243A
	.byte	KEYSH	, 0
song018_3_1:
	.byte	VOICE	, 88
	.byte	PAN	, c_v-15
	.byte	VOL	, v081
	.byte		N92	, Fs3, v080
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte			Fs3
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte			Fs3
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte			Fs3
	.byte	W96
	.byte			Gn3
	.byte	W96
	.byte	GOTO	
		.word	song018_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song018_4
song018_4:	@ 0x0817245A
	.byte	KEYSH	, 0
song018_4_1:
	.byte	VOICE	, 89
	.byte	PAN	, c_v-15
	.byte	VOL	, v030
	.byte		N92	, Dn3, v080
	.byte	W96
	.byte		N92	
	.byte	W96
	.byte			Cs3
	.byte	W96
	.byte			Dn3
	.byte	W96
	.byte		N92	
	.byte	W96
	.byte			En3
	.byte	W96
	.byte			Cs3
	.byte	W96
	.byte			Dn3
	.byte	W96
	.byte	GOTO	
		.word	song018_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song018_5
song018_5:	@ 0x0817247A
	.byte	KEYSH	, 0
song018_5_1:
	.byte	VOICE	, 88
	.byte	PAN	, c_v-5
	.byte	VOL	, v089
	.byte		N92	, An2, v080
	.byte	W96
	.byte			Bn2
	.byte	W96
	.byte			An2
	.byte	W96
	.byte			Bn2
	.byte	W96
	.byte			An2
	.byte	W96
	.byte			Bn2
	.byte	W96
	.byte			As2
	.byte	W96
	.byte		N92	
	.byte	W96
	.byte	GOTO	
		.word	song018_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song018_6
song018_6:	@ 0x0817249A
	.byte	KEYSH	, 0
song018_6_1:
	.byte	VOICE	, 92
	.byte	PAN	, c_v+5
	.byte	VOL	, v047
	.byte		N96	, Dn1, v080
	.byte	W96
	.byte		N92	, En1
	.byte	W96
	.byte			Fs1
	.byte	W96
	.byte			Gn1
	.byte	W96
	.byte			Dn1
	.byte	W96
	.byte			En1
	.byte	W96
	.byte			Fs1
	.byte	W96
	.byte			Gn1
	.byte	W96
	.byte	GOTO	
		.word	song018_6_1
	.byte	FINE

	.align 2
	.global song018
song018:	@ 0x081724BC
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	153		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song018_1		@ track
	.word	song018_2		@ track
	.word	song018_3		@ track
	.word	song018_4		@ track
	.word	song018_5		@ track
	.word	song018_6		@ track
