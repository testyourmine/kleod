	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song042_1
song042_1:	@ 0x08176044
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 6
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte	W01
	.byte		N09	, Cn3, v127
	.byte	W09
	.byte	FINE

	.align 2
	.global song042
song042:	@ 0x08176054
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	9		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song042_1		@ track
