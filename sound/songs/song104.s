	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song104_1
song104_1:	@ 0x08176CD8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 42
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte	MOD	, 6
	.byte	BEND	, c_v
	.byte		N96	, En2, v127
	.byte	W03
	.byte			Fn2
	.byte	W48
	.byte	W02
	.byte	VOL	, v077
	.byte	W02
	.byte		v073
	.byte	W04
	.byte		v067
	.byte	W02
	.byte		v061
	.byte	W03
	.byte		v057
	.byte	W02
	.byte		v053
	.byte	W02
	.byte		v049
	.byte	W04
	.byte		v043
	.byte	W03
	.byte		v035
	.byte	W04
	.byte		v029
	.byte	W02
	.byte		v025
	.byte	W03
	.byte		v019
	.byte	W03
	.byte		v013
	.byte	W04
	.byte		v007
	.byte	W03
	.byte		v001
	.byte	W01
	.byte		v000
	.byte	W01
	.byte	W03
	.byte	FINE

	.align 2
	.global song104
song104:	@ 0x08176D14
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song104_1		@ track
