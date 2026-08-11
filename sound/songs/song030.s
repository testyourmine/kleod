	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song030_1
song030_1:	@ 0x08175330
	.byte	KEYSH	, 0
	.byte	TEMPO	, 80
	.byte	VOICE	, 15
	.byte	PAN	, c_v+20
	.byte	VOL	, v087
	.byte		N06	, Gn3, v100
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N06	, Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Gn4
	.byte	W06
song030_1_1:
	.byte	PAN	, c_v+20
	.byte		N06	, Gn3, v100
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N06	, Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song030_1_1
	.byte	PAN	, c_v+20
	.byte		N06	, Gn3, v100
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N06	, Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte	PAN	, c_v+30
	.byte		N06	, Gn5
	.byte	W06
	.byte		N03	, Dn5, v092
	.byte	W06
	.byte		N06	, Bn4, v084
	.byte	W12
song030_1_2:
	.byte	PAN	, c_v+20
	.byte		N06	, Gs3, v100
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N06	, Gs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song030_1_2
	.byte	PATT	
		.word	song030_1_2
	.byte	PAN	, c_v+20
	.byte		N06	, Gs3, v100
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N06	, Gs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte	PAN	, c_v
	.byte		N06	, Gs4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte	PAN	, c_v
	.byte		N06	, Cn5
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte		TIE	, Ds5, v080
	.byte	W96
	.byte	W80
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		N05	, Bn4
	.byte	W06
	.byte			As4
	.byte	W06
	.byte		TIE	, An4
	.byte	W96
	.byte	W72
	.byte	PAN	, c_v
	.byte	W04
	.byte		EOT	
	.byte	W02
	.byte		N05	, As4
	.byte	W06
	.byte	PAN	, c_v
	.byte		N05	, Cn5
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte		TIE	, Ds5
	.byte	W96
	.byte	W80
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		N05	, As4
	.byte	W06
	.byte			An4
	.byte	W06
	.byte		N80	, Gs4
	.byte	W84
	.byte		N05	, As4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte		N76	, Cs5
	.byte	W96
	.byte	PAN	, c_v+20
	.byte		N05	, Gn3, v100
	.byte	W06
	.byte		N06	, An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N06	, Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte		N05	, Gn4
	.byte	W05
	.byte	PAN	, c_v
	.byte	W01
	.byte	GOTO	
		.word	song030_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song030_2
song030_2:	@ 0x08175480
	.byte	KEYSH	, 0
	.byte	VOICE	, 15
	.byte	PAN	, c_v-20
	.byte	VOL	, v087
	.byte		N06	, Bn2, v100
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Bn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
song030_2_4:
	.byte		N06	, Bn2, v100
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Bn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N06	, Bn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Bn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N06	, Bn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Bn2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte	PAN	, c_v-30
	.byte		N06	, Bn4
	.byte	W06
	.byte		N03	, Fs4, v092
	.byte	W06
	.byte		N06	, Dn4, v084
	.byte	W12
	.byte	PAN	, c_v-20
	.byte		N06	, Cn3, v100
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte	PAN	, c_v+30
	.byte		N06	, Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Cn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
song030_2_1:
	.byte	PAN	, c_v-20
	.byte		N06	, Cn3, v100
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Cn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song030_2_1
	.byte	PAN	, c_v-20
	.byte		N06	, Cn3, v100
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Cn3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Cn4
	.byte	W12
	.byte	PAN	, c_v
	.byte	W12
	.byte	VOICE	, 14
	.byte	PAN	, c_v-20
	.byte	VOL	, v052
	.byte		N06	, Ds2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Ds2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
song030_2_3:
	.byte	PAN	, c_v-20
	.byte		N06	, Ds2, v100
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Ds2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte	PEND
song030_2_2:
	.byte	PAN	, c_v-20
	.byte		N06	, Dn2, v100
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Dn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Dn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An2
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song030_2_2
	.byte	PATT	
		.word	song030_2_3
	.byte	PATT	
		.word	song030_2_3
	.byte	PAN	, c_v-20
	.byte		N06	, Cs2, v100
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Cs2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N06	, Cs2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Cs2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Cs2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Cs4
	.byte	W12
	.byte	PAN	, c_v
	.byte	W12
	.byte	VOICE	, 15
	.byte	PAN	, c_v-40
	.byte	VOL	, v087
	.byte		N06	, Bn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Bn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte		N05	, Bn3
	.byte	W05
	.byte	PAN	, c_v
	.byte	W01
	.byte	GOTO	
		.word	song030_2_4
	.byte	FINE

	@********************** Track  3 **********************@

	.global song030_3
