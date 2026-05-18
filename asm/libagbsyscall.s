	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CpuSet
CpuSet: @ 0x08051438
	svc #0xb
	bx lr

	thumb_func_start HuffUnComp
HuffUnComp: @ 0x0805143C
	svc #0x13
	bx lr

	thumb_func_start LZ77UnCompWram
LZ77UnCompWram: @ 0x08051440
	svc #0x11
	bx lr

	thumb_func_start Sqrt
Sqrt: @ 0x08051444
	svc #8
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x08051448
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

	thumb_func_start SoftResetRom
SoftResetRom: @ 0x08051450
	ldr r3, _08051464 @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r3, _08051468 @ =0x03007FFA
	movs r2, #0
	strb r2, [r3]
	subs r3, #0xfa
	mov sp, r3
	svc #1
	svc #0
	.align 2, 0
_08051464: .4byte 0x04000208
_08051468: .4byte 0x03007FFA
