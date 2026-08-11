	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song014_1
song014_1:	@ 0x08171714
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 42
	.byte	PAN	, c_v+30
	.byte	VOL	, v097
	.byte		N06	, As3, v100
	.byte	W12
	.byte		N12	
	.byte	W60
song014_1_1:
	.byte		N06	, As3, v100
	.byte	W12
	.byte		N12	
	.byte	W60
	.byte	PEND
	.byte	PATT	
		.word	song014_1_1
	.byte	PATT	
		.word	song014_1_1
song014_1_2:
	.byte		N06	, As3, v100
	.byte	W12
	.byte		N06	
	.byte	W36
	.byte		N18	, Bn3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song014_1_2
	.byte		N06	, As3, v100
	.byte	W12
	.byte		N06	
	.byte	W36
	.byte		N18	
	.byte	W24
	.byte	PATT	
		.word	song014_1_2
	.byte	PATT	
		.word	song014_1_1
	.byte	GOTO	
		.word	song014_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song014_2
song014_2:	@ 0x0817175C
	.byte	KEYSH	, 0
	.byte	VOICE	, 41
	.byte	PAN	, c_v+10
	.byte	VOL	, v097
	.byte		N06	, Bn1, v100
	.byte		N06	, Ds2
	.byte		N06	, Fs2
	.byte	W12
	.byte		N12	, Bn1
	.byte		N12	, Ds2
	.byte		N12	, Fs2
	.byte	W60
song014_2_1:
	.byte		N06	, Bn1, v100
	.byte		N06	, Ds2
	.byte		N06	, Fs2
	.byte	W12
	.byte		N12	, Bn1
	.byte		N12	, Ds2
	.byte		N12	, Fs2
	.byte	W60
	.byte	PEND
	.byte	PATT	
		.word	song014_2_1
	.byte	PATT	
		.word	song014_2_1
song014_2_2:
	.byte		N05	, Bn1, v100
	.byte		N05	, Ds2
	.byte		N05	, Fs2
	.byte	W12
	.byte			Bn1
	.byte		N05	, Ds2
	.byte		N05	, Fs2
	.byte	W36
	.byte		N18	, Cn2
	.byte		N18	, En2
	.byte		N18	, Gn2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song014_2_2
	.byte		N05	, Bn1, v100
	.byte		N05	, Ds2
	.byte		N05	, Fs2
	.byte	W12
	.byte			Bn1
	.byte		N05	, Ds2
	.byte		N05	, Fs2
	.byte	W36
	.byte		N18	, Cn2
	.byte		N18	, Ds2
	.byte		N18	, Gn2
	.byte	W24
	.byte	PATT	
		.word	song014_2_2
	.byte	PATT	
		.word	song014_2_1
	.byte	GOTO	
		.word	song014_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song014_3
song014_3:	@ 0x081717CD
	.byte	KEYSH	, 0
	.byte	VOICE	, 45
	.byte	PAN	, c_v
	.byte	VOL	, v081
	.byte		N24	, Gs1, v100
	.byte	W72
song014_3_2:
	.byte		N24	, Gs1, v100
	.byte	W72
	.byte		N24	
	.byte	W72
	.byte		N24	
	.byte	W72
song014_3_1:
	.byte		N18	, Gs1, v100
	.byte	W24
	.byte			En1
	.byte	W24
	.byte			An1
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song014_3_1
	.byte		N18	, Gs1, v100
	.byte	W24
	.byte			En1
	.byte	W24
	.byte			Gn1
	.byte	W24
	.byte	PATT	
		.word	song014_3_1
	.byte		N18	, Gs1, v100
	.byte	W72
	.byte	GOTO	
		.word	song014_3_2
	.byte	FINE

	@********************** Track  4 **********************@

	.global song014_4
song014_4:	@ 0x08171806
	.byte	KEYSH	, 0
	.byte	VOICE	, 43
	.byte	PAN	, c_v-10
	.byte	VOL	, v097
	.byte	W48
	.byte		N03	, Bn2, v040
	.byte	W03
	.byte			Ds3, v044
	.byte	W03
	.byte			Fs3, v052
	.byte	W03
	.byte			As3, v060
	.byte	W03
	.byte			Bn3, v068
	.byte	W03
	.byte			Ds4, v080
	.byte	W03
	.byte			Fs4, v096
	.byte	W03
	.byte		N06	, As4, v112
	.byte	W03
song014_4_2:
	.byte	W72
	.byte	W48
	.byte		N03	, Bn2, v040
	.byte	W03
	.byte			Ds3, v044
	.byte	W03
	.byte			Fs3, v052
	.byte	W03
	.byte			As3, v060
	.byte	W03
	.byte			Bn3, v068
	.byte	W03
	.byte			Ds4, v080
	.byte	W03
	.byte			Fs4, v096
	.byte	W03
	.byte		N06	, As4, v112
	.byte	W03