song030_3:	@ 0x081756A5
	.byte	KEYSH	, 0
	.byte	VOICE	, 32
	.byte	PAN	, c_v
	.byte	VOL	, v073
	.byte		N12	, Gn2, v100
	.byte	W36
	.byte			Dn2
	.byte	W12
	.byte			Gn2
	.byte	W36
	.byte			Dn2
	.byte	W12
song030_3_5:
	.byte		N12	, An2, v100
	.byte	W36
	.byte			Dn2
	.byte	W12
	.byte			Gn2
	.byte	W36
	.byte			Dn2
	.byte	W12
song030_3_4:
	.byte		N12	, Gn2, v100
	.byte	W36
	.byte			Dn2
	.byte	W12
	.byte			Gn2
	.byte	W36
	.byte			Dn2
	.byte	W12
	.byte	PEND
	.byte			An2
	.byte	W36
	.byte			Dn2
	.byte	W12
	.byte			Gn2
	.byte	W48
song030_3_1:
	.byte		N12	, Gs2, v100
	.byte	W36
	.byte			Ds2
	.byte	W12
	.byte			Gs2
	.byte	W36
	.byte			Ds2
	.byte	W12
	.byte	PEND
	.byte			As2
	.byte	W36
	.byte			Ds2
	.byte	W12
	.byte			Gs2
	.byte	W36
	.byte			Ds2
	.byte	W12
	.byte	PATT	
		.word	song030_3_1
	.byte		N12	, As2, v100
	.byte	W36
	.byte			Ds2
	.byte	W12
	.byte			Gs2
	.byte	W48
song030_3_2:
	.byte		N12	, Ds2, v100
	.byte	W24
	.byte			As2
	.byte	W24
	.byte			Ds3
	.byte	W24
	.byte			As2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song030_3_2
song030_3_3:
	.byte		N12	, Dn2, v100
	.byte	W24
	.byte			An2
	.byte	W24
	.byte			Dn3
	.byte	W24
	.byte			An2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song030_3_3
	.byte	PATT	
		.word	song030_3_2
	.byte	PATT	
		.word	song030_3_2
	.byte		N12	, Cs2, v100
	.byte	W24
	.byte			Gs2
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte			Gs2
	.byte	W24
	.byte			Cs2
	.byte	W24
	.byte			Gs2
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte		N24	, Cs2
	.byte	W24
	.byte	PATT	
		.word	song030_3_4
	.byte	GOTO	
		.word	song030_3_5
	.byte	FINE

	@********************** Track  4 **********************@

	.global song030_4
song030_4:	@ 0x0817573A
	.byte	KEYSH	, 0
	.byte	VOICE	, 16
	.byte	PAN	, c_v
	.byte	VOL	, v039
	.byte		N06	, Fs4, v120
	.byte	W06
	.byte			Fs4, v072
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Fs4, v120
	.byte	W06
	.byte			Fs4, v072
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
song030_4_1:
	.byte		N06	, Fs4, v120
	.byte	W06
	.byte			Fs4, v072
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Fs4, v120
	.byte	W06
	.byte			Fs4, v072
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song030_4_1
	.byte		N06	, Fs4, v120
	.byte	W06
	.byte			Fs4, v072
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Fs4, v120
	.byte	W06
	.byte			Fs4, v072
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N24	, An4, v120
	.byte	W24
	.byte	PATT	
		.word	song030_4_1
	.byte	PATT	
		.word	song030_4_1
	.byte	PATT	
		.word	song030_4_1
	.byte		N06	, Fs4, v120
	.byte	W06
	.byte			Fs4, v072
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Fs4, v120
	.byte	W06
	.byte			Fs4, v072
	.byte	W06
	.byte		N04	, Gs5, v127
	.byte	W04
	.byte			Gs5, v104
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N24	, An5, v127
	.byte	W24
song030_4_3:
	.byte		N24	, An4, v120
	.byte	W24
	.byte		N06	, Gs5, v080
	.byte	W06
	.byte			Gs5, v088
	.byte	W06
	.byte			Gs5, v092
	.byte	W06
	.byte			Gs5, v100
	.byte	W06
	.byte			Gs5, v120
	.byte	W06
	.byte			Gs5, v060
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Gs5, v072
	.byte	W06
	.byte			Gs5, v080
	.byte	W06
	.byte			Gs5, v088
	.byte	W06
	.byte			Gs5, v092
	.byte	W06
	.byte			Gs5, v100
	.byte	W06
	.byte	PEND
