	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song025_1
song025_1:	@ 0x081741F0
	.byte	KEYSH	, 0
song025_1_1:
	.byte	TEMPO	, 41
	.byte	VOICE	, 116
	.byte	PAN	, c_v+10
	.byte	VOL	, v097
	.byte		TIE	, An3, v096
	.byte	W96
	.byte	W96
	.byte	W44
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		TIE	, Gn3
	.byte	W48
	.byte	W96
	.byte	W23
	.byte		EOT	
	.byte	W01
	.byte		N44	, Fs3, v108
	.byte	W48
	.byte		N23	, En3
	.byte	W24
	.byte		N92	, Fs3
	.byte	W96
	.byte		N68	, Dn3
	.byte	W72
	.byte		N44	, En3
	.byte	W24
	.byte	W24
	.byte		N23	, Fs3
	.byte	W24
	.byte			An3
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte		N32	, An3
	.byte	W36
	.byte		N11	, Gn3
	.byte	W12
	.byte		N23	, An3
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte		N68	
	.byte	W72
	.byte		N20	, An3
	.byte	W24
	.byte		N92	
	.byte	W96
	.byte	W24
	.byte		N23	, Dn3
	.byte	W24
	.byte			En3
	.byte	W24
	.byte			Fs3
	.byte	W24
	.byte	GOTO	
		.word	song025_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song025_2
song025_2:	@ 0x08174242
	.byte	KEYSH	, 0
song025_2_1:
	.byte	VOICE	, 116
	.byte	PAN	, c_v-10
	.byte	VOL	, v097
	.byte		TIE	, Dn3, v096
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		TIE	, Bn2
	.byte	W96
	.byte	W44
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		TIE	, An2, v108
	.byte	W48
	.byte	W92
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N68	, Bn2
	.byte	W72
	.byte		N23	, Cs3
	.byte	W24
	.byte		N68	, Dn3
	.byte	W72
	.byte		N23	, Gn3
	.byte	W24
	.byte		N32	, Fs3
	.byte	W36
	.byte		N11	, En3
	.byte	W12
	.byte		N23	, Fs3
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte		N68	, En3
	.byte	W72
	.byte		N20	, Dn3
	.byte	W24
	.byte		N92	
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song025_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song025_3
song025_3:	@ 0x08174288
	.byte	KEYSH	, 0
song025_3_1:
	.byte	VOICE	, 116
	.byte	PAN	, c_v+20
	.byte	VOL	, v097
	.byte		TIE	, Fs3, v096
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		TIE	, En3
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		TIE	, Dn3
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		TIE	, An2
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		EOT	
	.byte		N48	, Bn2
	.byte	W48
	.byte			Dn3
	.byte	W48
	.byte		N21	, En3
	.byte	W24
	.byte			Fs3, v108
	.byte	W24
	.byte		N92	
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song025_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song025_4
song025_4:	@ 0x081742BA
	.byte	KEYSH	, 0
song025_4_1:
	.byte	VOICE	, 118
	.byte	PAN	, c_v+10
	.byte	VOL	, v045
	.byte		N48	, Dn2, v100
	.byte	W48
	.byte			En2
	.byte	W48
	.byte			Fs2
	.byte	W48
	.byte		N12	, Gn2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte		N24	, Dn2
	.byte	W24
	.byte		N48	, An1
	.byte	W48
	.byte		N72	, Bn1
	.byte	W48
	.byte	W24
	.byte		N12	, Cs2
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte		N24	, En2
	.byte	W24
	.byte			Dn2
	.byte	W24
	.byte		TIE	, An1
	.byte	W96
	.byte	W21
	.byte		EOT	
	.byte	W03
	.byte		N12	, Dn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N24	, Dn2
	.byte	W24
	.byte			En2
	.byte	W24
	.byte		N72	, Fs2
	.byte	W72
	.byte		N48	, En2
	.byte	W24
	.byte	W24
	.byte			Dn2
	.byte	W48
	.byte		N24	, En2
	.byte	W24
	.byte		N72	, Dn2
	.byte	W72
	.byte		N24	, Gn1
	.byte	W24
	.byte		N48	, An1
	.byte	W48
	.byte		N21	, Cs2
	.byte	W24
	.byte			Dn2
	.byte	W24
	.byte		N92	
	.byte	W96
	.byte	W24
	.byte		N24	
	.byte	W24
	.byte			Cs2
	.byte	W24
	.byte			Bn1
	.byte	W24
	.byte	GOTO	
		.word	song025_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song025_5
song025_5:	@ 0x0817431C
	.byte	KEYSH	, 0
song025_5_1:
	.byte	VOICE	, 117
	.byte	PAN	, c_v
	.byte	VOL	, v066
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N03	, Dn2, v032
	.byte	W03
	.byte			Dn2, v028
	.byte	W03
	.byte			Dn2, v032
	.byte	W03
	.byte			Dn2, v028
	.byte	W03
	.byte			Dn2, v032
	.byte	W03
	.byte			Dn2, v024
	.byte	W03
	.byte			Dn2, v036
	.byte	W03
	.byte			Dn2, v028
	.byte	W03
	.byte			Dn2, v036
	.byte	W03
	.byte			Dn2, v032
	.byte	W03
	.byte			Dn2, v040
	.byte	W03
	.byte			Dn2, v036
	.byte	W03
	.byte			Dn2, v044
	.byte	W03
	.byte			Dn2, v040
	.byte	W03
	.byte			Dn2, v048
	.byte	W03
	.byte			Dn2, v044
	.byte	W03
	.byte			Dn2, v056
	.byte	W03
	.byte			Dn2, v052
	.byte	W03
	.byte			Dn2, v060
	.byte	W03
	.byte			Dn2, v056
	.byte	W03
	.byte			Dn2, v068
	.byte	W03
	.byte			Dn2, v064
	.byte	W03
	.byte			Dn2, v076
	.byte	W03
	.byte			Dn2, v072
	.byte	W03
	.byte			Dn2, v068
	.byte	W03
	.byte			Dn2, v060
	.byte	W03
	.byte			Dn2, v056
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Dn2, v052
	.byte	W03
	.byte			Dn2, v048
	.byte	W03
	.byte			Dn2, v044
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Dn2, v036
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Dn2, v032
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Dn2, v028
	.byte	W03
	.byte			Dn2, v024
	.byte	W03
	.byte			Dn2, v020
	.byte	W03
	.byte			Dn2, v016
	.byte	W03
	.byte			Dn2, v012
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Dn2, v008
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte		N03	
	.byte	W60
	.byte	GOTO	
		.word	song025_5_1
	.byte	FINE

	.align 2
	.global song025
song025:	@ 0x081743B8
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	153		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song025_1		@ track
	.word	song025_2		@ track
	.word	song025_3		@ track
	.word	song025_4		@ track
	.word	song025_5		@ track