song014_4_1:
	.byte	W48
	.byte		N03	, Gs4, v064
	.byte	W03
	.byte			Bn4
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Fs5
	.byte	W03
	.byte			As5
	.byte	W03
	.byte			Fs5
	.byte	W03
	.byte			Ds5
	.byte	W03
	.byte			Bn4
	.byte	W03
	.byte	PEND
	.byte		N48	, As4, v040
	.byte	W72
	.byte	PATT	
		.word	song014_4_1
	.byte		N48	, As4, v040
	.byte	W72
	.byte	PATT	
		.word	song014_4_1
	.byte		N24	, As4, v040
	.byte	W72
	.byte	GOTO	
		.word	song014_4_2
	.byte	FINE

	@********************** Track  5 **********************@

	.global song014_5
song014_5:	@ 0x08171875
	.byte	KEYSH	, 0
	.byte	VOICE	, 44
	.byte	PAN	, c_v
	.byte	VOL	, v076
	.byte		N02	, Cs1, v120
	.byte	W03
	.byte			Cs1, v088
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v072
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte		N05	, Cs1, v088
	.byte	W12
	.byte			Cs1, v096
	.byte	W12
	.byte		N18	, Cn1, v127
	.byte	W24
song014_5_1:
	.byte		N02	, Cs1, v120
	.byte	W03
	.byte			Cs1, v088
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v072
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte		N05	, Cs1, v088
	.byte	W12
	.byte			Cs1, v080
	.byte	W12
	.byte		N36	, Dn1, v100
	.byte	W08
	.byte		N05	, Cs1, v076
	.byte	W08
	.byte			Cs1, v092
	.byte	W08
	.byte		N02	, Cs1, v120
	.byte	W03
	.byte			Cs1, v088
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v072
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte		N05	, Cs1, v088
	.byte	W12
	.byte			Cs1, v080
	.byte	W12
	.byte		N24	, Cn1, v127
	.byte	W24
	.byte		N02	, Cs1, v120
	.byte	W03
	.byte			Cs1, v088
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v072
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte		N05	, Cs1, v088
	.byte	W12
	.byte			Cs1, v080
	.byte	W12
	.byte			Cs1, v088
	.byte	W06
	.byte			Cs1, v076
	.byte	W06
	.byte			Cs1, v072
	.byte	W06
	.byte			Cs1, v080
	.byte	W06
	.byte		N02	, Cs1, v120
	.byte	W03
	.byte			Cs1, v088
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v072
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte		N05	, Cs1, v088
	.byte	W06
	.byte			Cs1, v096
	.byte	W06
	.byte			Cs1, v076
	.byte	W06
	.byte			Cs1, v080
	.byte	W06
	.byte		N36	, Dn1, v100
	.byte	W12
	.byte		N05	, Cs1, v076
	.byte	W06
	.byte			Cs1, v096
	.byte	W06
	.byte		N02	, Cs1, v120
	.byte	W03
	.byte			Cs1, v088
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v072
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte		N05	, Cs1, v088
	.byte	W06
	.byte			Cs1, v096
	.byte	W06
	.byte			Cs1, v076
	.byte	W06
	.byte			Cs1, v080
	.byte	W06
	.byte		N24	, Dn1, v100
	.byte	W12
	.byte		N12	, Cn1, v108
	.byte	W12
	.byte			Cn1, v127
	.byte	W06
	.byte		N02	, Cs1, v096
	.byte	W03
	.byte			Cs1, v092
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v072
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte		N05	, Cs1, v080
	.byte	W06
	.byte			Cs1, v096
	.byte	W06
	.byte			Cs1, v076
	.byte	W06
	.byte			Cs1, v080
	.byte	W06
	.byte		N36	, Dn1, v100
	.byte	W12
	.byte		N05	, Cs1, v096
	.byte	W06
	.byte			Cs1, v076
	.byte	W06
	.byte		N02	, Cs1, v120
	.byte	W03
	.byte			Cs1, v088
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v072
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte		N23	, Dn1, v100
	.byte	W06
	.byte		N05	, Cs1, v096
	.byte	W06
	.byte			Cs1, v076
	.byte	W06
	.byte			Cs1, v080
	.byte	W06
	.byte		N32	, Dn1, v100
	.byte	W08
	.byte		N05	, Cs1, v080
	.byte	W08
	.byte		N05	
	.byte	W08
	.byte		N12	, Cn1, v127
	.byte	W12
	.byte		N02	, Cs1, v080
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte		N02	
	.byte	W03
	.byte		N05	
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N24	, Cn1, v127
	.byte	W24
	.byte	GOTO	
		.word	song014_5_1
	.byte	FINE

	.align 2
	.global song014
song014:	@ 0x081719F0
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	153		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song014_1		@ track
	.word	song014_2		@ track
	.word	song014_3		@ track
	.word	song014_4		@ track
	.word	song014_5		@ track