song030_4_2:
	.byte		N06	, Gs5, v120
	.byte	W06
	.byte			Gs5, v060
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Gs5, v072
	.byte	W06
	.byte			Gs5, v080
	.byte	W06
	.byte			Gs5, v088
	.byte	W06
	.byte			Gs5, v092
	.byte	W06
	.byte			Gs5, v100
	.byte	W06
	.byte		N12	, An5, v120
	.byte	W12
	.byte		N06	, Gs5, v064
	.byte	W06
	.byte			Gs5, v072
	.byte	W06
	.byte			Gs5, v080
	.byte	W06
	.byte			Gs5, v088
	.byte	W06
	.byte			Gs5, v092
	.byte	W06
	.byte			Gs5, v100
	.byte	W06
	.byte	PEND
song030_4_4:
	.byte		N06	, Gs5, v120
	.byte	W06
	.byte			Gs5, v060
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Gs5, v072
	.byte	W06
	.byte			Gs5, v080
	.byte	W06
	.byte			Gs5, v088
	.byte	W06
	.byte			Gs5, v092
	.byte	W06
	.byte			Gs5, v100
	.byte	W06
	.byte			Gs5, v120
	.byte	W06
	.byte			Gs5, v060
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Gs5, v072
	.byte	W06
	.byte			Gs5, v080
	.byte	W06
	.byte			Gs5, v088
	.byte	W06
	.byte			Gs5, v092
	.byte	W06
	.byte			Gs5, v100
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song030_4_2
	.byte	PATT	
		.word	song030_4_3
	.byte	PATT	
		.word	song030_4_2
	.byte	PATT	
		.word	song030_4_4
	.byte		N06	, Gs5, v120
	.byte	W06
	.byte			Gs5, v060
	.byte	W06
	.byte			Gs5, v064
	.byte	W06
	.byte			Gs5, v072
	.byte	W06
	.byte			Gs5, v080
	.byte	W06
	.byte			Gs5, v088
	.byte	W06
	.byte			Gs5, v092
	.byte	W06
	.byte			Gs5, v100
	.byte	W06
	.byte		N12	, An5, v120
	.byte	W12
	.byte		N06	, Gs5, v064
	.byte	W06
	.byte			Gs5, v072
	.byte	W06
	.byte		N03	, Fs4, v120
	.byte	W03
	.byte			Fs4, v064
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Fs4, v068
	.byte	W03
	.byte			Fs4, v076
	.byte	W03
	.byte			Fs4, v084
	.byte	W03
	.byte			Fs4, v096
	.byte	W03
	.byte			Fs4, v112
	.byte	W03
	.byte		N24	, An4, v120
	.byte	W24
	.byte		N06	, Fs4, v072
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Fs4, v120
	.byte	W06
	.byte			Fs4, v072
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte	GOTO	
		.word	song030_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song030_5
song030_5:	@ 0x081758EB
	.byte	KEYSH	, 0
	.byte	VOICE	, 13
	.byte	PAN	, c_v-25
	.byte	VOL	, v087
	.byte	W96
