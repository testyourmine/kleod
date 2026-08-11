	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song026_1
song026_1:	@ 0x081743D4
	.byte	KEYSH	, 0
song026_1_1:
	.byte	TEMPO	, 50
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 121
	.byte	PAN	, c_v
	.byte	VOL	, v089
	.byte	W96
	.byte		N03	, An1, v088
	.byte	W03
	.byte			An1, v048
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			An1, v044
	.byte	W03
	.byte			An1, v048
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			An1, v052
	.byte	W03
	.byte			An1, v048
	.byte	W03
	.byte			An1, v052
	.byte	W03
	.byte			An1, v048
	.byte	W03
	.byte			An1, v056
	.byte	W03
	.byte			An1, v052
	.byte	W03
	.byte			An1, v056
	.byte	W03
	.byte			An1, v052
	.byte	W03
	.byte			An1, v060
	.byte	W03
	.byte			An1, v056
	.byte	W03
	.byte			An1, v060
	.byte	W03
	.byte			An1, v056
	.byte	W03
	.byte			An1, v064
	.byte	W03
	.byte			An1, v060
	.byte	W03
	.byte			An1, v068
	.byte	W03
	.byte			An1, v064
	.byte	W03
	.byte			An1, v072
	.byte	W03
	.byte			An1, v064
	.byte	W03
	.byte			An1, v072
	.byte	W03
	.byte			An1, v068
	.byte	W03
	.byte			An1, v076
	.byte	W03
	.byte			An1, v072
	.byte	W03
	.byte			An1, v084
	.byte	W03
	.byte		N36	, Dn2, v108
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song026_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song026_2
song026_2:	@ 0x0817444F
	.byte	KEYSH	, 0
song026_2_1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 44
	.byte	PAN	, c_v
	.byte	VOL	, v089
	.byte	W96
	.byte	W48
	.byte		N03	, Cs1, v040
	.byte	W03
	.byte			Cs1, v036
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Cs1, v028
	.byte	W03
	.byte			Cs1, v036
	.byte	W03
	.byte			Cs1, v028
	.byte	W03
	.byte			Cs1, v036
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Cs1, v048
	.byte	W03
	.byte			Cs1, v040
	.byte	W03
	.byte			Cs1, v056
	.byte	W03
	.byte			Cs1, v052
	.byte	W03
	.byte			Cs1, v068
	.byte	W03
	.byte			Cs1, v064
	.byte	W03
	.byte			Cs1, v080
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte		N44	, Dn1, v068
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song026_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song026_3
song026_3:	@ 0x0817449C
	.byte	KEYSH	, 0
song026_3_1:
	.byte	VOICE	, 120
	.byte	PAN	, c_v-15
	.byte	VOL	, v051
	.byte		TIE	, An5, v040
	.byte	W96
	.byte	W48
	.byte		EOT	
	.byte		N96	, Gn5
	.byte	W48
	.byte	W48
	.byte			Fs5
	.byte	W48
	.byte	W48
	.byte		N48	, Gn5
	.byte	W48
	.byte		N96	, An5
	.byte	W96
	.byte		TIE	, Gn5
	.byte	W96
	.byte	W48
	.byte		EOT	
	.byte		N96	, Fs5
	.byte	W48
	.byte	W48
	.byte		N48	, En5
	.byte	W48
	.byte		N92	, Fs5
	.byte	W96
	.byte		TIE	, An5
	.byte	W96
	.byte	W48
	.byte		EOT	
	.byte		N96	, Gn5
	.byte	W48
	.byte	W48
	.byte			Fs5
	.byte	W48
	.byte	W48
	.byte		N48	, Gn5
	.byte	W48
	.byte	GOTO	
		.word	song026_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song026_4
song026_4:	@ 0x081744DB
	.byte	KEYSH	, 0
song026_4_4:
	.byte	VOICE	, 119
	.byte	PAN	, c_v
	.byte	VOL	, v089
	.byte		N48	, Dn3, v100
	.byte	W48
	.byte			En3
	.byte	W48
song026_4_1:
	.byte		N48	, Fs3, v100
	.byte	W48
	.byte		N12	, Gn3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N24	, Dn3
	.byte	W24
	.byte	PEND
song026_4_2:
	.byte		N48	, An2, v100
	.byte	W48
	.byte		N68	, Bn2
	.byte	W48
	.byte	PEND
