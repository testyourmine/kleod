	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Abs
Abs: @ 0x0800043C
	cmp r0, #0
	bpl _08000444
	movs r1, #0
	subs r0, r1, r0
_08000444:
	bx lr
	.align 2, 0

	thumb_func_start StringCompare
StringCompare: @ 0x08000448
_08000448:
	ldrb r2, [r0]
	ldrb r3, [r1]
	cmp r2, r3
	bne _0800045C
	adds r0, #1
	adds r1, #1
	cmp r3, #0
	bne _08000448
	movs r0, #0
	bx lr
_0800045C:
	movs r0, #1
	bx lr

	thumb_func_start StringCopy
StringCopy: @ 0x08000460
_08000460:
	ldrb r2, [r1]
	strb r2, [r0]
	adds r0, #1
	adds r1, #1
	cmp r2, #0
	bne _08000460
	bx lr
	.align 2, 0