song030_5_1:
	.byte	W72
	.byte		N06	, Gn5, v080
	.byte	W06
	.byte		N04	, Fs5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte		N06	, Bn4
	.byte	W06
	.byte	W96
	.byte	W48
	.byte			Gn4
	.byte	W06
	.byte		N04	, An4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte		N06	, Gn5
	.byte	W24
	.byte	W96
	.byte	W72
	.byte			Gs5
	.byte	W06
	.byte		N04	, Gn5
	.byte	W06
	.byte			Ds5
	.byte	W06
	.byte		N06	, Cn5
	.byte	W06
	.byte	W96
	.byte	W48
	.byte			Gs4
	.byte	W06
	.byte		N04	, As4
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte		N06	, Ds5
	.byte	W06
	.byte			Gs5
	.byte	W24
	.byte			Dn4, v072
	.byte	W06
	.byte			Cs4, v068
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4, v064
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			As3, v060
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gs3, v064
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gs3, v068
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			As3, v072
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			As3, v072
	.byte	W06
	.byte			An3, v068
	.byte	W06
	.byte			Bn3, v064
	.byte	W06
	.byte			An3, v072
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Gn3, v068
	.byte	W06
	.byte			An3, v064
	.byte	W06
	.byte			Gs3, v072
	.byte	W06
	.byte			Gn3, v068
	.byte	W06
	.byte			Fs3, v064
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			En3, v060
	.byte	W06
	.byte			Fn3, v064
	.byte	W06
	.byte			Fs3, v068
	.byte	W06
	.byte			Gn3, v072
	.byte	W06
	.byte			An3, v080
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Gn3, v076
	.byte	W06
	.byte			An3, v072
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fs3, v068
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3, v064
	.byte	W06
	.byte			Fs3, v072
	.byte	W06
	.byte			Fn3, v064
	.byte	W06
	.byte			En3, v060
	.byte	W06
	.byte			Ds3, v056
	.byte	W06
	.byte			Dn3, v048
	.byte	W06
	.byte			Ds3, v056
	.byte	W06
	.byte			En3, v060
	.byte	W06
	.byte			Fn3, v068
	.byte	W06
	.byte			Fs3, v076
	.byte	W24
	.byte		N04	, Gs3, v048
	.byte	W04
	.byte			An3, v052
	.byte	W04
	.byte			As3, v056
	.byte	W04
	.byte			Bn3, v060
	.byte	W04
	.byte			Cn4, v064
	.byte	W04
	.byte			Cs4, v068
	.byte	W04
	.byte		N06	, Dn4, v072
	.byte	W06
	.byte			Cs4, v068
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3, v064
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			An3, v060
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Gn3, v056
	.byte	W06
	.byte			Dn4, v072
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Cn4, v068
	.byte	W06
	.byte			Dn4, v064
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3, v060
	.byte	W06
	.byte			As3, v056
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3, v052
	.byte	W06
	.byte			As3, v044
	.byte	W06
	.byte			An3, v048
	.byte	W06
	.byte			Gs3, v052
	.byte	W06
	.byte			Gn3, v060
	.byte	W06
	.byte			Gs3, v064
	.byte	W06
	.byte			An3, v068
	.byte	W06
	.byte			As3, v072
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			As3, v068
	.byte	W06
	.byte			An3, v064
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gs3, v060
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gs3, v072
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fs3, v068
	.byte	W06
	.byte			Fn3, v064
	.byte	W06
	.byte			En3, v060
	.byte	W06
	.byte			Fn3, v064
	.byte	W06
	.byte			Fs3, v068
	.byte	W06
	.byte			Gn3, v072
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gs3, v068
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3, v064
	.byte	W06
	.byte			Gn3, v060
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Fn3, v056
	.byte	W06
	.byte			Gn3, v084
	.byte	W06
	.byte			Fs3, v076
	.byte	W06
	.byte			Fn3, v072
	.byte	W06
	.byte			En3, v064
	.byte	W06
	.byte			Ds3, v060
	.byte	W06
	.byte			Dn3, v052
	.byte	W06
	.byte			Ds3, v056
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fn3, v060
	.byte	W06
	.byte			Fn3, v064
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3, v068
	.byte	W06
	.byte			Gs3, v072
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			As3, v076
	.byte	W06
	.byte			Bn3, v080
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4, v084
	.byte	W06
	.byte			Cs4, v088
	.byte	W06
	.byte			Cn4, v084
	.byte	W06
	.byte			An3, v080
	.byte	W06
	.byte			Fn3, v072
	.byte	W24
	.byte	W96
	.byte	GOTO	
		.word	song030_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song030_6
song030_6:	@ 0x08175A86
	.byte	KEYSH	, 0
	.byte	VOICE	, 17
	.byte	PAN	, c_v+25
	.byte	VOL	, v087
	.byte	W96
