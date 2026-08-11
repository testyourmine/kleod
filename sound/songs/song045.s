	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song045_1
song045_1:	@ 0x081760C0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 2
	.byte	PAN	, c_v
	.byte	VOL	, v016
	.byte	W01
	.byte		v043
	.byte		N01	, As3, v127
	.byte	W01
	.byte			Fs4
	.byte	W01
	.byte	FINE

	.align 2
	.global song045
song045:	@ 0x081760D4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	2		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song045_1		@ track