song026_4_3:
	.byte	W24
	.byte		N12	, Cs3, v100
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N24	, En3
	.byte	W24
	.byte			Dn3
	.byte	W24
	.byte	PEND
	.byte		TIE	, An2
	.byte	W96
	.byte	W21
	.byte		EOT	
	.byte	W03
	.byte		N12	, Dn3
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte		N24	, Dn3
	.byte	W24
	.byte			En3
	.byte	W24
	.byte		N96	, Fs3
	.byte	W96
	.byte		N72	, Gn3
	.byte	W72
	.byte		N24	, En3
	.byte	W24
	.byte		N92	, Fs3
	.byte	W96
	.byte		N48	, Dn3
	.byte	W48
	.byte			En3
	.byte	W48
	.byte	PATT	
		.word	song026_4_1
	.byte	PATT	
		.word	song026_4_2
	.byte	PATT	
		.word	song026_4_3
	.byte	GOTO	
		.word	song026_4_4
	.byte	FINE

	@********************** Track  5 **********************@

	.global song026_5
song026_5:	@ 0x08174541
	.byte	KEYSH	, 0
song026_5_5:
	.byte	VOICE	, 119
	.byte	PAN	, c_v+5
	.byte	VOL	, v089
	.byte		N48	, Dn3, v100
	.byte	W48
	.byte			Cs3
	.byte	W48
song026_5_1:
	.byte		N48	, Bn2, v100
	.byte	W48
	.byte			An2
	.byte	W48
	.byte	PEND
song026_5_3:
	.byte		N48	, Gn2, v100
	.byte	W48
	.byte			Fs2
	.byte	W48
	.byte	PEND
song026_5_4:
	.byte		N48	, Gn2, v100
	.byte	W48
	.byte			An2
	.byte	W48
	.byte	PEND
song026_5_2:
	.byte		N48	, Dn3, v100
	.byte	W48
	.byte			Cs3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song026_5_1
	.byte		TIE	, Gn2, v100
	.byte	W96
	.byte	W72
	.byte		EOT	
	.byte		N24	, An2
	.byte	W24
	.byte		N92	
	.byte	W96
	.byte	PATT	
		.word	song026_5_2
	.byte	PATT	
		.word	song026_5_1
	.byte	PATT	
		.word	song026_5_3
	.byte	PATT	
		.word	song026_5_4
	.byte	GOTO	
		.word	song026_5_5
	.byte	FINE

	@********************** Track  6 **********************@

	.global song026_6
song026_6:	@ 0x08174595
	.byte	KEYSH	, 0
song026_6_3:
	.byte	VOICE	, 119
	.byte	PAN	, c_v+10
	.byte	VOL	, v089
	.byte	W24
	.byte		N24	, An2, v100
	.byte	W24
	.byte			Dn3
	.byte	W24
	.byte			An2
	.byte	W24
	.byte		N96	, Dn3
	.byte	W96
song026_6_2:
	.byte	W24
	.byte		N24	, An2, v100
	.byte	W24
	.byte			Gn2
	.byte	W24
	.byte			Fs2
	.byte	W24
	.byte	PEND
	.byte		N96	, Gn2
	.byte	W96
song026_6_1:
	.byte	W24
	.byte		N24	, An2, v100
	.byte	W24
	.byte			Dn3
	.byte	W24
	.byte			An2
	.byte	W24
	.byte	PEND
	.byte		N72	, Dn3
	.byte	W72
	.byte		N21	, An2
	.byte	W24
	.byte		N92	, Gn2
	.byte	W96
	.byte		N72	
	.byte	W72
	.byte		N21	, An2
	.byte	W24
	.byte		N96	, Dn3
	.byte	W96
	.byte	PATT	
		.word	song026_6_1
	.byte		N96	, Dn3, v100
	.byte	W96
	.byte	PATT	
		.word	song026_6_2
	.byte		N96	, Gn2, v100
	.byte	W96
	.byte	GOTO	
		.word	song026_6_3
	.byte	FINE

	.align 2
	.global song026
song026:	@ 0x081745EC
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	153		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song026_1		@ track
	.word	song026_2		@ track
	.word	song026_3		@ track
	.word	song026_4		@ track
	.word	song026_5		@ track
	.word	song026_6		@ track