song030_6_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N06	, Fn5, v100
	.byte	W06
	.byte			En5, v096
	.byte	W06
	.byte			Ds5, v092
	.byte	W06
	.byte			Fn5, v088
	.byte	W06
	.byte			Ds5, v084
	.byte	W06
	.byte			Dn5, v080
	.byte	W06
	.byte			Cs5, v076
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte			Dn5, v092
	.byte	W06
	.byte			Cs5, v088
	.byte	W06
	.byte			Cn5, v084
	.byte	W06
	.byte			Bn4, v080
	.byte	W06
	.byte			As4, v072
	.byte	W06
	.byte			Bn4, v080
	.byte	W06
	.byte			Cn5, v088
	.byte	W06
	.byte			Cs5, v096
	.byte	W06
	.byte			Dn5, v104
	.byte	W06
	.byte			Cs5, v092
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Dn5, v088
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Bn4, v084
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Cn5, v080
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			As4, v076
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Gs4, v072
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Gs4, v076
	.byte	W06
	.byte			An4, v080
	.byte	W06
	.byte			As4, v088
	.byte	W06
	.byte			Cn5, v108
	.byte	W06
	.byte			Bn4, v104
	.byte	W06
	.byte			As4, v100
	.byte	W06
	.byte			Cn5, v096
	.byte	W06
	.byte			As4, v092
	.byte	W06
	.byte			An4, v088
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			As4, v100
	.byte	W06
	.byte			An4, v096
	.byte	W06
	.byte			Gs4, v088
	.byte	W06
	.byte			Gn4, v084
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Fn4, v072
	.byte	W06
	.byte			Fs4, v080
	.byte	W06
	.byte			Gn4, v088
	.byte	W06
	.byte			Gs4, v092
	.byte	W06
	.byte			An4, v100
	.byte	W24
	.byte		N04	, Bn4, v064
	.byte	W04
	.byte			Cn5, v072
	.byte	W04
	.byte			Cs5, v076
	.byte	W04
	.byte			Dn5, v084
	.byte	W04
	.byte			Ds5, v088
	.byte	W04
	.byte			En5, v096
	.byte	W04
	.byte		N06	, Fn5, v104
	.byte	W06
	.byte			En5, v100
	.byte	W06
	.byte			Ds5, v096
	.byte	W06
	.byte			Dn5, v088
	.byte	W06
	.byte			Cs5, v084
	.byte	W06
	.byte			Cn5, v080
	.byte	W06
	.byte			Bn4, v076
	.byte	W06
	.byte			As4, v068
	.byte	W06
	.byte			Fn5, v104
	.byte	W06
	.byte			En5, v100
	.byte	W06
	.byte			Ds5, v096
	.byte	W06
	.byte			Fn5, v092
	.byte	W06
	.byte			Ds5, v088
	.byte	W06
	.byte			Dn5, v084
	.byte	W06
	.byte			Cs5, v080
	.byte	W06
	.byte			Ds5, v076
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Cn5, v072
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			As4, v076
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cn5, v084
	.byte	W06
	.byte			Cs5, v092
	.byte	W06
	.byte			Dn5, v096
	.byte	W06
	.byte			Cs5, v092
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Dn5, v088
	.byte	W06
	.byte			Cn5, v084
	.byte	W06
	.byte			Bn4, v080
	.byte	W06
	.byte			As4, v076
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			As4, v072
	.byte	W06
	.byte			An4
	.byte	W06
	.byte			Gs4, v068
	.byte	W06
	.byte			Gn4, v072
	.byte	W06
	.byte			Gs4, v080
	.byte	W06
	.byte			An4, v088
	.byte	W06
	.byte			As4, v096
	.byte	W06
	.byte			Cn5, v104
	.byte	W06
	.byte			Bn4, v096
	.byte	W06
	.byte			As4, v092
	.byte	W06
	.byte			Cn5, v088
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			An4, v084
	.byte	W06
	.byte			Gs4, v080
	.byte	W06
	.byte			As4, v076
	.byte	W06
	.byte			An4, v072
	.byte	W06
	.byte			Gs4, v076
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Fs4, v080
	.byte	W06
	.byte			Fn4, v084
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Gn4, v088
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			Gs4, v092
	.byte	W06
	.byte			An4, v096
	.byte	W06
	.byte			As4
	.byte	W06
	.byte			Bn4, v100
	.byte	W06
	.byte			Cn5, v104
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Dn5, v108
	.byte	W06
	.byte			Ds5
	.byte	W06
	.byte			Fn5, v112
	.byte	W06
	.byte			En5, v108
	.byte	W06
	.byte			Ds5, v104
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Cs5, v100
	.byte	W24
	.byte	W96
	.byte	GOTO	
		.word	song030_6_1
	.byte	FINE

	.align 2
	.global song030
song030:	@ 0x08175C00
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song030_1		@ track
	.word	song030_2		@ track
	.word	song030_3		@ track
	.word	song030_4		@ track
	.word	song030_5		@ track
	.word	song030_6		@ track
