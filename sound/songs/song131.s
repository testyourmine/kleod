	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song131_1
song131_1:	@ 0x081773C0
	.byte	KEYSH	, 0
song131_1_1:
	.byte	TEMPO	, 70
	.byte	VOICE	, 29
	.byte	BENDR	, 34
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N03	, Gs3, v108
	.byte	W04
	.byte			Gs3, v068
	.byte	W04
	.byte			Fs3, v108
	.byte	W04
	.byte			Fs3, v068
	.byte	W04
	.byte			An3, v108
	.byte	W04
	.byte			An3, v068
	.byte	W04
	.byte			Fn3, v108
	.byte	W04
	.byte			Fn3, v068
	.byte	W04
	.byte			Gn3, v108
	.byte	W04
	.byte			Gn3, v068
	.byte	W04
	.byte			En3, v108
	.byte	W04
	.byte			En3, v068
	.byte	W04
	.byte			An3, v108
	.byte	W04
	.byte			An3, v068
	.byte	W04
	.byte			Fn3, v108
	.byte	W04
	.byte			Fn3, v068
	.byte	W04
	.byte			Fs3, v108
	.byte	W04
	.byte			Fs3, v068
	.byte	W04
	.byte			En3, v108
	.byte	W04
	.byte			En3, v068
	.byte	W04
	.byte			Gs3, v108
	.byte	W04
	.byte			Gs3, v068
	.byte	W04
	.byte			Gn3, v108
	.byte	W04
	.byte			Gn3, v068
	.byte	W04
	.byte			An3, v108
	.byte	W04
	.byte			An3, v068
	.byte	W04
	.byte			Fn3, v108
	.byte	W04
	.byte			Fn3, v068
	.byte	W04
	.byte			Fs3, v108
	.byte	W04
	.byte			Fs3, v068
	.byte	W03
	.byte	GOTO	
		.word	song131_1_1
	.byte	FINE

	.align 2
	.global song131
song131:	@ 0x08177430
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song131_1		@ track
