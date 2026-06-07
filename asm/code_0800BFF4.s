	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0800BFF4
sub_0800BFF4: @ 0x0800BFF4
	push {r4, lr}
	bl sub_0800A49C
	bl sub_08005CF4
	bl VBlankIntrWait
	ldr r2, _0800C0BC @ =0x04000010
	ldr r3, _0800C0C0 @ =gUnk_03003430
	ldrh r0, [r3, #8]
	lsrs r0, r0, #2
	ldr r4, _0800C0C4 @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r3, #0xa]
	lsrs r0, r0, #5
	ands r0, r1
	strh r0, [r2]
	ldr r4, _0800C0C8 @ =0x04000014
	ldrh r2, [r3, #0x24]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldr r2, _0800C0CC @ =0x04000016
	ldrh r0, [r3, #0x26]
	ands r1, r0
	strh r1, [r2]
	ldr r1, _0800C0D0 @ =0x04000028
	ldr r0, _0800C0D4 @ =gUnk_030007FC
	ldr r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800C0D8 @ =0x0FFF0000
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C0DC @ =gUnk_030051D0
	ldr r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	subs r1, #0xe
	ldr r0, _0800C0E0 @ =gUnk_030047B0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C0E4 @ =gUnk_03005464
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C0E8 @ =gUnk_030051BC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C0EC @ =gUnk_03000808
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _0800C0F0 @ =0x04000052
	ldr r2, _0800C0F4 @ =gUnk_03005498
	ldrb r1, [r2]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _0800C0F8 @ =0x04000054
	ldrb r0, [r2]
	strh r0, [r1]
	subs r3, #6
	ldr r0, _0800C0FC @ =gUnk_030007D8
	ldrb r1, [r0]
	lsls r0, r1, #0xc
	lsls r2, r1, #8
	orrs r0, r2
	lsls r2, r1, #4
	orrs r0, r2
	orrs r1, r0
	strh r1, [r3]
	bl thunk_UpdateRng
	ldr r1, _0800C100 @ =gUnk_03004C20
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl m4aSoundMain
	ldr r1, _0800C104 @ =gUnk_03003420
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C0BC: .4byte 0x04000010
_0800C0C0: .4byte gUnk_03003430
_0800C0C4: .4byte 0x000001FF
_0800C0C8: .4byte 0x04000014
_0800C0CC: .4byte 0x04000016
_0800C0D0: .4byte 0x04000028
_0800C0D4: .4byte gUnk_030007FC
_0800C0D8: .4byte 0x0FFF0000
_0800C0DC: .4byte gUnk_030051D0
_0800C0E0: .4byte gUnk_030047B0
_0800C0E4: .4byte gUnk_03005464
_0800C0E8: .4byte gUnk_030051BC
_0800C0EC: .4byte gUnk_03000808
_0800C0F0: .4byte 0x04000052
_0800C0F4: .4byte gUnk_03005498
_0800C0F8: .4byte 0x04000054
_0800C0FC: .4byte gUnk_030007D8
_0800C100: .4byte gUnk_03004C20
_0800C104: .4byte gUnk_03003420

	thumb_func_start sub_0800C108
sub_0800C108: @ 0x0800C108
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _0800C218 @ =gUnk_03005400
	ldrb r2, [r1, #0xe]
	movs r0, #2
	ands r0, r2
	ldr r6, _0800C21C @ =0x03000001
	ldr r5, _0800C220 @ =0x03000003
	cmp r0, #0
	beq _0800C136
	ldrb r0, [r1, #0xd]
	lsls r0, r0, #1
	strb r0, [r6]
	movs r0, #0x20
	strb r0, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0xe]
_0800C136:
	ldrb r2, [r1, #0xe]
	movs r0, #1
	ands r0, r2
	ldr r3, _0800C224 @ =0x03000000
	ldr r4, _0800C228 @ =0x03000002
	cmp r0, #0
	beq _0800C156
	ldrb r0, [r1, #0xd]
	lsls r0, r0, #1
	strb r0, [r3]
	movs r0, #0x20
	strb r0, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0xe]
_0800C156:
	ldrb r2, [r3]
	cmp r2, #0
	beq _0800C176
	ldrb r0, [r4]
	adds r0, #0x20
	strb r0, [r4]
	ldrb r0, [r4]
	adds r1, r0, #0
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0800C176
	subs r0, r2, #1
	strb r0, [r3]
_0800C176:
	ldrb r2, [r6]
	cmp r2, #0
	beq _0800C196
	ldrb r0, [r5]
	adds r0, #0x20
	strb r0, [r5]
	ldrb r0, [r5]
	adds r1, r0, #0
	strb r0, [r5]
	ldrb r0, [r5]
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0800C196
	subs r0, r2, #1
	strb r0, [r6]
_0800C196:
	ldrb r1, [r3]
	ldr r3, _0800C22C @ =gSineTable
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x19
	ldrb r2, [r6]
	rsbs r2, r2, #0
	ldrb r1, [r5]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	muls r1, r2, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #0x19
	lsrs r4, r0, #0x18
	str r4, [sp]
	asrs r0, r0, #0x18
	lsrs r5, r1, #0x18
	str r5, [sp, #4]
	asrs r1, r1, #0x18
	bl sub_0800A71C
	bl sub_080070A0
	ldr r5, _0800C230 @ =gUnk_03004C20
	ldrb r0, [r5, #0xd]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0800C2D4
	ldr r2, _0800C234 @ =gUnk_03003510
	ldr r1, [r2, #4]
	ldr r0, _0800C238 @ =sub_0803A410
	cmp r1, r0
	beq _0800C206
	ldr r0, [r2]
	ldr r2, _0800C23C @ =sub_08039D8C
	cmp r0, r2
	beq _0800C206
	cmp r1, r2
	beq _0800C206
	ldr r0, _0800C240 @ =sub_0803AAA0
	cmp r1, r0
	beq _0800C206
	ldr r0, _0800C244 @ =sub_0803A8B8
	cmp r1, r0
	bne _0800C260
_0800C206:
	ldr r0, _0800C248 @ =gUnk_030034BC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C24C
	movs r6, #0
	mov sb, r6
	movs r0, #1
	mov r8, r0
	b _0800C254
	.align 2, 0
_0800C218: .4byte gUnk_03005400
_0800C21C: .4byte 0x03000001
_0800C220: .4byte 0x03000003
_0800C224: .4byte 0x03000000
_0800C228: .4byte 0x03000002
_0800C22C: .4byte gSineTable
_0800C230: .4byte gUnk_03004C20
_0800C234: .4byte gUnk_03003510
_0800C238: .4byte sub_0803A410
_0800C23C: .4byte sub_08039D8C
_0800C240: .4byte sub_0803AAA0
_0800C244: .4byte sub_0803A8B8
_0800C248: .4byte gUnk_030034BC
_0800C24C:
	movs r1, #1
	mov sb, r1
	movs r2, #0
	mov r8, r2
_0800C254:
	ldr r5, _0800C25C @ =0x030051F0
	ldrb r0, [r5, #0xe]
	b _0800C26A
	.align 2, 0
_0800C25C: .4byte 0x030051F0
_0800C260:
	movs r3, #1
	mov sb, r3
	mov r8, r3
	ldr r0, _0800C2B0 @ =gUnk_03005498
	ldrb r0, [r0]
_0800C26A:
	movs r4, #8
	subs r0, r4, r0
	bl Abs
	subs r4, r4, r0
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x18
	ldr r0, [r5]
	movs r6, #0
	ldr r5, _0800C2B4 @ =gSineTable
	mov sl, r5
	movs r7, #0
	ldr r3, _0800C2B8 @ =gUnk_030052C0
	ldr r2, _0800C2BC @ =gUnk_03004C40
	lsls r5, r0, #0x1a
_0800C288:
	cmp r6, #0x8f
	bhi _0800C2C0
	lsrs r0, r5, #0x18
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r4, r0
	asrs r0, r0, #8
	mov r1, sb
	muls r1, r0, r1
	strh r1, [r2]
	rsbs r0, r0, #0
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	strh r0, [r3]
	b _0800C2C4
	.align 2, 0
_0800C2B0: .4byte gUnk_03005498
_0800C2B4: .4byte gSineTable
_0800C2B8: .4byte gUnk_030052C0
_0800C2BC: .4byte gUnk_03004C40
_0800C2C0:
	strh r7, [r2]
	strh r7, [r3]
_0800C2C4:
	adds r3, #2
	adds r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x13
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #0x9f
	bls _0800C288
_0800C2D4:
	ldr r7, _0800C410 @ =gUnk_03003430
	adds r0, r7, #0
	adds r0, #0x40
	ldrh r3, [r0]
	movs r1, #0x42
	adds r1, r1, r7
	mov ip, r1
	ldrh r2, [r1]
	ldr r4, _0800C414 @ =gUnk_03004C20
	ldrh r1, [r4, #0xc]
	movs r0, #0x81
	lsls r0, r0, #3
	cmp r1, r0
	bne _0800C2F8
	adds r0, r2, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0800C2F8:
	lsls r1, r3, #8
	ldr r5, _0800C418 @ =gUnk_030047B0
	mov sl, r5
	movs r6, #0
	ldrsh r0, [r5, r6]
	muls r0, r3, r0
	subs r1, r1, r0
	ldr r0, _0800C41C @ =gUnk_03005464
	mov sb, r0
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r2, r0
	subs r1, r1, r0
	ldr r5, [sp]
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _0800C420 @ =gUnk_030007FC
	str r1, [r6]
	ldr r4, _0800C424 @ =gUnk_030051D0
	lsls r1, r2, #8
	ldr r0, _0800C428 @ =gUnk_030051BC
	mov r8, r0
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r3, r0
	subs r1, r1, r0
	ldr r6, _0800C42C @ =gUnk_03000808
	movs r3, #0
	ldrsh r0, [r6, r3]
	muls r0, r2, r0
	subs r1, r1, r0
	ldr r5, [sp, #4]
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	mov r2, ip
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4]
	bl VBlankIntrWait
	ldr r2, _0800C430 @ =0x04000010
	ldrh r0, [r7, #8]
	lsrs r0, r0, #4
	ldr r3, _0800C434 @ =0x000001FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r7, #0xa]
	lsrs r0, r0, #7
	ands r0, r1
	strh r0, [r2]
	ldr r3, _0800C438 @ =0x04000014
	ldrh r2, [r7, #0x24]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldr r2, _0800C43C @ =0x04000016
	ldrh r0, [r7, #0x26]
	ands r1, r0
	strh r1, [r2]
	ldr r1, _0800C440 @ =0x04000028
	ldr r5, _0800C420 @ =gUnk_030007FC
	ldr r0, [r5]
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800C444 @ =0x0FFF0000
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4]
	strh r0, [r1]
	adds r1, #2
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	subs r1, #0xe
	mov r2, sl
	ldrh r0, [r2]
	strh r0, [r1]
	adds r1, #2
	mov r3, sb
	ldrh r0, [r3]
	strh r0, [r1]
	adds r1, #2
	mov r4, r8
	ldrh r0, [r4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r6]
	strh r0, [r1]
	ldr r3, _0800C448 @ =0x04000052
	ldr r2, _0800C44C @ =gUnk_03005498
	ldrb r1, [r2]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _0800C450 @ =0x04000054
	ldrb r0, [r2]
	strh r0, [r1]
	subs r3, #6
	ldr r0, _0800C454 @ =gUnk_030007D8
	ldrb r1, [r0]
	lsls r0, r1, #0xc
	lsls r2, r1, #8
	orrs r0, r2
	lsls r2, r1, #4
	orrs r0, r2
	orrs r1, r0
	strh r1, [r3]
	bl thunk_UpdateRng
	ldr r5, _0800C414 @ =gUnk_03004C20
	ldr r0, [r5, #4]
	adds r0, #1
	str r0, [r5, #4]
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	bl m4aSoundMain
	ldr r1, _0800C458 @ =gUnk_03003420
	movs r0, #1
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C410: .4byte gUnk_03003430
_0800C414: .4byte gUnk_03004C20
_0800C418: .4byte gUnk_030047B0
_0800C41C: .4byte gUnk_03005464
_0800C420: .4byte gUnk_030007FC
_0800C424: .4byte gUnk_030051D0
_0800C428: .4byte gUnk_030051BC
_0800C42C: .4byte gUnk_03000808
_0800C430: .4byte 0x04000010
_0800C434: .4byte 0x000001FF
_0800C438: .4byte 0x04000014
_0800C43C: .4byte 0x04000016
_0800C440: .4byte 0x04000028
_0800C444: .4byte 0x0FFF0000
_0800C448: .4byte 0x04000052
_0800C44C: .4byte gUnk_03005498
_0800C450: .4byte 0x04000054
_0800C454: .4byte gUnk_030007D8
_0800C458: .4byte gUnk_03003420

	thumb_func_start sub_0800C45C
sub_0800C45C: @ 0x0800C45C
	push {r4, lr}
	bl sub_080098C8
	ldr r2, _0800C514 @ =gUnk_03004678
	ldr r3, _0800C518 @ =gSineTable
	ldr r1, _0800C51C @ =gUnk_03002910
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r2, _0800C520 @ =gUnk_030051B0
	ldrb r0, [r1]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r2]
	bl VBlankIntrWait
	ldr r3, _0800C524 @ =0x04000052
	ldr r2, _0800C528 @ =gUnk_03005498
	ldrb r1, [r2]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _0800C52C @ =0x04000054
	ldrb r0, [r2]
	strh r0, [r1]
	ldr r2, _0800C530 @ =0x0400004C
	ldr r0, _0800C534 @ =gUnk_030007D8
	ldrb r0, [r0]
	lsls r1, r0, #4
	orrs r0, r1
	strh r0, [r2]
	subs r2, #0x3c
	ldr r3, _0800C538 @ =gUnk_03003430
	ldrh r0, [r3, #8]
	lsrs r0, r0, #2
	ldr r4, _0800C53C @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r3, #0xa]
	lsrs r0, r0, #5
	ands r0, r1
	strh r0, [r2]
	ldr r4, _0800C540 @ =0x04000014
	ldrh r2, [r3, #0x24]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldr r2, _0800C544 @ =0x04000016
	ldrh r0, [r3, #0x26]
	ands r1, r0
	strh r1, [r2]
	ldr r1, _0800C548 @ =0x04000020
	ldr r0, _0800C54C @ =gUnk_030047B0
	ldrh r0, [r0]
	strh r0, [r1]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C550 @ =gUnk_03005464
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C554 @ =gUnk_030051BC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C558 @ =gUnk_03000808
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C55C @ =gUnk_03004C20
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl m4aSoundMain
	ldr r1, _0800C560 @ =gUnk_03003420
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C514: .4byte gUnk_03004678
_0800C518: .4byte gSineTable
_0800C51C: .4byte gUnk_03002910
_0800C520: .4byte gUnk_030051B0
_0800C524: .4byte 0x04000052
_0800C528: .4byte gUnk_03005498
_0800C52C: .4byte 0x04000054
_0800C530: .4byte 0x0400004C
_0800C534: .4byte gUnk_030007D8
_0800C538: .4byte gUnk_03003430
_0800C53C: .4byte 0x000001FF
_0800C540: .4byte 0x04000014
_0800C544: .4byte 0x04000016
_0800C548: .4byte 0x04000020
_0800C54C: .4byte gUnk_030047B0
_0800C550: .4byte gUnk_03005464
_0800C554: .4byte gUnk_030051BC
_0800C558: .4byte gUnk_03000808
_0800C55C: .4byte gUnk_03004C20
_0800C560: .4byte gUnk_03003420

	thumb_func_start sub_0800C564
sub_0800C564: @ 0x0800C564
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08005CF4
	bl VBlankIntrWait
	ldr r3, _0800C78C @ =0x04000010
	ldr r4, _0800C790 @ =gUnk_03003430
	ldrh r1, [r4, #8]
	ldr r2, _0800C794 @ =0x000001FF
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r3]
	adds r3, #2
	ldrh r1, [r4, #0xa]
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r3]
	adds r3, #2
	ldrh r1, [r4, #0x24]
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r3]
	adds r3, #2
	ldrh r1, [r4, #0x26]
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r3]
	ldr r1, _0800C798 @ =0x04000018
	ldr r3, _0800C79C @ =gUnk_03003430+0x40
	ldrh r0, [r3]
	lsrs r0, r0, #4
	ands r0, r2
	strh r0, [r1]
	adds r1, #2
	ldr r3, _0800C7A0 @ =gUnk_03003472
	ldrh r0, [r3]
	lsrs r0, r0, #4
	ands r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	lsrs r0, r0, #4
	ands r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	lsrs r0, r0, #4
	ands r0, r2
	strh r0, [r1]
	adds r1, #0xa
	ldr r2, _0800C7A4 @ =gUnk_030007FC
	ldr r0, [r2]
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800C7A8 @ =0x0FFF0000
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r3, _0800C7AC @ =gUnk_030051D0
	ldr r0, [r3]
	strh r0, [r1]
	adds r1, #2
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	subs r1, #0xe
	ldr r0, _0800C7B0 @ =gUnk_030047B0
	mov sl, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r7, _0800C7B4 @ =gUnk_03005464
	ldrh r0, [r7]
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800C7B8 @ =gUnk_030051BC
	ldrh r0, [r2]
	strh r0, [r1]
	adds r1, #2
	ldr r3, _0800C7BC @ =gUnk_03000808
	ldrh r0, [r3]
	strh r0, [r1]
	ldr r3, _0800C7C0 @ =0x04000052
	ldr r2, _0800C7C4 @ =gUnk_03005498
	ldrb r1, [r2]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _0800C7C8 @ =0x04000054
	ldrb r0, [r2]
	strh r0, [r1]
	subs r3, #6
	ldr r0, _0800C7CC @ =gUnk_030007D8
	ldrb r1, [r0]
	lsls r0, r1, #0xc
	lsls r2, r1, #8
	orrs r0, r2
	lsls r2, r1, #4
	orrs r0, r2
	orrs r1, r0
	strh r1, [r3]
	ldr r0, _0800C7D0 @ =gSineTable
	mov r8, r0
	ldr r1, _0800C7D4 @ =gUnk_03004C20
	mov sb, r1
	ldr r1, [r1]
	lsls r0, r1, #4
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #2
	lsls r1, r1, #2
	movs r2, #0x7f
	ands r1, r2
	lsls r1, r1, #1
	add r1, r8
	movs r3, #0
	ldrsh r1, [r1, r3]
	bl MultiplyQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _0800C7D8 @ =gUnk_030034F8
	strh r0, [r1]
	ldr r5, _0800C7DC @ =gUnk_03002910
	ldrb r0, [r5]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r6, _0800C7E0 @ =gUnk_030034AC
	movs r2, #0
	ldrsh r0, [r6, r2]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	mov r3, sl
	strh r0, [r3]
	ldrb r0, [r5]
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r2, #0
	ldrsh r0, [r6, r2]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	strh r0, [r7]
	ldrb r0, [r5]
	lsls r0, r0, #1
	add r0, r8
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r6, _0800C7E4 @ =gUnk_03005420
	movs r3, #0
	ldrsh r0, [r6, r3]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _0800C7B8 @ =gUnk_030051BC
	strh r0, [r1]
	ldrb r0, [r5]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #0
	ldrsh r0, [r6, r3]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _0800C7BC @ =gUnk_03000808
	strh r0, [r1]
	ldr r2, _0800C79C @ =gUnk_03003430+0x40
	ldrh r1, [r2]
	lsls r1, r1, #4
	mov r3, sl
	movs r0, #0
	ldrsh r2, [r3, r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	movs r3, #0
	ldrsh r2, [r7, r3]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	ldr r0, _0800C7A4 @ =gUnk_030007FC
	str r1, [r0]
	ldr r2, _0800C7A0 @ =gUnk_03003472
	ldrh r1, [r2]
	lsls r1, r1, #4
	ldr r3, _0800C7B8 @ =gUnk_030051BC
	movs r0, #0
	ldrsh r2, [r3, r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	ldr r3, _0800C7BC @ =gUnk_03000808
	movs r0, #0
	ldrsh r2, [r3, r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	ldr r2, _0800C7AC @ =gUnk_030051D0
	str r1, [r2]
	bl thunk_UpdateRng
	mov r3, sb
	ldr r0, [r3, #4]
	adds r0, #1
	str r0, [r3, #4]
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	bl m4aSoundMain
	ldr r1, _0800C7E8 @ =gUnk_03003420
	movs r0, #1
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C78C: .4byte 0x04000010
_0800C790: .4byte gUnk_03003430
_0800C794: .4byte 0x000001FF
_0800C798: .4byte 0x04000018
_0800C79C: .4byte gUnk_03003430+0x40
_0800C7A0: .4byte gUnk_03003472
_0800C7A4: .4byte gUnk_030007FC
_0800C7A8: .4byte 0x0FFF0000
_0800C7AC: .4byte gUnk_030051D0
_0800C7B0: .4byte gUnk_030047B0
_0800C7B4: .4byte gUnk_03005464
_0800C7B8: .4byte gUnk_030051BC
_0800C7BC: .4byte gUnk_03000808
_0800C7C0: .4byte 0x04000052
_0800C7C4: .4byte gUnk_03005498
_0800C7C8: .4byte 0x04000054
_0800C7CC: .4byte gUnk_030007D8
_0800C7D0: .4byte gSineTable
_0800C7D4: .4byte gUnk_03004C20
_0800C7D8: .4byte gUnk_030034F8
_0800C7DC: .4byte gUnk_03002910
_0800C7E0: .4byte gUnk_030034AC
_0800C7E4: .4byte gUnk_03005420
_0800C7E8: .4byte gUnk_03003420

	thumb_func_start sub_0800C7EC
sub_0800C7EC: @ 0x0800C7EC
	push {r4, lr}
	bl sub_0800A49C
	bl sub_08005CF4
	bl VBlankIntrWait
	ldr r2, _0800C8B4 @ =0x04000010
	ldr r3, _0800C8B8 @ =gUnk_03003430
	ldrh r0, [r3, #8]
	lsrs r0, r0, #2
	ldr r4, _0800C8BC @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r3, #0xa]
	lsrs r0, r0, #5
	ands r0, r1
	strh r0, [r2]
	ldr r4, _0800C8C0 @ =0x04000014
	ldrh r2, [r3, #0x24]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldr r2, _0800C8C4 @ =0x04000016
	ldrh r0, [r3, #0x26]
	ands r1, r0
	strh r1, [r2]
	ldr r1, _0800C8C8 @ =0x04000028
	ldr r0, _0800C8CC @ =gUnk_030007FC
	ldr r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800C8D0 @ =0x0FFF0000
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C8D4 @ =gUnk_030051D0
	ldr r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	subs r1, #0xe
	ldr r0, _0800C8D8 @ =gUnk_030047B0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C8DC @ =gUnk_03005464
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C8E0 @ =gUnk_030051BC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C8E4 @ =gUnk_03000808
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _0800C8E8 @ =0x04000052
	ldr r2, _0800C8EC @ =gUnk_03005498
	ldrb r1, [r2]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _0800C8F0 @ =0x04000054
	ldrb r0, [r2]
	strh r0, [r1]
	subs r3, #6
	ldr r0, _0800C8F4 @ =gUnk_030007D8
	ldrb r1, [r0]
	lsls r0, r1, #0xc
	lsls r2, r1, #8
	orrs r0, r2
	lsls r2, r1, #4
	orrs r0, r2
	orrs r1, r0
	strh r1, [r3]
	bl thunk_UpdateRng
	ldr r1, _0800C8F8 @ =gUnk_03004C20
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl m4aSoundMain
	ldr r1, _0800C8FC @ =gUnk_03003420
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C8B4: .4byte 0x04000010
_0800C8B8: .4byte gUnk_03003430
_0800C8BC: .4byte 0x000001FF
_0800C8C0: .4byte 0x04000014
_0800C8C4: .4byte 0x04000016
_0800C8C8: .4byte 0x04000028
_0800C8CC: .4byte gUnk_030007FC
_0800C8D0: .4byte 0x0FFF0000
_0800C8D4: .4byte gUnk_030051D0
_0800C8D8: .4byte gUnk_030047B0
_0800C8DC: .4byte gUnk_03005464
_0800C8E0: .4byte gUnk_030051BC
_0800C8E4: .4byte gUnk_03000808
_0800C8E8: .4byte 0x04000052
_0800C8EC: .4byte gUnk_03005498
_0800C8F0: .4byte 0x04000054
_0800C8F4: .4byte gUnk_030007D8
_0800C8F8: .4byte gUnk_03004C20
_0800C8FC: .4byte gUnk_03003420

	thumb_func_start sub_0800C900
sub_0800C900: @ 0x0800C900
	push {r4, lr}
	bl VBlankIntrWait
	ldr r2, _0800C9C0 @ =0x04000010
	ldr r3, _0800C9C4 @ =gUnk_03003430
	ldrh r0, [r3, #8]
	lsrs r0, r0, #2
	ldr r4, _0800C9C8 @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r3, #0xa]
	lsrs r0, r0, #5
	ands r0, r1
	strh r0, [r2]
	ldr r4, _0800C9CC @ =0x04000014
	ldrh r2, [r3, #0x24]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldr r2, _0800C9D0 @ =0x04000016
	ldrh r0, [r3, #0x26]
	ands r1, r0
	strh r1, [r2]
	ldr r1, _0800C9D4 @ =0x04000028
	ldr r0, _0800C9D8 @ =gUnk_030007FC
	ldr r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800C9DC @ =0x0FFF0000
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C9E0 @ =gUnk_030051D0
	ldr r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	subs r1, #0xe
	ldr r0, _0800C9E4 @ =gUnk_030047B0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C9E8 @ =gUnk_03005464
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C9EC @ =gUnk_030051BC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C9F0 @ =gUnk_03000808
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _0800C9F4 @ =0x04000052
	ldr r2, _0800C9F8 @ =gUnk_03005498
	ldrb r1, [r2]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _0800C9FC @ =0x04000054
	ldrb r0, [r2]
	strh r0, [r1]
	subs r3, #6
	ldr r0, _0800CA00 @ =gUnk_030007D8
	ldrb r1, [r0]
	lsls r0, r1, #0xc
	lsls r2, r1, #8
	orrs r0, r2
	lsls r2, r1, #4
	orrs r0, r2
	orrs r1, r0
	strh r1, [r3]
	bl thunk_UpdateRng
	ldr r1, _0800CA04 @ =gUnk_03004C20
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl m4aSoundMain
	ldr r1, _0800CA08 @ =gUnk_03003420
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C9C0: .4byte 0x04000010
_0800C9C4: .4byte gUnk_03003430
_0800C9C8: .4byte 0x000001FF
_0800C9CC: .4byte 0x04000014
_0800C9D0: .4byte 0x04000016
_0800C9D4: .4byte 0x04000028
_0800C9D8: .4byte gUnk_030007FC
_0800C9DC: .4byte 0x0FFF0000
_0800C9E0: .4byte gUnk_030051D0
_0800C9E4: .4byte gUnk_030047B0
_0800C9E8: .4byte gUnk_03005464
_0800C9EC: .4byte gUnk_030051BC
_0800C9F0: .4byte gUnk_03000808
_0800C9F4: .4byte 0x04000052
_0800C9F8: .4byte gUnk_03005498
_0800C9FC: .4byte 0x04000054
_0800CA00: .4byte gUnk_030007D8
_0800CA04: .4byte gUnk_03004C20
_0800CA08: .4byte gUnk_03003420

	thumb_func_start sub_0800CA0C
sub_0800CA0C: @ 0x0800CA0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	ldr r2, _0800CA6C @ =0x03003508
	movs r0, #3
	strh r0, [r2]
	ldr r0, _0800CA70 @ =gUnk_03004C20
	movs r1, #0
	strb r1, [r0, #0xb]
	strb r1, [r0, #0xa]
	movs r4, #0
	mov ip, r0
	ldr r0, _0800CA74 @ =0x03000810
	mov sl, r0
	ldr r7, _0800CA78 @ =gUnk_03002920
	ldr r1, _0800CA7C @ =gUnk_03005284
	mov sb, r1
	mov r5, ip
	ldr r0, _0800CA80 @ =0x080D821C
	ldrb r3, [r5, #0xd]
	str r3, [sp, #4]
	ldr r6, _0800CA84 @ =0x03004D80
	mov r8, r6
	adds r3, r0, #0
	adds r3, #8
_0800CA46:
	ldr r1, [sp, #4]
	ldrb r6, [r3]
	cmp r1, r6
	bne _0800CA88
	mov r6, ip
	ldrb r1, [r6, #0xc]
	ldrb r6, [r3, #1]
	cmp r1, r6
	bne _0800CA88
	mov r3, r8
	str r0, [r3]
	movs r0, #1
	strb r0, [r5, #0xa]
	cmp r1, #8
	beq _0800CA92
	strb r0, [r5, #0xb]
	movs r0, #6
	strh r0, [r2]
	b _0800CA92
	.align 2, 0
_0800CA6C: .4byte 0x03003508
_0800CA70: .4byte gUnk_03004C20
_0800CA74: .4byte 0x03000810
_0800CA78: .4byte gUnk_03002920
_0800CA7C: .4byte gUnk_03005284
_0800CA80: .4byte 0x080D821C
_0800CA84: .4byte 0x03004D80
_0800CA88:
	adds r3, #0xc
	adds r0, #0xc
	adds r4, #1
	cmp r4, #0xc
	bls _0800CA46
_0800CA92:
	movs r0, #0
	mov r4, sl
	strb r0, [r4]
	mov r6, ip
	ldrb r0, [r6, #0xc]
	cmp r0, #8
	bne _0800CACC
	ldr r1, _0800CAC8 @ =0x080D6458
	ldrb r0, [r6, #0xd]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7]
	ldrb r0, [r6, #0xd]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	strh r0, [r7, #2]
	ldrb r0, [r6, #0xd]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r0, #4]
	b _0800CB40
	.align 2, 0
_0800CAC8: .4byte 0x080D6458
_0800CACC:
	ldr r6, _0800CBE8 @ =gUnk_080D48C8
	ldr r5, _0800CBEC @ =gUnk_030051C8
	ldrb r1, [r5]
	adds r1, #1
	ldr r0, _0800CBF0 @ =gUnk_03004654
	ldr r4, [r0]
	ldrb r0, [r4, #1]
	subs r1, r1, r0
	lsls r1, r1, #3
	mov r2, ip
	ldrb r0, [r2, #0xc]
	subs r0, #1
	movs r3, #0xa8
	muls r0, r3, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	movs r2, #0x93
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r6
	ldrh r0, [r1]
	strh r0, [r7]
	ldrb r1, [r5]
	adds r1, #1
	ldrb r0, [r4, #1]
	subs r1, r1, r0
	lsls r1, r1, #3
	mov r8, r1
	mov r1, ip
	ldrb r0, [r1, #0xc]
	subs r0, #1
	muls r0, r3, r0
	add r8, r0
	ldrb r0, [r1, #0xd]
	subs r0, #1
	muls r0, r2, r0
	add r0, r8
	adds r1, r0, r6
	ldrh r0, [r1, #2]
	strh r0, [r7, #2]
	ldrb r1, [r5]
	adds r1, #1
	ldrb r0, [r4, #1]
	subs r1, r1, r0
	lsls r1, r1, #3
	mov r4, ip
	ldrb r0, [r4, #0xc]
	subs r0, #1
	muls r0, r3, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r6
	ldrb r1, [r1, #4]
_0800CB40:
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1c
	ldrb r2, [r7, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0xc]
	ldr r6, [sp]
	cmp r6, #0
	bne _0800CC52
	ldr r1, _0800CBF4 @ =gUnk_03005284
	ldr r0, [r1]
	strb r6, [r0, #6]
	ldr r2, [r1]
	ldr r4, _0800CBF8 @ =gUnk_03004C20
	ldrb r0, [r4, #0xd]
	strb r0, [r2, #1]
	ldr r2, [r1]
	ldrb r0, [r4, #0xc]
	strb r0, [r2, #2]
	ldr r0, [r1]
	mov r3, sp
	ldrh r3, [r3]
	strh r3, [r0, #0x16]
	ldr r0, _0800CBFC @ =gUnk_03003410
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _0800CB8A
	movs r0, #0
	movs r1, #1
	bl sub_08046DB8
	movs r0, #1
	movs r1, #0
	bl sub_08046DB8
_0800CB8A:
	ldr r2, _0800CC00 @ =gUnk_03005220
	ldrb r1, [r2]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0800CC04 @ =0xFFFFF01F
	ands r0, r1
	strh r0, [r2]
	ldrb r0, [r2]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r2, #1]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #1]
	mov r6, sp
	ldrh r6, [r6]
	strh r6, [r2, #0x14]
	ldrb r1, [r2, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2, #3]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0800CBDC
	ldrb r0, [r4, #0xd]
	cmp r0, #6
	bne _0800CC08
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0800CBDC
	cmp r0, #3
	bne _0800CC08
_0800CBDC:
	ldr r0, _0800CBF4 @ =gUnk_03005284
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	str r1, [r2, #4]
	b _0800CC0E
	.align 2, 0
_0800CBE8: .4byte gUnk_080D48C8
_0800CBEC: .4byte gUnk_030051C8
_0800CBF0: .4byte gUnk_03004654
_0800CBF4: .4byte gUnk_03005284
_0800CBF8: .4byte gUnk_03004C20
_0800CBFC: .4byte gUnk_03003410
_0800CC00: .4byte gUnk_03005220
_0800CC04: .4byte 0xFFFFF01F
_0800CC08:
	movs r0, #0
	str r0, [r2, #4]
	ldr r0, _0800CD38 @ =gUnk_03005284
_0800CC0E:
	mov sb, r0
	ldr r4, _0800CD3C @ =gUnk_03005220
	movs r2, #0
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	ldrh r1, [r4, #2]
	ldr r0, _0800CD40 @ =0xFFFFE07F
	ands r0, r1
	strh r0, [r4, #2]
	adds r0, r4, #0
	adds r0, #0x2e
	strb r2, [r0]
	adds r0, #0x2a
	strb r2, [r0]
	ldr r0, [r4]
	ldr r1, _0800CD44 @ =0xFF807FFF
	ands r0, r1
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #0
	strh r2, [r0]
	subs r0, #0x11
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	ldr r3, _0800CD48 @ =gUnk_03004C20
	strh r2, [r3, #8]
	strh r2, [r4, #0x1c]
	adds r0, #0x11
	strb r1, [r0]
	mov ip, r3
_0800CC52:
	ldr r1, [sp]
	cmp r1, #1
	bne _0800CD50
	ldr r6, _0800CD3C @ =gUnk_03005220
	mov r2, sb
	ldr r0, [r2]
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x4c
	movs r5, #0
	strb r1, [r0]
	ldr r3, [r2]
	ldrb r1, [r3, #8]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	ldrb r2, [r3, #8]
	movs r1, #0x1c
	ands r1, r2
	movs r2, #0x1d
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	ldrh r0, [r3, #8]
	movs r1, #0xfe
	lsls r1, r1, #4
	ands r1, r0
	ldrh r2, [r6]
	ldr r0, _0800CD4C @ =0xFFFFF01F
	ands r0, r2
	orrs r0, r1
	strh r0, [r6]
	ldrb r0, [r3, #9]
	movs r1, #0x70
	ands r1, r0
	ldrb r2, [r6, #1]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #1]
	ldr r0, [r3, #0x18]
	str r0, [r6, #4]
	ldrh r0, [r3, #0xa]
	movs r1, #0xfc
	lsls r1, r1, #5
	ands r1, r0
	ldrh r2, [r6, #2]
	ldr r0, _0800CD40 @ =0xFFFFE07F
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #2]
	ldrb r0, [r3, #0xb]
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r6, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #3]
	ldrb r2, [r3, #0xb]
	movs r1, #0x40
	ands r1, r2
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #3]
	ldr r0, [r3, #0xc]
	str r0, [r6, #8]
	ldr r0, [r3, #0x10]
	str r0, [r6, #0xc]
	ldrh r0, [r3, #0x14]
	movs r4, #0
	strh r0, [r6, #0x14]
	ldrb r0, [r3, #5]
	adds r1, r6, #0
	adds r1, #0x2e
	strb r0, [r1]
	mov r3, sb
	ldr r0, [r3]
	ldrb r1, [r0, #7]
	adds r0, r6, #0
	adds r0, #0x58
	strb r1, [r0]
	ldr r3, [r3]
	ldr r2, [r3, #8]
	movs r0, #0xff
	lsls r0, r0, #0xf
	ands r2, r0
	ldr r0, [r6]
	ldr r1, _0800CD44 @ =0xFF807FFF
	ands r0, r1
	orrs r0, r2
	str r0, [r6]
	ldrh r0, [r3, #0x16]
	mov r1, ip
	strh r0, [r1, #8]
	adds r0, r6, #0
	adds r0, #0x60
	strh r5, [r0]
	subs r0, #0x11
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	b _0800CE64
	.align 2, 0
_0800CD38: .4byte gUnk_03005284
_0800CD3C: .4byte gUnk_03005220
_0800CD40: .4byte 0xFFFFE07F
_0800CD44: .4byte 0xFF807FFF
_0800CD48: .4byte gUnk_03004C20
_0800CD4C: .4byte 0xFFFFF01F
_0800CD50:
	mov r2, sb
	ldr r1, [r2]
	ldr r4, _0800CE40 @ =gUnk_03005220
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	movs r5, #0
	strb r0, [r1]
	ldr r1, [r2]
	mov r3, ip
	ldrb r0, [r3, #0xd]
	strb r0, [r1, #1]
	ldr r1, [r2]
	ldrb r0, [r3, #0xc]
	strb r0, [r1, #2]
	ldr r3, [r2]
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r3, #8]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
	mov r6, sb
	ldr r3, [r6]
	mov r1, ip
	ldrh r0, [r1, #8]
	strh r0, [r3, #0x16]
	ldrb r0, [r4]
	movs r1, #0x1c
	ands r1, r0
	ldrb r2, [r3, #8]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
	ldr r3, [r6]
	ldrb r0, [r4, #1]
	movs r1, #0x70
	ands r1, r0
	ldrb r2, [r3, #9]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #9]
	ldr r3, [r6]
	ldrh r0, [r4, #0x14]
	strh r0, [r3, #0x14]
	ldrb r0, [r4, #3]
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r3, #0xb]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xb]
	ldr r3, [r6]
	ldrb r0, [r4, #3]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0xb]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xb]
	ldr r1, [r6]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	strb r0, [r1, #5]
	ldr r1, [r6]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	strb r0, [r1, #7]
	ldr r3, [r6]
	ldr r2, [r4]
	movs r0, #0xff
	lsls r0, r0, #0xf
	ands r2, r0
	ldr r0, [r3, #8]
	ldr r1, _0800CE44 @ =0xFF807FFF
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #8]
	ldr r0, [r4, #4]
	str r0, [r3, #0x18]
	mov r2, ip
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _0800CE50
	ldrh r0, [r4]
	movs r1, #0xfe
	lsls r1, r1, #4
	ands r1, r0
	ldrh r2, [r3, #8]
	ldr r0, _0800CE48 @ =0xFFFFF01F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #8]
	ldr r0, [r4, #8]
	str r0, [r3, #0xc]
	ldr r0, [r4, #0xc]
	str r0, [r3, #0x10]
	ldrh r0, [r4, #2]
	movs r1, #0xfc
	lsls r1, r1, #5
	ands r1, r0
	ldrh r2, [r3, #0xa]
	ldr r0, _0800CE4C @ =0xFFFFE07F
	ands r0, r2
	orrs r0, r1
	b _0800CE62
	.align 2, 0
_0800CE40: .4byte gUnk_03005220
_0800CE44: .4byte 0xFF807FFF
_0800CE48: .4byte 0xFFFFF01F
_0800CE4C: .4byte 0xFFFFE07F
_0800CE50:
	ldrh r1, [r3, #8]
	ldr r0, _0800CE74 @ =0xFFFFF01F
	ands r0, r1
	strh r0, [r3, #8]
	str r5, [r3, #0xc]
	str r5, [r3, #0x10]
	ldrh r1, [r3, #0xa]
	ldr r0, _0800CE78 @ =0xFFFFE07F
	ands r0, r1
_0800CE62:
	strh r0, [r3, #0xa]
_0800CE64:
	ldr r3, _0800CE7C @ =gUnk_03003410
	ldrb r0, [r3, #0xa]
	cmp r0, #0
	bne _0800CE88
	ldr r1, _0800CE80 @ =gUnk_03003510
	ldr r0, _0800CE84 @ =InputHandler_Normal
	b _0800CE8C
	.align 2, 0
_0800CE74: .4byte 0xFFFFF01F
_0800CE78: .4byte 0xFFFFE07F
_0800CE7C: .4byte gUnk_03003410
_0800CE80: .4byte gUnk_03003510
_0800CE84: .4byte InputHandler_Normal
_0800CE88:
	ldr r1, _0800CEEC @ =gUnk_03003510
	ldr r0, _0800CEF0 @ =InputHandler_AttractMode
_0800CE8C:
	str r0, [r1, #0x28]
	adds r3, r1, #0
	movs r2, #0
	ldr r4, _0800CEF4 @ =gUnk_03003410
	strb r2, [r4, #5]
	str r2, [r4]
	strb r2, [r4, #0xb]
	ldr r0, _0800CEF8 @ =0x030051E0
	strh r2, [r0]
	ldr r1, _0800CEFC @ =0x030034C4
	movs r0, #0xfe
	strb r0, [r1]
	ldr r0, _0800CF00 @ =gUnk_03003430
	adds r1, r0, #0
	adds r1, #0x46
	strh r2, [r1]
	adds r0, #0x44
	strh r2, [r0]
	mov r6, ip
	ldrb r1, [r6, #0xc]
	cmp r1, #8
	bne _0800CF1C
	ldr r0, _0800CF04 @ =sub_0803C808
	str r0, [r3, #0x2c]
	ldr r0, _0800CF08 @ =sub_08002AC4
	str r0, [r3, #0x30]
	ldr r0, _0800CF0C @ =sub_0800AC34
	str r0, [r3, #0x34]
	ldr r0, _0800CF10 @ =sub_080242C0
	str r0, [r3, #0x38]
	ldr r0, _0800CF14 @ =sub_08026374
	str r0, [r3, #0x3c]
	ldr r0, _0800CF18 @ =sub_0800C108
	str r0, [r3, #0x40]
	movs r0, #1
	str r0, [r3, #0x44]
	adds r0, r3, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r3
	str r2, [r0]
	adds r0, r3, #0
	adds r0, #0x79
	strb r1, [r0]
	b _0800CFD0
	.align 2, 0
_0800CEEC: .4byte gUnk_03003510
_0800CEF0: .4byte InputHandler_AttractMode
_0800CEF4: .4byte gUnk_03003410
_0800CEF8: .4byte 0x030051E0
_0800CEFC: .4byte 0x030034C4
_0800CF00: .4byte gUnk_03003430
_0800CF04: .4byte sub_0803C808
_0800CF08: .4byte sub_08002AC4
_0800CF0C: .4byte sub_0800AC34
_0800CF10: .4byte sub_080242C0
_0800CF14: .4byte sub_08026374
_0800CF18: .4byte sub_0800C108
_0800CF1C:
	ldr r0, _0800CF2C @ =sub_0800A804
	str r0, [r3, #0x2c]
	mov r2, ip
	ldrb r0, [r2, #0xb]
	cmp r0, #1
	bne _0800CF34
	ldr r0, _0800CF30 @ =sub_080027C4
	b _0800CF42
	.align 2, 0
_0800CF2C: .4byte sub_0800A804
_0800CF30: .4byte sub_080027C4
_0800CF34:
	cmp r1, #6
	bne _0800CF40
	ldr r0, _0800CF3C @ =sub_0800247C
	b _0800CF42
	.align 2, 0
_0800CF3C: .4byte sub_0800247C
_0800CF40:
	ldr r0, _0800CF78 @ =sub_08001F58
_0800CF42:
	str r0, [r3, #0x30]
	ldr r0, _0800CF7C @ =sub_080242C0
	str r0, [r3, #0x34]
	ldr r4, [sp]
	cmp r4, #1
	bhi _0800CFAC
	ldr r6, _0800CF80 @ =gUnk_03003410
	ldrb r1, [r6, #0xa]
	cmp r1, #0
	bne _0800CF8C
	ldr r0, _0800CF84 @ =sub_08026374
	str r0, [r3, #0x38]
	ldr r0, _0800CF88 @ =sub_0800BFF4
	str r0, [r3, #0x3c]
	movs r0, #1
	str r0, [r3, #0x40]
	adds r0, r3, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r3
	str r1, [r0]
	adds r1, r3, #0
	adds r1, #0x79
	movs r0, #7
	b _0800CFCE
	.align 2, 0
_0800CF78: .4byte sub_08001F58
_0800CF7C: .4byte sub_080242C0
_0800CF80: .4byte gUnk_03003410
_0800CF84: .4byte sub_08026374
_0800CF88: .4byte sub_0800BFF4
_0800CF8C:
	ldr r0, _0800CFA8 @ =sub_0800BFF4
	str r0, [r3, #0x38]
	movs r0, #1
	str r0, [r3, #0x3c]
	adds r0, r3, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r3
	movs r1, #0
	str r1, [r0]
	b _0800CFC8
	.align 2, 0
_0800CFA8: .4byte sub_0800BFF4
_0800CFAC:
	movs r2, #0
	movs r1, #1
	ldr r0, _0800D024 @ =gUnk_03003410
	strb r1, [r0, #5]
	ldr r0, _0800D028 @ =sub_0800BFF4
	str r0, [r3, #0x38]
	str r1, [r3, #0x3c]
	adds r0, r3, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r3
	str r2, [r0]
_0800CFC8:
	adds r1, r3, #0
	adds r1, #0x79
	movs r0, #6
_0800CFCE:
	strb r0, [r1]
_0800CFD0:
	ldr r0, _0800D02C @ =gUnk_030034E4
	movs r1, #1
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1, #0xc]
	cmp r0, #6
	bne _0800D066
	ldr r4, _0800D030 @ =gUnk_030034E8
	ldr r3, _0800D034 @ =0x080D89A8
	ldrb r2, [r1, #0xe]
	subs r2, #1
	ldrb r1, [r1, #0xd]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r5, [r0]
	str r5, [r4]
	mov r6, ip
	ldrb r2, [r6, #0xe]
	subs r2, #1
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r3, #4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r4, #4]
	ldr r1, _0800D038 @ =gUnk_030051B8
	movs r0, #0
	strb r0, [r1]
	adds r2, r1, #0
	cmp r5, #0
	ble _0800D03C
	movs r0, #0x10
	b _0800D042
	.align 2, 0
_0800D024: .4byte gUnk_03003410
_0800D028: .4byte sub_0800BFF4
_0800D02C: .4byte gUnk_030034E4
_0800D030: .4byte gUnk_030034E8
_0800D034: .4byte 0x080D89A8
_0800D038: .4byte gUnk_030051B8
_0800D03C:
	cmp r5, #0
	bge _0800D044
	movs r0, #0x20
_0800D042:
	strb r0, [r2]
_0800D044:
	ldr r4, [r4, #4]
	cmp r4, #0
	ble _0800D050
	ldrb r0, [r2]
	movs r1, #0x80
	b _0800D058
_0800D050:
	cmp r4, #0
	bge _0800D05C
	ldrb r0, [r2]
	movs r1, #0x40
_0800D058:
	orrs r0, r1
	strb r0, [r2]
_0800D05C:
	ldr r0, _0800D080 @ =gUnk_03005480
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800D084 @ =gUnk_030007C0
	str r1, [r0]
_0800D066:
	mov r1, ip
	ldrb r0, [r1, #0xd]
	cmp r0, #5
	bne _0800D088
	ldrb r0, [r1, #0xc]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0800D088
	movs r0, #1
	strb r0, [r1, #0x11]
	b _0800D08E
	.align 2, 0
_0800D080: .4byte gUnk_03005480
_0800D084: .4byte gUnk_030007C0
_0800D088:
	movs r0, #0
	mov r2, ip
	strb r0, [r2, #0x11]
_0800D08E:
	ldr r4, _0800D0BC @ =gUnk_0300542C
	ldr r3, _0800D0C0 @ =0x0818B704
	mov r6, ip
	ldrb r2, [r6, #0xc]
	subs r2, #1
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D0BC: .4byte gUnk_0300542C
_0800D0C0: .4byte 0x0818B704

	thumb_func_start sub_0800D0C4
sub_0800D0C4: @ 0x0800D0C4
	push {r4, lr}
	bl sub_08005CF4
	bl VBlankIntrWait
	ldr r4, _0800D160 @ =0x04000010
	ldr r3, _0800D164 @ =gUnk_03003430
	ldrh r2, [r3, #8]
	ldr r1, _0800D168 @ =0x000001FF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	adds r4, #2
	ldrh r2, [r3, #0xa]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	adds r4, #2
	ldrh r2, [r3, #0x24]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	adds r4, #2
	ldrh r2, [r3, #0x26]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	adds r4, #2
	adds r0, r3, #0
	adds r0, #0x40
	ldrh r2, [r0]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldr r2, _0800D16C @ =0x0400001A
	adds r3, #0x42
	ldrh r0, [r3]
	ands r1, r0
	strh r1, [r2]
	ldr r3, _0800D170 @ =0x04000052
	ldr r2, _0800D174 @ =gUnk_03005498
	ldrb r1, [r2]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _0800D178 @ =0x04000054
	ldrb r0, [r2]
	strh r0, [r1]
	subs r3, #6
	ldr r0, _0800D17C @ =gUnk_030007D8
	ldrb r1, [r0]
	lsls r0, r1, #0xc
	lsls r2, r1, #8
	orrs r0, r2
	lsls r2, r1, #4
	orrs r0, r2
	orrs r1, r0
	strh r1, [r3]
	bl thunk_UpdateRng
	ldr r1, _0800D180 @ =gUnk_03004C20
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl m4aSoundMain
	ldr r1, _0800D184 @ =gUnk_03003420
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D160: .4byte 0x04000010
_0800D164: .4byte gUnk_03003430
_0800D168: .4byte 0x000001FF
_0800D16C: .4byte 0x0400001A
_0800D170: .4byte 0x04000052
_0800D174: .4byte gUnk_03005498
_0800D178: .4byte 0x04000054
_0800D17C: .4byte gUnk_030007D8
_0800D180: .4byte gUnk_03004C20
_0800D184: .4byte gUnk_03003420

	thumb_func_start sub_0800D188
sub_0800D188: @ 0x0800D188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	ldr r1, _0800D244 @ =gUnk_03002920
	ldrh r0, [r1]
	str r0, [sp, #0x18]
	ldrh r2, [r1, #2]
	str r2, [sp, #0x1c]
	movs r3, #0
	str r3, [sp, #0x20]
	ldr r0, _0800D248 @ =gUnk_03005220
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D1AE
	b _0800D34A
_0800D1AE:
	ldr r7, _0800D24C @ =gNewKeys
	ldr r3, _0800D250 @ =gHeldKeys
	cmp r0, #0x41
	bhi _0800D21A
	cmp r0, #0x41
	bne _0800D1FE
	ldr r1, _0800D254 @ =gUnk_03005498
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0800D258 @ =0x04000052
	movs r1, #0x10
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _0800D25C @ =0x04000050
	movs r4, #0xe8
	lsls r4, r4, #3
	adds r0, r4, #0
	strh r0, [r1]
	movs r5, #1
	mov sb, r5
	ldr r4, _0800D260 @ =gUnk_03005428
	ldrb r6, [r4]
	cmp sb, r6
	bhs _0800D1FE
	movs r6, #4
	rsbs r6, r6, #0
	ldr r2, _0800D244 @ =gUnk_03002920
	adds r2, #0x29
_0800D1E8:
	ldrb r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2]
	adds r2, #0x1c
	movs r0, #1
	add sb, r0
	ldrb r1, [r4]
	cmp sb, r1
	blo _0800D1E8
_0800D1FE:
	ldr r0, _0800D264 @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0800D21A
	ldr r0, _0800D254 @ =gUnk_03005498
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	beq _0800D21A
	subs r0, r1, #1
	mov r2, sb
	strb r0, [r2]
_0800D21A:
	movs r0, #0
	strh r0, [r7]
	strh r0, [r3]
	ldr r2, _0800D248 @ =gUnk_03005220
	adds r4, r2, #0
	adds r4, #0x46
	ldrb r0, [r4]
	cmp r0, #1
	bne _0800D318
	ldr r1, _0800D268 @ =gUnk_03003510
	ldr r0, _0800D26C @ =InputHandler_Normal
	str r0, [r1, #0x28]
	ldr r0, _0800D264 @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	mov r8, r1
	cmp r0, #8
	bne _0800D274
	ldr r0, _0800D270 @ =sub_0800C108
	str r0, [r1, #0x30]
	b _0800D27A
	.align 2, 0
_0800D244: .4byte gUnk_03002920
_0800D248: .4byte gUnk_03005220
_0800D24C: .4byte gNewKeys
_0800D250: .4byte gHeldKeys
_0800D254: .4byte gUnk_03005498
_0800D258: .4byte 0x04000052
_0800D25C: .4byte 0x04000050
_0800D260: .4byte gUnk_03005428
_0800D264: .4byte gUnk_03004C20
_0800D268: .4byte gUnk_03003510
_0800D26C: .4byte InputHandler_Normal
_0800D270: .4byte sub_0800C108
_0800D274:
	ldr r0, _0800D2EC @ =sub_0800BFF4
	mov r3, r8
	str r0, [r3, #0x30]
_0800D27A:
	movs r6, #1
	mov r4, r8
	str r6, [r4, #0x34]
	mov r7, r8
	adds r7, #0x78
	ldrb r0, [r7]
	subs r0, #1
	lsls r0, r0, #2
	add r0, r8
	movs r4, #0
	str r4, [r0]
	mov r1, r8
	adds r1, #0x79
	movs r0, #4
	strb r0, [r1]
	ldr r5, _0800D2F0 @ =gUnk_03004C20
	ldrb r0, [r5, #0xc]
	cmp r0, #8
	bne _0800D2B8
	ldr r1, _0800D2F4 @ =gUnk_03002920
	ldr r2, _0800D2F8 @ =0x00000207
	adds r0, r1, r2
	movs r1, #0x1c
	strb r1, [r0]
	ldr r3, _0800D2F4 @ =gUnk_03002920
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r3, r1
	strb r4, [r0]
	bl sub_08003D80
_0800D2B8:
	ldr r3, _0800D2FC @ =gUnk_03005220
	adds r0, r3, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	subs r2, r1, #1
	strb r2, [r0]
	subs r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x62
	bls _0800D308
	subs r0, #0x15
	strb r6, [r0]
	bl sub_080008DC
	bl m4aMPlayAllStop
	ldr r0, _0800D300 @ =sub_080446F8
	mov r2, r8
	str r0, [r2, #0x2c]
	ldr r0, _0800D304 @ =sub_0800C7EC
	str r0, [r2, #0x30]
	str r4, [r5]
	strb r6, [r7]
	str r4, [r2]
	b _0800D34A
	.align 2, 0
_0800D2EC: .4byte sub_0800BFF4
_0800D2F0: .4byte gUnk_03004C20
_0800D2F4: .4byte gUnk_03002920
_0800D2F8: .4byte 0x00000207
_0800D2FC: .4byte gUnk_03005220
_0800D300: .4byte sub_080446F8
_0800D304: .4byte sub_0800C7EC
_0800D308:
	strb r4, [r5, #0xf]
	ldr r0, _0800D314 @ =sub_08024D84
	mov r3, r8
	str r0, [r3, #0x2c]
	b _0800D34A
	.align 2, 0
_0800D314: .4byte sub_08024D84
_0800D318:
	adds r0, r2, #0
	adds r0, #0x31
	adds r3, r2, #0
	adds r3, #0x35
	ldrb r1, [r0]
	ldrb r0, [r3]
	orrs r1, r0
	cmp r1, #0
	bne _0800D34A
	adds r3, #0x12
	ldrb r0, [r3]
	cmp r0, #0x63
	bhi _0800D34A
	adds r0, #1
	strb r0, [r3]
	ldr r5, _0800D344 @ =gUnk_03002920
	ldrh r0, [r5, #6]
	cmp r0, #0xb7
	bhi _0800D348
	movs r0, #0x46
	strb r0, [r4]
	b _0800D34A
	.align 2, 0
_0800D344: .4byte gUnk_03002920
_0800D348:
	strh r1, [r2, #0x28]
_0800D34A:
	ldr r1, _0800D378 @ =gUnk_03005220
	adds r2, r1, #0
	adds r2, #0x3e
	ldrb r0, [r2]
	adds r6, r1, #0
	cmp r0, #0
	beq _0800D446
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x43
	bls _0800D37C
	adds r0, r6, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800D398
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0800D398
	b _0800D38E
	.align 2, 0
_0800D378: .4byte gUnk_03005220
_0800D37C:
	adds r0, r6, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800D398
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0800D398
_0800D38E:
	ldr r0, _0800D3C0 @ =gUnk_03002920
	ldrb r1, [r0, #0x10]
	movs r2, #1
	eors r1, r2
	strb r1, [r0, #0x10]
_0800D398:
	adds r0, r6, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D3D4
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0x78
	bls _0800D3D4
	adds r0, r6, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D3C4
	ldr r1, _0800D3C0 @ =gUnk_03002920
	ldrh r0, [r1]
	subs r0, #1
	b _0800D3CA
	.align 2, 0
_0800D3C0: .4byte gUnk_03002920
_0800D3C4:
	ldr r1, _0800D40C @ =gUnk_03002920
	ldrh r0, [r1]
	adds r0, #1
_0800D3CA:
	strh r0, [r1]
	ldr r6, _0800D40C @ =gUnk_03002920
	ldrh r0, [r6, #2]
	subs r0, #1
	strh r0, [r6, #2]
_0800D3D4:
	ldr r0, _0800D410 @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0800D434
	ldr r2, _0800D414 @ =gUnk_03005220
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0x6c
	bhi _0800D434
	adds r0, r2, #0
	adds r0, #0x34
	adds r1, r2, #0
	adds r1, #0x39
	ldrb r0, [r0]
	ldrb r1, [r1]
	orrs r0, r1
	adds r1, r2, #0
	adds r1, #0x38
	ldrb r1, [r1]
	orrs r0, r1
	cmp r0, #0
	beq _0800D418
	movs r0, #0
	movs r1, #0xf
	bl sub_08025B78
	b _0800D434
	.align 2, 0
_0800D40C: .4byte gUnk_03002920
_0800D410: .4byte gUnk_03000830
_0800D414: .4byte gUnk_03005220
_0800D418:
	adds r0, r2, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D42C
	movs r0, #0
	movs r1, #0
	bl sub_08025B78
	b _0800D434
_0800D42C:
	movs r0, #0
	movs r1, #0x16
	bl sub_08025B78
_0800D434:
	ldr r0, _0800D474 @ =gUnk_03005220
	adds r1, r0, #0
	adds r1, #0x3e
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #0
	bne _0800D446
	adds r0, #0x5b
	strb r1, [r0]
_0800D446:
	ldr r0, _0800D478 @ =gUnk_03004C20
	ldrb r1, [r0, #0xa]
	cmp r1, #0
	beq _0800D450
	b _0800D900
_0800D450:
	ldr r0, _0800D47C @ =gUnk_03003410
	ldrb r0, [r0, #0xb]
	cmp r0, #1
	bls _0800D488
	ldr r7, _0800D478 @ =gUnk_03004C20
	ldrb r0, [r7, #0xc]
	ldr r3, _0800D480 @ =gNewKeys
	ldrh r2, [r3]
	movs r1, #8
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldr r2, _0800D484 @ =gHeldKeys
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	bl _08014164
	.align 2, 0
_0800D474: .4byte gUnk_03005220
_0800D478: .4byte gUnk_03004C20
_0800D47C: .4byte gUnk_03003410
_0800D480: .4byte gNewKeys
_0800D484: .4byte gHeldKeys
_0800D488:
	ldr r0, _0800D50C @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0800D492
	b _0800D69E
_0800D492:
	ldr r0, _0800D510 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D570
	ldr r2, _0800D514 @ =gUnk_03002920
	ldrb r1, [r2, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xc]
	adds r0, r6, #0
	adds r0, #0x34
	adds r3, r6, #0
	adds r3, #0x39
	ldrb r1, [r0]
	ldrb r0, [r3]
	orrs r0, r1
	cmp r0, #0
	beq _0800D4BE
	b _0800D69E
_0800D4BE:
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800D4EE
	adds r0, r6, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D4EE
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r0, r0, r1
	ldrb r0, [r0, #0x11]
	cmp r0, #0x6f
	beq _0800D4EE
	cmp r0, #0x25
	beq _0800D4EE
	b _0800D69E
_0800D4EE:
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r3, [r6, #0x26]
	adds r0, r0, r3
	strh r0, [r6, #0x26]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #5
	cmp r0, r1
	ble _0800D518
	strh r1, [r6, #0x26]
	b _0800D520
	.align 2, 0
_0800D50C: .4byte gUnk_03000830
_0800D510: .4byte gHeldKeys
_0800D514: .4byte gUnk_03002920
_0800D518:
	cmp r0, #0
	bge _0800D520
	movs r0, #0
	strh r0, [r6, #0x26]
_0800D520:
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0800D550
	ldr r4, _0800D548 @ =gUnk_03004C20
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D53E
	ldr r5, _0800D54C @ =gUnk_03002920
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_0800D53E:
	ldr r7, _0800D54C @ =gUnk_03002920
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	b _0800D69E
	.align 2, 0
_0800D548: .4byte gUnk_03004C20
_0800D54C: .4byte gUnk_03002920
_0800D550:
	ldr r1, _0800D568 @ =gUnk_03004C20
	ldr r0, [r1, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D55E
	b _0800D69E
_0800D55E:
	ldr r2, _0800D56C @ =gUnk_03002920
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	b _0800D69E
	.align 2, 0
_0800D568: .4byte gUnk_03004C20
_0800D56C: .4byte gUnk_03002920
_0800D570:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800D64C
	ldr r2, _0800D5E8 @ =gUnk_03002920
	ldrb r1, [r2, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0xc]
	adds r0, r6, #0
	adds r0, #0x34
	adds r3, r6, #0
	adds r3, #0x39
	ldrb r1, [r0]
	ldrb r0, [r3]
	orrs r0, r1
	cmp r0, #0
	beq _0800D5A0
	b _0800D69E
_0800D5A0:
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800D5CE
	adds r0, r6, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D5CE
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r3, r2, #0
	adds r0, r0, r3
	ldrb r0, [r0, #0x11]
	cmp r0, #0x6f
	beq _0800D5CE
	cmp r0, #0x25
	bne _0800D69E
_0800D5CE:
	ldr r4, _0800D5EC @ =0xFFFFFEB0
	adds r0, r4, #0
	ldrh r5, [r6, #0x26]
	adds r0, r0, r5
	strh r0, [r6, #0x26]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0800D5F0 @ =0xFFFFE800
	cmp r1, r0
	bge _0800D5F4
	movs r0, #0xe8
	lsls r0, r0, #8
	b _0800D5FA
	.align 2, 0
_0800D5E8: .4byte gUnk_03002920
_0800D5EC: .4byte 0xFFFFFEB0
_0800D5F0: .4byte 0xFFFFE800
_0800D5F4:
	cmp r1, #0
	ble _0800D5FC
	movs r0, #0
_0800D5FA:
	strh r0, [r6, #0x26]
_0800D5FC:
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0800D62C
	ldr r7, _0800D624 @ =gUnk_03004C20
	ldr r0, [r7, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D61A
	ldr r1, _0800D628 @ =gUnk_03002920
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
_0800D61A:
	ldr r2, _0800D628 @ =gUnk_03002920
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	b _0800D69E
	.align 2, 0
_0800D624: .4byte gUnk_03004C20
_0800D628: .4byte gUnk_03002920
_0800D62C:
	ldr r3, _0800D644 @ =gUnk_03004C20
	ldr r0, [r3, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800D69E
	ldr r4, _0800D648 @ =gUnk_03002920
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	b _0800D69E
	.align 2, 0
_0800D644: .4byte gUnk_03004C20
_0800D648: .4byte gUnk_03002920
_0800D64C:
	ldrh r3, [r6, #0x26]
	movs r5, #0x26
	ldrsh r1, [r6, r5]
	movs r0, #0xd2
	lsls r0, r0, #4
	cmp r1, r0
	ble _0800D674
	ldr r0, _0800D66C @ =gUnk_03002920
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	ldr r7, _0800D670 @ =0xFFFFFEB0
	adds r0, r3, r7
	strh r0, [r6, #0x26]
	b _0800D69E
	.align 2, 0
_0800D66C: .4byte gUnk_03002920
_0800D670: .4byte 0xFFFFFEB0
_0800D674:
	ldr r0, _0800D690 @ =0xFFFFF2E0
	cmp r1, r0
	bge _0800D69C
	ldr r0, _0800D694 @ =gUnk_03002920
	ldr r2, _0800D698 @ =0x0000FFFF
	adds r1, r2, #0
	ldrh r4, [r0]
	adds r1, r1, r4
	strh r1, [r0]
	movs r5, #0xa8
	lsls r5, r5, #1
	adds r0, r3, r5
	strh r0, [r6, #0x26]
	b _0800D69E
	.align 2, 0
_0800D690: .4byte 0xFFFFF2E0
_0800D694: .4byte gUnk_03002920
_0800D698: .4byte 0x0000FFFF
_0800D69C:
	strh r2, [r6, #0x26]
_0800D69E:
	ldr r7, _0800D720 @ =gUnk_03004C20
	ldrb r0, [r7, #0xc]
	cmp r0, #6
	bne _0800D73C
	ldr r0, _0800D724 @ =gUnk_03002920
	ldrh r1, [r0]
	ldr r0, _0800D728 @ =gUnk_03003430
	adds r0, #0x40
	ldrh r0, [r0]
	adds r0, #8
	cmp r1, r0
	bge _0800D6D2
	ldr r0, _0800D72C @ =gUnk_030034E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D6D2
	ldrb r0, [r6]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r6]
	movs r0, #1
	bl sub_08014624
_0800D6D2:
	ldr r3, _0800D724 @ =gUnk_03002920
	ldrh r2, [r3]
	ldr r0, _0800D728 @ =gUnk_03003430
	adds r0, #0x40
	ldrh r0, [r0]
	adds r1, r0, #0
	adds r1, #0x10
	cmp r2, r1
	bge _0800D734
	movs r4, #0
	strh r1, [r3]
	ldr r1, _0800D730 @ =gUnk_03005220
	adds r7, r1, #0
	adds r7, #0x34
	ldrb r0, [r7]
	adds r6, r1, #0
	cmp r0, #1
	bne _0800D73C
	movs r0, #0
	movs r1, #0
	bl sub_08025B78
	adds r5, r6, #0
	adds r5, #0x3f
	ldrb r0, [r5]
	movs r1, #0
	bl sub_08025B78
	adds r0, r6, #0
	adds r0, #0x57
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	strb r4, [r5]
	strb r4, [r7]
	movs r0, #0
	strh r0, [r6, #0x28]
	b _0800D73C
	.align 2, 0
_0800D720: .4byte gUnk_03004C20
_0800D724: .4byte gUnk_03002920
_0800D728: .4byte gUnk_03003430
_0800D72C: .4byte gUnk_030034E4
_0800D730: .4byte gUnk_03005220
_0800D734:
	adds r0, #0xf0
	cmp r2, r0
	ble _0800D73C
	strh r0, [r3]
_0800D73C:
	ldr r0, _0800D7E4 @ =gUnk_03002920
	ldrh r3, [r0]
	ldr r0, [sp, #0x18]
	cmp r0, r3
	bhs _0800D7F4
	ldr r1, _0800D7E8 @ =gUnk_03005220
	mov sl, r1
	adds r1, #0x4a
	movs r0, #0
	strb r0, [r1]
	ldr r3, _0800D7EC @ =gUnk_03004790
	ldr r2, _0800D7E4 @ =gUnk_03002920
	ldrh r0, [r2]
	adds r0, #0xa
	asrs r0, r0, #3
	mov r8, r0
	ldrh r5, [r2, #2]
	subs r1, r5, #3
	asrs r1, r1, #3
	ldr r2, _0800D7F0 @ =gUnk_03003430
	adds r0, r2, #0
	adds r0, #0x48
	ldrh r4, [r0]
	adds r0, r1, #0
	muls r0, r4, r0
	ldr r1, [r3, #0x14]
	add r0, r8
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x20]
	adds r0, r5, #0
	subs r0, #0xc
	asrs r0, r0, #3
	muls r0, r4, r0
	add r0, r8
	adds r0, r1, r0
	add r6, sp, #0x20
	ldrb r6, [r6]
	mov sb, r6
	ldrb r0, [r0]
	mov r6, sl
	ldr r7, [sp, #0x20]
	cmp r7, r0
	bhs _0800D796
	mov sb, r0
_0800D796:
	mov r0, sb
	str r0, [sp, #0x20]
	adds r0, r5, #0
	subs r0, #0x14
	asrs r0, r0, #3
	muls r0, r4, r0
	add r0, r8
	adds r0, r1, r0
	add r2, sp, #0x20
	ldrb r1, [r2]
	ldrb r0, [r0]
	ldr r4, [sp, #0x20]
	cmp r4, r0
	bhs _0800D7B4
	adds r1, r0, #0
_0800D7B4:
	str r1, [sp, #0x20]
	adds r0, r6, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800D7DC
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r5, _0800D7E4 @ =gUnk_03002920
	adds r0, r0, r5
	ldrb r0, [r0, #0x11]
	cmp r0, #0x6f
	beq _0800D7DC
	cmp r0, #0x25
	beq _0800D7DC
	b _0800DC86
_0800D7DC:
	ldr r6, _0800D7E4 @ =gUnk_03002920
	ldrh r0, [r6]
	adds r0, #0xa
	b _0800D890
	.align 2, 0
_0800D7E4: .4byte gUnk_03002920
_0800D7E8: .4byte gUnk_03005220
_0800D7EC: .4byte gUnk_03004790
_0800D7F0: .4byte gUnk_03003430
_0800D7F4:
	ldr r0, [sp, #0x18]
	cmp r0, r3
	bhi _0800D7FC
	b _0800DC86
_0800D7FC:
	ldr r3, _0800D8F0 @ =gUnk_03004790
	ldr r1, _0800D8F4 @ =gUnk_03002920
	ldrh r0, [r1]
	subs r0, #0xb
	asrs r0, r0, #3
	mov sb, r0
	ldrh r5, [r1, #2]
	subs r1, r5, #3
	asrs r1, r1, #3
	ldr r2, _0800D8F8 @ =gUnk_03003430
	adds r0, r2, #0
	adds r0, #0x48
	ldrh r4, [r0]
	adds r0, r1, #0
	muls r0, r4, r0
	ldr r1, [r3, #0x14]
	add r0, sb
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x20]
	adds r0, r5, #0
	subs r0, #0xc
	asrs r0, r0, #3
	muls r0, r4, r0
	add r0, sb
	adds r0, r1, r0
	add r6, sp, #0x20
	ldrb r6, [r6]
	mov r8, r6
	ldrb r0, [r0]
	ldr r7, [sp, #0x20]
	cmp r7, r0
	bhs _0800D840
	mov r8, r0
_0800D840:
	mov r0, r8
	str r0, [sp, #0x20]
	adds r0, r5, #0
	subs r0, #0x14
	asrs r0, r0, #3
	muls r0, r4, r0
	add r0, sb
	adds r0, r1, r0
	add r2, sp, #0x20
	ldrb r1, [r2]
	ldrb r0, [r0]
	ldr r4, [sp, #0x20]
	cmp r4, r0
	bhs _0800D85E
	adds r1, r0, #0
_0800D85E:
	str r1, [sp, #0x20]
	ldr r1, _0800D8FC @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x43
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r0, #1
	beq _0800D88A
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r5, _0800D8F4 @ =gUnk_03002920
	adds r0, r0, r5
	ldrb r0, [r0, #0x11]
	cmp r0, #0x6f
	beq _0800D88A
	cmp r0, #0x25
	beq _0800D88A
	b _0800DC86
_0800D88A:
	ldr r6, _0800D8F4 @ =gUnk_03002920
	ldrh r0, [r6]
	subs r0, #0xb
_0800D890:
	asrs r4, r0, #3
	ldrh r2, [r6, #2]
	adds r0, r2, #0
	subs r0, #0x1b
	asrs r0, r0, #3
	ldr r1, _0800D8F8 @ =gUnk_03003430
	adds r1, #0x48
	ldrh r1, [r1]
	muls r0, r1, r0
	ldr r3, [r3, #0x14]
	adds r0, r4, r0
	adds r0, r3, r0
	add r7, sp, #0x20
	ldrb r5, [r7]
	ldrb r0, [r0]
	ldr r6, [sp, #0x20]
	cmp r6, r0
	bhs _0800D8B6
	adds r5, r0, #0
_0800D8B6:
	str r5, [sp, #0x20]
	adds r0, r2, #0
	subs r0, #0x24
	asrs r0, r0, #3
	muls r0, r1, r0
	adds r0, r4, r0
	adds r0, r3, r0
	add r7, sp, #0x20
	ldrb r5, [r7]
	ldrb r0, [r0]
	ldr r6, [sp, #0x20]
	cmp r6, r0
	bhs _0800D8D2
	adds r5, r0, #0
_0800D8D2:
	str r5, [sp, #0x20]
	adds r0, r2, #0
	subs r0, #0x2c
	asrs r0, r0, #3
	muls r0, r1, r0
	adds r0, r4, r0
	adds r0, r3, r0
	add r7, sp, #0x20
	ldrb r1, [r7]
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0800D8EC
	adds r1, r0, #0
_0800D8EC:
	str r1, [sp, #0x20]
	b _0800DC86
	.align 2, 0
_0800D8F0: .4byte gUnk_03004790
_0800D8F4: .4byte gUnk_03002920
_0800D8F8: .4byte gUnk_03003430
_0800D8FC: .4byte gUnk_03005220
_0800D900:
	ldr r1, _0800D94C @ =gUnk_03004C20
	ldrb r0, [r1, #0xc]
	cmp r0, #8
	bne _0800D9A4
	ldr r0, _0800D950 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D958
	ldr r2, _0800D954 @ =gUnk_03002920
	ldrb r1, [r2, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xc]
	ldr r3, _0800D94C @ =gUnk_03004C20
	ldr r0, [r3, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D934
	adds r4, r2, #0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0800D934:
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #1
	bls _0800D940
	b _0800DB06
_0800D940:
	ldr r5, _0800D954 @ =gUnk_03002920
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	b _0800DB06
	.align 2, 0
_0800D94C: .4byte gUnk_03004C20
_0800D950: .4byte gHeldKeys
_0800D954: .4byte gUnk_03002920
_0800D958:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0800D962
	b _0800DB06
_0800D962:
	ldr r7, _0800D99C @ =gUnk_03002920
	ldrb r1, [r7, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r7, #0xc]
	ldr r1, _0800D9A0 @ =gUnk_03004C20
	ldr r0, [r1, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D984
	ldrh r0, [r7]
	subs r0, #1
	strh r0, [r7]
_0800D984:
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #1
	bls _0800D990
	b _0800DB06
_0800D990:
	ldr r2, _0800D99C @ =gUnk_03002920
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	b _0800DB06
	.align 2, 0
_0800D99C: .4byte gUnk_03002920
_0800D9A0: .4byte gUnk_03004C20
_0800D9A4:
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800D9B0
	b _0800DAF2
_0800D9B0:
	ldr r0, _0800D9DC @ =gUnk_03003410
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	beq _0800D9FA
	ldr r3, _0800D9E0 @ =gNewKeys
	ldrh r2, [r3]
	movs r1, #8
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldr r2, _0800D9E4 @ =gHeldKeys
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	ldrh r1, [r6, #0x16]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bls _0800D9E8
	adds r0, r1, #0
	subs r0, #0xc
	b _0800D9EC
	.align 2, 0
_0800D9DC: .4byte gUnk_03003410
_0800D9E0: .4byte gNewKeys
_0800D9E4: .4byte gHeldKeys
_0800D9E8:
	adds r0, r1, #0
	adds r0, #0xc
_0800D9EC:
	strh r0, [r6, #0x16]
	ldrh r0, [r6, #0x18]
	cmp r0, #6
	bls _0800DAA8
	subs r0, #6
	strh r0, [r6, #0x18]
	b _0800DAA8
_0800D9FA:
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #1
	bls _0800DA14
	ldrh r1, [r6, #0x16]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bls _0800DA2A
	adds r0, r1, #0
	subs r0, #0x1e
	b _0800DA28
_0800DA14:
	ldrh r1, [r6, #0x16]
	adds r2, r1, #0
	ldr r0, _0800DA50 @ =0x0000022F
	cmp r2, r0
	bls _0800DA2A
	movs r0, #0x8c
	lsls r0, r0, #2
	cmp r2, r0
	bls _0800DA2A
	subs r0, r1, #6
_0800DA28:
	strh r0, [r6, #0x16]
_0800DA2A:
	adds r0, r6, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800DA9A
	adds r0, r6, #0
	adds r0, #0x2f
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0x14
	ble _0800DA58
	ldrh r1, [r6, #0x18]
	ldr r0, _0800DA54 @ =0x0000034F
	cmp r1, r0
	bhi _0800DAA8
	adds r0, r1, #0
	adds r0, #8
	strh r0, [r6, #0x18]
	b _0800DAA8
	.align 2, 0
_0800DA50: .4byte 0x0000022F
_0800DA54: .4byte 0x0000034F
_0800DA58:
	cmp r1, #0
	ble _0800DA76
	ldrh r1, [r6, #0x18]
	ldr r0, _0800DA6C @ =0x0000031F
	cmp r1, r0
	bhi _0800DA70
	adds r0, r1, #4
	strh r0, [r6, #0x18]
	b _0800DAA8
	.align 2, 0
_0800DA6C: .4byte 0x0000031F
_0800DA70:
	subs r0, r1, #2
	strh r0, [r6, #0x18]
	b _0800DAA8
_0800DA76:
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0800DA8A
	ldrh r0, [r6, #0x18]
	cmp r0, #0xa0
	bls _0800DAA8
	subs r0, #0x50
	strh r0, [r6, #0x18]
	b _0800DAA8
_0800DA8A:
	cmp r1, #0
	bge _0800DAA8
	ldrh r0, [r6, #0x18]
	cmp r0, #0x60
	bls _0800DAA8
	subs r0, #0x30
	strh r0, [r6, #0x18]
	b _0800DAA8
_0800DA9A:
	ldrh r1, [r6, #0x16]
	movs r0, #0x8c
	lsls r0, r0, #2
	cmp r1, r0
	bls _0800DAA8
	subs r0, r1, #5
	strh r0, [r6, #0x16]
_0800DAA8:
	ldr r3, _0800DB34 @ =gUnk_03002920
	ldrh r1, [r3]
	ldrh r0, [r6, #0x1a]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	ldrh r1, [r6, #0x16]
	ldrh r2, [r6, #0x18]
	adds r1, r1, r2
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r6, #0x10]
	lsrs r0, r0, #0x10
	strh r0, [r3]
	strh r0, [r6, #0x1a]
	ldrh r1, [r3]
	ldr r0, _0800DB38 @ =gUnk_03003430
	adds r0, #0x40
	ldrh r0, [r0]
	adds r0, #0x10
	cmp r1, r0
	bge _0800DAF2
	ldr r0, _0800DB3C @ =gUnk_030034E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800DAF2
	ldrb r0, [r6]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r6]
	movs r0, #1
	bl sub_08014624
_0800DAF2:
	ldr r1, _0800DB34 @ =gUnk_03002920
	ldrh r2, [r1]
	ldr r0, _0800DB38 @ =gUnk_03003430
	adds r0, #0x40
	ldrh r0, [r0]
	adds r0, #0x11
	cmp r2, r0
	bgt _0800DB06
	adds r3, r1, #0
	strh r0, [r3]
_0800DB06:
	ldr r4, _0800DB40 @ =gUnk_03004C20
	ldrb r0, [r4, #0xc]
	cmp r0, #8
	bne _0800DB60
	ldr r5, _0800DB34 @ =gUnk_03002920
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DB44
	ldrh r1, [r5]
	subs r1, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #2]
	mov r0, sp
	movs r3, #0x18
	bl sub_08014184
	ldr r1, [sp]
	b _0800DB76
	.align 2, 0
_0800DB34: .4byte gUnk_03002920
_0800DB38: .4byte gUnk_03003430
_0800DB3C: .4byte gUnk_030034E4
_0800DB40: .4byte gUnk_03004C20
_0800DB44:
	ldr r6, _0800DB5C @ =gUnk_03002920
	ldrh r1, [r6]
	adds r1, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r6, #2]
	add r0, sp, #4
	movs r3, #0x18
	bl sub_08014184
	ldr r1, [sp, #4]
	b _0800DB76
	.align 2, 0
_0800DB5C: .4byte gUnk_03002920
_0800DB60:
	ldr r7, _0800DBB8 @ =gUnk_03002920
	ldrh r1, [r7]
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r7, #2]
	add r0, sp, #8
	movs r3, #0x18
	bl sub_08014184
	ldr r1, [sp, #8]
_0800DB76:
	lsls r1, r1, #0x10
	ldr r0, _0800DBBC @ =0xFFFF0000
	cmp r1, r0
	beq _0800DC4C
	ldr r0, _0800DBC0 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	ldr r1, _0800DBC4 @ =gUnk_03003410
	ldrb r0, [r1, #0xb]
	cmp r0, #1
	bne _0800DC6C
	movs r0, #2
	strb r0, [r1, #0xb]
	movs r3, #0
	ldr r1, _0800DBC8 @ =gUnk_03003510
	adds r4, r1, #0
	adds r4, #0x78
	ldrb r0, [r4]
	adds r0, #1
	mov r8, r1
	cmp r3, r0
	bhs _0800DBE8
	mov r6, r8
	mov r2, r8
	subs r2, #4
	ldr r5, _0800DBCC @ =sub_080264A4
	adds r1, r4, #0
_0800DBAE:
	cmp r3, #4
	bne _0800DBD0
	str r5, [r6, #0x38]
	b _0800DBDC
	.align 2, 0
_0800DBB8: .4byte gUnk_03002920
_0800DBBC: .4byte 0xFFFF0000
_0800DBC0: .4byte gUnk_03004654
_0800DBC4: .4byte gUnk_03003410
_0800DBC8: .4byte gUnk_03003510
_0800DBCC: .4byte sub_080264A4
_0800DBD0:
	cmp r3, #4
	bls _0800DBD8
	ldr r0, [r2]
	b _0800DBDA
_0800DBD8:
	ldr r0, [r2, #4]
_0800DBDA:
	str r0, [r2, #0x2c]
_0800DBDC:
	adds r2, #4
	adds r3, #1
	ldrb r0, [r1]
	adds r0, #1
	cmp r3, r0
	blo _0800DBAE
_0800DBE8:
	cmp r3, #3
	bls _0800DC06
	mov r1, r8
	adds r1, #0x78
	ldrb r0, [r1]
	adds r0, #1
	mov r3, r8
	adds r3, #0x79
	movs r2, #0
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	add r0, r8
	str r2, [r0]
_0800DC06:
	movs r0, #0
	movs r1, #0x13
	bl sub_08025B78
	ldr r4, _0800DC44 @ =gUnk_03005220
	adds r6, r4, #0
	adds r6, #0x43
	ldrb r0, [r6]
	cmp r0, #0
	beq _0800DC6C
	ldr r0, _0800DC48 @ =gUnk_03002920
	adds r5, r4, #0
	adds r5, #0x42
	ldrb r3, [r5]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	movs r2, #2
	bl sub_0801E664
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #0
	strb r0, [r1]
	strb r0, [r6]
	strb r0, [r5]
	b _0800DC6C
	.align 2, 0
_0800DC44: .4byte gUnk_03005220
_0800DC48: .4byte gUnk_03002920
_0800DC4C:
	ldr r3, _0800DCC0 @ =gUnk_03004790
	ldr r0, _0800DCC4 @ =gUnk_03002920
	ldrh r2, [r0]
	lsrs r2, r2, #3
	ldrh r1, [r0, #2]
	subs r1, #4
	asrs r1, r1, #3
	ldr r0, _0800DCC8 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r1, r0, r1
	ldr r0, [r3, #0x14]
	adds r2, r2, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	str r0, [sp, #0x20]
_0800DC6C:
	ldr r0, _0800DCCC @ =gUnk_030034FC
	ldr r2, [r0]
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldr r1, _0800DCC4 @ =gUnk_03002920
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	ldrh r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strh r0, [r2]
_0800DC86:
	ldr r0, _0800DCD0 @ =gUnk_03004654
	ldr r1, [r0]
	ldrb r0, [r1, #0x1a]
	ldr r2, [sp, #0x20]
	cmp r0, r2
	bls _0800DD2A
	ldr r4, [sp, #0x20]
	ldrb r5, [r1, #0x18]
	cmp r4, r5
	bne _0800DCD8
	ldr r0, _0800DCC4 @ =gUnk_03002920
	mov r6, sp
	ldrh r6, [r6, #0x18]
	strh r6, [r0]
	ldr r1, _0800DCD4 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _0800DD08
	adds r0, r6, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DCBC
	b _0800DDF8
_0800DCBC:
	b _0800DD08
	.align 2, 0
_0800DCC0: .4byte gUnk_03004790
_0800DCC4: .4byte gUnk_03002920
_0800DCC8: .4byte gUnk_03003430
_0800DCCC: .4byte gUnk_030034FC
_0800DCD0: .4byte gUnk_03004654
_0800DCD4: .4byte gUnk_03005220
_0800DCD8:
	ldr r7, [sp, #0x20]
	ldrb r0, [r1, #0x19]
	cmp r7, r0
	bne _0800DD14
	ldr r1, _0800DD10 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _0800DCFA
	adds r0, r6, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DCFA
	b _0800DDF8
_0800DCFA:
	ldrb r0, [r6]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r6]
_0800DD08:
	movs r0, #1
	bl sub_08014624
	b _0800DDF8
	.align 2, 0
_0800DD10: .4byte gUnk_03005220
_0800DD14:
	ldrb r0, [r1, #1]
	ldr r2, [sp, #0x20]
	cmp r0, r2
	bhi _0800DDF8
	ldrb r1, [r1, #0x14]
	cmp r2, r1
	bhi _0800DDF8
	ldr r4, _0800DD34 @ =gUnk_030034E4
	ldrb r0, [r4]
	cmp r0, #1
	bne _0800DD3C
_0800DD2A:
	ldr r0, _0800DD38 @ =gUnk_03002920
	mov r3, sp
	ldrh r3, [r3, #0x18]
	strh r3, [r0]
	b _0800DDF8
	.align 2, 0
_0800DD34: .4byte gUnk_030034E4
_0800DD38: .4byte gUnk_03002920
_0800DD3C:
	ldr r0, _0800DD9C @ =gUnk_03004C20
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _0800DD5E
	ldr r0, _0800DDA0 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800DDF8
	movs r0, #0x60
	bl m4aSongNumStart
	movs r0, #0
	movs r1, #0x25
	bl sub_08025B78
_0800DD5E:
	ldr r0, _0800DDA4 @ =gUnk_03005220
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800DDF8
	ldr r0, _0800DDA8 @ =gUnk_030051C8
	add r5, sp, #0x20
	ldrb r5, [r5]
	strb r5, [r0]
	movs r0, #1
	strb r0, [r4]
	movs r3, #0
	ldr r1, _0800DDAC @ =gUnk_03003510
	adds r4, r1, #0
	adds r4, #0x78
	ldrb r0, [r4]
	adds r0, #1
	ldr r6, _0800DDB0 @ =gUnk_03005498
	mov sb, r6
	mov r8, r1
	cmp r3, r0
	bhs _0800DDD0
	mov r6, r8
	mov r2, r8
	subs r2, #4
	ldr r5, _0800DDB4 @ =sub_08024718
	adds r1, r4, #0
_0800DD94:
	cmp r3, #4
	bne _0800DDB8
	str r5, [r6, #0x38]
	b _0800DDC4
	.align 2, 0
_0800DD9C: .4byte gUnk_03004C20
_0800DDA0: .4byte gNewKeys
_0800DDA4: .4byte gUnk_03005220
_0800DDA8: .4byte gUnk_030051C8
_0800DDAC: .4byte gUnk_03003510
_0800DDB0: .4byte gUnk_03005498
_0800DDB4: .4byte sub_08024718
_0800DDB8:
	cmp r3, #4
	bls _0800DDC0
	ldr r0, [r2]
	b _0800DDC2
_0800DDC0:
	ldr r0, [r2, #4]
_0800DDC2:
	str r0, [r2, #0x2c]
_0800DDC4:
	adds r2, #4
	adds r3, #1
	ldrb r0, [r1]
	adds r0, #1
	cmp r3, r0
	blo _0800DD94
_0800DDD0:
	cmp r3, #3
	bls _0800DDEE
	mov r1, r8
	adds r1, #0x78
	ldrb r0, [r1]
	adds r0, #1
	mov r3, r8
	adds r3, #0x79
	movs r2, #0
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	add r0, r8
	str r2, [r0]
_0800DDEE:
	movs r0, #0
	mov r7, sb
	strb r0, [r7]
	bl _08014164
_0800DDF8:
	ldr r0, _0800DE1C @ =gUnk_03002920
	ldrh r0, [r0]
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bne _0800DE14
	ldr r0, _0800DE20 @ =gUnk_03005220
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0800DE14
	bl _0800F328
_0800DE14:
	movs r2, #0xd
	mov sb, r2
	bl _0800F31C
	.align 2, 0
_0800DE1C: .4byte gUnk_03002920
_0800DE20: .4byte gUnk_03005220
_0800DE24:
	ldr r0, _0800DE6C @ =gUnk_03002920
	mov r3, sb
	lsls r2, r3, #3
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r3, [r1, #0xf]
	mov sl, r2
	cmp r3, #0x1a
	beq _0800DE50
	ldrb r0, [r1, #0x10]
	movs r4, #1
	add r4, sb
	mov r8, r4
	cmp r0, #0
	bne _0800DE48
	bl _0800F31A
_0800DE48:
	cmp r3, #0x12
	bls _0800DE50
	bl _0800F31A
_0800DE50:
	ldrb r0, [r1, #0x11]
	subs r0, #3
	movs r5, #1
	add r5, sb
	mov r8, r5
	cmp r0, #0x7a
	bls _0800DE62
	bl _0800F31A
_0800DE62:
	lsls r0, r0, #2
	ldr r1, _0800DE70 @ =_0800DE74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DE6C: .4byte gUnk_03002920
_0800DE70: .4byte _0800DE74
_0800DE74: @ jump table
	.4byte _0800E5C4 @ case 0
	.4byte _0800F31A @ case 1
	.4byte _0800E7B8 @ case 2
	.4byte _0800E240 @ case 3
	.4byte _0800E508 @ case 4
	.4byte _0800E240 @ case 5
	.4byte _0800F31A @ case 6
	.4byte _0800F31A @ case 7
	.4byte _0800E240 @ case 8
	.4byte _0800F31A @ case 9
	.4byte _0800F31A @ case 10
	.4byte _0800F31A @ case 11
	.4byte _0800F31A @ case 12
	.4byte _0800F31A @ case 13
	.4byte _0800F31A @ case 14
	.4byte _0800F31A @ case 15
	.4byte _0800F31A @ case 16
	.4byte _0800F31A @ case 17
	.4byte _0800F31A @ case 18
	.4byte _0800F0A4 @ case 19
	.4byte _0800F12C @ case 20
	.4byte _0800F1B8 @ case 21
	.4byte _0800F1B8 @ case 22
	.4byte _0800F214 @ case 23
	.4byte _0800F31A @ case 24
	.4byte _0800F31A @ case 25
	.4byte _0800F31A @ case 26
	.4byte _0800F268 @ case 27
	.4byte _0800F2C4 @ case 28
	.4byte _0800F31A @ case 29
	.4byte _0800F31A @ case 30
	.4byte _0800EFD4 @ case 31
	.4byte _0800F31A @ case 32
	.4byte _0800F31A @ case 33
	.4byte _0800E060 @ case 34
	.4byte _0800F31A @ case 35
	.4byte _0800EB68 @ case 36
	.4byte _0800EB68 @ case 37
	.4byte _0800EB68 @ case 38
	.4byte _0800EB68 @ case 39
	.4byte _0800EB68 @ case 40
	.4byte _0800E3CC @ case 41
	.4byte _0800E3CC @ case 42
	.4byte _0800E68C @ case 43
	.4byte _0800F31A @ case 44
	.4byte _0800F31A @ case 45
	.4byte _0800F31A @ case 46
	.4byte _0800F31A @ case 47
	.4byte _0800F31A @ case 48
	.4byte _0800F31A @ case 49
	.4byte _0800EEDC @ case 50
	.4byte _0800F31A @ case 51
	.4byte _0800F31A @ case 52
	.4byte _0800F31A @ case 53
	.4byte _0800ED94 @ case 54
	.4byte _0800EE40 @ case 55
	.4byte _0800E856 @ case 56
	.4byte _0800E9FC @ case 57
	.4byte _0800F31A @ case 58
	.4byte _0800EC9C @ case 59
	.4byte _0800EA84 @ case 60
	.4byte _0800F31A @ case 61
	.4byte _0800E70C @ case 62
	.4byte _0800F31A @ case 63
	.4byte _0800F31A @ case 64
	.4byte _0800F31A @ case 65
	.4byte _0800F31A @ case 66
	.4byte _0800F31A @ case 67
	.4byte _0800F31A @ case 68
	.4byte _0800F31A @ case 69
	.4byte _0800F31A @ case 70
	.4byte _0800F31A @ case 71
	.4byte _0800F31A @ case 72
	.4byte _0800F31A @ case 73
	.4byte _0800F31A @ case 74
	.4byte _0800F31A @ case 75
	.4byte _0800F31A @ case 76
	.4byte _0800F31A @ case 77
	.4byte _0800F31A @ case 78
	.4byte _0800F31A @ case 79
	.4byte _0800F31A @ case 80
	.4byte _0800F31A @ case 81
	.4byte _0800F31A @ case 82
	.4byte _0800F31A @ case 83
	.4byte _0800F31A @ case 84
	.4byte _0800F31A @ case 85
	.4byte _0800F31A @ case 86
	.4byte _0800F31A @ case 87
	.4byte _0800F31A @ case 88
	.4byte _0800F31A @ case 89
	.4byte _0800F31A @ case 90
	.4byte _0800F31A @ case 91
	.4byte _0800F31A @ case 92
	.4byte _0800F31A @ case 93
	.4byte _0800F31A @ case 94
	.4byte _0800F31A @ case 95
	.4byte _0800F31A @ case 96
	.4byte _0800F31A @ case 97
	.4byte _0800F31A @ case 98
	.4byte _0800F31A @ case 99
	.4byte _0800F31A @ case 100
	.4byte _0800F31A @ case 101
	.4byte _0800F31A @ case 102
	.4byte _0800F31A @ case 103
	.4byte _0800F31A @ case 104
	.4byte _0800F31A @ case 105
	.4byte _0800F31A @ case 106
	.4byte _0800F31A @ case 107
	.4byte _0800E060 @ case 108
	.4byte _0800EEDC @ case 109
	.4byte _0800F31A @ case 110
	.4byte _0800F31A @ case 111
	.4byte _0800F31A @ case 112
	.4byte _0800F31A @ case 113
	.4byte _0800F31A @ case 114
	.4byte _0800E240 @ case 115
	.4byte _0800E240 @ case 116
	.4byte _0800E240 @ case 117
	.4byte _0800E240 @ case 118
	.4byte _0800E240 @ case 119
	.4byte _0800E240 @ case 120
	.4byte _0800E240 @ case 121
	.4byte _0800E240 @ case 122
_0800E060:
	mov r6, sl
	mov r7, sb
	subs r0, r6, r7
	lsls r0, r0, #2
	ldr r1, _0800E12C @ =gUnk_03002920
	adds r5, r0, r1
	ldrb r0, [r5, #0x16]
	cmp r0, #0
	beq _0800E096
	ldrb r0, [r5, #0xf]
	movs r2, #1
	add r2, sb
	mov r8, r2
	cmp r0, #1
	bls _0800E082
	bl _0800F31A
_0800E082:
	ldr r0, _0800E130 @ =gUnk_03005220
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _0800E12C @ =gUnk_03002920
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0, #0x16]
_0800E096:
	ldr r1, _0800E130 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r4, [r0]
	adds r6, r1, #0
	movs r7, #1
	add r7, sb
	mov r8, r7
	cmp r4, #0
	beq _0800E0AE
	bl _0800F31A
_0800E0AE:
	adds r7, r6, #0
	adds r7, #0x56
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldr r1, [sp, #0x18]
	adds r3, r1, r0
	adds r1, r3, #0
	subs r1, #0xc
	ldrh r2, [r5]
	adds r0, r2, #7
	cmp r1, r0
	bge _0800E134
	adds r1, #0x18
	subs r0, #0x16
	cmp r1, r0
	ble _0800E134
	ldr r0, [sp, #0x1c]
	subs r0, #0x18
	ldrh r1, [r5, #2]
	cmp r0, r1
	bge _0800E134
	adds r0, r1, #0
	subs r0, #0x18
	ldr r2, [sp, #0x1c]
	cmp r2, r0
	ble _0800E134
	adds r1, r6, #0
	adds r1, #0x39
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800E118
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, sb
	bne _0800E0FA
	bl _0800F31A
_0800E0FA:
	adds r0, r6, #0
	adds r0, #0x57
	strb r4, [r0]
	strb r4, [r7]
	strb r4, [r1]
	subs r0, #0x18
	strb r4, [r0]
	adds r0, r2, #0
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	movs r0, #1
	bl sub_080145A8
_0800E118:
	ldrb r0, [r5, #0xf]
	cmp r0, #0xf
	bls _0800E120
	strb r4, [r5, #0xf]
_0800E120:
	adds r0, r6, #0
	adds r0, #0x40
	mov r3, sb
	strb r3, [r0]
	bl _0800EAFC
	.align 2, 0
_0800E12C: .4byte gUnk_03002920
_0800E130: .4byte gUnk_03005220
_0800E134:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r5, _0800E18C @ =gUnk_03002920
	ldrh r5, [r5]
	adds r4, r0, r5
	adds r1, r4, #0
	subs r1, #0xc
	mov r7, sl
	mov r2, sb
	subs r0, r7, r2
	lsls r0, r0, #2
	ldr r5, _0800E18C @ =gUnk_03002920
	adds r3, r0, r5
	ldrh r2, [r3]
	adds r0, r2, #7
	cmp r1, r0
	bge _0800E190
	adds r1, #0x18
	subs r0, #0x16
	cmp r1, r0
	ble _0800E190
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r3, #2]
	cmp r0, r1
	bge _0800E190
	adds r0, r1, #0
	subs r0, #0x18
	cmp r2, r0
	ble _0800E190
	ldrb r0, [r3, #0xf]
	cmp r0, #0xf
	bls _0800E182
	movs r0, #0
	strb r0, [r3, #0xf]
_0800E182:
	mov r7, sp
	ldrh r0, [r7, #0x18]
	ldr r7, _0800E18C @ =gUnk_03002920
	strh r0, [r7]
	b _0800E19E
	.align 2, 0
_0800E18C: .4byte gUnk_03002920
_0800E190:
	adds r1, r6, #0
	adds r1, #0x40
	ldrb r0, [r1]
	cmp r0, sb
	bne _0800E19E
	movs r0, #0
	strb r0, [r1]
_0800E19E:
	adds r0, r6, #0
	adds r0, #0x43
	ldrb r0, [r0]
	movs r1, #1
	add r1, sb
	mov r8, r1
	cmp r0, #1
	beq _0800E1B2
	bl _0800F31A
_0800E1B2:
	adds r0, r6, #0
	adds r0, #0x39
	ldrb r7, [r0]
	cmp r7, #0
	beq _0800E1C0
	bl _0800F31A
_0800E1C0:
	ldr r5, _0800E220 @ =gUnk_03002920
	ldrh r4, [r5]
	adds r0, r4, #0
	subs r0, #0xc
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r2, r1, r5
	ldrh r3, [r2]
	adds r1, r3, #7
	cmp r0, r1
	bge _0800E224
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0xf
	cmp r1, r0
	ble _0800E224
	ldrh r1, [r5, #2]
	adds r0, r1, #0
	subs r0, #0x30
	ldrh r3, [r2, #2]
	cmp r0, r3
	bge _0800E224
	subs r1, #0x18
	adds r0, r3, #0
	subs r0, #0x18
	cmp r1, r0
	ble _0800E224
	ldrb r0, [r2, #0xf]
	cmp r0, #0xf
	bls _0800E204
	strb r7, [r2, #0xf]
_0800E204:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r4, [sp, #0x18]
	subs r0, r4, r0
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	bl _0800F31A
	.align 2, 0
_0800E220: .4byte gUnk_03002920
_0800E224:
	adds r1, r6, #0
	adds r1, #0x40
	ldrb r0, [r1]
	movs r5, #1
	add r5, sb
	mov r8, r5
	cmp r0, sb
	beq _0800E238
	bl _0800F31A
_0800E238:
	movs r0, #0
	strb r0, [r1]
	bl _0800F31A
_0800E240:
	mov r6, sl
	mov r7, sb
	subs r0, r6, r7
	lsls r0, r0, #2
	ldr r2, _0800E270 @ =gUnk_03002920
	adds r1, r0, r2
	ldrb r0, [r1, #0xf]
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #0xd
	bls _0800E25C
	bl _0800F31A
_0800E25C:
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800E26C
	ldr r0, _0800E274 @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	bne _0800E278
_0800E26C:
	movs r7, #0
	b _0800E27A
	.align 2, 0
_0800E270: .4byte gUnk_03002920
_0800E274: .4byte gUnk_03004C20
_0800E278:
	movs r7, #0xc
_0800E27A:
	ldr r1, _0800E3C4 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E290
	adds r0, r1, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800E2D8
_0800E290:
	ldr r6, _0800E3C8 @ =gUnk_03002920
	ldrh r4, [r6]
	adds r0, r4, #0
	subs r0, #0xc
	mov r5, sl
	mov r2, sb
	subs r1, r5, r2
	lsls r1, r1, #2
	adds r5, r1, r6
	ldrh r3, [r5]
	subs r2, r7, #2
	adds r1, r3, r2
	cmp r0, r1
	bge _0800E2D8
	adds r1, r4, #0
	adds r1, #0xc
	subs r0, r3, r2
	cmp r1, r0
	ble _0800E2D8
	ldrh r3, [r6, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r5, #2]
	adds r0, r7, #0
	subs r0, #8
	adds r0, r2, r0
	cmp r1, r0
	bge _0800E2D8
	adds r0, r7, #0
	adds r0, #0xc
	subs r0, r2, r0
	cmp r3, r0
	ble _0800E2D8
	movs r0, #1
	bl sub_08014624
_0800E2D8:
	ldr r1, _0800E3C4 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x43
	ldrb r0, [r0]
	adds r6, r1, #0
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #1
	beq _0800E2F0
	bl _0800F31A
_0800E2F0:
	ldr r4, _0800E3C8 @ =gUnk_03002920
	mov ip, r4
	mov r5, sl
	mov r1, sb
	subs r0, r5, r1
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrb r0, [r2, #0x11]
	cmp r0, #6
	beq _0800E30C
	cmp r0, #8
	beq _0800E30C
	bl _0800F31A
_0800E30C:
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #0x11]
	cmp r0, #0x6f
	beq _0800E32E
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #0x25
	beq _0800E32E
	bl _0800F31A
_0800E32E:
	mov r4, ip
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	ldrh r3, [r2]
	adds r1, r7, #0
	adds r1, #0xc
	adds r4, r3, r1
	mov sl, r4
	movs r4, #1
	add r4, sb
	mov r8, r4
	cmp r0, sl
	blt _0800E34E
	bl _0800F31A
_0800E34E:
	adds r0, #0x18
	subs r4, r3, r1
	cmp r0, r4
	bgt _0800E35A
	bl _0800F31A
_0800E35A:
	mov r5, ip
	ldrh r1, [r5, #2]
	adds r0, r1, #0
	subs r0, #0x30
	ldrh r2, [r2, #2]
	adds r3, r2, r7
	cmp r0, r3
	blt _0800E36E
	bl _0800F31A
_0800E36E:
	subs r1, #0x18
	adds r0, r7, #0
	adds r0, #0x18
	subs r2, r2, r0
	cmp r1, r2
	bgt _0800E37E
	bl _0800F31A
_0800E37E:
	ldr r0, [sp, #0x18]
	subs r0, #0xb
	cmp r0, sl
	bge _0800E3A2
	ldr r0, [sp, #0x18]
	adds r0, #0xb
	cmp r0, r4
	ble _0800E3A2
	ldr r0, [sp, #0x1c]
	subs r0, #0x30
	cmp r0, r3
	bge _0800E3A2
	ldr r0, [sp, #0x1c]
	subs r0, #0x18
	cmp r0, r2
	ble _0800E3A2
	bl _0800F31A
_0800E3A2:
	ldr r1, _0800E3C8 @ =gUnk_03002920
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r6, [sp, #0x18]
	subs r0, r6, r0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	movs r7, #1
	add r7, sb
	mov r8, r7
	bl _0800F31A
	.align 2, 0
_0800E3C4: .4byte gUnk_03005220
_0800E3C8: .4byte gUnk_03002920
_0800E3CC:
	ldr r0, _0800E430 @ =gUnk_03002920
	ldrh r4, [r0]
	adds r1, r4, #0
	subs r1, #0xc
	mov r2, sl
	mov r3, sb
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r5, _0800E430 @ =gUnk_03002920
	adds r3, r0, r5
	ldrh r2, [r3]
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r1, r2
	blt _0800E3F0
	bl _0800F31A
_0800E3F0:
	adds r0, r4, #0
	adds r0, #0xc
	cmp r0, r2
	bgt _0800E3FC
	bl _0800F31A
_0800E3FC:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r3, #2]
	cmp r0, r1
	blt _0800E40C
	bl _0800F31A
_0800E40C:
	adds r0, r1, #0
	subs r0, #8
	cmp r2, r0
	bgt _0800E418
	bl _0800F31A
_0800E418:
	ldrb r0, [r3, #8]
	cmp r0, #0x1f
	bhi _0800E438
	ldr r2, _0800E434 @ =gUnk_03005220
	movs r1, #1
	ldrb r3, [r3, #8]
	lsls r1, r3
	ldr r0, [r2, #8]
	orrs r0, r1
	str r0, [r2, #8]
	b _0800E448
	.align 2, 0
_0800E430: .4byte gUnk_03002920
_0800E434: .4byte gUnk_03005220
_0800E438:
	ldr r2, _0800E468 @ =gUnk_03005220
	ldrb r0, [r3, #8]
	subs r0, #0x20
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0xc]
	orrs r0, r1
	str r0, [r2, #0xc]
_0800E448:
	adds r6, r2, #0
	mov r7, sl
	mov r1, sb
	subs r0, r7, r1
	lsls r0, r0, #2
	ldr r2, _0800E46C @ =gUnk_03002920
	adds r0, r0, r2
	ldrb r0, [r0, #0x11]
	cmp r0, #0x2c
	bne _0800E470
	ldrh r2, [r6]
	lsls r1, r2, #0x14
	lsrs r1, r1, #0x19
	adds r1, #1
	b _0800E478
	.align 2, 0
_0800E468: .4byte gUnk_03005220
_0800E46C: .4byte gUnk_03002920
_0800E470:
	ldrh r2, [r6]
	lsls r1, r2, #0x14
	lsrs r1, r1, #0x19
	adds r1, #5
_0800E478:
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #5
	ldr r0, _0800E4B0 @ =0xFFFFF01F
	ands r0, r2
	orrs r0, r1
	strh r0, [r6]
	ldr r0, _0800E4B4 @ =gUnk_03002920
	mov r3, sl
	mov r4, sb
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x11]
	cmp r0, #0x2c
	bne _0800E4B8
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	adds r1, #0xc
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r4, #0x18
	lsrs r3, r3, #0x18
	movs r2, #3
	bl sub_0801E664
	b _0800E4CE
	.align 2, 0
_0800E4B0: .4byte 0xFFFFF01F
_0800E4B4: .4byte gUnk_03002920
_0800E4B8:
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	adds r1, #6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r5, sb
	lsls r3, r5, #0x18
	lsrs r3, r3, #0x18
	movs r2, #3
	bl sub_0801E664
_0800E4CE:
	bl sub_08025E68
	cmp r0, #0
	beq _0800E4E0
	movs r0, #0x91
	bl m4aSongNumStart
	bl _0800EE32
_0800E4E0:
	ldr r0, _0800E4FC @ =gUnk_03002920
	mov r7, sl
	mov r2, sb
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x11]
	cmp r0, #0x2c
	bne _0800E500
	movs r0, #0x31
	bl m4aSongNumStart
	b _0800EA76
	.align 2, 0
_0800E4FC: .4byte gUnk_03002920
_0800E500:
	movs r0, #0x7b
	bl m4aSongNumStart
	b _0800EAFC
_0800E508:
	ldr r5, _0800E5B8 @ =gUnk_03002920
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xc
	mov r6, sl
	mov r7, sb
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrh r2, [r4]
	movs r0, #1
	add r0, sb
	mov r8, r0
	cmp r1, r2
	blt _0800E52A
	bl _0800F31A
_0800E52A:
	adds r0, r3, #0
	adds r0, #0xc
	cmp r0, r2
	bgt _0800E536
	bl _0800F31A
_0800E536:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _0800E546
	bl _0800F31A
_0800E546:
	adds r0, r1, #0
	subs r0, #0xc
	cmp r2, r0
	bgt _0800E552
	bl _0800F31A
_0800E552:
	ldr r1, _0800E5BC @ =gUnk_03005220
	ldrb r5, [r1]
	lsls r0, r5, #0x1e
	lsrs r3, r0, #0x1e
	adds r6, r1, #0
	cmp r3, #0
	bne _0800E564
	bl _0800F31A
_0800E564:
	ldrh r2, [r6, #2]
	lsls r1, r2, #0x13
	lsrs r1, r1, #0x1a
	movs r0, #1
	ldrb r7, [r4, #8]
	lsls r0, r7
	orrs r1, r0
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #7
	ldr r0, _0800E5C0 @ =0xFFFFE07F
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #2]
	cmp r3, #2
	bgt _0800E598
	adds r1, r3, #1
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r5
	orrs r0, r1
	strb r0, [r6]
	bl sub_08025DD4
_0800E598:
	movs r0, #0x62
	bl m4aSongNumStart
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	adds r1, #6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, sb
	lsls r3, r2, #0x18
	lsrs r3, r3, #0x18
	movs r2, #5
	bl sub_0801E664
	bl _0800F31A
	.align 2, 0
_0800E5B8: .4byte gUnk_03002920
_0800E5BC: .4byte gUnk_03005220
_0800E5C0: .4byte 0xFFFFE07F
_0800E5C4:
	ldr r5, _0800E650 @ =gUnk_03002920
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xc
	mov r4, sl
	mov r6, sb
	subs r0, r4, r6
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrh r2, [r4]
	movs r7, #1
	add r7, sb
	mov r8, r7
	cmp r1, r2
	blt _0800E5E6
	bl _0800F31A
_0800E5E6:
	adds r0, r3, #0
	adds r0, #0xc
	cmp r0, r2
	bgt _0800E5F2
	bl _0800F31A
_0800E5F2:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _0800E602
	bl _0800F31A
_0800E602:
	adds r0, r1, #0
	subs r0, #0xc
	cmp r2, r0
	bgt _0800E60E
	bl _0800F31A
_0800E60E:
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	bne _0800E618
	bl _0800F31A
_0800E618:
	cmp r0, #0x1c
	bne _0800E620
	bl _0800F31A
_0800E620:
	ldr r3, _0800E654 @ =gUnk_03005220
	ldrb r2, [r3]
	lsls r1, r2, #0x1b
	lsrs r1, r1, #0x1d
	movs r0, #1
	ldrb r4, [r4, #8]
	lsls r0, r4
	orrs r1, r0
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0800E658
	movs r0, #0x92
	bl m4aSongNumStart
	b _0800E65E
	.align 2, 0
_0800E650: .4byte gUnk_03002920
_0800E654: .4byte gUnk_03005220
_0800E658:
	movs r0, #0x33
	bl m4aSongNumStart
_0800E65E:
	ldr r0, _0800E688 @ =gUnk_03002920
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #0
	movs r0, #2
	strb r0, [r1, #0xf]
	strb r2, [r1, #9]
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #3
	movs r3, #0
	bl sub_0801E664
	b _0800EAFC
	.align 2, 0
_0800E688: .4byte gUnk_03002920
_0800E68C:
	ldr r5, _0800E708 @ =gUnk_03002920
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xc
	mov r6, sl
	mov r7, sb
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrh r2, [r4]
	movs r0, #1
	add r0, sb
	mov r8, r0
	cmp r1, r2
	blt _0800E6AE
	bl _0800F31A
_0800E6AE:
	adds r0, r3, #0
	adds r0, #0xc
	cmp r0, r2
	bgt _0800E6BA
	bl _0800F31A
_0800E6BA:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _0800E6CA
	bl _0800F31A
_0800E6CA:
	adds r0, r1, #0
	subs r0, #0xc
	cmp r2, r0
	bgt _0800E6D6
	bl _0800F31A
_0800E6D6:
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	bne _0800E6E0
	bl _0800F31A
_0800E6E0:
	movs r0, #0x87
	bl m4aSongNumStart
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r1, [r4, #9]
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	adds r1, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r7, #0x18
	lsrs r3, r3, #0x18
	movs r2, #4
	bl sub_0801E664
	bl _0800F31A
	.align 2, 0
_0800E708: .4byte gUnk_03002920
_0800E70C:
	ldr r4, _0800E7A8 @ =gUnk_03002920
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #0x10
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, r1
	blt _0800E732
	bl _0800F31A
_0800E732:
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0x10
	cmp r1, r0
	bgt _0800E742
	bl _0800F31A
_0800E742:
	ldrh r3, [r4, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0800E752
	bl _0800F31A
_0800E752:
	adds r0, r1, #0
	subs r0, #0x1e
	cmp r3, r0
	bgt _0800E75E
	bl _0800F31A
_0800E75E:
	ldr r1, _0800E7AC @ =gUnk_03000830
	ldr r0, _0800E7B0 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r7, sb
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E776
	bl _0800F31A
_0800E776:
	mov r0, sp
	ldrh r0, [r0, #0x18]
	strh r0, [r4]
	ldr r1, _0800E7B4 @ =gUnk_03005220
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	adds r6, r1, #0
	cmp r0, #7
	beq _0800E78E
	bl _0800F31A
_0800E78E:
	movs r0, #0x35
	bl m4aSongNumStart
	mov r0, sb
	movs r1, #1
	bl sub_08025B78
	ldrb r0, [r6, #3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r6, #3]
	bl _0800F31A
	.align 2, 0
_0800E7A8: .4byte gUnk_03002920
_0800E7AC: .4byte gUnk_03000830
_0800E7B0: .4byte gUnk_0300363C
_0800E7B4: .4byte gUnk_03005220
_0800E7B8:
	ldr r5, _0800E844 @ =gUnk_03002920
	ldrh r3, [r5]
	adds r0, r3, #0
	subs r0, #0xc
	mov r2, sl
	mov r4, sb
	subs r1, r2, r4
	lsls r1, r1, #2
	adds r4, r1, r5
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0x10
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, r1
	blt _0800E7DE
	bl _0800F31A
_0800E7DE:
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0x10
	cmp r1, r0
	bgt _0800E7EE
	bl _0800F31A
_0800E7EE:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _0800E7FE
	bl _0800F31A
_0800E7FE:
	adds r0, r1, #0
	subs r0, #0x20
	cmp r2, r0
	bgt _0800E80A
	bl _0800F31A
_0800E80A:
	ldrb r1, [r4, #9]
	ldr r2, _0800E848 @ =gUnk_03005220
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	ands r1, r0
	adds r6, r2, #0
	cmp r1, #0
	beq _0800E84C
	movs r0, #0x34
	bl m4aSongNumStart
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	mov r7, sb
	lsls r3, r7, #0x18
	lsrs r3, r3, #0x18
	movs r2, #3
	bl sub_0801E664
	movs r0, #1
	ldrb r4, [r4, #8]
	lsls r0, r4
	ldrh r1, [r6, #0x14]
	orrs r0, r1
	strh r0, [r6, #0x14]
	bl _0800F31A
	.align 2, 0
_0800E844: .4byte gUnk_03002920
_0800E848: .4byte gUnk_03005220
_0800E84C:
	mov r0, sp
	ldrh r0, [r0, #0x18]
	strh r0, [r5]
	bl _0800F31A
_0800E856:
	mov r1, sl
	mov r2, sb
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _0800E8D4 @ =gUnk_03002920
	adds r4, r0, r3
	ldrb r6, [r4, #0xc]
	lsls r0, r6, #0x1c
	lsrs r0, r0, #0x1e
	str r0, [sp, #0x24]
	movs r7, #0
	cmp r0, #1
	bne _0800E872
	movs r7, #8
_0800E872:
	ldr r5, _0800E8D4 @ =gUnk_03002920
	ldrh r1, [r5]
	movs r0, #0xc
	rsbs r0, r0, #0
	adds r0, r0, r1
	mov ip, r0
	ldrh r3, [r4]
	adds r0, r3, r7
	cmp ip, r0
	bge _0800E974
	adds r5, r1, #0
	adds r5, #0xc
	adds r0, r7, #0
	subs r0, #8
	adds r0, r3, r0
	cmp r5, r0
	ble _0800E974
	ldr r1, _0800E8D4 @ =gUnk_03002920
	ldrh r2, [r1, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	bge _0800E974
	adds r0, r1, #0
	subs r0, #0x20
	cmp r2, r0
	ble _0800E974
	lsrs r0, r6, #4
	movs r2, #1
	add r2, sb
	mov r8, r2
	cmp r0, #0
	beq _0800E8BA
	bl _0800F31A
_0800E8BA:
	ldr r4, [sp, #0x24]
	cmp r4, #0
	bne _0800E8D8
	adds r0, r3, #0
	subs r0, #8
	cmp ip, r0
	blt _0800E8F0
	mov r5, sp
	ldrh r6, [r5, #0x18]
	ldr r5, _0800E8D4 @ =gUnk_03002920
	strh r6, [r5]
	bl _0800F31A
	.align 2, 0
_0800E8D4: .4byte gUnk_03002920
_0800E8D8:
	adds r0, r3, #0
	adds r0, #8
	cmp r5, r0
	bgt _0800E8F0
	mov r7, sp
	ldrh r0, [r7, #0x18]
	ldr r7, _0800E8EC @ =gUnk_03002920
	strh r0, [r7]
	bl _0800F31A
	.align 2, 0
_0800E8EC: .4byte gUnk_03002920
_0800E8F0:
	ldr r2, _0800E954 @ =gUnk_03005220
	ldrb r0, [r2, #3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r0, _0800E958 @ =gUnk_03002920
	mov r1, sl
	mov r3, sb
	subs r2, r1, r3
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r2, #0xc]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0xc]
	ldr r3, _0800E95C @ =0x040000D4
	ldr r0, _0800E960 @ =0x080B9368
	str r0, [r3]
	ldr r4, _0800E964 @ =gUnk_0818B8E0
	ldr r2, _0800E968 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	add r0, sl
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r4, _0800E96C @ =0x06010000
	adds r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _0800E970 @ =0x80000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #0x7d
	bl m4aSongNumStart
	movs r5, #1
	add r5, sb
	mov r8, r5
	bl _0800F31A
	.align 2, 0
_0800E954: .4byte gUnk_03005220
_0800E958: .4byte gUnk_03002920
_0800E95C: .4byte 0x040000D4
_0800E960: .4byte 0x080B9368
_0800E964: .4byte gUnk_0818B8E0
_0800E968: .4byte gUnk_03004C20
_0800E96C: .4byte 0x06010000
_0800E970: .4byte 0x80000080
_0800E974:
	ldr r0, _0800E9DC @ =gUnk_03002920
	mov r6, sl
	mov r7, sb
	subs r1, r6, r7
	lsls r1, r1, #2
	adds r5, r1, r0
	ldrb r0, [r5, #0xc]
	lsrs r0, r0, #4
	movs r1, #1
	add r1, sb
	mov r8, r1
	cmp r0, #1
	beq _0800E992
	bl _0800F31A
_0800E992:
	ldr r2, _0800E9E0 @ =gUnk_03005220
	ldrb r1, [r2, #3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #3]
	ldr r3, _0800E9E4 @ =0x040000D4
	ldr r0, _0800E9E8 @ =0x08062148
	str r0, [r3]
	ldr r4, _0800E9EC @ =gUnk_0818B8E0
	ldr r2, _0800E9F0 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	add r0, sl
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r2, _0800E9F4 @ =0x06010000
	adds r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _0800E9F8 @ =0x80000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrb r1, [r5, #0xc]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5, #0xc]
	bl _0800F31A
	.align 2, 0
_0800E9DC: .4byte gUnk_03002920
_0800E9E0: .4byte gUnk_03005220
_0800E9E4: .4byte 0x040000D4
_0800E9E8: .4byte 0x08062148
_0800E9EC: .4byte gUnk_0818B8E0
_0800E9F0: .4byte gUnk_03004C20
_0800E9F4: .4byte 0x06010000
_0800E9F8: .4byte 0x80000080
_0800E9FC:
	ldr r3, _0800EA80 @ =gUnk_03002920
	ldrh r5, [r3]
	adds r1, r5, #0
	subs r1, #0xc
	mov r4, sl
	mov r6, sb
	subs r0, r4, r6
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r6, r3, #7
	movs r7, #1
	add r7, sb
	mov r8, r7
	cmp r1, r6
	blt _0800EA20
	bl _0800F31A
_0800EA20:
	adds r0, r5, #0
	adds r0, #0xc
	subs r4, r3, #7
	cmp r0, r4
	bgt _0800EA2E
	bl _0800F31A
_0800EA2E:
	ldr r0, _0800EA80 @ =gUnk_03002920
	ldrh r1, [r0, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r2, [r2, #2]
	cmp r0, r2
	blt _0800EA40
	bl _0800F31A
_0800EA40:
	adds r3, r2, #0
	subs r3, #0x20
	cmp r1, r3
	bgt _0800EA4C
	bl _0800F31A
_0800EA4C:
	ldr r0, [sp, #0x18]
	subs r0, #0xc
	cmp r0, r6
	bge _0800EA6E
	ldr r0, [sp, #0x18]
	adds r0, #0xc
	cmp r0, r4
	ble _0800EA6E
	ldr r0, [sp, #0x1c]
	subs r0, #0x18
	cmp r0, r2
	bge _0800EA6E
	ldr r1, [sp, #0x1c]
	cmp r1, r3
	ble _0800EA6E
	bl _0800F31A
_0800EA6E:
	ldr r0, _0800EA80 @ =gUnk_03002920
	mov r2, sp
	ldrh r2, [r2, #0x18]
	strh r2, [r0]
_0800EA76:
	movs r3, #1
	add r3, sb
	mov r8, r3
	bl _0800F31A
	.align 2, 0
_0800EA80: .4byte gUnk_03002920
_0800EA84:
	ldr r4, _0800EB08 @ =gUnk_03002920
	ldrh r3, [r4]
	adds r0, r3, #0
	subs r0, #0xc
	mov r5, sl
	mov r6, sb
	subs r1, r5, r6
	lsls r1, r1, #2
	adds r4, r1, r4
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0xc
	cmp r0, r1
	bge _0800EB18
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0xc
	cmp r1, r0
	ble _0800EB18
	ldr r7, _0800EB08 @ =gUnk_03002920
	ldrh r3, [r7, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r2, [r4, #2]
	cmp r0, r2
	bge _0800EB18
	adds r0, r2, #0
	subs r0, #0x1a
	cmp r3, r0
	ble _0800EB18
	ldr r0, _0800EB0C @ =gUnk_03005220
	adds r0, #0x3f
	ldrb r0, [r0]
	movs r1, #1
	add r1, sb
	mov r8, r1
	cmp r0, sb
	bne _0800EAD6
	bl _0800F31A
_0800EAD6:
	ldr r1, _0800EB10 @ =gUnk_03000830
	ldr r0, _0800EB14 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r6, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800EAF4
	adds r0, r2, #0
	subs r0, #0x10
	cmp r3, r0
	bgt _0800EAF4
	bl _0800F31A
_0800EAF4:
	mov r2, sp
	ldrh r3, [r2, #0x18]
	ldr r2, _0800EB08 @ =gUnk_03002920
	strh r3, [r2]
_0800EAFC:
	movs r4, #1
	add r4, sb
	mov r8, r4
	bl _0800F31A
	.align 2, 0
_0800EB08: .4byte gUnk_03002920
_0800EB0C: .4byte gUnk_03005220
_0800EB10: .4byte gUnk_03000830
_0800EB14: .4byte gUnk_0300363C
_0800EB18:
	ldr r1, _0800EB60 @ =gUnk_03005220
	adds r2, r1, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	adds r6, r1, #0
	movs r5, #1
	add r5, sb
	mov r8, r5
	cmp r0, sb
	beq _0800EB30
	bl _0800F31A
_0800EB30:
	ldr r0, _0800EB64 @ =gUnk_03002920
	mov r7, sl
	mov r3, sb
	subs r1, r7, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #9]
	cmp r0, #3
	bls _0800EB46
	bl _0800F31A
_0800EB46:
	adds r0, r6, #0
	adds r0, #0x45
	movs r1, #0
	strb r1, [r0]
	adds r0, #0x12
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	strb r1, [r2]
	mov r0, sb
	bl sub_08025B78
	b _0800F31A
	.align 2, 0
_0800EB60: .4byte gUnk_03005220
_0800EB64: .4byte gUnk_03002920
_0800EB68:
	movs r7, #0
	ldr r4, _0800EBAC @ =gUnk_03002920
	ldrh r3, [r4]
	adds r0, r3, #0
	subs r0, #0xc
	mov r5, sl
	mov r6, sb
	subs r1, r5, r6
	lsls r1, r1, #2
	adds r4, r1, r4
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0x10
	cmp r0, r1
	bge _0800EBB4
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0x10
	cmp r1, r0
	ble _0800EBB4
	ldr r0, _0800EBAC @ =gUnk_03002920
	ldrh r2, [r0, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	bge _0800EBB4
	adds r0, r1, #0
	subs r0, #0x10
	cmp r2, r0
	ble _0800EBB4
	ldr r6, _0800EBB0 @ =gUnk_03005220
	b _0800EC10
	.align 2, 0
_0800EBAC: .4byte gUnk_03002920
_0800EBB0: .4byte gUnk_03005220
_0800EBB4:
	ldr r1, _0800EC74 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x43
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r0, #1
	bne _0800EC04
	ldr r1, _0800EC78 @ =gUnk_03002920
	ldrh r3, [r1]
	adds r0, r3, #0
	subs r0, #0xc
	mov r2, sl
	mov r4, sb
	subs r1, r2, r4
	lsls r1, r1, #2
	ldr r5, _0800EC78 @ =gUnk_03002920
	adds r4, r1, r5
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0x10
	cmp r0, r1
	bge _0800EC04
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0x10
	cmp r1, r0
	ble _0800EC04
	ldrh r1, [r5, #2]
	adds r0, r1, #0
	subs r0, #0x2e
	ldrh r3, [r4, #2]
	cmp r0, r3
	bge _0800EC04
	subs r1, #0x16
	adds r0, r3, #0
	subs r0, #0x10
	cmp r1, r0
	ble _0800EC04
	movs r7, #1
_0800EC04:
	movs r0, #1
	add r0, sb
	mov r8, r0
	cmp r7, #0
	bne _0800EC10
	b _0800F31A
_0800EC10:
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r0, [r0]
	movs r1, #1
	add r1, sb
	mov r8, r1
	cmp r0, #0
	beq _0800EC22
	b _0800F31A
_0800EC22:
	ldr r5, _0800EC78 @ =gUnk_03002920
	ldrh r0, [r5]
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r4, r1, r5
	ldrh r1, [r4]
	subs r0, r0, r1
	bl Abs
	cmp r0, #0x17
	ble _0800EC42
	mov r6, sp
	ldrh r6, [r6, #0x18]
	strh r6, [r5]
_0800EC42:
	ldrb r0, [r4, #0x11]
	subs r0, #0x29
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800EC50
	b _0800F31A
_0800EC50:
	ldrb r1, [r4, #8]
	ldrb r0, [r4, #9]
	subs r0, #0xa
	cmp r1, r0
	blt _0800EC5C
	b _0800F31A
_0800EC5C:
	ldrh r0, [r5]
	ldrh r7, [r4]
	cmp r0, r7
	bhs _0800EC7C
	ldrb r1, [r4, #0xc]
	lsrs r0, r1, #4
	cmp r0, #0
	bne _0800EC6E
	b _0800F31A
_0800EC6E:
	movs r0, #0xf
	ands r0, r1
	b _0800EC8E
	.align 2, 0
_0800EC74: .4byte gUnk_03005220
_0800EC78: .4byte gUnk_03002920
_0800EC7C:
	ldrb r1, [r4, #0xc]
	lsrs r0, r1, #4
	cmp r0, #1
	bne _0800EC86
	b _0800F31A
_0800EC86:
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
_0800EC8E:
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #8]
	adds r1, #0xa
	ldrb r0, [r4, #9]
	subs r0, r0, r1
	strb r0, [r4, #8]
	b _0800F31A
_0800EC9C:
	ldr r0, _0800ED08 @ =gUnk_03002920
	ldrh r3, [r0]
	adds r0, r3, #0
	subs r0, #0xc
	mov r2, sl
	mov r4, sb
	subs r1, r2, r4
	lsls r1, r1, #2
	ldr r5, _0800ED08 @ =gUnk_03002920
	adds r4, r1, r5
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0xc
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, r1
	bge _0800ED10
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0xc
	cmp r1, r0
	ble _0800ED10
	ldrh r2, [r5, #2]
	adds r1, r2, #0
	subs r1, #0x18
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r0, [r0, #2]
	cmp r1, r0
	bge _0800ED10
	ldrh r0, [r4, #2]
	subs r0, #8
	cmp r2, r0
	ble _0800ED10
	ldr r1, _0800ED0C @ =gUnk_03005220
	movs r0, #0
	strh r0, [r1, #0x26]
	ldrh r0, [r5]
	ldrh r1, [r4]
	subs r0, r0, r1
	bl Abs
	cmp r0, #0x15
	bgt _0800ECFE
	b _0800F31A
_0800ECFE:
	mov r7, sp
	ldrh r7, [r7, #0x18]
	strh r7, [r5]
	b _0800F31A
	.align 2, 0
_0800ED08: .4byte gUnk_03002920
_0800ED0C: .4byte gUnk_03005220
_0800ED10:
	ldr r1, _0800ED8C @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x43
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r0, #1
	beq _0800ED20
	b _0800F31A
_0800ED20:
	ldr r4, _0800ED90 @ =gUnk_03002920
	ldrh r2, [r4]
	adds r0, r2, #0
	subs r0, #0xc
	mov r3, sl
	mov r5, sb
	subs r1, r3, r5
	lsls r1, r1, #2
	adds r3, r1, r4
	ldrh r5, [r3]
	adds r1, r5, #0
	adds r1, #0xc
	cmp r0, r1
	blt _0800ED3E
	b _0800F31A
_0800ED3E:
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r5, #0
	subs r0, #0xc
	cmp r1, r0
	bgt _0800ED4C
	b _0800F31A
_0800ED4C:
	ldrh r5, [r4, #2]
	adds r1, r5, #0
	subs r1, #0x30
	mov r7, r8
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #2]
	cmp r1, r0
	blt _0800ED64
	b _0800F31A
_0800ED64:
	adds r1, #0x18
	ldrh r0, [r3, #2]
	subs r0, #8
	cmp r1, r0
	bgt _0800ED70
	b _0800F31A
_0800ED70:
	movs r0, #0
	strh r0, [r6, #0x26]
	ldrh r0, [r4]
	ldrh r1, [r3]
	subs r0, r0, r1
	bl Abs
	cmp r0, #0x15
	bgt _0800ED84
	b _0800F31A
_0800ED84:
	mov r0, sp
	ldrh r0, [r0, #0x18]
	strh r0, [r4]
	b _0800F31A
	.align 2, 0
_0800ED8C: .4byte gUnk_03005220
_0800ED90: .4byte gUnk_03002920
_0800ED94:
	ldr r1, _0800EE0C @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x43
	ldrb r0, [r0]
	adds r6, r1, #0
	movs r1, #1
	add r1, sb
	mov r8, r1
	cmp r0, #0
	beq _0800EDAA
	b _0800F31A
_0800EDAA:
	ldr r4, _0800EE10 @ =gUnk_03002920
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #8
	cmp r0, r1
	blt _0800EDC8
	b _0800F31A
_0800EDC8:
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #8
	cmp r1, r0
	bgt _0800EDD6
	b _0800F31A
_0800EDD6:
	ldrh r3, [r4, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0800EDE4
	b _0800F31A
_0800EDE4:
	adds r0, r1, #0
	subs r0, #0x40
	cmp r3, r0
	bgt _0800EDEE
	b _0800F31A
_0800EDEE:
	mov r5, sp
	ldrh r5, [r5, #0x18]
	strh r5, [r4]
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800EE18
	ldr r0, _0800EE14 @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0800EE1E
	b _0800F31A
	.align 2, 0
_0800EE0C: .4byte gUnk_03005220
_0800EE10: .4byte gUnk_03002920
_0800EE14: .4byte gUnk_03004C20
_0800EE18:
	movs r0, #0
	bl sub_08014624
_0800EE1E:
	ldr r1, _0800EE3C @ =gUnk_03002920
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	adds r1, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xb
	movs r3, #0
	bl sub_0801E664
_0800EE32:
	movs r6, #1
	add r6, sb
	mov r8, r6
	b _0800F31A
	.align 2, 0
_0800EE3C: .4byte gUnk_03002920
_0800EE40:
	ldr r4, _0800EEA8 @ =gUnk_03002920
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	mov r7, sl
	mov r2, sb
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #0x10
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, r1
	blt _0800EE64
	b _0800F31A
_0800EE64:
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0x10
	cmp r1, r0
	bgt _0800EE72
	b _0800F31A
_0800EE72:
	ldrh r3, [r4, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0800EE80
	b _0800F31A
_0800EE80:
	adds r0, r1, #0
	subs r0, #0x40
	cmp r3, r0
	bgt _0800EE8A
	b _0800F31A
_0800EE8A:
	mov r7, sp
	ldrh r7, [r7, #0x18]
	strh r7, [r4]
	ldr r0, _0800EEAC @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800EEB4
	ldr r0, _0800EEB0 @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0800EEBA
	b _0800F31A
	.align 2, 0
_0800EEA8: .4byte gUnk_03002920
_0800EEAC: .4byte gUnk_03005220
_0800EEB0: .4byte gUnk_03004C20
_0800EEB4:
	movs r0, #0
	bl sub_08014624
_0800EEBA:
	ldr r1, _0800EED8 @ =gUnk_03002920
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	adds r1, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xb
	movs r3, #0
	bl sub_0801E664
	movs r0, #1
	add r0, sb
	mov r8, r0
	b _0800F31A
	.align 2, 0
_0800EED8: .4byte gUnk_03002920
_0800EEDC:
	ldr r0, [sp, #0x18]
	subs r0, #0xc
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	ldr r4, _0800EFCC @ =gUnk_03002920
	adds r3, r1, r4
	ldrh r2, [r3]
	adds r1, r2, #0
	adds r1, #0xf
	cmp r0, r1
	bge _0800EF1E
	ldr r1, [sp, #0x18]
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0xf
	cmp r1, r0
	ble _0800EF1E
	ldr r0, [sp, #0x1c]
	subs r0, #0x18
	ldrh r1, [r3, #2]
	cmp r0, r1
	bge _0800EF1E
	adds r0, r1, #0
	subs r0, #0x20
	movs r5, #1
	add r5, sb
	mov r8, r5
	ldr r6, [sp, #0x1c]
	cmp r6, r0
	ble _0800EF1E
	b _0800F31A
_0800EF1E:
	ldr r7, _0800EFCC @ =gUnk_03002920
	ldrh r3, [r7]
	adds r0, r3, #0
	subs r0, #0xc
	mov r2, sl
	mov r4, sb
	subs r1, r2, r4
	lsls r1, r1, #2
	adds r4, r1, r7
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0xf
	cmp r0, r1
	bge _0800EF60
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0xf
	cmp r1, r0
	ble _0800EF60
	ldrh r2, [r7, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	bge _0800EF60
	adds r0, r1, #0
	subs r0, #0x20
	cmp r2, r0
	ble _0800EF60
	mov r5, sp
	ldrh r5, [r5, #0x18]
	strh r5, [r7]
_0800EF60:
	ldr r0, _0800EFD0 @ =gUnk_03005220
	adds r0, #0x43
	ldrb r0, [r0]
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, #1
	beq _0800EF72
	b _0800F31A
_0800EF72:
	ldr r4, _0800EFCC @ =gUnk_03002920
	ldrh r6, [r4]
	adds r0, r6, #0
	subs r0, #0xc
	mov r7, sl
	mov r2, sb
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r5, [r2]
	adds r1, r5, #0
	adds r1, #0xf
	cmp r0, r1
	blt _0800EF90
	b _0800F31A
_0800EF90:
	adds r1, r6, #0
	adds r1, #0xc
	adds r0, r5, #0
	subs r0, #0xf
	cmp r1, r0
	bgt _0800EF9E
	b _0800F31A
_0800EF9E:
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	subs r0, #0x30
	ldrh r2, [r2, #2]
	cmp r0, r2
	blt _0800EFAC
	b _0800F31A
_0800EFAC:
	subs r1, #0x18
	adds r0, r2, #0
	subs r0, #0x20
	cmp r1, r0
	bgt _0800EFB8
	b _0800F31A
_0800EFB8:
	subs r0, r6, r5
	bl Abs
	cmp r0, #0x15
	bgt _0800EFC4
	b _0800F31A
_0800EFC4:
	mov r3, sp
	ldrh r3, [r3, #0x18]
	strh r3, [r4]
	b _0800F31A
	.align 2, 0
_0800EFCC: .4byte gUnk_03002920
_0800EFD0: .4byte gUnk_03005220
_0800EFD4:
	ldr r0, _0800F00C @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r4, #1
	add r4, sb
	mov r8, r4
	cmp r0, #0
	beq _0800EFE6
	b _0800F31A
_0800EFE6:
	ldr r3, _0800F010 @ =gUnk_03005400
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	bne _0800EFF0
	b _0800F31A
_0800EFF0:
	ldrb r1, [r3, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EFFC
	b _0800F31A
_0800EFFC:
	ldr r1, _0800F014 @ =gUnk_03004C20
	ldrb r0, [r1, #0xd]
	cmp r0, #2
	bne _0800F01C
	ldr r2, _0800F018 @ =0x08116A16
	ldrb r1, [r3, #0xc]
	b _0800F022
	.align 2, 0
_0800F00C: .4byte gUnk_03005220
_0800F010: .4byte gUnk_03005400
_0800F014: .4byte gUnk_03004C20
_0800F018: .4byte 0x08116A16
_0800F01C:
	ldr r2, _0800F09C @ =0x08116894
	ldrb r1, [r1, #0xd]
	subs r1, #1
_0800F022:
	lsls r1, r1, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	mov ip, r0
	adds r0, r2, #1
	adds r0, r1, r0
	ldrb r6, [r0]
	adds r0, r2, #2
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x28]
	adds r2, #3
	adds r1, r1, r2
	ldrb r7, [r1]
	ldr r4, _0800F0A0 @ =gUnk_03002920
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	adds r1, r3, r1
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, r1
	blt _0800F064
	b _0800F31A
_0800F064:
	adds r1, r5, #0
	adds r1, #0xc
	mov r5, ip
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	cmp r1, r0
	bgt _0800F076
	b _0800F31A
_0800F076:
	ldrh r3, [r4, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r2, #2]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	cmp r1, r0
	blt _0800F08A
	b _0800F31A
_0800F08A:
	ldr r6, [sp, #0x28]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	cmp r3, r0
	bgt _0800F098
	b _0800F31A
_0800F098:
	b _0800F2B4
	.align 2, 0
_0800F09C: .4byte 0x08116894
_0800F0A0: .4byte gUnk_03002920
_0800F0A4:
	ldr r0, _0800F120 @ =gUnk_03005400
	ldrb r0, [r0, #0xc]
	movs r7, #1
	add r7, sb
	mov r8, r7
	cmp r0, #0
	bne _0800F0B4
	b _0800F31A
_0800F0B4:
	ldr r5, _0800F124 @ =gUnk_03002920
	mov r1, sl
	mov r2, sb
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrb r0, [r4, #0xf]
	subs r0, #0xe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800F0CE
	b _0800F31A
_0800F0CE:
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xc
	ldrh r2, [r4]
	adds r0, r2, #0
	adds r0, #8
	cmp r1, r0
	blt _0800F0E0
	b _0800F31A
_0800F0E0:
	adds r1, #0x18
	subs r0, #0x10
	cmp r1, r0
	bgt _0800F0EA
	b _0800F31A
_0800F0EA:
	ldrh r3, [r5, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r4, #2]
	subs r0, r2, #6
	cmp r1, r0
	blt _0800F0FA
	b _0800F31A
_0800F0FA:
	subs r0, #0x10
	cmp r3, r0
	bgt _0800F102
	b _0800F31A
_0800F102:
	ldr r0, _0800F128 @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F112
	movs r0, #1
	bl sub_08014624
_0800F112:
	mov r0, sb
	movs r1, #1
	bl sub_08025B78
	movs r0, #0
	strb r0, [r4, #0xf]
	b _0800F31A
	.align 2, 0
_0800F120: .4byte gUnk_03005400
_0800F124: .4byte gUnk_03002920
_0800F128: .4byte gUnk_03005220
_0800F12C:
	ldr r0, _0800F1A4 @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #0
	beq _0800F13E
	b _0800F31A
_0800F13E:
	ldr r0, _0800F1A8 @ =gUnk_03005400
	ldrb r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800F14C
	b _0800F31A
_0800F14C:
	ldr r1, _0800F1AC @ =gUnk_03000830
	ldr r0, _0800F1B0 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r4, sb
	subs r0, r4, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _0800F162
	b _0800F31A
_0800F162:
	ldr r3, _0800F1B4 @ =gUnk_03002920
	ldrh r6, [r3]
	adds r0, r6, #0
	subs r0, #0xc
	mov r5, sl
	subs r1, r5, r4
	lsls r1, r1, #2
	adds r2, r1, r3
	ldrh r5, [r2]
	adds r1, r5, #0
	adds r1, #0x14
	cmp r0, r1
	blt _0800F17E
	b _0800F31A
_0800F17E:
	adds r1, r6, #0
	adds r1, #0xc
	adds r0, r5, #0
	subs r0, #0x14
	cmp r1, r0
	bgt _0800F18C
	b _0800F31A
_0800F18C:
	ldrh r5, [r3, #2]
	adds r1, r5, #0
	subs r1, #0x18
	ldrh r2, [r2, #2]
	adds r0, r2, #0
	subs r0, #0xa
	cmp r1, r0
	blt _0800F19E
	b _0800F31A
_0800F19E:
	subs r0, #0x2c
	b _0800F2B0
	.align 2, 0
_0800F1A4: .4byte gUnk_03005220
_0800F1A8: .4byte gUnk_03005400
_0800F1AC: .4byte gUnk_03000830
_0800F1B0: .4byte gUnk_0300363C
_0800F1B4: .4byte gUnk_03002920
_0800F1B8:
	ldr r0, _0800F20C @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, #0
	beq _0800F1CA
	b _0800F31A
_0800F1CA:
	ldr r3, _0800F210 @ =gUnk_03002920
	ldrh r6, [r3]
	adds r0, r6, #0
	subs r0, #0xc
	mov r7, sl
	mov r2, sb
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r2, r1, r3
	ldrh r5, [r2]
	adds r1, r5, #0
	adds r1, #0x14
	cmp r0, r1
	blt _0800F1E8
	b _0800F31A
_0800F1E8:
	adds r1, r6, #0
	adds r1, #0xc
	adds r0, r5, #0
	subs r0, #0x14
	cmp r1, r0
	bgt _0800F1F6
	b _0800F31A
_0800F1F6:
	ldrh r5, [r3, #2]
	adds r1, r5, #0
	subs r1, #0x18
	ldrh r2, [r2, #2]
	adds r0, r2, #0
	subs r0, #0xc
	cmp r1, r0
	blt _0800F208
	b _0800F31A
_0800F208:
	subs r0, #0x28
	b _0800F2B0
	.align 2, 0
_0800F20C: .4byte gUnk_03005220
_0800F210: .4byte gUnk_03002920
_0800F214:
	ldr r0, _0800F260 @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #0
	bne _0800F31A
	ldr r3, _0800F264 @ =gUnk_03002920
	mov r4, sl
	mov r5, sb
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	bne _0800F31A
	ldrh r5, [r3]
	adds r1, r5, #0
	subs r1, #0xc
	ldrh r2, [r2]
	adds r0, r2, #0
	adds r0, #0x18
	cmp r1, r0
	bge _0800F31A
	adds r1, #0x18
	subs r0, #0x30
	cmp r1, r0
	ble _0800F31A
	ldrh r1, [r3, #2]
	movs r0, #0x8e
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800F31A
	cmp r1, #0x67
	bls _0800F31A
	b _0800F2B4
	.align 2, 0
_0800F260: .4byte gUnk_03005220
_0800F264: .4byte gUnk_03002920
_0800F268:
	ldr r0, _0800F2BC @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, #0
	bne _0800F31A
	ldr r3, _0800F2C0 @ =gUnk_03002920
	ldrh r6, [r3]
	adds r0, r6, #0
	subs r0, #0xc
	mov r7, sl
	mov r2, sb
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r2, r1, r3
	ldrh r5, [r2]
	adds r1, r5, #0
	adds r1, #0x1e
	cmp r0, r1
	bge _0800F31A
	adds r1, r6, #0
	adds r1, #0xc
	adds r0, r5, #0
	subs r0, #0x1e
	cmp r1, r0
	ble _0800F31A
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	bge _0800F31A
	adds r0, r1, #0
	subs r0, #0x1e
_0800F2B0:
	cmp r5, r0
	ble _0800F31A
_0800F2B4:
	movs r0, #1
	bl sub_08014624
	b _0800F31A
	.align 2, 0
_0800F2BC: .4byte gUnk_03005220
_0800F2C0: .4byte gUnk_03002920
_0800F2C4:
	ldr r0, _0800F3D8 @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #0
	bne _0800F31A
	ldr r3, _0800F3DC @ =gUnk_03002920
	mov r4, sl
	mov r5, sb
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrb r0, [r2, #0xf]
	cmp r0, #0xf
	bne _0800F31A
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #0xc
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0x12
	cmp r1, r0
	bge _0800F31A
	adds r1, #0x18
	subs r0, #0x24
	cmp r1, r0
	ble _0800F31A
	ldrh r5, [r3, #2]
	adds r1, r5, #0
	subs r1, #0x18
	ldrh r2, [r2, #2]
	adds r0, r2, #0
	subs r0, #8
	cmp r1, r0
	bge _0800F31A
	subs r0, #0x30
	cmp r5, r0
	ble _0800F31A
	movs r0, #1
	bl sub_08014624
_0800F31A:
	mov sb, r8
_0800F31C:
	ldr r0, _0800F3E0 @ =gUnk_03005428
	ldrb r0, [r0]
	cmp sb, r0
	bhs _0800F328
	bl _0800DE24
_0800F328:
	ldr r0, _0800F3E4 @ =gNewKeys
	ldrh r1, [r0]
	ldr r0, _0800F3E8 @ =gUnk_03005284
	ldr r0, [r0]
	ldrb r0, [r0, #0x1d]
	ands r1, r0
	cmp r1, #0
	bne _0800F33A
	b _0800FAA4
_0800F33A:
	ldr r2, _0800F3D8 @ =gUnk_03005220
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r6, r2, #0
	cmp r1, #0
	beq _0800F354
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F354
	b _0800FAA4
_0800F354:
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F360
	b _0800FAA4
_0800F360:
	adds r5, r6, #0
	adds r5, #0x33
	ldrb r4, [r5]
	cmp r4, #0
	bne _0800F3F0
	adds r3, r6, #0
	adds r3, #0x42
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800F3F0
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	orrs r1, r0
	adds r0, r6, #0
	adds r0, #0x39
	ldrb r2, [r0]
	orrs r1, r2
	adds r0, #0xc
	ldrb r0, [r0]
	orrs r1, r0
	cmp r1, #0
	beq _0800F3F0
	cmp r2, #0
	bne _0800F3A2
	ldr r2, _0800F3DC @ =gUnk_03002920
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x17
	strb r1, [r0, #0xf]
_0800F3A2:
	adds r1, r6, #0
	adds r1, #0x41
	movs r0, #1
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x55
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	movs r0, #0xc
	strb r0, [r5]
	movs r0, #0
	bl sub_080145A8
	ldr r0, _0800F3EC @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	movs r0, #0
	movs r1, #0xb
	bl sub_08025B78
	adds r0, r6, #0
	adds r0, #0x3b
	strb r4, [r0]
	b _0800F928
	.align 2, 0
_0800F3D8: .4byte gUnk_03005220
_0800F3DC: .4byte gUnk_03002920
_0800F3E0: .4byte gUnk_03005428
_0800F3E4: .4byte gNewKeys
_0800F3E8: .4byte gUnk_03005284
_0800F3EC: .4byte gUnk_03004654
_0800F3F0:
	adds r0, r6, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800F4A2
	ldr r0, _0800F458 @ =gUnk_03004C20
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _0800F468
	ldr r4, _0800F45C @ =gUnk_03004790
	ldr r3, _0800F460 @ =gUnk_03002920
	ldrh r1, [r3]
	lsrs r1, r1, #3
	ldrh r2, [r3, #2]
	lsrs r2, r2, #3
	ldr r0, _0800F464 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r2, r0, r2
	ldr r4, [r4, #0x14]
	adds r1, r1, r2
	adds r1, r4, r1
	ldrb r1, [r1]
	str r1, [sp, #0x20]
	ldrh r3, [r3]
	adds r0, r3, #0
	adds r0, #0xa
	asrs r0, r0, #3
	adds r0, r0, r2
	adds r0, r4, r0
	add r6, sp, #0x20
	ldrb r1, [r6]
	ldrb r0, [r0]
	ldr r7, [sp, #0x20]
	cmp r7, r0
	bhs _0800F43A
	adds r1, r0, #0
_0800F43A:
	str r1, [sp, #0x20]
	adds r0, r3, #0
	subs r0, #0xb
	asrs r0, r0, #3
	adds r0, r0, r2
	adds r0, r4, r0
	add r2, sp, #0x20
	ldrb r1, [r2]
	ldrb r0, [r0]
	ldr r3, [sp, #0x20]
	cmp r3, r0
	bhs _0800F454
	adds r1, r0, #0
_0800F454:
	str r1, [sp, #0x20]
	b _0800F4A6
	.align 2, 0
_0800F458: .4byte gUnk_03004C20
_0800F45C: .4byte gUnk_03004790
_0800F460: .4byte gUnk_03002920
_0800F464: .4byte gUnk_03003430
_0800F468:
	ldr r0, _0800F490 @ =gUnk_03002920
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r0, sp, #0xc
	movs r3, #0x18
	bl sub_08014230
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x10
	ldr r1, _0800F494 @ =0xFFFF0000
	cmp r0, r1
	beq _0800F49C
	ldr r0, _0800F498 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	b _0800F4A6
	.align 2, 0
_0800F490: .4byte gUnk_03002920
_0800F494: .4byte 0xFFFF0000
_0800F498: .4byte gUnk_03004654
_0800F49C:
	movs r4, #0
	str r4, [sp, #0x20]
	b _0800F4A6
_0800F4A2:
	movs r5, #0
	str r5, [sp, #0x20]
_0800F4A6:
	ldr r4, _0800F51C @ =gUnk_03005220
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800F512
	ldr r5, _0800F520 @ =gUnk_03002920
	ldrh r0, [r5]
	adds r6, r4, #0
	adds r6, #0x3f
	ldrb r2, [r6]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrh r1, [r1]
	subs r0, r0, r1
	bl Abs
	cmp r0, #6
	ble _0800F4D2
	b _0800FAA4
_0800F4D2:
	ldrh r0, [r5, #2]
	ldrb r2, [r6]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrh r1, [r1, #2]
	adds r1, #0x18
	subs r0, r0, r1
	bl Abs
	cmp r0, #6
	ble _0800F4EE
	b _0800FAA4
_0800F4EE:
	ldrb r0, [r6]
	movs r1, #0
	bl sub_08025B78
	ldr r0, _0800F524 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	adds r0, r4, #0
	adds r0, #0x57
	movs r1, #0
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	strb r1, [r6]
	movs r0, #0x15
	strh r0, [r4, #0x16]
	strh r1, [r4, #0x18]
_0800F512:
	ldr r0, _0800F528 @ =gUnk_030051D4
	ldr r0, [r0]
	mov sb, r0
	b _0800F91E
	.align 2, 0
_0800F51C: .4byte gUnk_03005220
_0800F520: .4byte gUnk_03002920
_0800F524: .4byte gUnk_03004654
_0800F528: .4byte gUnk_030051D4
_0800F52C:
	ldr r2, _0800F564 @ =gUnk_03002920
	mov r6, sb
	lsls r1, r6, #3
	subs r0, r1, r6
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrb r3, [r2, #0xf]
	mov sl, r1
	cmp r3, #0x1a
	beq _0800F54E
	ldrb r0, [r2, #0x10]
	cmp r0, #0
	bne _0800F548
	b _0800F91A
_0800F548:
	cmp r3, #0x12
	bls _0800F54E
	b _0800F91A
_0800F54E:
	ldrb r0, [r2, #0x11]
	subs r0, #0x25
	cmp r0, #0x4b
	bls _0800F558
	b _0800F91A
_0800F558:
	lsls r0, r0, #2
	ldr r1, _0800F568 @ =_0800F56C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800F564: .4byte gUnk_03002920
_0800F568: .4byte _0800F56C
_0800F56C: @ jump table
	.4byte _0800F69C @ case 0
	.4byte _0800F91A @ case 1
	.4byte _0800F7CC @ case 2
	.4byte _0800F7CC @ case 3
	.4byte _0800F7CC @ case 4
	.4byte _0800F7CC @ case 5
	.4byte _0800F7CC @ case 6
	.4byte _0800F91A @ case 7
	.4byte _0800F91A @ case 8
	.4byte _0800F91A @ case 9
	.4byte _0800F91A @ case 10
	.4byte _0800F91A @ case 11
	.4byte _0800F91A @ case 12
	.4byte _0800F91A @ case 13
	.4byte _0800F91A @ case 14
	.4byte _0800F91A @ case 15
	.4byte _0800F8D4 @ case 16
	.4byte _0800F91A @ case 17
	.4byte _0800F91A @ case 18
	.4byte _0800F868 @ case 19
	.4byte _0800F91A @ case 20
	.4byte _0800F91A @ case 21
	.4byte _0800F91A @ case 22
	.4byte _0800F91A @ case 23
	.4byte _0800F91A @ case 24
	.4byte _0800F828 @ case 25
	.4byte _0800F764 @ case 26
	.4byte _0800F91A @ case 27
	.4byte _0800F6FC @ case 28
	.4byte _0800F91A @ case 29
	.4byte _0800F91A @ case 30
	.4byte _0800F91A @ case 31
	.4byte _0800F91A @ case 32
	.4byte _0800F91A @ case 33
	.4byte _0800F91A @ case 34
	.4byte _0800F91A @ case 35
	.4byte _0800F91A @ case 36
	.4byte _0800F91A @ case 37
	.4byte _0800F91A @ case 38
	.4byte _0800F91A @ case 39
	.4byte _0800F91A @ case 40
	.4byte _0800F91A @ case 41
	.4byte _0800F91A @ case 42
	.4byte _0800F91A @ case 43
	.4byte _0800F91A @ case 44
	.4byte _0800F91A @ case 45
	.4byte _0800F91A @ case 46
	.4byte _0800F91A @ case 47
	.4byte _0800F91A @ case 48
	.4byte _0800F91A @ case 49
	.4byte _0800F91A @ case 50
	.4byte _0800F91A @ case 51
	.4byte _0800F91A @ case 52
	.4byte _0800F91A @ case 53
	.4byte _0800F91A @ case 54
	.4byte _0800F91A @ case 55
	.4byte _0800F91A @ case 56
	.4byte _0800F91A @ case 57
	.4byte _0800F91A @ case 58
	.4byte _0800F91A @ case 59
	.4byte _0800F91A @ case 60
	.4byte _0800F91A @ case 61
	.4byte _0800F91A @ case 62
	.4byte _0800F91A @ case 63
	.4byte _0800F91A @ case 64
	.4byte _0800F91A @ case 65
	.4byte _0800F91A @ case 66
	.4byte _0800F91A @ case 67
	.4byte _0800F91A @ case 68
	.4byte _0800F91A @ case 69
	.4byte _0800F91A @ case 70
	.4byte _0800F91A @ case 71
	.4byte _0800F91A @ case 72
	.4byte _0800F91A @ case 73
	.4byte _0800F69C @ case 74
	.4byte _0800F8D4 @ case 75
_0800F69C:
	ldr r4, _0800F6F4 @ =gUnk_03002920
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	mov r7, sl
	mov r2, sb
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	adds r1, r3, #7
	cmp r0, r1
	blt _0800F6B8
	b _0800F91A
_0800F6B8:
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0xf
	cmp r1, r0
	bgt _0800F6C6
	b _0800F91A
_0800F6C6:
	ldrh r3, [r4, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0800F6D4
	b _0800F91A
_0800F6D4:
	adds r0, r3, #2
	subs r1, #0x18
	cmp r0, r1
	bgt _0800F6DE
	b _0800F91A
_0800F6DE:
	ldr r0, _0800F6F8 @ =gUnk_03005220
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800F6EA
	b _0800F91A
_0800F6EA:
	cmp r3, r1
	ble _0800F6F0
	b _0800F91A
_0800F6F0:
	b _0800F912
	.align 2, 0
_0800F6F4: .4byte gUnk_03002920
_0800F6F8: .4byte gUnk_03005220
_0800F6FC:
	ldr r4, _0800F758 @ =gUnk_03002920
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	mov r3, sl
	mov r6, sb
	subs r1, r3, r6
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #0x10
	cmp r0, r1
	blt _0800F71A
	b _0800F91A
_0800F71A:
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0x10
	cmp r1, r0
	bgt _0800F728
	b _0800F91A
_0800F728:
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r2, [r2, #2]
	cmp r0, r2
	blt _0800F736
	b _0800F91A
_0800F736:
	adds r1, #2
	adds r0, r2, #0
	subs r0, #0x20
	cmp r1, r0
	bgt _0800F742
	b _0800F91A
_0800F742:
	ldr r1, _0800F75C @ =gUnk_03000830
	ldr r0, _0800F760 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r6, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F756
	b _0800F91A
_0800F756:
	b _0800F912
	.align 2, 0
_0800F758: .4byte gUnk_03002920
_0800F75C: .4byte gUnk_03000830
_0800F760: .4byte gUnk_0300363C
_0800F764:
	ldr r4, _0800F7C0 @ =gUnk_03002920
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	mov r7, sl
	mov r2, sb
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #0xc
	cmp r0, r1
	blt _0800F782
	b _0800F91A
_0800F782:
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0xc
	cmp r1, r0
	bgt _0800F790
	b _0800F91A
_0800F790:
	ldrh r3, [r4, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0800F79E
	b _0800F91A
_0800F79E:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r3, r0
	bgt _0800F7A8
	b _0800F91A
_0800F7A8:
	ldr r1, _0800F7C4 @ =gUnk_03000830
	ldr r0, _0800F7C8 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r3, sb
	subs r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _0800F7BE
	b _0800F91A
_0800F7BE:
	b _0800F912
	.align 2, 0
_0800F7C0: .4byte gUnk_03002920
_0800F7C4: .4byte gUnk_03000830
_0800F7C8: .4byte gUnk_0300363C
_0800F7CC:
	ldr r4, _0800F820 @ =gUnk_03002920
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	mov r6, sl
	mov r7, sb
	subs r1, r6, r7
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #0x10
	cmp r0, r1
	blt _0800F7EA
	b _0800F91A
_0800F7EA:
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0x10
	cmp r1, r0
	bgt _0800F7F8
	b _0800F91A
_0800F7F8:
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r2, [r2, #2]
	cmp r0, r2
	blt _0800F806
	b _0800F91A
_0800F806:
	adds r1, #2
	adds r0, r2, #0
	subs r0, #0x10
	cmp r1, r0
	bgt _0800F812
	b _0800F91A
_0800F812:
	ldr r0, _0800F824 @ =gUnk_03005220
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800F81E
	b _0800F91A
_0800F81E:
	b _0800F912
	.align 2, 0
_0800F820: .4byte gUnk_03002920
_0800F824: .4byte gUnk_03005220
_0800F828:
	ldr r4, _0800F864 @ =gUnk_03002920
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #0xc
	cmp r0, r1
	bge _0800F91A
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0xc
	cmp r1, r0
	ble _0800F91A
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r2, [r2, #2]
	cmp r0, r2
	bge _0800F91A
	adds r1, #2
	adds r0, r2, #0
	subs r0, #8
	b _0800F90E
	.align 2, 0
_0800F864: .4byte gUnk_03002920
_0800F868:
	ldr r0, _0800F8C8 @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F91A
	ldr r5, _0800F8CC @ =gUnk_03002920
	ldrh r4, [r5]
	adds r0, r4, #0
	subs r0, #0xc
	mov r6, sl
	mov r7, sb
	subs r1, r6, r7
	lsls r1, r1, #2
	adds r2, r1, r5
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #0x20
	cmp r0, r1
	bge _0800F91A
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0x20
	cmp r1, r0
	ble _0800F91A
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r2, [r2, #2]
	cmp r0, r2
	bge _0800F91A
	adds r1, r3, #3
	adds r0, r2, #0
	subs r0, #0x16
	cmp r1, r0
	ble _0800F91A
	ldr r0, _0800F8D0 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	adds r0, r4, #0
	adds r1, r3, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_0801E664
	b _0800F91A
	.align 2, 0
_0800F8C8: .4byte gUnk_03005220
_0800F8CC: .4byte gUnk_03002920
_0800F8D0: .4byte gUnk_03004654
_0800F8D4:
	ldr r4, _0800F99C @ =gUnk_03002920
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #0xf
	cmp r0, r1
	bge _0800F91A
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0xf
	cmp r1, r0
	ble _0800F91A
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r2, [r2, #2]
	cmp r0, r2
	bge _0800F91A
	adds r1, #2
	adds r0, r2, #0
	subs r0, #0x20
_0800F90E:
	cmp r1, r0
	ble _0800F91A
_0800F912:
	ldr r0, _0800F9A0 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
_0800F91A:
	movs r4, #1
	add sb, r4
_0800F91E:
	ldr r0, _0800F9A4 @ =gUnk_030034C8
	ldr r0, [r0]
	cmp sb, r0
	bhi _0800F928
	b _0800F52C
_0800F928:
	ldr r0, _0800F9A8 @ =gUnk_03004C20
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _0800F95C
	ldr r3, _0800F9AC @ =gUnk_03004790
	ldr r0, _0800F99C @ =gUnk_03002920
	ldrh r2, [r0]
	lsrs r2, r2, #3
	ldrh r1, [r0, #2]
	subs r1, #0x18
	asrs r1, r1, #3
	ldr r0, _0800F9B0 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r1, r0, r1
	ldr r0, [r3, #0x14]
	adds r2, r2, r1
	adds r0, r0, r2
	add r5, sp, #0x20
	ldrb r1, [r5]
	ldrb r0, [r0]
	ldr r6, [sp, #0x20]
	cmp r6, r0
	bhs _0800F95A
	adds r1, r0, #0
_0800F95A:
	str r1, [sp, #0x20]
_0800F95C:
	ldr r0, _0800F9A0 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x16]
	ldr r7, [sp, #0x20]
	cmp r0, r7
	bls _0800F96A
	b _0800FAA4
_0800F96A:
	ldr r2, _0800F9B4 @ =gUnk_03005220
	movs r3, #0
	movs r0, #0
	strh r0, [r2, #0x1c]
	adds r1, r2, #0
	adds r1, #0x34
	ldrb r0, [r1]
	cmp r0, #1
	bne _0800F9BC
	strb r3, [r1]
	adds r0, r2, #0
	adds r0, #0x3c
	movs r1, #3
	strb r1, [r0]
	ldr r0, _0800F9B8 @ =0x0000FDB0
	strh r0, [r2, #0x28]
	movs r0, #0
	movs r1, #0xb
	bl sub_08025B78
	movs r0, #0x26
	bl m4aSongNumStart
	b _0800FA38
	.align 2, 0
_0800F99C: .4byte gUnk_03002920
_0800F9A0: .4byte gUnk_03004654
_0800F9A4: .4byte gUnk_030034C8
_0800F9A8: .4byte gUnk_03004C20
_0800F9AC: .4byte gUnk_03004790
_0800F9B0: .4byte gUnk_03003430
_0800F9B4: .4byte gUnk_03005220
_0800F9B8: .4byte 0x0000FDB0
_0800F9BC:
	ldr r0, _0800F9EC @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _0800FA0C
	adds r1, r2, #0
	adds r1, #0x39
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800F9F8
	strb r3, [r1]
	ldr r0, _0800F9F0 @ =0x0000FC60
	strh r0, [r2, #0x28]
	adds r1, #3
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800F9F4 @ =gUnk_03002920
	ldrh r0, [r1, #2]
	subs r0, #8
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	b _0800FA38
	.align 2, 0
_0800F9EC: .4byte gUnk_03000830
_0800F9F0: .4byte 0x0000FC60
_0800F9F4: .4byte gUnk_03002920
_0800F9F8:
	adds r0, r2, #0
	adds r0, #0x3c
	movs r1, #2
	strb r1, [r0]
	ldr r0, _0800FA08 @ =0x0000FFA0
	strh r0, [r2, #0x28]
	b _0800FA38
	.align 2, 0
_0800FA08: .4byte 0x0000FFA0
_0800FA0C:
	adds r1, r2, #0
	adds r1, #0x3c
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0800FA24 @ =gUnk_03004C20
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _0800FA2C
	ldr r0, _0800FA28 @ =0x0000FCB0
	strh r0, [r2, #0x28]
	b _0800FA38
	.align 2, 0
_0800FA24: .4byte gUnk_03004C20
_0800FA28: .4byte 0x0000FCB0
_0800FA2C:
	ldr r0, _0800FA60 @ =0x0000FCB0
	strh r0, [r2, #0x28]
	ldr r1, _0800FA64 @ =gUnk_03002920
	ldrh r0, [r1, #2]
	subs r0, #4
	strh r0, [r1, #2]
_0800FA38:
	ldr r0, _0800FA68 @ =gUnk_03005220
	adds r2, r0, #0
	adds r2, #0x3d
	movs r1, #0
	strb r1, [r2]
	adds r0, #0x30
	strb r1, [r0]
	ldr r0, _0800FA6C @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _0800FA9E
	ldr r0, _0800FA70 @ =gUnk_03004C20
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _0800FA74
	movs r0, #0x2d
	bl m4aSongNumStart
	b _0800FA7A
	.align 2, 0
_0800FA60: .4byte 0x0000FCB0
_0800FA64: .4byte gUnk_03002920
_0800FA68: .4byte gUnk_03005220
_0800FA6C: .4byte gUnk_03000830
_0800FA70: .4byte gUnk_03004C20
_0800FA74:
	movs r0, #0x9f
	bl m4aSongNumStart
_0800FA7A:
	ldr r0, _0800FA90 @ =gUnk_03005220
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800FA94
	movs r0, #0
	movs r1, #2
	bl sub_08025B78
	b _0800FAA4
	.align 2, 0
_0800FA90: .4byte gUnk_03005220
_0800FA94:
	movs r0, #0
	movs r1, #0x18
	bl sub_08025B78
	b _0800FAA4
_0800FA9E:
	movs r0, #0x26
	bl m4aSongNumStart
_0800FAA4:
	ldr r3, _0800FB0C @ =gHeldKeys
	ldrh r1, [r3]
	ldr r2, _0800FB10 @ =gUnk_03005284
	ldr r0, [r2]
	ldrb r0, [r0, #0x1d]
	ands r1, r0
	ldr r6, _0800FB14 @ =gUnk_03005220
	cmp r1, #0
	beq _0800FB18
	adds r4, r6, #0
	adds r4, #0x3d
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r4]
	ldrb r0, [r0]
	orrs r1, r0
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r0, [r0]
	orrs r1, r0
	adds r0, r6, #0
	adds r0, #0x31
	ldrb r0, [r0]
	orrs r1, r0
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	orrs r1, r0
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r0, [r0]
	orrs r1, r0
	cmp r1, #0
	bne _0800FB18
	movs r0, #2
	strb r0, [r4]
	adds r0, r6, #0
	adds r0, #0x30
	strb r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	adds r0, r6, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800FB04
	b _0800FF18
_0800FB04:
	movs r0, #0x2f
	bl m4aSongNumStart
	b _0800FF18
	.align 2, 0
_0800FB0C: .4byte gHeldKeys
_0800FB10: .4byte gUnk_03005284
_0800FB14: .4byte gUnk_03005220
_0800FB18:
	adds r0, r6, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800FB76
	ldrh r3, [r3]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _0800FB38
	ldr r1, _0800FB34 @ =gUnk_03002920
	ldrh r0, [r1, #2]
	subs r0, #1
	b _0800FF16
	.align 2, 0
_0800FB34: .4byte gUnk_03002920
_0800FB38:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _0800FB42
	b _0800FF18
_0800FB42:
	ldr r2, _0800FB68 @ =gUnk_03002920
	ldrh r4, [r2, #2]
	adds r3, r4, #1
	strh r3, [r2, #2]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800FB56
	b _0800FF18
_0800FB56:
	ldr r0, _0800FB6C @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800FB70
	adds r0, r4, #3
	strh r0, [r2, #2]
	b _0800FF18
	.align 2, 0
_0800FB68: .4byte gUnk_03002920
_0800FB6C: .4byte gUnk_03004C20
_0800FB70:
	adds r0, r3, #1
	strh r0, [r2, #2]
	b _0800FF18
_0800FB76:
	adds r0, r6, #0
	adds r0, #0x3a
	adds r5, r6, #0
	adds r5, #0x3b
	ldrb r0, [r0]
	ldrb r4, [r5]
	orrs r0, r4
	cmp r0, #0
	beq _0800FC74
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800FC74
	adds r1, r6, #0
	adds r1, #0x49
	strb r0, [r1]
	lsls r0, r4, #0x18
	cmp r0, #0
	beq _0800FC10
	ldr r2, _0800FC04 @ =gUnk_03002920
	ldr r1, _0800FC08 @ =0x080D9110
	adds r3, r4, #1
	strb r3, [r5]
	movs r0, #0x3f
	ands r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2, #2]
	adds r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r3, #0x18
	cmp r0, #0
	bne _0800FBC2
	adds r0, r3, #1
	strb r0, [r5]
_0800FBC2:
	adds r1, r6, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800FBE0
	ldrb r0, [r5]
	cmp r0, #0x36
	bne _0800FBE0
	movs r0, #1
	strb r0, [r5]
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
_0800FBE0:
	ldr r0, _0800FC0C @ =gUnk_03000790
	adds r1, r6, #0
	adds r1, #0x3a
	ldrb r1, [r1]
	subs r1, #1
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrh r0, [r6, #0x24]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bne _0800FBF8
	b _0800FF18
_0800FBF8:
	adds r1, r6, #0
	adds r1, #0x3b
	movs r0, #0
	strb r0, [r1]
	b _0800FF18
	.align 2, 0
_0800FC04: .4byte gUnk_03002920
_0800FC08: .4byte 0x080D9110
_0800FC0C: .4byte gUnk_03000790
_0800FC10:
	ldrh r2, [r6, #0x28]
	lsls r1, r2, #0x10
	cmp r1, #0
	ble _0800FC30
	adds r0, r6, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800FC30
	ldr r0, _0800FC2C @ =gUnk_03002920
	asrs r1, r1, #0x18
	ldrh r3, [r0, #2]
	adds r1, r1, r3
	b _0800FC8E
	.align 2, 0
_0800FC2C: .4byte gUnk_03002920
_0800FC30:
	movs r0, #0
	strh r0, [r6, #0x28]
	ldr r1, _0800FC6C @ =gUnk_03002920
	ldrh r0, [r1, #2]
	subs r0, #3
	strh r0, [r1, #2]
	ldrh r1, [r1, #2]
	ldr r3, _0800FC70 @ =gUnk_03000790
	adds r2, r6, #0
	adds r2, #0x3a
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r0, [r0, #4]
	adds r0, #0x20
	cmp r1, r0
	blt _0800FC56
	b _0800FF18
_0800FC56:
	adds r1, r6, #0
	adds r1, #0x3b
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r0, [r0, #4]
	strh r0, [r6, #0x24]
	b _0800FF18
	.align 2, 0
_0800FC6C: .4byte gUnk_03002920
_0800FC70: .4byte gUnk_03000790
_0800FC74:
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800FCAC
	ldrh r2, [r6, #0x28]
	lsls r1, r2, #0x10
	cmp r1, #0
	ble _0800FC9C
	ldr r0, _0800FC98 @ =gUnk_03002920
	asrs r1, r1, #0x18
	ldrh r4, [r0, #2]
	adds r1, r1, r4
_0800FC8E:
	strh r1, [r0, #2]
	adds r0, r2, #0
	subs r0, #0x17
	strh r0, [r6, #0x28]
	b _0800FF18
	.align 2, 0
_0800FC98: .4byte gUnk_03002920
_0800FC9C:
	movs r0, #0
	strh r0, [r6, #0x28]
	ldr r1, _0800FCA8 @ =gUnk_03002920
	ldrh r0, [r1, #2]
	subs r0, #1
	b _0800FF16
	.align 2, 0
_0800FCA8: .4byte gUnk_03002920
_0800FCAC:
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0x78
	bls _0800FCB8
	b _0800FF18
_0800FCB8:
	adds r0, r6, #0
	adds r0, #0x34
	adds r4, r6, #0
	adds r4, #0x39
	ldrb r1, [r0]
	ldrb r0, [r4]
	orrs r0, r1
	cmp r0, #0
	beq _0800FCCC
	b _0800FF18
_0800FCCC:
	adds r0, r6, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800FCD8
	b _0800FEBA
_0800FCD8:
	adds r4, #4
	ldrb r0, [r4]
	cmp r0, #1
	bls _0800FD5A
	ldrh r0, [r3]
	ldr r1, [r2]
	ldrb r1, [r1, #0x1d]
	ands r0, r1
	cmp r0, #0
	bne _0800FD12
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x8e
	bl m4aSongNumStart
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800FD0A
	movs r0, #0
	movs r1, #3
	bl sub_08025B78
	b _0800FD12
_0800FD0A:
	movs r0, #0
	movs r1, #0x19
	bl sub_08025B78
_0800FD12:
	ldr r2, _0800FD4C @ =gUnk_03005220
	ldrh r0, [r2, #0x28]
	subs r0, #8
	strh r0, [r2, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x90
	rsbs r1, r1, #0
	cmp r0, r1
	blt _0800FD28
	b _0800FEBA
_0800FD28:
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xb0
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
	adds r0, r2, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800FD50
	movs r0, #0
	movs r1, #3
	bl sub_08025B78
	b _0800FEBA
	.align 2, 0
_0800FD4C: .4byte gUnk_03005220
_0800FD50:
	movs r0, #0
	movs r1, #0x19
	bl sub_08025B78
	b _0800FEBA
_0800FD5A:
	ldrh r0, [r6, #0x28]
	adds r1, r0, #0
	adds r1, #0x2e
	strh r1, [r6, #0x28]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #1
	bls _0800FE24
	cmp r0, #2
	bne _0800FDCC
	ldr r0, _0800FD84 @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	cmp r0, #6
	beq _0800FD8C
	ldr r0, _0800FD88 @ =gUnk_03002920
	mov r5, sp
	ldrh r5, [r5, #0x18]
	strh r5, [r0]
	b _0800FDA2
	.align 2, 0
_0800FD84: .4byte gUnk_03004C20
_0800FD88: .4byte gUnk_03002920
_0800FD8C:
	ldr r2, _0800FDBC @ =gUnk_03002920
	ldrh r0, [r2]
	ldr r1, _0800FDC0 @ =gUnk_03003430
	adds r1, #0x40
	ldrh r1, [r1]
	adds r1, #0x10
	cmp r0, r1
	ble _0800FDA2
	mov r6, sp
	ldrh r6, [r6, #0x18]
	strh r6, [r2]
_0800FDA2:
	ldr r2, _0800FDC4 @ =gUnk_03005220
	movs r7, #0x28
	ldrsh r1, [r2, r7]
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0800FDB2
	b _0800FEBA
_0800FDB2:
	ldr r0, _0800FDC8 @ =0x0000FC60
	strh r0, [r2, #0x28]
	adds r1, r2, #0
	b _0800FE0C
	.align 2, 0
_0800FDBC: .4byte gUnk_03002920
_0800FDC0: .4byte gUnk_03003430
_0800FDC4: .4byte gUnk_03005220
_0800FDC8: .4byte 0x0000FC60
_0800FDCC:
	ldr r0, _0800FDE0 @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	cmp r0, #6
	beq _0800FDE8
	ldr r0, _0800FDE4 @ =gUnk_03002920
	mov r1, sp
	ldrh r1, [r1, #0x18]
	strh r1, [r0]
	b _0800FDFE
	.align 2, 0
_0800FDE0: .4byte gUnk_03004C20
_0800FDE4: .4byte gUnk_03002920
_0800FDE8:
	ldr r2, _0800FE14 @ =gUnk_03002920
	ldrh r0, [r2]
	ldr r1, _0800FE18 @ =gUnk_03003430
	adds r1, #0x40
	ldrh r1, [r1]
	adds r1, #0x10
	cmp r0, r1
	ble _0800FDFE
	mov r3, sp
	ldrh r3, [r3, #0x18]
	strh r3, [r2]
_0800FDFE:
	ldr r1, _0800FE1C @ =gUnk_03005220
	movs r4, #0x28
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0800FEBA
	ldr r0, _0800FE20 @ =0x0000FC60
	strh r0, [r1, #0x28]
_0800FE0C:
	adds r1, #0x3c
	movs r0, #1
	strb r0, [r1]
	b _0800FEBA
	.align 2, 0
_0800FE14: .4byte gUnk_03002920
_0800FE18: .4byte gUnk_03003430
_0800FE1C: .4byte gUnk_03005220
_0800FE20: .4byte 0x0000FC60
_0800FE24:
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _0800FEBA
	adds r0, r6, #0
	adds r0, #0x30
	adds r1, r6, #0
	adds r1, #0x5c
	ldrb r2, [r0]
	ldrb r0, [r1]
	orrs r0, r2
	cmp r0, #0
	bne _0800FE58
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800FE50
	movs r0, #0
	movs r1, #3
	bl sub_08025B78
	b _0800FE58
_0800FE50:
	movs r0, #0
	movs r1, #0x19
	bl sub_08025B78
_0800FE58:
	ldr r2, _0800FEEC @ =gUnk_03005220
	adds r4, r2, #0
	adds r4, #0x30
	movs r0, #1
	strb r0, [r4]
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800FEB2
	ldr r0, _0800FEF0 @ =gHeldKeys
	ldrh r1, [r0]
	ldr r0, _0800FEF4 @ =gUnk_03005284
	ldr r0, [r0]
	ldrb r0, [r0, #0x1d]
	ands r1, r0
	cmp r1, #0
	beq _0800FEB2
	adds r3, r2, #0
	adds r3, #0x3d
	adds r0, r2, #0
	adds r0, #0x42
	ldrb r1, [r3]
	ldrb r0, [r0]
	orrs r1, r0
	adds r0, r2, #0
	adds r0, #0x34
	ldrb r0, [r0]
	orrs r1, r0
	cmp r1, #0
	bne _0800FEB2
	movs r0, #2
	strb r0, [r3]
	strb r1, [r4]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800FEB2
	movs r0, #0x2f
	bl m4aSongNumStart
_0800FEB2:
	ldr r0, _0800FEEC @ =gUnk_03005220
	adds r0, #0x3c
	movs r1, #0
	strb r1, [r0]
_0800FEBA:
	ldr r1, _0800FEEC @ =gUnk_03005220
	movs r5, #0x28
	ldrsh r0, [r1, r5]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r6, r1, #0
	cmp r0, r2
	ble _0800FECC
	strh r2, [r6, #0x28]
_0800FECC:
	adds r1, r6, #0
	adds r1, #0x53
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800FEFC
	adds r0, r6, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800FEF8
	movs r7, #0x28
	ldrsh r0, [r6, r7]
	movs r1, #0x80
	lsls r1, r1, #1
	b _0800FF04
	.align 2, 0
_0800FEEC: .4byte gUnk_03005220
_0800FEF0: .4byte gHeldKeys
_0800FEF4: .4byte gUnk_03005284
_0800FEF8:
	movs r0, #0
	strb r0, [r1]
_0800FEFC:
	movs r1, #0x28
	ldrsh r0, [r6, r1]
	movs r1, #0xc0
	lsls r1, r1, #2
_0800FF04:
	cmp r0, r1
	ble _0800FF0A
	strh r1, [r6, #0x28]
_0800FF0A:
	ldr r1, _080100B4 @ =gUnk_03002920
	ldrh r0, [r6, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r1, #2]
	adds r0, r0, r2
_0800FF16:
	strh r0, [r1, #2]
_0800FF18:
	ldr r0, _080100B4 @ =gUnk_03002920
	ldrh r1, [r0, #2]
	ldr r3, [sp, #0x1c]
	cmp r1, r3
	bne _0800FF44
	ldr r2, _080100B8 @ =gUnk_03005220
	adds r0, r2, #0
	adds r0, #0x35
	ldrb r1, [r0]
	adds r0, #0x22
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	orrs r1, r0
	adds r0, r2, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	orrs r1, r0
	cmp r1, #0
	bne _0800FF44
	bl _0801269C
_0800FF44:
	ldr r0, _080100BC @ =gUnk_03004C20
	ldrb r2, [r0, #0xa]
	cmp r2, #0
	beq _0800FF4E
	b _08010100
_0800FF4E:
	ldr r5, _080100B8 @ =gUnk_03005220
	adds r0, r5, #0
	adds r0, #0x4a
	strb r2, [r0]
	ldr r4, _080100C0 @ =0x0300526B
	strb r2, [r4]
	ldr r6, _080100B4 @ =gUnk_03002920
	ldrh r0, [r6]
	lsrs r0, r0, #3
	ldrh r7, [r6, #2]
	mov sb, r7
	mov r2, sb
	subs r2, #3
	asrs r2, r2, #3
	ldr r3, _080100C4 @ =gUnk_03003430
	movs r1, #0x48
	adds r1, r1, r3
	mov ip, r1
	ldrh r1, [r1]
	muls r2, r1, r2
	ldr r4, _080100C8 @ =gUnk_03004790
	ldr r1, [r4, #0x14]
	adds r0, r0, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x20]
	ldrh r6, [r6]
	mov r8, r6
	mov r0, r8
	adds r0, #0xa
	asrs r0, r0, #3
	mov sl, r0
	adds r0, r0, r2
	adds r0, r1, r0
	add r4, sp, #0x20
	ldrb r7, [r4]
	ldrb r4, [r0]
	adds r6, r5, #0
	mov r0, r8
	ldr r5, [sp, #0x20]
	cmp r5, r4
	bhs _0800FFA4
	adds r7, r4, #0
_0800FFA4:
	str r7, [sp, #0x20]
	subs r0, #0xb
	asrs r3, r0, #3
	adds r0, r3, r2
	adds r0, r1, r0
	add r7, sp, #0x20
	ldrb r1, [r7]
	ldrb r0, [r0]
	ldr r2, [sp, #0x20]
	cmp r2, r0
	bhs _0800FFBC
	adds r1, r0, #0
_0800FFBC:
	str r1, [sp, #0x20]
	ldr r0, _080100CC @ =gUnk_03004654
	ldr r1, [r0]
	ldrb r1, [r1, #0x18]
	ldr r4, [sp, #0x20]
	cmp r1, r4
	bhi _0800FFD0
	movs r0, #1
	ldr r5, _080100C0 @ =0x0300526B
	strb r0, [r5]
_0800FFD0:
	mov r7, r8
	lsrs r7, r7, #3
	mov r8, r7
	mov r0, sb
	subs r0, #0x16
	asrs r0, r0, #3
	mov r1, ip
	ldrh r2, [r1]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r4, _080100C8 @ =gUnk_03004790
	ldr r7, [r4, #0x14]
	mov r5, r8
	adds r0, r5, r1
	adds r0, r7, r0
	ldrb r5, [r0]
	mov r4, sl
	adds r0, r4, r1
	adds r0, r7, r0
	adds r4, r5, #0
	ldrb r0, [r0]
	cmp r5, r0
	bhs _08010000
	adds r4, r0, #0
_08010000:
	adds r5, r4, #0
	adds r0, r3, r1
	adds r0, r7, r0
	adds r1, r5, #0
	ldrb r0, [r0]
	cmp r5, r0
	bhs _08010010
	adds r1, r0, #0
_08010010:
	adds r5, r1, #0
	adds r0, r6, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801006E
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080100B4 @ =gUnk_03002920
	adds r1, r1, r0
	ldrb r0, [r1, #0x11]
	cmp r0, #0x6f
	bhi _0801006E
	mov r0, sb
	subs r0, #0x2e
	asrs r0, r0, #3
	muls r2, r0, r2
	mov r1, r8
	adds r0, r1, r2
	adds r0, r7, r0
	adds r1, r5, #0
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0801004A
	adds r1, r0, #0
_0801004A:
	adds r5, r1, #0
	mov r4, sl
	adds r0, r4, r2
	adds r0, r7, r0
	adds r1, r5, #0
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0801005C
	adds r1, r0, #0
_0801005C:
	adds r5, r1, #0
	adds r0, r3, r2
	adds r0, r7, r0
	adds r1, r5, #0
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0801006C
	adds r1, r0, #0
_0801006C:
	adds r5, r1, #0
_0801006E:
	ldr r7, _080100CC @ =gUnk_03004654
	ldr r0, [r7]
	ldrb r0, [r0, #0x1b]
	cmp r5, r0
	blo _08010080
	adds r1, r6, #0
	adds r1, #0x4a
	movs r0, #1
	strb r0, [r1]
_08010080:
	add r1, sp, #0x20
	ldrb r0, [r1]
	ldr r2, [sp, #0x20]
	cmp r2, r5
	bhs _0801008C
	adds r0, r5, #0
_0801008C:
	str r0, [sp, #0x20]
	ldr r3, _080100BC @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	cmp r0, #6
	beq _08010098
	b _080101D6
_08010098:
	ldr r5, _080100B4 @ =gUnk_03002920
	ldr r2, _080100C4 @ =gUnk_03003430
	adds r2, #0x42
	ldrh r4, [r2]
	ldrh r0, [r5, #2]
	cmp r0, r4
	bhs _080100D0
	movs r1, #0
	strh r4, [r5, #2]
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	b _080101D6
	.align 2, 0
_080100B4: .4byte gUnk_03002920
_080100B8: .4byte gUnk_03005220
_080100BC: .4byte gUnk_03004C20
_080100C0: .4byte 0x0300526B
_080100C4: .4byte gUnk_03003430
_080100C8: .4byte gUnk_03004790
_080100CC: .4byte gUnk_03004654
_080100D0:
	ldrh r1, [r5, #2]
	ldrh r0, [r2]
	adds r0, #0xc8
	cmp r1, r0
	bgt _080100DC
	b _080101D6
_080100DC:
	ldr r0, _080100FC @ =gUnk_030034E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080101D6
	ldrb r0, [r6]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r6]
	movs r0, #1
	bl sub_08014624
	b _080101D6
	.align 2, 0
_080100FC: .4byte gUnk_030034E4
_08010100:
	movs r4, #0
	str r4, [sp, #0x20]
	ldr r5, _08010154 @ =gUnk_03004C20
	ldrb r0, [r5, #0xd]
	cmp r0, #8
	bne _0801011A
	ldr r6, _08010158 @ =gUnk_03002920
	ldrb r0, [r6, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	ldr r6, _0801015C @ =0x0000FFFC
	cmp r0, #0
	bne _0801011C
_0801011A:
	movs r6, #4
_0801011C:
	ldr r4, _08010158 @ =gUnk_03002920
	ldrh r1, [r4]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	add r0, sp, #0x10
	movs r3, #0x18
	bl sub_08014230
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08010160 @ =0x0000FFFF
	cmp r5, r0
	beq _0801016C
	strh r1, [r4, #2]
	adds r7, r1, #0
	ands r7, r0
	str r7, [sp, #0x1c]
	ldr r0, _08010164 @ =gUnk_03005220
	lsrs r1, r1, #0x10
	adds r0, #0x2f
	strb r1, [r0]
	ldr r0, _08010168 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	b _080101D4
	.align 2, 0
_08010154: .4byte gUnk_03004C20
_08010158: .4byte gUnk_03002920
_0801015C: .4byte 0x0000FFFC
_08010160: .4byte 0x0000FFFF
_08010164: .4byte gUnk_03005220
_08010168: .4byte gUnk_03004654
_0801016C:
	ldrh r1, [r4]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	subs r2, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r0, sp, #0x14
	movs r3, #0x14
	bl sub_08014230
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _080101B8
	ldrh r0, [r4, #2]
	adds r0, #3
	strh r0, [r4, #2]
	adds r1, r5, #0
	ands r1, r0
	str r1, [sp, #0x1c]
	ldr r1, _080101B4 @ =gUnk_03005220
	movs r0, #0x60
	strh r0, [r1, #0x28]
	adds r1, #0x3d
	ldrb r0, [r1]
	cmp r0, #1
	bls _080101D6
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x8e
	bl m4aSongNumStart
	b _080101D6
	.align 2, 0
_080101B4: .4byte gUnk_03005220
_080101B8:
	ldr r3, _080101E0 @ =gUnk_03004790
	ldrh r2, [r4]
	lsrs r2, r2, #3
	ldrh r1, [r4, #2]
	subs r1, #4
	asrs r1, r1, #3
	ldr r0, _080101E4 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r1, r0, r1
	ldr r0, [r3, #0x14]
	adds r2, r2, r1
	adds r0, r0, r2
	ldrb r0, [r0]
_080101D4:
	str r0, [sp, #0x20]
_080101D6:
	movs r2, #0xd
	mov sb, r2
	bl _08011F10
	.align 2, 0
_080101E0: .4byte gUnk_03004790
_080101E4: .4byte gUnk_03003430
_080101E8:
	ldr r0, _08010230 @ =gUnk_03002920
	mov r3, sb
	lsls r2, r3, #3
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r3, [r1, #0xf]
	mov sl, r2
	cmp r3, #0x1a
	beq _08010214
	ldrb r0, [r1, #0x10]
	movs r4, #1
	add r4, sb
	mov r8, r4
	cmp r0, #0
	bne _0801020C
	bl _08011F0E
_0801020C:
	cmp r3, #0x12
	bls _08010214
	bl _08011F0E
_08010214:
	ldrb r0, [r1, #0x11]
	subs r0, #1
	movs r5, #1
	add r5, sb
	mov r8, r5
	cmp r0, #0x7c
	bls _08010226
	bl _08011F0E
_08010226:
	lsls r0, r0, #2
	ldr r1, _08010234 @ =_08010238
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010230: .4byte gUnk_03002920
_08010234: .4byte _08010238
_08010238: @ jump table
	.4byte _08010EFC @ case 0
	.4byte _08010EFC @ case 1
	.4byte _08010B4C @ case 2
	.4byte _08010EFC @ case 3
	.4byte _08011F0E @ case 4
	.4byte _080107AC @ case 5
	.4byte _08010A92 @ case 6
	.4byte _080107AC @ case 7
	.4byte _08011F0E @ case 8
	.4byte _08011F0E @ case 9
	.4byte _080107AC @ case 10
	.4byte _08011F0E @ case 11
	.4byte _08011F0E @ case 12
	.4byte _08011F0E @ case 13
	.4byte _08011F0E @ case 14
	.4byte _08011F0E @ case 15
	.4byte _08011F0E @ case 16
	.4byte _08011F0E @ case 17
	.4byte _08011F0E @ case 18
	.4byte _08011C34 @ case 19
	.4byte _08011F0E @ case 20
	.4byte _08011C98 @ case 21
	.4byte _08011D20 @ case 22
	.4byte _08011DAC @ case 23
	.4byte _08011DAC @ case 24
	.4byte _08011E08 @ case 25
	.4byte _08011F0E @ case 26
	.4byte _08011F0E @ case 27
	.4byte _08011F0E @ case 28
	.4byte _08011E5C @ case 29
	.4byte _08011EB8 @ case 30
	.4byte _08011F0E @ case 31
	.4byte _08011F0E @ case 32
	.4byte _08011B64 @ case 33
	.4byte _08011F0E @ case 34
	.4byte _08011F0E @ case 35
	.4byte _0801042C @ case 36
	.4byte _08011F0E @ case 37
	.4byte _080113B8 @ case 38
	.4byte _080113B8 @ case 39
	.4byte _080115F4 @ case 40
	.4byte _08011598 @ case 41
	.4byte _080111A0 @ case 42
	.4byte _08010958 @ case 43
	.4byte _08010958 @ case 44
	.4byte _08010C10 @ case 45
	.4byte _08011F0E @ case 46
	.4byte _08011F0E @ case 47
	.4byte _08011F0E @ case 48
	.4byte _08011F0E @ case 49
	.4byte _08011F0E @ case 50
	.4byte _08011F0E @ case 51
	.4byte _08011A68 @ case 52
	.4byte _08011F0E @ case 53
	.4byte _08011F0E @ case 54
	.4byte _080118D6 @ case 55
	.4byte _080119A4 @ case 56
	.4byte _08011F0E @ case 57
	.4byte _08011F0E @ case 58
	.4byte _08011F0E @ case 59
	.4byte _08011F0E @ case 60
	.4byte _080117EC @ case 61
	.4byte _08010FA8 @ case 62
	.4byte _08011F0E @ case 63
	.4byte _08010C90 @ case 64
	.4byte _08010D58 @ case 65
	.4byte _08011F0E @ case 66
	.4byte _08011F0E @ case 67
	.4byte _08011F0E @ case 68
	.4byte _08011F0E @ case 69
	.4byte _08011F0E @ case 70
	.4byte _08011F0E @ case 71
	.4byte _08011F0E @ case 72
	.4byte _08011F0E @ case 73
	.4byte _08011F0E @ case 74
	.4byte _08011F0E @ case 75
	.4byte _08011F0E @ case 76
	.4byte _08011F0E @ case 77
	.4byte _08011F0E @ case 78
	.4byte _08011F0E @ case 79
	.4byte _08011F0E @ case 80
	.4byte _08011F0E @ case 81
	.4byte _08011F0E @ case 82
	.4byte _08011F0E @ case 83
	.4byte _08011F0E @ case 84
	.4byte _08011F0E @ case 85
	.4byte _08011F0E @ case 86
	.4byte _08011F0E @ case 87
	.4byte _08011F0E @ case 88
	.4byte _08011F0E @ case 89
	.4byte _08011F0E @ case 90
	.4byte _08011F0E @ case 91
	.4byte _08011F0E @ case 92
	.4byte _08011F0E @ case 93
	.4byte _08011F0E @ case 94
	.4byte _08011F0E @ case 95
	.4byte _08011F0E @ case 96
	.4byte _08011F0E @ case 97
	.4byte _08011F0E @ case 98
	.4byte _08011F0E @ case 99
	.4byte _08011F0E @ case 100
	.4byte _08011F0E @ case 101
	.4byte _08011F0E @ case 102
	.4byte _08011F0E @ case 103
	.4byte _08011F0E @ case 104
	.4byte _08011F0E @ case 105
	.4byte _08011F0E @ case 106
	.4byte _08011F0E @ case 107
	.4byte _08011F0E @ case 108
	.4byte _08011F0E @ case 109
	.4byte _0801042C @ case 110
	.4byte _08011A68 @ case 111
	.4byte _08011F0E @ case 112
	.4byte _08011F0E @ case 113
	.4byte _08011F0E @ case 114
	.4byte _08011F0E @ case 115
	.4byte _08011F0E @ case 116
	.4byte _080107AC @ case 117
	.4byte _080107AC @ case 118
	.4byte _080107AC @ case 119
	.4byte _080107AC @ case 120
	.4byte _080107AC @ case 121
	.4byte _080107AC @ case 122
	.4byte _080107AC @ case 123
	.4byte _080107AC @ case 124
_0801042C:
	mov r6, sl
	mov r7, sb
	subs r0, r6, r7
	lsls r0, r0, #2
	ldr r1, _08010544 @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _08010462
	ldrb r0, [r4, #0xf]
	movs r2, #1
	add r2, sb
	mov r8, r2
	cmp r0, #1
	bls _0801044E
	bl _08011F0E
_0801044E:
	ldr r0, _08010548 @ =gUnk_03005220
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08010544 @ =gUnk_03002920
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0, #0x16]
_08010462:
	ldr r2, _08010548 @ =gUnk_03005220
	adds r7, r2, #0
	adds r7, #0x3f
	ldrb r0, [r7]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r5, _08010544 @ =gUnk_03002920
	adds r1, r1, r5
	ldrb r0, [r1, #0x11]
	adds r6, r2, #0
	movs r1, #1
	add r1, sb
	mov r8, r1
	cmp r0, #0x3e
	bne _08010486
	bl _08011F0E
_08010486:
	adds r5, r6, #0
	adds r5, #0x56
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldr r2, [sp, #0x18]
	adds r3, r2, r0
	adds r1, r3, #0
	subs r1, #0xc
	ldrh r2, [r4]
	adds r0, r2, #7
	cmp r1, r0
	blt _080104A0
	b _080105A0
_080104A0:
	adds r1, #0x18
	subs r0, #0x16
	cmp r1, r0
	bgt _080104AA
	b _080105A0
_080104AA:
	ldr r1, [sp, #0x1c]
	subs r1, #0x18
	ldrh r2, [r4, #2]
	subs r0, r2, #1
	cmp r1, r0
	bge _080105A0
	subs r0, #0x16
	ldr r3, [sp, #0x1c]
	cmp r3, r0
	ble _080105A0
	ldrb r0, [r4, #0xf]
	cmp r0, #0xe
	beq _080105A0
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _080104D2
	bl _08011F0E
_080104D2:
	adds r2, r6, #0
	adds r2, #0x39
	ldrb r0, [r2]
	cmp r0, #0
	beq _08010508
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, sb
	bne _080104EA
	bl _08011F0E
_080104EA:
	adds r1, r6, #0
	adds r1, #0x57
	movs r0, #0
	strb r0, [r1]
	strb r0, [r5]
	strb r0, [r2]
	strb r0, [r7]
	movs r0, #1
	bl sub_080145A8
	ldr r0, [sp, #0x1c]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
_08010508:
	ldrb r0, [r4, #0xf]
	cmp r0, #1
	bne _0801056C
	ldrb r0, [r4, #0x18]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r5, _08010544 @ =gUnk_03002920
	adds r1, r1, r5
	ldrb r0, [r1, #0x11]
	cmp r0, #0x38
	beq _0801056C
	adds r0, r6, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801056C
	ldrh r1, [r4]
	adds r0, r1, #0
	subs r0, #0xf
	ldr r6, [sp, #0x18]
	cmp r6, r0
	bgt _0801054C
	subs r0, #0xc
	strh r0, [r5]
	movs r7, #1
	add r7, sb
	mov r8, r7
	bl _08011F0E
	.align 2, 0
_08010544: .4byte gUnk_03002920
_08010548: .4byte gUnk_03005220
_0801054C:
	adds r0, r1, #7
	movs r2, #1
	add r2, sb
	mov r8, r2
	ldr r3, [sp, #0x18]
	cmp r3, r0
	bge _0801055E
	bl _08011F0E
_0801055E:
	adds r0, #0xc
	ldr r4, _08010568 @ =gUnk_03002920
	strh r0, [r4]
	bl _08011F0E
	.align 2, 0
_08010568: .4byte gUnk_03002920
_0801056C:
	ldr r1, _0801059C @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x40
	movs r2, #0
	mov r5, sb
	strb r5, [r0]
	adds r3, r1, #0
	adds r3, #0x3f
	ldrb r0, [r3]
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, sb
	beq _0801058C
	bl _08011F0E
_0801058C:
	adds r0, r1, #0
	adds r0, #0x57
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	strb r2, [r3]
	bl _08011F0E
	.align 2, 0
_0801059C: .4byte gUnk_03005220
_080105A0:
	adds r0, r6, #0
	adds r0, #0x34
	adds r2, r6, #0
	adds r2, #0x39
	ldrb r1, [r0]
	ldrb r0, [r2]
	orrs r0, r1
	movs r7, #1
	add r7, sb
	mov r8, r7
	cmp r0, #0
	beq _080105BC
	bl _08011F0E
_080105BC:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _08010640 @ =gUnk_03002920
	ldrh r1, [r1]
	adds r3, r0, r1
	adds r1, r3, #0
	subs r1, #0xc
	mov r2, sl
	mov r4, sb
	subs r0, r2, r4
	lsls r0, r0, #2
	ldr r5, _08010640 @ =gUnk_03002920
	adds r4, r0, r5
	ldrh r2, [r4]
	adds r0, r2, #7
	cmp r1, r0
	bge _080106B8
	adds r1, #0x18
	subs r0, #0x16
	cmp r1, r0
	ble _080106B8
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	bge _080106B8
	adds r0, r1, #0
	subs r0, #0x18
	cmp r2, r0
	ble _080106B8
	adds r0, #0x2a
	cmp r2, r0
	ble _08010644
	movs r2, #0
	mov r7, sp
	ldrh r7, [r7, #0x1c]
	strh r7, [r5, #2]
	adds r1, r6, #0
	adds r1, #0x40
	ldrb r0, [r1]
	cmp r0, sb
	bne _0801061A
	strb r2, [r1]
_0801061A:
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801062C
	adds r1, r6, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
_0801062C:
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080106A2
	movs r0, #0xa8
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	bl _08011F0E
	.align 2, 0
_08010640: .4byte gUnk_03002920
_08010644:
	ldr r2, _0801067C @ =0x0000FFE8
	adds r0, r1, r2
	movs r2, #0
	ldr r3, _08010680 @ =gUnk_03002920
	strh r0, [r3, #2]
	adds r1, r6, #0
	adds r1, #0x3d
	ldrb r0, [r1]
	cmp r0, #1
	bls _0801065C
	movs r0, #1
	strb r0, [r1]
_0801065C:
	adds r1, r6, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801068C
	strb r2, [r1]
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010684
	movs r0, #0
	movs r1, #5
	bl sub_08025B78
	b _0801068C
	.align 2, 0
_0801067C: .4byte 0x0000FFE8
_08010680: .4byte gUnk_03002920
_08010684:
	movs r0, #0
	movs r1, #0x1b
	bl sub_08025B78
_0801068C:
	ldr r0, _080106B0 @ =gUnk_03005220
	adds r1, r0, #0
	adds r1, #0x3f
	movs r2, #0
	mov r4, sb
	strb r4, [r1]
	adds r1, #1
	ldrb r0, [r1]
	cmp r0, sb
	bne _080106A2
	strb r2, [r1]
_080106A2:
	ldr r0, _080106B4 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	bl _08010EE2
	.align 2, 0
_080106B0: .4byte gUnk_03005220
_080106B4: .4byte gUnk_03004654
_080106B8:
	adds r2, r6, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	cmp r0, sb
	bne _080106D0
	adds r1, r6, #0
	adds r1, #0x57
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	strb r0, [r2]
_080106D0:
	adds r1, r6, #0
	adds r1, #0x40
	ldrb r0, [r1]
	cmp r0, sb
	bne _080106DE
	movs r0, #0
	strb r0, [r1]
_080106DE:
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _080107A4 @ =gUnk_03002920
	adds r0, r0, r7
	ldrb r0, [r0, #0x11]
	cmp r0, #0x6f
	beq _08010702
	movs r1, #1
	add r1, sb
	mov r8, r1
	cmp r0, #0x25
	beq _08010702
	bl _08011F0E
_08010702:
	ldr r2, _080107A4 @ =gUnk_03002920
	ldrh r0, [r2]
	adds r1, r6, #0
	adds r1, #0x56
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov ip, r1
	adds r5, r0, r1
	adds r1, r5, #0
	subs r1, #0xc
	mov r3, sl
	mov r4, sb
	subs r0, r3, r4
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrh r3, [r2]
	adds r7, r3, #7
	movs r0, #1
	add r0, sb
	mov r8, r0
	cmp r1, r7
	blt _08010734
	bl _08011F0E
_08010734:
	adds r0, r5, #0
	adds r0, #0xc
	adds r4, r3, #0
	subs r4, #0xf
	cmp r0, r4
	bgt _08010744
	bl _08011F0E
_08010744:
	ldr r3, _080107A4 @ =gUnk_03002920
	ldrh r1, [r3, #2]
	adds r0, r1, #0
	subs r0, #0x30
	ldrh r2, [r2, #2]
	cmp r0, r2
	blt _08010756
	bl _08011F0E
_08010756:
	adds r0, #0x18
	adds r1, r2, #0
	subs r1, #0x18
	cmp r0, r1
	bgt _08010764
	bl _08011F0E
_08010764:
	ldr r3, [sp, #0x18]
	add r3, ip
	adds r0, r3, #0
	subs r0, #0xc
	cmp r0, r7
	bge _0801078A
	adds r0, #0x18
	cmp r0, r4
	ble _0801078A
	ldr r0, [sp, #0x1c]
	subs r0, #0x30
	cmp r0, r2
	bge _0801078A
	ldr r0, [sp, #0x1c]
	subs r0, #0x18
	cmp r0, r1
	ble _0801078A
	bl _08011F0E
_0801078A:
	adds r1, r6, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080107A8 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	ldr r0, _080107A4 @ =gUnk_03002920
	mov r4, sp
	ldrh r4, [r4, #0x1c]
	strh r4, [r0, #2]
	b _08010EE2
	.align 2, 0
_080107A4: .4byte gUnk_03002920
_080107A8: .4byte gUnk_03004654
_080107AC:
	mov r6, sl
	mov r7, sb
	subs r0, r6, r7
	lsls r0, r0, #2
	ldr r2, _080107DC @ =gUnk_03002920
	adds r1, r0, r2
	ldrb r0, [r1, #0xf]
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #0xd
	bls _080107C8
	bl _08011F0E
_080107C8:
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080107D8
	ldr r0, _080107E0 @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	bne _080107E4
_080107D8:
	movs r7, #0
	b _080107E6
	.align 2, 0
_080107DC: .4byte gUnk_03002920
_080107E0: .4byte gUnk_03004C20
_080107E4:
	movs r7, #0xc
_080107E6:
	ldr r1, _0801094C @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080107FC
	adds r0, r1, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010844
_080107FC:
	ldr r6, _08010950 @ =gUnk_03002920
	ldrh r4, [r6]
	adds r0, r4, #0
	subs r0, #0xc
	mov r5, sl
	mov r2, sb
	subs r1, r5, r2
	lsls r1, r1, #2
	adds r5, r1, r6
	ldrh r3, [r5]
	subs r2, r7, #2
	adds r1, r3, r2
	cmp r0, r1
	bge _08010844
	adds r1, r4, #0
	adds r1, #0xc
	subs r0, r3, r2
	cmp r1, r0
	ble _08010844
	ldrh r3, [r6, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r5, #2]
	adds r0, r7, #0
	subs r0, #8
	adds r0, r2, r0
	cmp r1, r0
	bge _08010844
	adds r0, r7, #0
	adds r0, #0xc
	subs r0, r2, r0
	cmp r3, r0
	ble _08010844
	movs r0, #1
	bl sub_08014624
_08010844:
	ldr r1, _0801094C @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x43
	ldrb r0, [r0]
	adds r6, r1, #0
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #1
	beq _0801085C
	bl _08011F0E
_0801085C:
	mov r4, sl
	mov r5, sb
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r1, _08010950 @ =gUnk_03002920
	adds r5, r0, r1
	ldrb r0, [r5, #0x11]
	cmp r0, #6
	beq _08010876
	cmp r0, #8
	beq _08010876
	bl _08011F0E
_08010876:
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08010950 @ =gUnk_03002920
	adds r0, r0, r2
	ldrb r0, [r0, #0x11]
	cmp r0, #0x6f
	beq _0801089A
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #0x25
	beq _0801089A
	bl _08011F0E
_0801089A:
	ldr r4, _08010950 @ =gUnk_03002920
	ldrh r3, [r4]
	adds r0, r3, #0
	subs r0, #0xc
	ldrh r2, [r5]
	adds r1, r7, #0
	adds r1, #0xc
	adds r4, r2, r1
	mov ip, r4
	movs r4, #1
	add r4, sb
	mov r8, r4
	cmp r0, ip
	blt _080108BA
	bl _08011F0E
_080108BA:
	adds r0, #0x18
	subs r4, r2, r1
	cmp r0, r4
	bgt _080108C6
	bl _08011F0E
_080108C6:
	ldr r0, _08010950 @ =gUnk_03002920
	ldrh r2, [r0, #2]
	adds r0, r2, #0
	subs r0, #0x2f
	ldrh r1, [r5, #2]
	adds r3, r1, r7
	cmp r0, r3
	blt _080108DA
	bl _08011F0E
_080108DA:
	adds r0, r7, #0
	adds r0, #0x18
	subs r1, r1, r0
	cmp r2, r1
	bgt _080108E8
	bl _08011F0E
_080108E8:
	ldr r0, [sp, #0x18]
	subs r0, #0xc
	cmp r0, ip
	bge _0801090A
	ldr r0, [sp, #0x18]
	adds r0, #0xc
	cmp r0, r4
	ble _0801090A
	ldr r0, [sp, #0x1c]
	subs r0, #0x2e
	cmp r0, r3
	bge _0801090A
	ldr r2, [sp, #0x1c]
	cmp r2, r1
	ble _0801090A
	bl _08011F0E
_0801090A:
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #0
	beq _0801091E
	bl _08011F0E
_0801091E:
	ldr r3, _08010950 @ =gUnk_03002920
	ldrh r1, [r3, #2]
	subs r1, #0x18
	mov r4, sl
	mov r5, sb
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r2, [r0, #2]
	cmp r1, r2
	bge _08010938
	bl _08011F0E
_08010938:
	ldr r0, _08010954 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	adds r0, r2, #0
	adds r0, #0x18
	strh r0, [r3, #2]
	bl _08011F0E
	.align 2, 0
_0801094C: .4byte gUnk_03005220
_08010950: .4byte gUnk_03002920
_08010954: .4byte gUnk_03004654
_08010958:
	ldr r6, _080109B8 @ =gUnk_03002920
	ldrh r4, [r6]
	adds r1, r4, #0
	subs r1, #0xc
	mov r7, sl
	mov r2, sb
	subs r0, r7, r2
	lsls r0, r0, #2
	adds r3, r0, r6
	ldrh r2, [r3]
	movs r5, #1
	add r5, sb
	mov r8, r5
	cmp r1, r2
	blt _0801097A
	bl _08011F0E
_0801097A:
	adds r0, r4, #0
	adds r0, #0xc
	cmp r0, r2
	bgt _08010986
	bl _08011F0E
_08010986:
	ldrh r2, [r6, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r3, #2]
	cmp r0, r1
	blt _08010996
	bl _08011F0E
_08010996:
	adds r0, r1, #0
	subs r0, #8
	cmp r2, r0
	bgt _080109A2
	bl _08011F0E
_080109A2:
	ldrb r0, [r3, #8]
	cmp r0, #0x1f
	bhi _080109C0
	ldr r2, _080109BC @ =gUnk_03005220
	movs r1, #1
	ldrb r3, [r3, #8]
	lsls r1, r3
	ldr r0, [r2, #8]
	orrs r0, r1
	str r0, [r2, #8]
	b _080109D0
	.align 2, 0
_080109B8: .4byte gUnk_03002920
_080109BC: .4byte gUnk_03005220
_080109C0:
	ldr r2, _080109F0 @ =gUnk_03005220
	ldrb r0, [r3, #8]
	subs r0, #0x20
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0xc]
	orrs r0, r1
	str r0, [r2, #0xc]
_080109D0:
	adds r6, r2, #0
	mov r7, sl
	mov r1, sb
	subs r0, r7, r1
	lsls r0, r0, #2
	ldr r2, _080109F4 @ =gUnk_03002920
	adds r0, r0, r2
	ldrb r0, [r0, #0x11]
	cmp r0, #0x2c
	bne _080109F8
	ldrh r2, [r6]
	lsls r1, r2, #0x14
	lsrs r1, r1, #0x19
	adds r1, #1
	b _08010A00
	.align 2, 0
_080109F0: .4byte gUnk_03005220
_080109F4: .4byte gUnk_03002920
_080109F8:
	ldrh r2, [r6]
	lsls r1, r2, #0x14
	lsrs r1, r1, #0x19
	adds r1, #5
_08010A00:
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #5
	ldr r0, _08010A38 @ =0xFFFFF01F
	ands r0, r2
	orrs r0, r1
	strh r0, [r6]
	ldr r0, _08010A3C @ =gUnk_03002920
	mov r3, sl
	mov r4, sb
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x11]
	cmp r0, #0x2c
	bne _08010A40
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	adds r1, #0xc
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r4, #0x18
	lsrs r3, r3, #0x18
	movs r2, #3
	bl sub_0801E664
	b _08010A56
	.align 2, 0
_08010A38: .4byte 0xFFFFF01F
_08010A3C: .4byte gUnk_03002920
_08010A40:
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	adds r1, #6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r5, sb
	lsls r3, r5, #0x18
	lsrs r3, r3, #0x18
	movs r2, #3
	bl sub_0801E664
_08010A56:
	bl sub_08025E68
	cmp r0, #0
	beq _08010A68
	movs r0, #0x91
	bl m4aSongNumStart
	bl _08011762
_08010A68:
	ldr r0, _08010A84 @ =gUnk_03002920
	mov r7, sl
	mov r2, sb
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x11]
	cmp r0, #0x2c
	bne _08010A88
	movs r0, #0x31
	bl m4aSongNumStart
	bl _08011A34
	.align 2, 0
_08010A84: .4byte gUnk_03002920
_08010A88:
	movs r0, #0x7b
	bl m4aSongNumStart
	bl _08011A5A
_08010A92:
	ldr r5, _08010B40 @ =gUnk_03002920
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xc
	mov r6, sl
	mov r7, sb
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrh r2, [r4]
	movs r0, #1
	add r0, sb
	mov r8, r0
	cmp r1, r2
	blt _08010AB4
	bl _08011F0E
_08010AB4:
	adds r0, r3, #0
	adds r0, #0xc
	cmp r0, r2
	bgt _08010AC0
	bl _08011F0E
_08010AC0:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _08010AD0
	bl _08011F0E
_08010AD0:
	adds r0, r1, #0
	subs r0, #0xc
	cmp r2, r0
	bgt _08010ADC
	bl _08011F0E
_08010ADC:
	ldr r5, _08010B44 @ =gUnk_03005220
	ldrb r6, [r5]
	lsls r0, r6, #0x1e
	lsrs r3, r0, #0x1e
	cmp r3, #0
	bne _08010AEC
	bl _08011F0E
_08010AEC:
	ldrh r2, [r5, #2]
	lsls r1, r2, #0x13
	lsrs r1, r1, #0x1a
	movs r0, #1
	ldrb r7, [r4, #8]
	lsls r0, r7
	orrs r1, r0
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #7
	ldr r0, _08010B48 @ =0xFFFFE07F
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #2]
	cmp r3, #2
	bgt _08010B20
	adds r1, r3, #1
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r6
	orrs r0, r1
	strb r0, [r5]
	bl sub_08025DD4
_08010B20:
	movs r0, #0x62
	bl m4aSongNumStart
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	adds r1, #6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, sb
	lsls r3, r2, #0x18
	lsrs r3, r3, #0x18
	movs r2, #5
	bl sub_0801E664
	bl _08011F0E
	.align 2, 0
_08010B40: .4byte gUnk_03002920
_08010B44: .4byte gUnk_03005220
_08010B48: .4byte 0xFFFFE07F
_08010B4C:
	ldr r5, _08010BD8 @ =gUnk_03002920
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xc
	mov r4, sl
	mov r6, sb
	subs r0, r4, r6
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrh r2, [r4]
	movs r7, #1
	add r7, sb
	mov r8, r7
	cmp r1, r2
	blt _08010B6E
	bl _08011F0E
_08010B6E:
	adds r0, r3, #0
	adds r0, #0xc
	cmp r0, r2
	bgt _08010B7A
	bl _08011F0E
_08010B7A:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _08010B8A
	bl _08011F0E
_08010B8A:
	adds r0, r1, #0
	subs r0, #0xc
	cmp r2, r0
	bgt _08010B96
	bl _08011F0E
_08010B96:
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	bne _08010BA0
	bl _08011F0E
_08010BA0:
	cmp r0, #0x1c
	bne _08010BA8
	bl _08011F0E
_08010BA8:
	ldr r3, _08010BDC @ =gUnk_03005220
	ldrb r2, [r3]
	lsls r1, r2, #0x1b
	lsrs r1, r1, #0x1d
	movs r0, #1
	ldrb r4, [r4, #8]
	lsls r0, r4
	orrs r1, r0
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08010BE0
	movs r0, #0x92
	bl m4aSongNumStart
	b _08010BE6
	.align 2, 0
_08010BD8: .4byte gUnk_03002920
_08010BDC: .4byte gUnk_03005220
_08010BE0:
	movs r0, #0x33
	bl m4aSongNumStart
_08010BE6:
	ldr r0, _08010C0C @ =gUnk_03002920
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #0
	movs r0, #2
	strb r0, [r1, #0xf]
	strb r2, [r1, #9]
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #3
	bl _08011A54
	.align 2, 0
_08010C0C: .4byte gUnk_03002920
_08010C10:
	ldr r5, _08010C8C @ =gUnk_03002920
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xc
	mov r6, sl
	mov r7, sb
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrh r2, [r4]
	movs r0, #1
	add r0, sb
	mov r8, r0
	cmp r1, r2
	blt _08010C32
	bl _08011F0E
_08010C32:
	adds r0, r3, #0
	adds r0, #0xc
	cmp r0, r2
	bgt _08010C3E
	bl _08011F0E
_08010C3E:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _08010C4E
	bl _08011F0E
_08010C4E:
	adds r0, r1, #0
	subs r0, #0xc
	cmp r2, r0
	bgt _08010C5A
	bl _08011F0E
_08010C5A:
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	bne _08010C64
	bl _08011F0E
_08010C64:
	movs r0, #0x87
	bl m4aSongNumStart
	movs r0, #0
	strb r0, [r4, #9]
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	adds r1, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r7, #0x18
	lsrs r3, r3, #0x18
	movs r2, #4
	bl sub_0801E664
	bl _08011F0E
	.align 2, 0
_08010C8C: .4byte gUnk_03002920
_08010C90:
	ldr r4, _08010D40 @ =gUnk_03002920
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #0x10
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, r1
	blt _08010CB6
	bl _08011F0E
_08010CB6:
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0x10
	cmp r1, r0
	bgt _08010CC6
	bl _08011F0E
_08010CC6:
	ldrh r3, [r4, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r2, [r2, #2]
	cmp r0, r2
	blt _08010CD6
	bl _08011F0E
_08010CD6:
	adds r0, r2, #0
	subs r0, #0x20
	cmp r3, r0
	bgt _08010CE2
	bl _08011F0E
_08010CE2:
	ldr r1, _08010D44 @ =gUnk_03000830
	ldr r0, _08010D48 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r7, sb
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010CFA
	bl _08011F0E
_08010CFA:
	adds r0, r2, #0
	subs r0, #0xc
	cmp r3, r0
	bge _08010D0E
	ldr r1, _08010D4C @ =0x0000FFE0
	adds r0, r2, r1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
_08010D0E:
	ldr r0, _08010D50 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	ldr r4, _08010D54 @ =gUnk_03005220
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #7
	beq _08010D26
	bl _08011F0E
_08010D26:
	movs r0, #0x35
	bl m4aSongNumStart
	mov r0, sb
	movs r1, #1
	bl sub_08025B78
	ldrb r0, [r4, #3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #3]
	bl _08011F0E
	.align 2, 0
_08010D40: .4byte gUnk_03002920
_08010D44: .4byte gUnk_03000830
_08010D48: .4byte gUnk_0300363C
_08010D4C: .4byte 0x0000FFE0
_08010D50: .4byte gUnk_03004654
_08010D54: .4byte gUnk_03005220
_08010D58:
	ldr r5, _08010E44 @ =gUnk_03002920
	ldrh r3, [r5]
	adds r0, r3, #0
	subs r0, #0xc
	mov r2, sl
	mov r4, sb
	subs r1, r2, r4
	lsls r1, r1, #2
	adds r4, r1, r5
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0x10
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, r1
	blt _08010D7E
	bl _08011F0E
_08010D7E:
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0x10
	cmp r1, r0
	bgt _08010D8E
	bl _08011F0E
_08010D8E:
	ldrh r3, [r5, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r4, #2]
	adds r0, r2, #0
	adds r0, #0x10
	cmp r1, r0
	blt _08010DA2
	bl _08011F0E
_08010DA2:
	subs r0, #0x40
	cmp r3, r0
	bgt _08010DAC
	bl _08011F0E
_08010DAC:
	ldr r1, _08010E48 @ =gUnk_03003410
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	beq _08010DB8
	bl _08011F0E
_08010DB8:
	movs r0, #2
	strb r0, [r1, #0xb]
	movs r6, #0
	movs r0, #1
	strh r0, [r4, #8]
	movs r7, #0x86
	lsls r7, r7, #1
	adds r0, r5, r7
	strb r6, [r0]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r5, r1
	strb r6, [r0]
	ldr r4, _08010E4C @ =gUnk_03005220
	adds r1, r4, #0
	adds r1, #0x42
	ldrb r0, [r1]
	cmp r0, #0
	beq _08010DF8
	adds r3, r0, #0
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	movs r2, #2
	bl sub_0801E664
	movs r0, #1
	bl sub_080145A8
_08010DF8:
	movs r0, #0xd0
	lsls r0, r0, #2
	strh r0, [r4, #0x2a]
	subs r0, #0x20
	strh r0, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x50
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	ldrb r0, [r5, #0xe]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0xe]
	ldr r3, _08010E50 @ =gUnk_03005288
	ldrb r1, [r3]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r5, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	adds r5, r3, #0
	cmp r0, #0
	bne _08010E58
	ldr r0, _08010E54 @ =gUnk_03004680
	ldrb r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	b _08010E64
	.align 2, 0
_08010E44: .4byte gUnk_03002920
_08010E48: .4byte gUnk_03003410
_08010E4C: .4byte gUnk_03005220
_08010E50: .4byte gUnk_03005288
_08010E54: .4byte gUnk_03004680
_08010E58:
	ldr r0, _08010EEC @ =gUnk_03004680
	ldrb r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r2, #0xff
	lsls r2, r2, #8
_08010E64:
	strh r2, [r1]
	adds r6, r0, #0
	ldrb r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r6
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #6]
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r6
	strh r2, [r0, #4]
	strh r2, [r0, #2]
	ldr r0, _08010EF0 @ =gUnk_03002920
	mov r3, sl
	mov r4, sb
	subs r2, r3, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r0, [r2, #0xe]
	movs r4, #1
	orrs r0, r4
	strb r0, [r2, #0xe]
	ldrb r1, [r5]
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #2
	ldrb r3, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldrb r0, [r5]
	adds r0, #1
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r2, _08010EF4 @ =gSineTable
	adds r1, r2, #0
	adds r1, #0x80
	ldrh r1, [r1]
	strh r1, [r0]
	ldrb r0, [r5]
	adds r0, #1
	lsls r0, r0, #3
	adds r0, r0, r6
	strh r1, [r0, #6]
	ldrb r0, [r5]
	adds r0, #1
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrh r2, [r2]
	rsbs r1, r2, #0
	strh r1, [r0, #2]
	ldrb r0, [r5]
	adds r0, #1
	lsls r0, r0, #3
	adds r0, r0, r6
	strh r2, [r0, #4]
	ldr r0, _08010EF8 @ =gUnk_03004660
	strb r4, [r0]
_08010EE2:
	movs r5, #1
	add r5, sb
	mov r8, r5
	bl _08011F0E
	.align 2, 0
_08010EEC: .4byte gUnk_03004680
_08010EF0: .4byte gUnk_03002920
_08010EF4: .4byte gSineTable
_08010EF8: .4byte gUnk_03004660
_08010EFC:
	ldr r5, _08010FA0 @ =gUnk_03002920
	ldrh r3, [r5]
	adds r0, r3, #0
	subs r0, #0xc
	mov r6, sl
	mov r7, sb
	subs r1, r6, r7
	lsls r1, r1, #2
	adds r4, r1, r5
	ldrh r2, [r4]
	adds r1, r2, #4
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, r1
	blt _08010F20
	bl _08011F0E
_08010F20:
	adds r1, r3, #0
	adds r1, #0xc
	subs r0, r2, #4
	cmp r1, r0
	bgt _08010F2E
	bl _08011F0E
_08010F2E:
	ldrh r3, [r5, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r4, #2]
	subs r0, r2, #4
	cmp r1, r0
	blt _08010F40
	bl _08011F0E
_08010F40:
	subs r0, #8
	cmp r3, r0
	bgt _08010F4A
	bl _08011F0E
_08010F4A:
	ldrb r2, [r4, #0x11]
	ldr r5, _08010FA4 @ =gUnk_03005220
	ldrb r3, [r5, #1]
	lsls r0, r3, #0x19
	lsrs r1, r0, #0x1d
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08010F60
	bl _08011F0E
_08010F60:
	orrs r1, r2
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r5, #1]
	movs r0, #0x32
	bl m4aSongNumStart
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #3
	movs r3, #0
	bl sub_0801E664
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08010F94
	bl _08011F0E
_08010F94:
	movs r0, #0x12
	strb r0, [r4, #0xf]
	movs r0, #4
	strb r0, [r4, #9]
	bl _08011F0E
	.align 2, 0
_08010FA0: .4byte gUnk_03002920
_08010FA4: .4byte gUnk_03005220
_08010FA8:
	ldr r7, _08011030 @ =gUnk_03002920
	ldrh r3, [r7]
	adds r0, r3, #0
	subs r0, #0xc
	mov r2, sl
	mov r4, sb
	subs r1, r2, r4
	lsls r1, r1, #2
	adds r4, r1, r7
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0xc
	movs r5, #1
	add r5, sb
	mov r8, r5
	cmp r0, r1
	blt _08010FCE
	bl _08011F0E
_08010FCE:
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0xc
	cmp r1, r0
	bgt _08010FDE
	bl _08011F0E
_08010FDE:
	ldrh r1, [r7, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r3, [r4, #2]
	cmp r0, r3
	blt _08010FEE
	bl _08011F0E
_08010FEE:
	adds r0, r3, #0
	subs r0, #0x18
	cmp r1, r0
	bgt _08010FFA
	bl _08011F0E
_08010FFA:
	ldr r0, _08011034 @ =gUnk_03005220
	adds r1, r0, #0
	adds r1, #0x3c
	adds r0, #0x46
	ldrb r1, [r1]
	ldrb r0, [r0]
	orrs r0, r1
	cmp r0, #0
	beq _08011010
	bl _08011F0E
_08011010:
	ldr r0, _08011038 @ =gUnk_03000830
	ldr r2, _0801103C @ =gUnk_0300363C
	ldrb r1, [r2]
	mov r6, sb
	subs r1, r6, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	cmp r1, #0
	bne _08011044
	ldr r7, _08011040 @ =0x0000FFE8
	adds r0, r3, r7
	ldr r1, _08011030 @ =gUnk_03002920
	strh r0, [r1, #2]
	b _08011060
	.align 2, 0
_08011030: .4byte gUnk_03002920
_08011034: .4byte gUnk_03005220
_08011038: .4byte gUnk_03000830
_0801103C: .4byte gUnk_0300363C
_08011040: .4byte 0x0000FFE8
_08011044:
	cmp r1, #1
	bne _08011058
	mov r2, sp
	ldrh r3, [r2, #0x1c]
	ldr r2, _08011054 @ =gUnk_03002920
	strh r3, [r2, #2]
	b _08011066
	.align 2, 0
_08011054: .4byte gUnk_03002920
_08011058:
	ldr r4, _080110B4 @ =0x0000FFF0
	adds r0, r3, r4
	ldr r5, _080110B8 @ =gUnk_03002920
	strh r0, [r5, #2]
_08011060:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
_08011066:
	ldr r0, _080110BC @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	ldr r0, _080110C0 @ =gUnk_030047BC
	ldrh r7, [r0]
	ldr r0, _080110C4 @ =gUnk_030007D4
	ldr r1, [r0]
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r7, r1
	bhi _08011154
	ldr r2, _080110B8 @ =gUnk_03002920
	mov r3, sl
	mov r4, sb
	subs r0, r3, r4
	lsls r0, r0, #2
	mov ip, r0
	mov r5, ip
	adds r5, r5, r2
	str r5, [sp, #0x30]
	str r1, [sp, #0x2c]
_08011094:
	lsls r0, r7, #3
	subs r1, r0, r7
	lsls r1, r1, #2
	adds r5, r1, r2
	ldrb r1, [r5, #0xf]
	adds r3, r0, #0
	cmp r1, #0x18
	bhi _08011148
	ldrb r0, [r5, #0x11]
	cmp r0, #0x6f
	beq _080110FE
	cmp r0, #0x6f
	bgt _080110C8
	cmp r0, #0x25
	beq _080110FE
	b _08011148
	.align 2, 0
_080110B4: .4byte 0x0000FFF0
_080110B8: .4byte gUnk_03002920
_080110BC: .4byte gUnk_03004654
_080110C0: .4byte gUnk_030047BC
_080110C4: .4byte gUnk_030007D4
_080110C8:
	cmp r0, #0x7d
	bgt _08011148
	cmp r0, #0x7b
	blt _08011148
	ldr r6, [sp, #0x30]
	ldrh r1, [r6]
	subs r1, #8
	ldrh r4, [r5]
	adds r0, r4, #0
	adds r0, #0xc
	cmp r1, r0
	bge _08011148
	mov r0, ip
	adds r3, r0, r2
	ldrh r1, [r3]
	adds r1, #8
	adds r0, r4, #0
	subs r0, #0xc
	cmp r1, r0
	ble _08011148
	ldrh r3, [r3, #2]
	adds r0, r3, #0
	subs r0, #0x14
	ldrh r1, [r5, #2]
	cmp r0, r1
	bge _08011148
	b _0801113C
_080110FE:
	mov r1, ip
	adds r6, r1, r2
	ldrh r4, [r6]
	adds r0, r4, #0
	subs r0, #0xc
	subs r1, r3, r7
	lsls r1, r1, #2
	adds r5, r1, r2
	ldrh r3, [r5]
	adds r1, r3, #7
	cmp r0, r1
	bge _08011148
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0xf
	cmp r1, r0
	ble _08011148
	ldrh r4, [r6, #2]
	adds r1, r4, #0
	subs r1, #0x18
	ldrh r3, [r5, #2]
	adds r0, r3, #2
	cmp r1, r0
	bge _08011148
	subs r0, #0x18
	cmp r4, r0
	ble _0801113A
	bl _08011F0E
_0801113A:
	b _08011148
_0801113C:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r3, r0
	ble _08011148
	bl _08011F0E
_08011148:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r3, [sp, #0x2c]
	cmp r7, r3
	bls _08011094
_08011154:
	ldr r4, _08011190 @ =gUnk_0300363C
	ldrb r0, [r4]
	mov r5, sb
	subs r0, r5, r0
	lsls r0, r0, #2
	ldr r6, _08011194 @ =gUnk_03000830
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801116C
	bl _08011F0E
_0801116C:
	mov r0, sb
	movs r1, #1
	bl sub_08025B78
	ldr r1, _08011198 @ =gUnk_03002920
	mov r7, sl
	subs r0, r7, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #9]
	strb r1, [r0, #8]
	ldr r0, _0801119C @ =gUnk_03005220
	adds r0, #0x3f
	strb r5, [r0]
	bl _08011F0E
	.align 2, 0
_08011190: .4byte gUnk_0300363C
_08011194: .4byte gUnk_03000830
_08011198: .4byte gUnk_03002920
_0801119C: .4byte gUnk_03005220
_080111A0:
	mov r1, sl
	mov r2, sb
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r4, _080112A0 @ =gUnk_03002920
	adds r3, r0, r4
	ldrh r2, [r3]
	adds r0, r2, #0
	adds r0, #0xf
	ldr r4, [sp, #0x18]
	subs r4, #0xc
	cmp r4, r0
	bge _080111E2
	ldr r1, [sp, #0x18]
	adds r1, #0xc
	subs r0, #0x1e
	cmp r1, r0
	ble _080111E2
	ldr r0, [sp, #0x1c]
	subs r0, #0x18
	ldrh r1, [r3, #2]
	cmp r0, r1
	bge _080111E2
	adds r0, r1, #0
	subs r0, #0x10
	movs r5, #1
	add r5, sb
	mov r8, r5
	ldr r6, [sp, #0x1c]
	cmp r6, r0
	ble _080111E2
	bl _08011F0E
_080111E2:
	ldr r2, _080112A4 @ =gUnk_03005220
	adds r0, r2, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _080112A0 @ =gUnk_03002920
	adds r0, r0, r7
	ldrb r0, [r0, #0x11]
	adds r6, r2, #0
	cmp r0, #0x6f
	beq _08011200
	cmp r0, #0x25
	bne _08011240
_08011200:
	mov r1, sl
	mov r2, sb
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r5, _080112A0 @ =gUnk_03002920
	adds r3, r0, r5
	ldrh r2, [r3]
	adds r0, r2, #0
	adds r0, #0xf
	cmp r4, r0
	bge _08011240
	ldr r1, [sp, #0x18]
	adds r1, #0xc
	subs r0, #0x1e
	cmp r1, r0
	ble _08011240
	ldr r0, [sp, #0x1c]
	subs r0, #0x2d
	ldrh r2, [r3, #2]
	cmp r0, r2
	bge _08011240
	ldr r1, [sp, #0x1c]
	subs r1, #0x15
	adds r0, r2, #0
	subs r0, #0x10
	movs r7, #1
	add r7, sb
	mov r8, r7
	cmp r1, r0
	ble _08011240
	bl _08011F0E
_08011240:
	ldr r0, _080112A0 @ =gUnk_03002920
	ldrh r3, [r0]
	adds r0, r3, #0
	subs r0, #0xc
	mov r2, sl
	mov r4, sb
	subs r1, r2, r4
	lsls r1, r1, #2
	ldr r5, _080112A0 @ =gUnk_03002920
	adds r4, r1, r5
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0xf
	cmp r0, r1
	bge _080112F4
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0xf
	cmp r1, r0
	ble _080112F4
	ldrh r1, [r5, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r2, [r4, #2]
	cmp r0, r2
	bge _080112F4
	adds r0, r2, #0
	subs r0, #0x10
	cmp r1, r0
	ble _080112F4
	cmp r1, r2
	bls _080112AC
	adds r0, #0x28
	movs r1, #0
	strh r0, [r5, #2]
	ldr r0, _080112A8 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
	b _08011762
	.align 2, 0
_080112A0: .4byte gUnk_03002920
_080112A4: .4byte gUnk_03005220
_080112A8: .4byte gUnk_03004654
_080112AC:
	ldr r0, _080112E8 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	adds r0, r6, #0
	adds r0, #0x3f
	mov r7, sb
	strb r7, [r0]
	ldr r1, _080112EC @ =0x0000FFF0
	adds r0, r1, #0
	ldrh r2, [r4, #2]
	adds r0, r0, r2
	ldr r3, _080112F0 @ =gUnk_03002920
	strh r0, [r3, #2]
	adds r0, r6, #0
	adds r0, #0x49
	movs r1, #1
	strb r1, [r0]
	ldrb r0, [r4, #8]
	movs r5, #1
	add r5, sb
	mov r8, r5
	cmp r0, #0
	beq _080112E0
	bl _08011F0E
_080112E0:
	strb r1, [r4, #8]
	bl _08011F0E
	.align 2, 0
_080112E8: .4byte gUnk_03004654
_080112EC: .4byte 0x0000FFF0
_080112F0: .4byte gUnk_03002920
_080112F4:
	adds r2, r6, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	cmp r0, sb
	bne _0801130A
	adds r1, r6, #0
	adds r1, #0x57
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	b _08011762
_0801130A:
	adds r0, r6, #0
	adds r0, #0x43
	ldrb r0, [r0]
	adds r2, r6, #0
	adds r2, #0x42
	cmp r0, #1
	bne _0801132A
	ldrb r0, [r2]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r7, _080113B4 @ =gUnk_03002920
	adds r1, r1, r7
	ldrb r0, [r1, #0x11]
	cmp r0, #0x6f
	beq _08011346
_0801132A:
	ldrb r0, [r2]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080113B4 @ =gUnk_03002920
	adds r1, r1, r0
	ldrb r0, [r1, #0x11]
	movs r1, #1
	add r1, sb
	mov r8, r1
	cmp r0, #0x25
	beq _08011346
	bl _08011F0E
_08011346:
	ldr r4, _080113B4 @ =gUnk_03002920
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #0xf
	movs r7, #1
	add r7, sb
	mov r8, r7
	cmp r0, r1
	blt _0801136C
	bl _08011F0E
_0801136C:
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0xf
	cmp r1, r0
	bgt _0801137C
	bl _08011F0E
_0801137C:
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	subs r0, #0x2d
	ldrh r2, [r2, #2]
	cmp r0, r2
	blt _0801138C
	bl _08011F0E
_0801138C:
	subs r1, #0x15
	adds r0, r2, #0
	subs r0, #0x10
	cmp r1, r0
	bgt _0801139A
	bl _08011F0E
_0801139A:
	adds r0, #0x3d
	movs r1, #0
	movs r2, #0
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	strh r2, [r6, #0x28]
	bl _08011F0E
	.align 2, 0
_080113B4: .4byte gUnk_03002920
_080113B8:
	ldr r0, _08011424 @ =gUnk_03002920
	ldrh r3, [r0]
	adds r0, r3, #0
	subs r0, #0xc
	mov r2, sl
	mov r4, sb
	subs r1, r2, r4
	lsls r1, r1, #2
	ldr r5, _08011424 @ =gUnk_03002920
	adds r4, r1, r5
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0xf
	cmp r0, r1
	bge _080114B4
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0xf
	cmp r1, r0
	ble _080114B4
	ldrh r2, [r5, #2]
	adds r1, r2, #0
	subs r1, #0x18
	ldrh r3, [r4, #2]
	adds r0, r3, #2
	cmp r1, r0
	bge _080114B4
	subs r0, #0x12
	cmp r2, r0
	ble _080114B4
	ldr r1, _08011428 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r0, [r0]
	adds r6, r1, #0
	movs r7, #1
	add r7, sb
	mov r8, r7
	cmp r0, #0
	beq _0801140E
	bl _08011F0E
_0801140E:
	cmp r2, r3
	bls _08011484
	adds r0, r6, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801142C
	adds r0, r3, #0
	adds r0, #0x1b
	strh r0, [r5, #2]
	b _08011434
	.align 2, 0
_08011424: .4byte gUnk_03002920
_08011428: .4byte gUnk_03005220
_0801142C:
	mov r0, sp
	ldrh r1, [r0, #0x1c]
	ldr r0, _0801147C @ =gUnk_03002920
	strh r1, [r0, #2]
_08011434:
	adds r1, r6, #0
	adds r1, #0x3c
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08011480 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	adds r1, #0xc
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0801147C @ =gUnk_03002920
	mov r2, sl
	mov r3, sb
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrb r3, [r2, #0xc]
	lsrs r0, r3, #4
	movs r4, #1
	add r4, sb
	mov r8, r4
	cmp r0, #1
	beq _08011468
	bl _08011F0E
_08011468:
	ldrb r1, [r2, #8]
	ldrb r0, [r2, #9]
	subs r0, #0xa
	cmp r1, r0
	blt _08011476
	bl _08011F0E
_08011476:
	movs r0, #0xf
	ands r0, r3
	b _080117C6
	.align 2, 0
_0801147C: .4byte gUnk_03002920
_08011480: .4byte gUnk_03004654
_08011484:
	ldr r0, _080114A8 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	adds r0, r6, #0
	adds r0, #0x3f
	mov r5, sb
	strb r5, [r0]
	ldr r7, _080114AC @ =0x0000FFF0
	adds r0, r7, #0
	ldrh r4, [r4, #2]
	adds r0, r0, r4
	ldr r1, _080114B0 @ =gUnk_03002920
	strh r0, [r1, #2]
	adds r1, r6, #0
	adds r1, #0x49
	b _08011B5E
	.align 2, 0
_080114A8: .4byte gUnk_03004654
_080114AC: .4byte 0x0000FFF0
_080114B0: .4byte gUnk_03002920
_080114B4:
	ldr r5, _080114D4 @ =gUnk_03005220
	adds r2, r5, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	cmp r0, sb
	bne _080114D8
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	movs r2, #1
	add r2, sb
	mov r8, r2
	bl _08011F0E
	.align 2, 0
_080114D4: .4byte gUnk_03005220
_080114D8:
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r0, [r0]
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #1
	beq _080114EC
	bl _08011F0E
_080114EC:
	ldr r6, _08011594 @ =gUnk_03002920
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #0x11]
	cmp r0, #0x6f
	beq _0801150A
	cmp r0, #0x25
	beq _0801150A
	bl _08011F0E
_0801150A:
	ldrh r3, [r6]
	adds r0, r3, #0
	subs r0, #0xc
	mov r4, sl
	mov r7, sb
	subs r1, r4, r7
	lsls r1, r1, #2
	adds r4, r1, r6
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0xf
	movs r7, #1
	add r7, sb
	mov r8, r7
	cmp r0, r1
	blt _0801152E
	bl _08011F0E
_0801152E:
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0xf
	cmp r1, r0
	bgt _0801153E
	bl _08011F0E
_0801153E:
	ldrh r1, [r6, #2]
	adds r0, r1, #0
	subs r0, #0x30
	ldrh r2, [r4, #2]
	cmp r0, r2
	blt _0801154E
	bl _08011F0E
_0801154E:
	subs r1, #0x18
	adds r0, r2, #0
	subs r0, #0x10
	cmp r1, r0
	bgt _0801155C
	bl _08011F0E
_0801155C:
	adds r0, #0x40
	movs r1, #0
	movs r2, #0
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	strh r2, [r5, #0x28]
	ldrb r1, [r4, #0xc]
	lsrs r0, r1, #4
	cmp r0, #1
	beq _0801157E
	bl _08011F0E
_0801157E:
	movs r0, #0xf
	ands r0, r1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #8]
	adds r1, #0xa
	ldrb r0, [r4, #9]
	subs r0, r0, r1
	strb r0, [r4, #8]
	bl _08011F0E
	.align 2, 0
_08011594: .4byte gUnk_03002920
_08011598:
	ldr r0, _08011620 @ =gUnk_03005220
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	bne _080115F4
	mov r1, sl
	mov r2, sb
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08011624 @ =gUnk_03002920
	adds r4, r0, r3
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _080115F4
	ldrh r3, [r3]
	adds r1, r3, #0
	subs r1, #0xc
	ldrh r2, [r4]
	adds r0, r2, #0
	adds r0, #0x10
	cmp r1, r0
	bge _080115E2
	adds r1, #0x18
	subs r0, #0x20
	cmp r1, r0
	ble _080115E2
	ldr r5, _08011624 @ =gUnk_03002920
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x38
	ldrh r1, [r4, #2]
	cmp r0, r1
	bge _080115E2
	adds r0, r1, #0
	subs r0, #0x10
	cmp r2, r0
	bgt _080115F4
_080115E2:
	ldr r0, _08011620 @ =gUnk_03005220
	adds r2, r0, #0
	adds r2, #0x3b
	movs r1, #0
	strb r1, [r2]
	movs r2, #0
	strh r1, [r0, #0x28]
	adds r0, #0x5a
	strb r2, [r0]
_080115F4:
	ldr r1, _08011620 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x43
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r0, #1
	bne _08011628
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _08011624 @ =gUnk_03002920
	adds r0, r0, r7
	ldrb r0, [r0, #0x11]
	cmp r0, #0x6f
	beq _0801161C
	cmp r0, #0x25
	bne _08011628
_0801161C:
	movs r7, #0x16
	b _0801162A
	.align 2, 0
_08011620: .4byte gUnk_03005220
_08011624: .4byte gUnk_03002920
_08011628:
	movs r7, #0
_0801162A:
	ldr r0, _080116A8 @ =gUnk_03002920
	ldrh r3, [r0]
	adds r0, r3, #0
	subs r0, #0xc
	mov r2, sl
	mov r4, sb
	subs r1, r2, r4
	lsls r1, r1, #2
	ldr r5, _080116A8 @ =gUnk_03002920
	adds r4, r1, r5
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0x10
	cmp r0, r1
	blt _0801164A
	b _080117D4
_0801164A:
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0x10
	cmp r1, r0
	bgt _08011658
	b _080117D4
_08011658:
	ldrh r3, [r5, #2]
	adds r0, r7, #0
	adds r0, #0x18
	subs r1, r3, r0
	ldrh r2, [r4, #2]
	adds r5, r0, #0
	cmp r1, r2
	blt _0801166A
	b _080117D4
_0801166A:
	adds r0, r2, #0
	subs r0, #0x10
	cmp r3, r0
	bgt _08011674
	b _080117D4
_08011674:
	adds r0, #4
	cmp r3, r0
	bgt _080116B4
	ldr r0, _080116AC @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	adds r0, r6, #0
	adds r0, #0x3f
	mov r7, sb
	strb r7, [r0]
	ldr r1, _080116B0 @ =0x0000FFF0
	adds r0, r1, #0
	ldrh r4, [r4, #2]
	adds r0, r0, r4
	movs r1, #0
	ldr r2, _080116A8 @ =gUnk_03002920
	strh r0, [r2, #2]
	adds r2, r6, #0
	adds r2, #0x49
	movs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	b _08011A34
	.align 2, 0
_080116A8: .4byte gUnk_03002920
_080116AC: .4byte gUnk_03004654
_080116B0: .4byte 0x0000FFF0
_080116B4:
	ldrb r0, [r4, #0x11]
	cmp r0, #0x2a
	bne _08011720
	adds r1, r6, #0
	adds r1, #0x3b
	ldrb r0, [r1]
	movs r4, #1
	add r4, sb
	mov r8, r4
	cmp r0, #0
	beq _080116CE
	bl _08011F0E
_080116CE:
	adds r0, r3, #0
	subs r0, #0x14
	cmp r0, r2
	blt _08011720
	adds r4, r6, #0
	adds r4, #0x3a
	ldrb r0, [r4]
	cmp r0, #0
	beq _08011720
	adds r0, r6, #0
	adds r0, #0x5a
	movs r2, #1
	strb r2, [r0]
	ldr r5, _08011718 @ =gUnk_03002920
	ldrh r0, [r5, #2]
	adds r0, #2
	movs r3, #0
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	strb r2, [r1]
	ldr r1, _0801171C @ =gUnk_03000790
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	adds r0, #0x48
	strb r2, [r0]
	subs r0, #0xc
	strb r3, [r0]
	bl _08011F0E
	.align 2, 0
_08011718: .4byte gUnk_03002920
_0801171C: .4byte gUnk_03000790
_08011720:
	ldr r0, _0801176C @ =gUnk_03002920
	ldrh r1, [r0, #2]
	subs r1, r1, r5
	adds r1, #4
	mov r2, sl
	mov r3, sb
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _0801176C @ =gUnk_03002920
	adds r2, r0, r4
	ldrh r5, [r2, #2]
	cmp r1, r5
	blt _08011774
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011774
	ldr r0, _08011770 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	adds r1, r6, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
	ldrh r0, [r2, #2]
	adds r0, r0, r7
	adds r0, #0x1b
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
_08011762:
	movs r6, #1
	add r6, sb
	mov r8, r6
	b _08011F0E
	.align 2, 0
_0801176C: .4byte gUnk_03002920
_08011770: .4byte gUnk_03004654
_08011774:
	ldr r1, _080117B0 @ =gUnk_03002920
	mov r7, sp
	ldrh r7, [r7, #0x18]
	strh r7, [r1]
	mov r2, sl
	mov r3, sb
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrb r1, [r2, #8]
	ldrb r0, [r2, #9]
	subs r0, #0xa
	movs r4, #1
	add r4, sb
	mov r8, r4
	cmp r1, r0
	blt _08011798
	b _08011F0E
_08011798:
	ldr r5, [sp, #0x18]
	ldrh r6, [r2]
	cmp r5, r6
	bhs _080117B4
	ldrb r1, [r2, #0xc]
	lsrs r0, r1, #4
	cmp r0, #0
	bne _080117AA
	b _08011F0E
_080117AA:
	movs r0, #0xf
	ands r0, r1
	b _080117C6
	.align 2, 0
_080117B0: .4byte gUnk_03002920
_080117B4:
	ldrb r1, [r2, #0xc]
	lsrs r0, r1, #4
	cmp r0, #1
	bne _080117BE
	b _08011F0E
_080117BE:
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
_080117C6:
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #8]
	adds r1, #0xa
	ldrb r0, [r2, #9]
	subs r0, r0, r1
	strb r0, [r2, #8]
	b _08011F0E
_080117D4:
	adds r2, r6, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	movs r7, #1
	add r7, sb
	mov r8, r7
	cmp r0, sb
	beq _080117E6
	b _08011F0E
_080117E6:
	adds r1, r6, #0
	adds r1, #0x56
	b _080118CE
_080117EC:
	ldr r2, _08011810 @ =gUnk_03005220
	adds r0, r2, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011814 @ =gUnk_03002920
	adds r0, r0, r1
	ldrb r0, [r0, #0x11]
	adds r6, r2, #0
	cmp r0, #0x6f
	beq _0801180A
	cmp r0, #0x25
	bne _08011818
_0801180A:
	movs r7, #0x18
	b _0801181A
	.align 2, 0
_08011810: .4byte gUnk_03005220
_08011814: .4byte gUnk_03002920
_08011818:
	movs r7, #0
_0801181A:
	ldr r4, _08011880 @ =gUnk_03002920
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #0xc
	cmp r0, r1
	bge _080118B8
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0xc
	cmp r1, r0
	ble _080118B8
	ldrh r3, [r4, #2]
	adds r0, r7, #0
	adds r0, #0x18
	subs r0, r3, r0
	ldrh r1, [r2, #2]
	cmp r0, r1
	bge _080118B8
	adds r0, r1, #0
	subs r0, #8
	cmp r3, r0
	ble _080118B8
	cmp r1, r3
	bhs _08011884
	adds r0, r6, #0
	adds r0, #0x3c
	movs r1, #0
	strb r1, [r0]
	strh r1, [r6, #0x28]
	mov r5, sp
	ldrh r5, [r5, #0x1c]
	strh r5, [r4, #2]
	adds r1, r6, #0
	adds r1, #0x3d
	ldrb r0, [r1]
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, #1
	bhi _0801187E
	b _08011F0E
_0801187E:
	b _08011B5E
	.align 2, 0
_08011880: .4byte gUnk_03002920
_08011884:
	subs r0, r1, #4
	movs r7, #1
	add r7, sb
	mov r8, r7
	cmp r3, r0
	ble _08011892
	b _08011F0E
_08011892:
	ldr r0, _080118B0 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	adds r0, r6, #0
	adds r0, #0x3f
	mov r1, sb
	strb r1, [r0]
	ldr r3, _080118B4 @ =0x0000FFF8
	adds r0, r3, #0
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	strh r0, [r4, #2]
	b _08011F0E
	.align 2, 0
_080118B0: .4byte gUnk_03004654
_080118B4: .4byte 0x0000FFF8
_080118B8:
	adds r2, r6, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	movs r4, #1
	add r4, sb
	mov r8, r4
	cmp r0, sb
	beq _080118CA
	b _08011F0E
_080118CA:
	adds r1, r6, #0
	adds r1, #0x57
_080118CE:
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	b _08011F0E
_080118D6:
	ldr r5, _08011990 @ =gUnk_03002920
	ldrh r3, [r5]
	adds r0, r3, #0
	subs r0, #0xc
	mov r6, sl
	mov r7, sb
	subs r1, r6, r7
	lsls r1, r1, #2
	adds r4, r1, r5
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0x20
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, r1
	blt _080118FA
	b _08011F0E
_080118FA:
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0x20
	cmp r1, r0
	bgt _08011908
	b _08011F0E
_08011908:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _08011916
	b _08011F0E
_08011916:
	adds r0, r1, #0
	subs r0, #0x16
	cmp r2, r0
	bgt _08011920
	b _08011F0E
_08011920:
	ldr r7, _08011994 @ =gUnk_03004654
	ldr r0, [r7]
	ldrb r0, [r0, #0x18]
	ldr r1, [sp, #0x20]
	cmp r0, r1
	bhi _08011934
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _08011934
	b _08011F0E
_08011934:
	ldr r6, _08011998 @ =0x030051E0
	ldrh r0, [r6]
	subs r0, r0, r3
	bl Abs
	cmp r0, #8
	ble _08011952
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	movs r2, #0xc
	movs r3, #0
	bl sub_0801E664
	ldrh r0, [r5]
	strh r0, [r6]
_08011952:
	ldr r0, [r7]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	ldr r2, _0801199C @ =0x0000FFEA
	adds r0, r2, #0
	ldrh r4, [r4, #2]
	adds r0, r0, r4
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r1, _080119A0 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08011986
	adds r0, r1, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #0
	beq _08011986
	b _08011F0E
_08011986:
	movs r0, #1
	bl sub_08014624
	b _08011A5A
	.align 2, 0
_08011990: .4byte gUnk_03002920
_08011994: .4byte gUnk_03004654
_08011998: .4byte 0x030051E0
_0801199C: .4byte 0x0000FFEA
_080119A0: .4byte gUnk_03005220
_080119A4:
	ldr r1, _08011A10 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x43
	ldrb r0, [r0]
	adds r6, r1, #0
	movs r5, #1
	add r5, sb
	mov r8, r5
	cmp r0, #0
	beq _080119BA
	b _08011F0E
_080119BA:
	ldr r4, _08011A14 @ =gUnk_03002920
	ldrh r3, [r4]
	adds r0, r3, #0
	subs r0, #0xc
	mov r7, sl
	mov r2, sb
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r5, [r2]
	adds r1, r5, #0
	adds r1, #8
	cmp r0, r1
	blt _080119D8
	b _08011F0E
_080119D8:
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r5, #0
	subs r0, #8
	cmp r1, r0
	bgt _080119E6
	b _08011F0E
_080119E6:
	ldrh r3, [r4, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _080119F4
	b _08011F0E
_080119F4:
	adds r0, r1, #0
	subs r0, #0x40
	cmp r3, r0
	bgt _080119FE
	b _08011F0E
_080119FE:
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08011A18
	adds r0, r5, #0
	subs r0, #0x13
	b _08011A1C
	.align 2, 0
_08011A10: .4byte gUnk_03005220
_08011A14: .4byte gUnk_03002920
_08011A18:
	adds r0, r5, #0
	adds r0, #0x13
_08011A1C:
	strh r0, [r4]
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08011A40
	ldr r0, _08011A3C @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08011A46
_08011A34:
	movs r3, #1
	add r3, sb
	mov r8, r3
	b _08011F0E
	.align 2, 0
_08011A3C: .4byte gUnk_03004C20
_08011A40:
	movs r0, #0
	bl sub_08014624
_08011A46:
	ldr r1, _08011A64 @ =gUnk_03002920
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	adds r1, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xb
_08011A54:
	movs r3, #0
	bl sub_0801E664
_08011A5A:
	movs r4, #1
	add r4, sb
	mov r8, r4
	b _08011F0E
	.align 2, 0
_08011A64: .4byte gUnk_03002920
_08011A68:
	ldr r2, _08011A8C @ =gUnk_03005220
	adds r0, r2, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r5, _08011A90 @ =gUnk_03002920
	adds r0, r0, r5
	ldrb r0, [r0, #0x11]
	adds r6, r2, #0
	cmp r0, #0x6f
	beq _08011A86
	cmp r0, #0x25
	bne _08011A94
_08011A86:
	movs r7, #0x18
	b _08011A96
	.align 2, 0
_08011A8C: .4byte gUnk_03005220
_08011A90: .4byte gUnk_03002920
_08011A94:
	movs r7, #0
_08011A96:
	ldr r0, [sp, #0x18]
	subs r0, #0xc
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	ldr r4, _08011B48 @ =gUnk_03002920
	adds r2, r1, r4
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #0xf
	cmp r0, r1
	bge _08011ADA
	ldr r1, [sp, #0x18]
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0xf
	cmp r1, r0
	ble _08011ADA
	adds r0, r7, #0
	adds r0, #0x18
	ldr r5, [sp, #0x1c]
	subs r0, r5, r0
	ldrh r1, [r2, #2]
	cmp r0, r1
	bge _08011ADA
	adds r0, r1, #0
	subs r0, #0x1e
	movs r1, #1
	add r1, sb
	mov r8, r1
	cmp r5, r0
	ble _08011ADA
	b _08011F0E
_08011ADA:
	ldr r4, _08011B48 @ =gUnk_03002920
	ldrh r2, [r4]
	mov ip, r2
	mov r0, ip
	subs r0, #0xc
	mov r3, sl
	mov r5, sb
	subs r1, r3, r5
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #0xf
	movs r5, #1
	add r5, sb
	mov r8, r5
	cmp r0, r1
	blt _08011B00
	b _08011F0E
_08011B00:
	mov r1, ip
	adds r1, #0xc
	adds r0, r3, #0
	subs r0, #0xf
	cmp r1, r0
	bgt _08011B0E
	b _08011F0E
_08011B0E:
	ldrh r3, [r4, #2]
	adds r0, r7, #0
	adds r0, #0x18
	subs r0, r3, r0
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08011B1E
	b _08011F0E
_08011B1E:
	adds r0, r1, #0
	subs r0, #0x20
	cmp r3, r0
	bgt _08011B28
	b _08011F0E
_08011B28:
	ldr r0, _08011B4C @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x20]
	adds r0, r1, #0
	subs r0, #0x1d
	cmp r3, r0
	bgt _08011B54
	ldr r6, _08011B50 @ =0x0000FFE0
	adds r0, r1, r6
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	b _08011F0E
	.align 2, 0
_08011B48: .4byte gUnk_03002920
_08011B4C: .4byte gUnk_03004654
_08011B50: .4byte 0x0000FFE0
_08011B54:
	mov r7, sp
	ldrh r7, [r7, #0x1c]
	strh r7, [r4, #2]
	adds r1, r6, #0
	adds r1, #0x48
_08011B5E:
	movs r0, #1
	strb r0, [r1]
	b _08011F0E
_08011B64:
	ldr r0, _08011B9C @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r1, #1
	add r1, sb
	mov r8, r1
	cmp r0, #0
	beq _08011B76
	b _08011F0E
_08011B76:
	ldr r3, _08011BA0 @ =gUnk_03005400
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	bne _08011B80
	b _08011F0E
_08011B80:
	ldrb r1, [r3, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011B8C
	b _08011F0E
_08011B8C:
	ldr r1, _08011BA4 @ =gUnk_03004C20
	ldrb r0, [r1, #0xd]
	cmp r0, #2
	bne _08011BAC
	ldr r2, _08011BA8 @ =0x08116A16
	ldrb r1, [r3, #0xc]
	b _08011BB2
	.align 2, 0
_08011B9C: .4byte gUnk_03005220
_08011BA0: .4byte gUnk_03005400
_08011BA4: .4byte gUnk_03004C20
_08011BA8: .4byte 0x08116A16
_08011BAC:
	ldr r2, _08011C2C @ =0x08116894
	ldrb r1, [r1, #0xd]
	subs r1, #1
_08011BB2:
	lsls r1, r1, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	mov ip, r0
	adds r0, r2, #1
	adds r0, r1, r0
	ldrb r6, [r0]
	adds r0, r2, #2
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x34]
	adds r2, #3
	adds r1, r1, r2
	ldrb r7, [r1]
	ldr r4, _08011C30 @ =gUnk_03002920
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #0xc
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r3, [r2]
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	adds r1, r3, r1
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, r1
	blt _08011BF4
	b _08011F0E
_08011BF4:
	adds r1, r5, #0
	adds r1, #0xc
	mov r5, ip
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	cmp r1, r0
	bgt _08011C06
	b _08011F0E
_08011C06:
	ldrh r3, [r4, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r2, #2]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	cmp r1, r0
	blt _08011C1A
	b _08011F0E
_08011C1A:
	ldr r6, [sp, #0x34]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	cmp r3, r0
	bgt _08011C28
	b _08011F0E
_08011C28:
	b _08011EA8
	.align 2, 0
_08011C2C: .4byte 0x08116894
_08011C30: .4byte gUnk_03002920
_08011C34:
	ldr r4, _08011C90 @ =gUnk_03002920
	mov r7, sl
	mov r1, sb
	subs r0, r7, r1
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrb r0, [r2, #0xf]
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #0xf
	beq _08011C4E
	b _08011F0E
_08011C4E:
	ldr r0, _08011C94 @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08011C5A
	b _08011F0E
_08011C5A:
	ldrh r5, [r4]
	adds r1, r5, #0
	subs r1, #0xc
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #8
	cmp r1, r0
	blt _08011C6C
	b _08011F0E
_08011C6C:
	adds r1, #0x18
	subs r0, #0x10
	cmp r1, r0
	bgt _08011C76
	b _08011F0E
_08011C76:
	ldrh r3, [r4, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r2, #2]
	subs r0, r2, #4
	cmp r1, r0
	blt _08011C86
	b _08011F0E
_08011C86:
	subs r0, #0x18
	cmp r3, r0
	bgt _08011C8E
	b _08011F0E
_08011C8E:
	b _08011EA8
	.align 2, 0
_08011C90: .4byte gUnk_03002920
_08011C94: .4byte gUnk_03005220
_08011C98:
	ldr r0, _08011D14 @ =gUnk_03005400
	ldrb r0, [r0, #0xc]
	movs r4, #1
	add r4, sb
	mov r8, r4
	cmp r0, #0
	bne _08011CA8
	b _08011F0E
_08011CA8:
	ldr r5, _08011D18 @ =gUnk_03002920
	mov r6, sl
	mov r7, sb
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrb r0, [r4, #0xf]
	subs r0, #0xe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08011CC2
	b _08011F0E
_08011CC2:
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xc
	ldrh r2, [r4]
	adds r0, r2, #0
	adds r0, #8
	cmp r1, r0
	blt _08011CD4
	b _08011F0E
_08011CD4:
	adds r1, #0x18
	subs r0, #0x10
	cmp r1, r0
	bgt _08011CDE
	b _08011F0E
_08011CDE:
	ldrh r3, [r5, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r4, #2]
	subs r0, r2, #6
	cmp r1, r0
	blt _08011CEE
	b _08011F0E
_08011CEE:
	subs r0, #0x10
	cmp r3, r0
	bgt _08011CF6
	b _08011F0E
_08011CF6:
	ldr r0, _08011D1C @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011D06
	movs r0, #1
	bl sub_08014624
_08011D06:
	mov r0, sb
	movs r1, #1
	bl sub_08025B78
	movs r0, #0
	strb r0, [r4, #0xf]
	b _08011F0E
	.align 2, 0
_08011D14: .4byte gUnk_03005400
_08011D18: .4byte gUnk_03002920
_08011D1C: .4byte gUnk_03005220
_08011D20:
	ldr r0, _08011D98 @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r1, #1
	add r1, sb
	mov r8, r1
	cmp r0, #0
	beq _08011D32
	b _08011F0E
_08011D32:
	ldr r0, _08011D9C @ =gUnk_03005400
	ldrb r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011D40
	b _08011F0E
_08011D40:
	ldr r1, _08011DA0 @ =gUnk_03000830
	ldr r0, _08011DA4 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r2, sb
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _08011D56
	b _08011F0E
_08011D56:
	ldr r3, _08011DA8 @ =gUnk_03002920
	ldrh r6, [r3]
	adds r0, r6, #0
	subs r0, #0xc
	mov r4, sl
	subs r1, r4, r2
	lsls r1, r1, #2
	adds r2, r1, r3
	ldrh r5, [r2]
	adds r1, r5, #0
	adds r1, #0x14
	cmp r0, r1
	blt _08011D72
	b _08011F0E
_08011D72:
	adds r1, r6, #0
	adds r1, #0xc
	adds r0, r5, #0
	subs r0, #0x14
	cmp r1, r0
	bgt _08011D80
	b _08011F0E
_08011D80:
	ldrh r5, [r3, #2]
	adds r1, r5, #0
	subs r1, #0x18
	ldrh r2, [r2, #2]
	adds r0, r2, #0
	subs r0, #0xa
	cmp r1, r0
	blt _08011D92
	b _08011F0E
_08011D92:
	subs r0, #0x2c
	b _08011EA4
	.align 2, 0
_08011D98: .4byte gUnk_03005220
_08011D9C: .4byte gUnk_03005400
_08011DA0: .4byte gUnk_03000830
_08011DA4: .4byte gUnk_0300363C
_08011DA8: .4byte gUnk_03002920
_08011DAC:
	ldr r0, _08011E00 @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r5, #1
	add r5, sb
	mov r8, r5
	cmp r0, #0
	beq _08011DBE
	b _08011F0E
_08011DBE:
	ldr r3, _08011E04 @ =gUnk_03002920
	ldrh r6, [r3]
	adds r0, r6, #0
	subs r0, #0xc
	mov r7, sl
	mov r2, sb
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r2, r1, r3
	ldrh r5, [r2]
	adds r1, r5, #0
	adds r1, #0x14
	cmp r0, r1
	blt _08011DDC
	b _08011F0E
_08011DDC:
	adds r1, r6, #0
	adds r1, #0xc
	adds r0, r5, #0
	subs r0, #0x14
	cmp r1, r0
	bgt _08011DEA
	b _08011F0E
_08011DEA:
	ldrh r5, [r3, #2]
	adds r1, r5, #0
	subs r1, #0x18
	ldrh r2, [r2, #2]
	adds r0, r2, #0
	subs r0, #0xc
	cmp r1, r0
	blt _08011DFC
	b _08011F0E
_08011DFC:
	subs r0, #0x28
	b _08011EA4
	.align 2, 0
_08011E00: .4byte gUnk_03005220
_08011E04: .4byte gUnk_03002920
_08011E08:
	ldr r0, _08011E54 @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #0
	bne _08011F0E
	ldr r3, _08011E58 @ =gUnk_03002920
	mov r4, sl
	mov r5, sb
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	bne _08011F0E
	ldrh r5, [r3]
	adds r1, r5, #0
	subs r1, #0xc
	ldrh r2, [r2]
	adds r0, r2, #0
	adds r0, #0x18
	cmp r1, r0
	bge _08011F0E
	adds r1, #0x18
	subs r0, #0x30
	cmp r1, r0
	ble _08011F0E
	ldrh r1, [r3, #2]
	movs r0, #0x8e
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08011F0E
	cmp r1, #0x67
	bls _08011F0E
	b _08011EA8
	.align 2, 0
_08011E54: .4byte gUnk_03005220
_08011E58: .4byte gUnk_03002920
_08011E5C:
	ldr r0, _08011EB0 @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r6, #1
	add r6, sb
	mov r8, r6
	cmp r0, #0
	bne _08011F0E
	ldr r3, _08011EB4 @ =gUnk_03002920
	ldrh r6, [r3]
	adds r0, r6, #0
	subs r0, #0xc
	mov r7, sl
	mov r2, sb
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r2, r1, r3
	ldrh r5, [r2]
	adds r1, r5, #0
	adds r1, #0x1e
	cmp r0, r1
	bge _08011F0E
	adds r1, r6, #0
	adds r1, #0xc
	adds r0, r5, #0
	subs r0, #0x1e
	cmp r1, r0
	ble _08011F0E
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	bge _08011F0E
	adds r0, r1, #0
	subs r0, #0x1e
_08011EA4:
	cmp r5, r0
	ble _08011F0E
_08011EA8:
	movs r0, #1
	bl sub_08014624
	b _08011F0E
	.align 2, 0
_08011EB0: .4byte gUnk_03005220
_08011EB4: .4byte gUnk_03002920
_08011EB8:
	ldr r0, _08011F64 @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r3, #1
	add r3, sb
	mov r8, r3
	cmp r0, #0
	bne _08011F0E
	ldr r3, _08011F68 @ =gUnk_03002920
	mov r4, sl
	mov r5, sb
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrb r0, [r2, #0xf]
	cmp r0, #0xf
	bne _08011F0E
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #0xc
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0x12
	cmp r1, r0
	bge _08011F0E
	adds r1, #0x18
	subs r0, #0x24
	cmp r1, r0
	ble _08011F0E
	ldrh r5, [r3, #2]
	adds r1, r5, #0
	subs r1, #0x18
	ldrh r2, [r2, #2]
	adds r0, r2, #0
	subs r0, #8
	cmp r1, r0
	bge _08011F0E
	subs r0, #0x30
	cmp r5, r0
	ble _08011F0E
	movs r0, #1
	bl sub_08014624
_08011F0E:
	mov sb, r8
_08011F10:
	ldr r0, _08011F6C @ =gUnk_03005428
	ldrb r0, [r0]
	cmp sb, r0
	bhs _08011F1C
	bl _080101E8
_08011F1C:
	ldr r0, _08011F70 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	ldr r6, [sp, #0x20]
	cmp r0, r6
	bls _08011F2A
	b _080120F4
_08011F2A:
	ldr r4, _08011F64 @ =gUnk_03005220
	adds r1, r4, #0
	adds r1, #0x4a
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r1, [r1]
	ldrb r0, [r0]
	orrs r1, r0
	cmp r1, #0
	bne _08011F9E
	adds r2, r4, #0
	adds r2, #0x31
	movs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x3d
	strb r1, [r0]
	subs r0, #0xd
	strb r1, [r0]
	adds r0, #8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08011F74
	ldr r0, _08011F68 @ =gUnk_03002920
	mov r7, sp
	ldrh r7, [r7, #0x1c]
	strh r7, [r0, #2]
	b _08011FE2
	.align 2, 0
_08011F64: .4byte gUnk_03005220
_08011F68: .4byte gUnk_03002920
_08011F6C: .4byte gUnk_03005428
_08011F70: .4byte gUnk_03004654
_08011F74:
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x28]
	ldr r0, _08011F8C @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #2
	bne _08011F90
	movs r0, #0
	movs r1, #1
	bl sub_08025B78
	b _08011FE2
	.align 2, 0
_08011F8C: .4byte gUnk_03000830
_08011F90:
	cmp r0, #0x18
	bne _08011FE2
	movs r0, #0
	movs r1, #0x17
	bl sub_08025B78
	b _08011FE2
_08011F9E:
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011FDC
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r0, [r1]
	cmp r0, #1
	bls _08011FBC
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x8e
	bl m4aSongNumStart
_08011FBC:
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _08011FD8
	ldr r0, _08011FD4 @ =gUnk_03002920
	mov r1, sp
	ldrh r1, [r1, #0x1c]
	strh r1, [r0, #2]
	adds r6, r4, #0
	b _0801202C
	.align 2, 0
_08011FD4: .4byte gUnk_03002920
_08011FD8:
	movs r0, #0x60
	b _08011FE0
_08011FDC:
	movs r0, #0xc0
	lsls r0, r0, #2
_08011FE0:
	strh r0, [r4, #0x28]
_08011FE2:
	ldr r2, _08012060 @ =gUnk_03005220
	adds r1, r2, #0
	adds r1, #0x3c
	movs r0, #0
	strb r0, [r1]
	adds r1, #3
	adds r0, r2, #0
	adds r0, #0x48
	ldrb r1, [r1]
	ldrb r0, [r0]
	orrs r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08012008
	adds r0, r6, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012024
_08012008:
	ldr r2, _08012064 @ =gUnk_03002920
	mov r3, sp
	ldrh r3, [r3, #0x1c]
	strh r3, [r2, #2]
	ldr r0, _08012068 @ =gUnk_03004C20
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _08012024
	ldr r0, [sp, #0x1c]
	adds r0, #4
	ldr r1, _0801206C @ =0x0000FFF8
	ands r0, r1
	strh r0, [r2, #2]
	str r0, [sp, #0x1c]
_08012024:
	adds r1, r6, #0
	adds r1, #0x48
	movs r0, #0
	strb r0, [r1]
_0801202C:
	adds r0, r6, #0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012086
	adds r0, r6, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012086
	ldr r1, _08012068 @ =gUnk_03004C20
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _0801204E
	ldrb r0, [r1, #0xc]
	cmp r0, #8
	bne _08012086
_0801204E:
	ldrb r0, [r1, #0xc]
	cmp r0, #6
	beq _08012070
	ldr r0, _08012064 @ =gUnk_03002920
	mov r4, sp
	ldrh r4, [r4, #0x18]
	strh r4, [r0]
	b _08012086
	.align 2, 0
_08012060: .4byte gUnk_03005220
_08012064: .4byte gUnk_03002920
_08012068: .4byte gUnk_03004C20
_0801206C: .4byte 0x0000FFF8
_08012070:
	ldr r2, _080120AC @ =gUnk_03002920
	ldrh r0, [r2]
	ldr r1, _080120B0 @ =gUnk_03003430
	adds r1, #0x40
	ldrh r1, [r1]
	adds r1, #0x10
	cmp r0, r1
	ble _08012086
	mov r5, sp
	ldrh r5, [r5, #0x18]
	strh r5, [r2]
_08012086:
	ldr r0, _080120B4 @ =gUnk_03004654
	ldr r1, [r0]
	ldrb r0, [r1, #0x18]
	ldr r6, [sp, #0x20]
	cmp r0, r6
	bne _080120BC
	ldr r1, _080120B8 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080120E8
	adds r0, r1, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012116
	b _080120E8
	.align 2, 0
_080120AC: .4byte gUnk_03002920
_080120B0: .4byte gUnk_03003430
_080120B4: .4byte gUnk_03004654
_080120B8: .4byte gUnk_03005220
_080120BC:
	ldrb r0, [r1, #0x19]
	ldr r7, [sp, #0x20]
	cmp r0, r7
	bne _08012116
	ldr r2, _080120F0 @ =gUnk_03005220
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080120DA
	adds r0, r2, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012116
_080120DA:
	ldrb r0, [r2]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2]
_080120E8:
	movs r0, #1
	bl sub_08014624
	b _08012116
	.align 2, 0
_080120F0: .4byte gUnk_03005220
_080120F4:
	ldr r1, _0801217C @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801210E
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801210E
	movs r0, #0x80
	strh r0, [r1, #0x28]
_0801210E:
	ldr r0, _0801217C @ =gUnk_03005220
	adds r0, #0x31
	movs r1, #0
	strb r1, [r0]
_08012116:
	ldr r6, _08012180 @ =gUnk_03004790
	ldr r4, _08012184 @ =gUnk_03002920
	ldrh r3, [r4]
	lsrs r3, r3, #3
	ldrh r2, [r4, #2]
	adds r1, r2, #0
	subs r1, #0x14
	asrs r1, r1, #3
	ldr r0, _08012188 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r5, [r0]
	adds r0, r1, #0
	muls r0, r5, r0
	ldr r1, [r6, #0x14]
	adds r0, r3, r0
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x20]
	subs r2, #4
	asrs r2, r2, #3
	adds r0, r2, #0
	muls r0, r5, r0
	adds r3, r3, r0
	adds r1, r1, r3
	add r2, sp, #0x20
	ldrb r0, [r2]
	ldrb r1, [r1]
	ldr r3, [sp, #0x20]
	cmp r3, r1
	bhs _08012154
	adds r0, r1, #0
_08012154:
	str r0, [sp, #0x20]
	ldr r0, _0801218C @ =gUnk_03004654
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	ldr r4, [sp, #0x20]
	cmp r0, r4
	bhi _08012250
	ldrb r1, [r1, #0x14]
	cmp r4, r1
	bhi _08012250
	ldr r4, _08012190 @ =gUnk_030034E4
	ldrb r0, [r4]
	cmp r0, #1
	bne _08012194
	mov r5, sp
	ldrh r6, [r5, #0x1c]
	ldr r5, _08012184 @ =gUnk_03002920
	strh r6, [r5, #2]
	b _08012250
	.align 2, 0
_0801217C: .4byte gUnk_03005220
_08012180: .4byte gUnk_03004790
_08012184: .4byte gUnk_03002920
_08012188: .4byte gUnk_03003430
_0801218C: .4byte gUnk_03004654
_08012190: .4byte gUnk_030034E4
_08012194:
	ldr r0, _080121F4 @ =gUnk_03004C20
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _080121B6
	ldr r0, _080121F8 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08012250
	movs r0, #0x60
	bl m4aSongNumStart
	movs r0, #0
	movs r1, #0x25
	bl sub_08025B78
_080121B6:
	ldr r0, _080121FC @ =gUnk_03005220
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012250
	ldr r0, _08012200 @ =gUnk_030051C8
	add r7, sp, #0x20
	ldrb r7, [r7]
	strb r7, [r0]
	movs r0, #1
	strb r0, [r4]
	movs r3, #0
	ldr r1, _08012204 @ =gUnk_03003510
	adds r4, r1, #0
	adds r4, #0x78
	ldrb r0, [r4]
	adds r0, #1
	ldr r2, _08012208 @ =gUnk_03005498
	mov sb, r2
	mov r8, r1
	cmp r3, r0
	bhs _08012228
	mov r6, r8
	mov r2, r8
	subs r2, #4
	ldr r5, _0801220C @ =sub_08024718
	adds r1, r4, #0
_080121EC:
	cmp r3, #4
	bne _08012210
	str r5, [r6, #0x38]
	b _0801221C
	.align 2, 0
_080121F4: .4byte gUnk_03004C20
_080121F8: .4byte gNewKeys
_080121FC: .4byte gUnk_03005220
_08012200: .4byte gUnk_030051C8
_08012204: .4byte gUnk_03003510
_08012208: .4byte gUnk_03005498
_0801220C: .4byte sub_08024718
_08012210:
	cmp r3, #4
	bls _08012218
	ldr r0, [r2]
	b _0801221A
_08012218:
	ldr r0, [r2, #4]
_0801221A:
	str r0, [r2, #0x2c]
_0801221C:
	adds r2, #4
	adds r3, #1
	ldrb r0, [r1]
	adds r0, #1
	cmp r3, r0
	blo _080121EC
_08012228:
	cmp r3, #3
	bls _08012246
	mov r1, r8
	adds r1, #0x78
	ldrb r0, [r1]
	adds r0, #1
	mov r3, r8
	adds r3, #0x79
	movs r2, #0
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	add r0, r8
	str r2, [r0]
_08012246:
	movs r0, #0
	mov r3, sb
	strb r0, [r3]
	bl _08014164
_08012250:
	ldr r2, _08012324 @ =gUnk_03005220
	adds r0, r2, #0
	adds r0, #0x42
	adds r3, r2, #0
	adds r3, #0x46
	ldrb r1, [r0]
	ldrb r0, [r3]
	adds r4, r0, #0
	orrs r4, r1
	mov sl, r4
	adds r6, r2, #0
	cmp r4, #0
	beq _0801226C
	b _0801269C
_0801226C:
	ldr r0, _08012328 @ =gUnk_03004654
	ldr r5, [r0]
	mov r8, r5
	ldrb r1, [r5, #0x16]
	ldr r7, [sp, #0x20]
	cmp r1, r7
	beq _0801227C
	b _08012488
_0801227C:
	movs r0, #0x28
	ldrsh r1, [r6, r0]
	ldr r0, _0801232C @ =0xFFFFFE50
	cmp r1, r0
	bge _08012288
	b _08012488
_08012288:
	adds r0, r6, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #1
	beq _08012294
	b _080123E6
_08012294:
	ldr r0, _08012330 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0
	beq _08012340
	ldr r2, _08012334 @ =gUnk_03004790
	ldr r1, _08012338 @ =gUnk_03002920
	mov sb, r1
	ldrh r0, [r1]
	adds r0, #0xc
	asrs r5, r0, #3
	ldrh r4, [r1, #2]
	subs r1, r4, #3
	asrs r1, r1, #3
	ldr r0, _0801233C @ =gUnk_03003430
	adds r0, #0x48
	ldrh r3, [r0]
	adds r0, r1, #0
	muls r0, r3, r0
	ldr r1, [r2, #0x14]
	adds r0, r5, r0
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x20]
	adds r0, r4, #0
	subs r0, #0xc
	asrs r0, r0, #3
	muls r0, r3, r0
	adds r0, r5, r0
	adds r0, r0, r1
	add r7, sp, #0x20
	ldrb r2, [r7]
	ldrb r0, [r0]
	ldr r7, [sp, #0x20]
	cmp r7, r0
	bhs _080122E6
	adds r2, r0, #0
_080122E6:
	str r2, [sp, #0x20]
	adds r0, r4, #0
	subs r0, #0x14
	asrs r0, r0, #3
	muls r0, r3, r0
	adds r0, r5, r0
	adds r0, r1, r0
	add r2, sp, #0x20
	ldrb r1, [r2]
	ldrb r0, [r0]
	ldr r3, [sp, #0x20]
	cmp r3, r0
	bhs _08012302
	adds r1, r0, #0
_08012302:
	mov r4, r8
	ldrb r0, [r4, #0x18]
	cmp r0, r1
	bls _080123E6
	mov r5, sl
	strh r5, [r6, #0x28]
	mov r7, sb
	ldrh r0, [r7]
	adds r0, #3
	strh r0, [r7]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080123C4
	b _080123DC
	.align 2, 0
_08012324: .4byte gUnk_03005220
_08012328: .4byte gUnk_03004654
_0801232C: .4byte 0xFFFFFE50
_08012330: .4byte gNewKeys
_08012334: .4byte gUnk_03004790
_08012338: .4byte gUnk_03002920
_0801233C: .4byte gUnk_03003430
_08012340:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080123E6
	ldr r2, _080123D0 @ =gUnk_03004790
	ldr r0, _080123D4 @ =gUnk_03002920
	mov sl, r0
	ldrh r0, [r0]
	subs r0, #0x13
	asrs r5, r0, #3
	mov r1, sl
	ldrh r4, [r1, #2]
	subs r1, r4, #3
	asrs r1, r1, #3
	ldr r0, _080123D8 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r3, [r0]
	adds r0, r1, #0
	muls r0, r3, r0
	ldr r1, [r2, #0x14]
	adds r0, r5, r0
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x20]
	adds r0, r4, #0
	subs r0, #0xc
	asrs r0, r0, #3
	muls r0, r3, r0
	adds r0, r5, r0
	adds r0, r0, r1
	add r7, sp, #0x20
	ldrb r2, [r7]
	ldrb r0, [r0]
	ldr r7, [sp, #0x20]
	cmp r7, r0
	bhs _0801238A
	adds r2, r0, #0
_0801238A:
	str r2, [sp, #0x20]
	adds r0, r4, #0
	subs r0, #0x14
	asrs r0, r0, #3
	muls r0, r3, r0
	adds r0, r5, r0
	adds r0, r1, r0
	add r2, sp, #0x20
	ldrb r1, [r2]
	ldrb r0, [r0]
	ldr r3, [sp, #0x20]
	cmp r3, r0
	bhs _080123A6
	adds r1, r0, #0
_080123A6:
	mov r4, r8
	ldrb r0, [r4, #0x18]
	cmp r0, r1
	bls _080123E6
	mov r5, sb
	strh r5, [r6, #0x28]
	mov r7, sl
	ldrh r0, [r7]
	subs r0, #3
	strh r0, [r7]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _080123DC
_080123C4:
	movs r0, #0
	movs r1, #2
	bl sub_08025B78
	b _0801267E
	.align 2, 0
_080123D0: .4byte gUnk_03004790
_080123D4: .4byte gUnk_03002920
_080123D8: .4byte gUnk_03003430
_080123DC:
	movs r0, #0
	movs r1, #0
	bl sub_08025B78
	b _0801267E
_080123E6:
	ldr r1, _08012444 @ =gUnk_03005220
	movs r3, #0
	movs r0, #0x80
	strh r0, [r1, #0x28]
	adds r2, r1, #0
	adds r2, #0x35
	movs r0, #1
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0x5c
	strb r3, [r0]
	subs r2, #2
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801241E
	strb r3, [r2]
	adds r0, r1, #0
	adds r0, #0x41
	strb r3, [r0]
	ldr r1, _08012448 @ =gUnk_03002920
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r1, r2
	strb r3, [r0]
	movs r4, #0x94
	lsls r4, r4, #1
	adds r0, r1, r4
	strb r3, [r0]
_0801241E:
	movs r0, #0x8e
	bl m4aSongNumStart
	ldr r0, _0801244C @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08012454
	ldr r0, _08012450 @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _0801245C
	movs r0, #0
	movs r1, #0x11
	bl sub_08025B78
	b _0801245C
	.align 2, 0
_08012444: .4byte gUnk_03005220
_08012448: .4byte gUnk_03002920
_0801244C: .4byte gHeldKeys
_08012450: .4byte gUnk_03000830
_08012454:
	movs r0, #0
	movs r1, #0x10
	bl sub_08025B78
_0801245C:
	ldr r2, _0801247C @ =gUnk_03002920
	ldrh r1, [r2]
	ldr r0, _08012480 @ =0x0000FFF8
	ands r0, r1
	adds r0, #4
	movs r3, #0
	strh r0, [r2]
	ldr r0, _08012484 @ =gUnk_03005220
	adds r2, r0, #0
	adds r2, #0x3d
	movs r1, #1
	strb r1, [r2]
	adds r0, #0x3c
	strb r3, [r0]
	b _0801269C
	.align 2, 0
_0801247C: .4byte gUnk_03002920
_08012480: .4byte 0x0000FFF8
_08012484: .4byte gUnk_03005220
_08012488:
	ldr r5, _08012510 @ =gUnk_03004654
	ldr r0, [r5]
	ldrb r0, [r0, #0x17]
	ldr r7, [sp, #0x20]
	cmp r0, r7
	beq _08012496
	b _08012654
_08012496:
	movs r0, #0x28
	ldrsh r1, [r6, r0]
	ldr r0, _08012514 @ =0xFFFFFE50
	cmp r1, r0
	bge _080124A2
	b _08012654
_080124A2:
	adds r1, r6, #0
	adds r1, #0x35
	ldrb r0, [r1]
	cmp r0, #0
	bne _080124BA
	movs r0, #0x80
	strh r0, [r6, #0x28]
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x8e
	bl m4aSongNumStart
_080124BA:
	adds r1, r6, #0
	adds r1, #0x33
	ldrb r0, [r1]
	cmp r0, #0
	beq _080124DE
	movs r0, #0
	strb r0, [r1]
	adds r1, #0xe
	strb r0, [r1]
	ldr r2, _08012518 @ =gUnk_03002920
	movs r3, #0x86
	lsls r3, r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	movs r4, #0x94
	lsls r4, r4, #1
	adds r1, r2, r4
	strb r0, [r1]
_080124DE:
	ldr r0, _0801251C @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08012524
	adds r1, r6, #0
	adds r1, #0x36
	ldrb r0, [r1]
	cmp r0, #0
	beq _080124FE
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x90
	bl m4aSongNumStart
_080124FE:
	ldr r0, _08012520 @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _0801257E
	movs r0, #0
	movs r1, #0x13
	bl sub_08025B78
	b _0801257E
	.align 2, 0
_08012510: .4byte gUnk_03004654
_08012514: .4byte 0xFFFFFE50
_08012518: .4byte gUnk_03002920
_0801251C: .4byte gHeldKeys
_08012520: .4byte gUnk_03000830
_08012524:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0801255C
	adds r4, r6, #0
	adds r4, #0x36
	ldrb r0, [r4]
	cmp r0, #0
	bne _08012544
	movs r0, #0x94
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4]
_08012544:
	ldr r0, _08012558 @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _0801257E
	movs r0, #0
	movs r1, #0x14
	bl sub_08025B78
	b _0801257E
	.align 2, 0
_08012558: .4byte gUnk_03000830
_0801255C:
	ldr r0, _08012604 @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _0801257E
	adds r1, r6, #0
	adds r1, #0x36
	ldrb r0, [r1]
	cmp r0, #0
	beq _08012576
	strb r2, [r1]
	movs r0, #0x90
	bl m4aSongNumStart
_08012576:
	movs r0, #0
	movs r1, #0x12
	bl sub_08025B78
_0801257E:
	ldr r0, _08012608 @ =gNewKeys
	ldrh r0, [r0]
	mov r8, r0
	movs r0, #0x30
	mov r5, r8
	ands r0, r5
	cmp r0, #0
	beq _08012628
	ldr r2, _0801260C @ =gUnk_03004790
	ldr r7, _08012610 @ =gUnk_03002920
	ldrh r6, [r7]
	lsrs r5, r6, #3
	ldrh r4, [r7, #2]
	adds r1, r4, #0
	subs r1, #0x24
	asrs r1, r1, #3
	ldr r0, _08012614 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r3, [r0]
	adds r0, r1, #0
	muls r0, r3, r0
	ldr r1, [r2, #0x14]
	adds r0, r5, r0
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x20]
	adds r0, r4, #0
	subs r0, #0x1c
	asrs r0, r0, #3
	muls r0, r3, r0
	adds r0, r5, r0
	adds r0, r1, r0
	add r7, sp, #0x20
	ldrb r2, [r7]
	ldrb r0, [r0]
	ldr r7, [sp, #0x20]
	cmp r7, r0
	bhs _080125CC
	adds r2, r0, #0
_080125CC:
	str r2, [sp, #0x20]
	adds r0, r4, #0
	subs r0, #0x14
	asrs r0, r0, #3
	muls r0, r3, r0
	adds r0, r5, r0
	adds r0, r1, r0
	add r2, sp, #0x20
	ldrb r1, [r2]
	ldrb r0, [r0]
	ldr r3, [sp, #0x20]
	cmp r3, r0
	bhs _080125E8
	adds r1, r0, #0
_080125E8:
	ldr r0, _08012618 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x17]
	cmp r0, r1
	bhs _08012628
	movs r0, #0x10
	mov r4, r8
	ands r0, r4
	cmp r0, #0
	beq _0801261C
	adds r0, r6, #3
	ldr r5, _08012610 @ =gUnk_03002920
	strh r0, [r5]
	b _0801267E
	.align 2, 0
_08012604: .4byte gUnk_03000830
_08012608: .4byte gNewKeys
_0801260C: .4byte gUnk_03004790
_08012610: .4byte gUnk_03002920
_08012614: .4byte gUnk_03003430
_08012618: .4byte gUnk_03004654
_0801261C:
	subs r0, r6, #3
	ldr r6, _08012624 @ =gUnk_03002920
	strh r0, [r6]
	b _0801267E
	.align 2, 0
_08012624: .4byte gUnk_03002920
_08012628:
	ldr r7, _08012648 @ =gUnk_03002920
	ldrh r1, [r7]
	ldr r0, _0801264C @ =0x0000FFF8
	ands r0, r1
	adds r0, #4
	movs r2, #0
	strh r0, [r7]
	ldr r0, _08012650 @ =gUnk_03005220
	adds r3, r0, #0
	adds r3, #0x3d
	movs r1, #1
	strb r1, [r3]
	adds r0, #0x3c
	strb r2, [r0]
	b _0801269C
	.align 2, 0
_08012648: .4byte gUnk_03002920
_0801264C: .4byte 0x0000FFF8
_08012650: .4byte gUnk_03005220
_08012654:
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #2
	bne _08012674
	ldr r0, _08012670 @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #7
	beq _08012674
	movs r0, #0
	movs r1, #7
	bl sub_08025B78
	b _0801269C
	.align 2, 0
_08012670: .4byte gUnk_03000830
_08012674:
	ldr r0, _0801275C @ =gUnk_03005220
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801269C
_0801267E:
	ldr r0, _0801275C @ =gUnk_03005220
	adds r1, r0, #0
	adds r1, #0x3d
	movs r2, #0
	strb r2, [r1]
	subs r1, #8
	strb r2, [r1]
	adds r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801269C
	strb r2, [r1]
	movs r0, #0x90
	bl m4aSongNumStart
_0801269C:
	ldr r0, _08012760 @ =gNewKeys
	ldrh r2, [r0]
	ldr r0, _08012764 @ =gUnk_03005284
	ldr r0, [r0]
	ldrb r0, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _080126B4
	b _080128EA
_080126B4:
	ldr r2, _0801275C @ =gUnk_03005220
	adds r5, r2, #0
	adds r5, #0x33
	adds r0, r2, #0
	adds r0, #0x40
	ldrb r1, [r5]
	ldrb r0, [r0]
	orrs r1, r0
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r0, [r0]
	orrs r1, r0
	adds r0, r2, #0
	adds r0, #0x34
	ldrb r0, [r0]
	orrs r1, r0
	adds r0, r2, #0
	adds r0, #0x35
	ldrb r0, [r0]
	orrs r1, r0
	adds r6, r2, #0
	cmp r1, #0
	beq _080126E4
	b _080128EA
_080126E4:
	ldrb r0, [r6]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _080126EE
	b _080128EA
_080126EE:
	adds r3, r6, #0
	adds r3, #0x42
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801277C
	adds r2, #0x3d
	ldrb r0, [r2]
	cmp r0, #2
	bne _08012706
	movs r0, #1
	strb r0, [r2]
	strh r1, [r6, #0x28]
_08012706:
	ldr r4, _08012768 @ =gUnk_03002920
	movs r0, #0x86
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x16
	strb r0, [r5]
	ldrh r0, [r4, #2]
	subs r0, #4
	movs r5, #0
	strh r0, [r6, #0x22]
	movs r0, #0
	movs r1, #8
	bl sub_08025B78
	movs r0, #0x28
	bl m4aSongNumStart
	ldr r0, _0801276C @ =0x03005200
	strb r5, [r0]
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #7
	movs r3, #0
	bl sub_0801E664
	ldr r1, _08012770 @ =gUnk_03004C20
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _0801274A
	ldrb r0, [r1, #0xc]
	cmp r0, #8
	bne _08012774
_0801274A:
	ldr r1, _08012768 @ =gUnk_03002920
	ldrb r0, [r1, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r1, #0x32
	strb r0, [r1]
	b _080128EA
	.align 2, 0
_0801275C: .4byte gUnk_03005220
_08012760: .4byte gNewKeys
_08012764: .4byte gUnk_03005284
_08012768: .4byte gUnk_03002920
_0801276C: .4byte 0x03005200
_08012770: .4byte gUnk_03004C20
_08012774:
	adds r0, r6, #0
	adds r0, #0x32
	strb r5, [r0]
	b _080128EA
_0801277C:
	adds r0, r6, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012788
	b _080128EA
_08012788:
	adds r2, r6, #0
	adds r2, #0x39
	ldrb r0, [r2]
	cmp r0, #0
	beq _08012794
	b _08012898
_08012794:
	ldr r0, _080127DC @ =gUnk_03004C20
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _080127E4
	ldr r2, _080127E0 @ =gUnk_03002920
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r2, #2]
	subs r1, #2
	strh r1, [r0, #2]
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080127C8
	ldrb r0, [r3]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r2]
	adds r0, #8
	strh r0, [r1]
_080127C8:
	ldrb r0, [r3]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r3, _080127E0 @ =gUnk_03002920
	adds r1, r1, r3
	movs r0, #6
	strb r0, [r1, #0x16]
	b _08012804
	.align 2, 0
_080127DC: .4byte gUnk_03004C20
_080127E0: .4byte gUnk_03002920
_080127E4:
	ldr r2, _08012830 @ =gUnk_03002920
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r2, #2]
	subs r1, #4
	strh r1, [r0, #2]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r2]
	strh r1, [r0]
_08012804:
	ldr r1, _08012834 @ =gUnk_03004C20
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _08012812
	ldrb r0, [r1, #0xc]
	cmp r0, #8
	bne _08012850
_08012812:
	ldr r4, _08012830 @ =gUnk_03002920
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08012838
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	b _0801288C
	.align 2, 0
_08012830: .4byte gUnk_03002920
_08012834: .4byte gUnk_03004C20
_08012838:
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r5, _0801284C @ =gUnk_03002920
	adds r0, r0, r5
	b _0801286C
	.align 2, 0
_0801284C: .4byte gUnk_03002920
_08012850:
	ldr r0, _08012874 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801287C
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r6, _08012878 @ =gUnk_03002920
	adds r0, r0, r6
_0801286C:
	movs r1, #0x16
	strb r1, [r0, #0xf]
	b _080128A0
	.align 2, 0
_08012874: .4byte gHeldKeys
_08012878: .4byte gUnk_03002920
_0801287C:
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _08012894 @ =gUnk_03002920
	adds r0, r0, r7
_0801288C:
	movs r1, #0x15
	strb r1, [r0, #0xf]
	b _080128A0
	.align 2, 0
_08012894: .4byte gUnk_03002920
_08012898:
	adds r0, r6, #0
	adds r0, #0x31
	strb r1, [r0]
	strb r1, [r2]
_080128A0:
	ldr r0, _080128B4 @ =gUnk_03005220
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _080128B8
	movs r0, #0
	movs r1, #9
	bl sub_08025B78
	b _080128C0
	.align 2, 0
_080128B4: .4byte gUnk_03005220
_080128B8:
	movs r0, #0
	movs r1, #0xa
	bl sub_08025B78
_080128C0:
	movs r0, #0x2a
	bl m4aSongNumStart
	ldr r2, _0801292C @ =gUnk_03005220
	adds r3, r2, #0
	adds r3, #0x41
	movs r1, #0
	movs r0, #1
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x55
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x33
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0
	bl sub_080145A8
_080128EA:
	ldr r0, _0801292C @ =gUnk_03005220
	adds r2, r0, #0
	adds r2, #0x33
	ldrb r1, [r2]
	adds r6, r0, #0
	cmp r1, #0
	bne _080128FC
	bl _0801368C
_080128FC:
	adds r3, r6, #0
	adds r3, #0x41
	ldrb r0, [r3]
	cmp r0, #0
	beq _0801290A
	bl _0801367E
_0801290A:
	movs r0, #1
	str r0, [sp, #0x38]
	ldr r1, _08012930 @ =gUnk_03004C20
	ldr r2, [r1, #4]
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	bne _08012944
	ldr r1, _08012934 @ =0x040000D4
	ldr r0, _08012938 @ =0x0805C8E8
	str r0, [r1]
	ldr r0, _0801293C @ =0x08057C50
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r2, _08012940 @ =0x06010000
	adds r0, r0, r2
	b _080129A4
	.align 2, 0
_0801292C: .4byte gUnk_03005220
_08012930: .4byte gUnk_03004C20
_08012934: .4byte 0x040000D4
_08012938: .4byte 0x0805C8E8
_0801293C: .4byte 0x08057C50
_08012940: .4byte 0x06010000
_08012944:
	cmp r2, #1
	bne _0801296C
	ldr r1, _0801295C @ =0x040000D4
	ldr r0, _08012960 @ =0x0805C968
	str r0, [r1]
	ldr r0, _08012964 @ =0x08057C58
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r3, _08012968 @ =0x06010000
	adds r0, r0, r3
	b _080129A4
	.align 2, 0
_0801295C: .4byte 0x040000D4
_08012960: .4byte 0x0805C968
_08012964: .4byte 0x08057C58
_08012968: .4byte 0x06010000
_0801296C:
	cmp r2, #2
	bne _08012994
	ldr r1, _08012984 @ =0x040000D4
	ldr r0, _08012988 @ =0x0809AC08
	str r0, [r1]
	ldr r0, _0801298C @ =0x08057C50
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r4, _08012990 @ =0x06010000
	adds r0, r0, r4
	b _080129A4
	.align 2, 0
_08012984: .4byte 0x040000D4
_08012988: .4byte 0x0809AC08
_0801298C: .4byte 0x08057C50
_08012990: .4byte 0x06010000
_08012994:
	ldr r1, _08012A0C @ =0x040000D4
	ldr r0, _08012A10 @ =0x0809AC88
	str r0, [r1]
	ldr r0, _08012A14 @ =0x08057C58
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r5, _08012A18 @ =0x06010000
	adds r0, r0, r5
_080129A4:
	str r0, [r1, #4]
	ldr r0, _08012A1C @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r3, r6, #0
	adds r3, #0x33
	ldrb r0, [r3]
	cmp r0, #0x12
	bne _080129C2
	ldr r7, _08012A20 @ =gUnk_03002920
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
_080129C2:
	adds r0, r6, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012A28
	ldr r2, _08012A24 @ =0x080D90B8
	ldrb r1, [r3]
	movs r0, #0x16
	subs r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #7
	ldr r1, _08012A20 @ =gUnk_03002920
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _08012A20 @ =gUnk_03002920
	adds r1, #0xfc
	strh r0, [r1]
	ldrb r1, [r3]
	movs r0, #0x12
	subs r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #7
	ldr r2, _08012A20 @ =gUnk_03002920
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r3, _08012A20 @ =gUnk_03002920
	movs r4, #0x8c
	lsls r4, r4, #1
	adds r1, r3, r4
	strh r0, [r1]
	b _08012A62
	.align 2, 0
_08012A0C: .4byte 0x040000D4
_08012A10: .4byte 0x0809AC88
_08012A14: .4byte 0x08057C58
_08012A18: .4byte 0x06010000
_08012A1C: .4byte 0x80000040
_08012A20: .4byte gUnk_03002920
_08012A24: .4byte 0x080D90B8
_08012A28:
	ldr r2, _08012A84 @ =0x080D90B8
	ldrb r1, [r3]
	movs r0, #0x16
	subs r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #7
	ldr r5, _08012A88 @ =gUnk_03002920
	ldrh r1, [r5]
	subs r1, r1, r0
	adds r0, r5, #0
	adds r0, #0xfc
	strh r1, [r0]
	ldrb r1, [r3]
	movs r0, #0x12
	subs r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #7
	ldrh r1, [r5]
	subs r1, r1, r0
	movs r7, #0x8c
	lsls r7, r7, #1
	adds r0, r5, r7
	strh r1, [r0]
_08012A62:
	ldr r1, _08012A8C @ =gUnk_03004C20
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	bne _08012AEC
	adds r0, r6, #0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #0xa
	bls _08012A90
	ldrh r0, [r6, #0x22]
	ldr r1, _08012A88 @ =gUnk_03002920
	adds r1, #0xfe
	strh r0, [r1]
	ldrh r0, [r6, #0x22]
	ldr r2, _08012A88 @ =gUnk_03002920
	b _08012AFC
	.align 2, 0
_08012A84: .4byte 0x080D90B8
_08012A88: .4byte gUnk_03002920
_08012A8C: .4byte gUnk_03004C20
_08012A90:
	ldr r4, _08012AA4 @ =gUnk_03002920
	adds r4, #0xfe
	ldrh r1, [r4]
	ldr r5, _08012AA4 @ =gUnk_03002920
	ldrh r2, [r5, #2]
	subs r0, r2, #3
	cmp r1, r0
	ble _08012AA8
	subs r0, r1, #3
	b _08012AC2
	.align 2, 0
_08012AA4: .4byte gUnk_03002920
_08012AA8:
	subs r3, r2, #4
	cmp r1, r3
	ble _08012AB2
	subs r0, r1, #2
	b _08012AC2
_08012AB2:
	subs r0, r2, #5
	cmp r1, r0
	bge _08012ABC
	adds r0, r1, #3
	b _08012AC2
_08012ABC:
	cmp r1, r3
	bge _08012AC4
	adds r0, r1, #2
_08012AC2:
	strh r0, [r4]
_08012AC4:
	ldr r7, _08012ADC @ =gUnk_03002920
	movs r0, #0x8d
	lsls r0, r0, #1
	adds r3, r7, r0
	ldrh r1, [r3]
	ldrh r2, [r7, #2]
	subs r0, r2, #3
	cmp r1, r0
	ble _08012AE0
	subs r0, r1, #2
	strh r0, [r3]
	b _08012B04
	.align 2, 0
_08012ADC: .4byte gUnk_03002920
_08012AE0:
	subs r0, r2, #5
	cmp r1, r0
	bge _08012B04
	adds r0, r1, #2
	strh r0, [r3]
	b _08012B04
_08012AEC:
	ldr r1, _08012B24 @ =gUnk_03002920
	ldrh r0, [r1, #2]
	subs r0, #4
	adds r1, #0xfe
	strh r0, [r1]
	ldr r2, _08012B24 @ =gUnk_03002920
	ldrh r0, [r2, #2]
	subs r0, #4
_08012AFC:
	movs r3, #0x8d
	lsls r3, r3, #1
	adds r1, r2, r3
	strh r0, [r1]
_08012B04:
	adds r0, r6, #0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #0xa
	bls _08012BB0
	adds r0, r6, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012B28
	ldr r4, _08012B24 @ =gUnk_03002920
	ldrh r0, [r4]
	strh r0, [r6, #0x1e]
	adds r0, #0x21
	strh r0, [r6, #0x20]
	b _08012B34
	.align 2, 0
_08012B24: .4byte gUnk_03002920
_08012B28:
	ldr r5, _08012B48 @ =gUnk_03002920
	ldrh r1, [r5]
	adds r0, r1, #0
	subs r0, #0x21
	strh r0, [r6, #0x1e]
	strh r1, [r6, #0x20]
_08012B34:
	adds r1, r6, #0
	adds r1, #0x33
	ldrb r0, [r1]
	cmp r0, #0x16
	bne _08012BC4
	subs r0, #1
	strb r0, [r1]
	bl _0801368C
	.align 2, 0
_08012B48: .4byte gUnk_03002920
_08012B4C:
	mov r6, sl
	mov r7, sb
	subs r4, r6, r7
	lsls r4, r4, #2
	ldr r0, _08012B98 @ =gUnk_03002920
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r5, #0
	strh r0, [r3]
	ldrh r0, [r4, #2]
	strh r0, [r3, #2]
	movs r0, #0x13
	strb r0, [r3, #0xf]
	strb r5, [r3, #8]
	ldr r0, _08012B9C @ =gUnk_03005220
	adds r1, r0, #0
	adds r1, #0x42
	strb r2, [r1]
	adds r3, r0, #0
	adds r3, #0x43
	movs r1, #1
	strb r1, [r3]
	adds r0, #0x33
	strb r1, [r0]
	adds r0, r2, #0
	movs r1, #2
	bl sub_08025B78
	mov r0, sb
	movs r1, #1
	bl sub_08025B78
	strb r5, [r4, #0xf]
	movs r0, #0x29
	bl m4aSongNumStart
	bl _080135C2
	.align 2, 0
_08012B98: .4byte gUnk_03002920
_08012B9C: .4byte gUnk_03005220
_08012BA0:
	adds r1, r6, #0
	adds r1, #0x33
	movs r0, #1
	strb r0, [r1]
	movs r1, #1
	str r1, [sp, #0x20]
	bl _080135C2
_08012BB0:
	ldr r0, _08012C2C @ =gUnk_03002920
	adds r0, #0xfc
	ldr r2, _08012C30 @ =0x0000FFF6
	adds r1, r2, #0
	ldrh r3, [r0]
	adds r1, r1, r3
	strh r1, [r6, #0x1e]
	ldrh r0, [r0]
	adds r0, #0xa
	strh r0, [r6, #0x20]
_08012BC4:
	movs r4, #0
	str r4, [sp, #0x20]
	ldr r0, _08012C34 @ =gUnk_030051D8
	ldr r0, [r0]
	mov sb, r0
	ldr r0, _08012C38 @ =gUnk_03004788
	ldr r1, [r0]
	mov r8, r0
	cmp sb, r1
	bls _08012BDC
	bl _080135C2
_08012BDC:
	mov r5, sb
	lsls r1, r5, #3
	subs r0, r1, r5
	lsls r0, r0, #2
	ldr r7, _08012C2C @ =gUnk_03002920
	adds r2, r0, r7
	ldrb r4, [r2, #0xf]
	adds r3, r4, #0
	mov sl, r1
	cmp r3, #0x1a
	bls _08012BF6
	bl _080135B2
_08012BF6:
	ldrb r0, [r2, #0x10]
	cmp r0, #0
	bne _08012C04
	cmp r3, #0x19
	beq _08012C04
	bl _080135B2
_08012C04:
	adds r0, r4, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08012C14
	bl _080135B2
_08012C14:
	ldrb r0, [r2, #0x11]
	subs r0, #0xb
	cmp r0, #0x72
	bls _08012C20
	bl _080135B2
_08012C20:
	lsls r0, r0, #2
	ldr r1, _08012C3C @ =_08012C40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012C2C: .4byte gUnk_03002920
_08012C30: .4byte 0x0000FFF6
_08012C34: .4byte gUnk_030051D8
_08012C38: .4byte gUnk_03004788
_08012C3C: .4byte _08012C40
_08012C40: @ jump table
	.4byte _08012F90 @ case 0
	.4byte _080135B2 @ case 1
	.4byte _080135B2 @ case 2
	.4byte _080135B2 @ case 3
	.4byte _080135B2 @ case 4
	.4byte _080135B2 @ case 5
	.4byte _080135B2 @ case 6
	.4byte _080135B2 @ case 7
	.4byte _080130E0 @ case 8
	.4byte _080135B2 @ case 9
	.4byte _080135B2 @ case 10
	.4byte _080130E0 @ case 11
	.4byte _080135B2 @ case 12
	.4byte _080135B2 @ case 13
	.4byte _080135B2 @ case 14
	.4byte _080135B2 @ case 15
	.4byte _080135B2 @ case 16
	.4byte _080135B2 @ case 17
	.4byte _080135B2 @ case 18
	.4byte _080135B2 @ case 19
	.4byte _0801318C @ case 20
	.4byte _080135B2 @ case 21
	.4byte _080135B2 @ case 22
	.4byte _080135B2 @ case 23
	.4byte _080135B2 @ case 24
	.4byte _080135B2 @ case 25
	.4byte _08012E0C @ case 26
	.4byte _080135B2 @ case 27
	.4byte _080135B2 @ case 28
	.4byte _080135B2 @ case 29
	.4byte _080135B2 @ case 30
	.4byte _080135B2 @ case 31
	.4byte _080135B2 @ case 32
	.4byte _080135B2 @ case 33
	.4byte _080135B2 @ case 34
	.4byte _080135B2 @ case 35
	.4byte _08013392 @ case 36
	.4byte _08013392 @ case 37
	.4byte _08013392 @ case 38
	.4byte _08013392 @ case 39
	.4byte _08013392 @ case 40
	.4byte _080135B2 @ case 41
	.4byte _080135B2 @ case 42
	.4byte _080135B2 @ case 43
	.4byte _080135B2 @ case 44
	.4byte _080135B2 @ case 45
	.4byte _080135B2 @ case 46
	.4byte _080135B2 @ case 47
	.4byte _08013560 @ case 48
	.4byte _08013514 @ case 49
	.4byte _080135B2 @ case 50
	.4byte _080135B2 @ case 51
	.4byte _080135B2 @ case 52
	.4byte _080135B2 @ case 53
	.4byte _080135B2 @ case 54
	.4byte _080135B2 @ case 55
	.4byte _080135B2 @ case 56
	.4byte _080135B2 @ case 57
	.4byte _080135B2 @ case 58
	.4byte _080135B2 @ case 59
	.4byte _080135B2 @ case 60
	.4byte _080135B2 @ case 61
	.4byte _080135B2 @ case 62
	.4byte _080135B2 @ case 63
	.4byte _080135B2 @ case 64
	.4byte _080135B2 @ case 65
	.4byte _080135B2 @ case 66
	.4byte _080135B2 @ case 67
	.4byte _080135B2 @ case 68
	.4byte _080135B2 @ case 69
	.4byte _080135B2 @ case 70
	.4byte _080135B2 @ case 71
	.4byte _080135B2 @ case 72
	.4byte _080135B2 @ case 73
	.4byte _080135B2 @ case 74
	.4byte _080135B2 @ case 75
	.4byte _080135B2 @ case 76
	.4byte _080135B2 @ case 77
	.4byte _080135B2 @ case 78
	.4byte _080135B2 @ case 79
	.4byte _080135B2 @ case 80
	.4byte _080135B2 @ case 81
	.4byte _080135B2 @ case 82
	.4byte _080135B2 @ case 83
	.4byte _080135B2 @ case 84
	.4byte _080135B2 @ case 85
	.4byte _080135B2 @ case 86
	.4byte _080135B2 @ case 87
	.4byte _080135B2 @ case 88
	.4byte _080135B2 @ case 89
	.4byte _080135B2 @ case 90
	.4byte _080135B2 @ case 91
	.4byte _080135B2 @ case 92
	.4byte _080135B2 @ case 93
	.4byte _080135B2 @ case 94
	.4byte _080135B2 @ case 95
	.4byte _080135B2 @ case 96
	.4byte _080135B2 @ case 97
	.4byte _080135B2 @ case 98
	.4byte _080135B2 @ case 99
	.4byte _08012E0C @ case 100
	.4byte _080135B2 @ case 101
	.4byte _08013444 @ case 102
	.4byte _08013428 @ case 103
	.4byte _0801345A @ case 104
	.4byte _0801345A @ case 105
	.4byte _080134B8 @ case 106
	.4byte _08012F90 @ case 107
	.4byte _08012F90 @ case 108
	.4byte _08012F90 @ case 109
	.4byte _08012F90 @ case 110
	.4byte _08012F90 @ case 111
	.4byte _08012F90 @ case 112
	.4byte _08012F90 @ case 113
	.4byte _08012F90 @ case 114
_08012E0C:
	adds r4, r6, #0
	adds r4, #0x33
	ldrb r0, [r4]
	cmp r0, #0x14
	bls _08012E18
	b _080135B2
_08012E18:
	adds r0, r6, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, sb
	bne _08012E24
	b _080135B2
_08012E24:
	ldrh r0, [r6, #0x1e]
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	ldr r5, _08012F34 @ =gUnk_03002920
	adds r3, r1, r5
	ldrh r2, [r3]
	adds r1, r2, #7
	cmp r0, r1
	blt _08012E3C
	b _080135B2
_08012E3C:
	ldrh r1, [r6, #0x20]
	adds r0, r2, #0
	subs r0, #0xf
	cmp r1, r0
	bgt _08012E48
	b _080135B2
_08012E48:
	adds r0, r5, #0
	adds r0, #0xfe
	ldrh r2, [r0]
	adds r0, r2, #0
	subs r0, #0x10
	ldrh r1, [r3, #2]
	cmp r0, r1
	blt _08012E5A
	b _080135B2
_08012E5A:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r2, r0
	bgt _08012E64
	b _080135B2
_08012E64:
	movs r1, #0
	movs r0, #1
	strb r0, [r4]
	ldrb r0, [r3, #0x11]
	cmp r0, #0x25
	bne _08012E92
	ldrb r0, [r3, #8]
	cmp r0, #1
	bne _08012E78
	b _080135B2
_08012E78:
	strb r1, [r3, #9]
	ldr r0, _08012F38 @ =gUnk_03004C38
	ldrb r0, [r0]
	mov r7, sb
	subs r0, r7, r0
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrb r2, [r1, #0xc]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1, #0xc]
_08012E92:
	ldrb r0, [r3, #0xf]
	cmp r0, #0
	beq _08012EA0
	adds r1, r6, #0
	adds r1, #0x59
	movs r0, #0x3c
	strb r0, [r1]
_08012EA0:
	ldr r0, _08012F3C @ =gUnk_03003500
	ldrh r7, [r0]
	ldr r0, _08012F40 @ =gUnk_03004664
	ldr r1, [r0]
	mov r8, r0
	cmp r7, r1
	bhi _08012F52
_08012EAE:
	cmp sb, r7
	beq _08012F44
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _08012F34 @ =gUnk_03002920
	adds r5, r0, r1
	ldrb r0, [r5, #0xf]
	cmp r0, #0x1a
	bhi _08012F44
	ldrb r6, [r5, #0x11]
	cmp r6, #0x25
	beq _08012ECC
	cmp r6, #0x6f
	bne _08012F44
_08012ECC:
	mov r2, sl
	mov r3, sb
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r1, _08012F34 @ =gUnk_03002920
	adds r4, r0, r1
	ldrh r3, [r4]
	adds r1, r3, #0
	subs r1, #0xf
	ldrh r2, [r5]
	adds r0, r2, #7
	cmp r1, r0
	bge _08012F44
	adds r1, r3, #7
	subs r0, #0x16
	cmp r1, r0
	ble _08012F44
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	subs r0, #0x2f
	ldrh r2, [r5, #2]
	cmp r0, r2
	bge _08012F44
	subs r1, #0x17
	adds r0, r2, #0
	subs r0, #0x18
	cmp r1, r0
	ble _08012F44
	movs r2, #1
	str r2, [sp, #0x20]
	cmp r6, #0x25
	bne _08012F10
	movs r0, #0
	strb r0, [r4, #0xf]
_08012F10:
	movs r3, #0
	str r3, [sp, #0x38]
	ldrh r0, [r4]
	subs r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	subs r1, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #9
	bl sub_0801E664
	movs r0, #0xa4
	bl m4aSongNumStart
	b _080135C2
	.align 2, 0
_08012F34: .4byte gUnk_03002920
_08012F38: .4byte gUnk_03004C38
_08012F3C: .4byte gUnk_03003500
_08012F40: .4byte gUnk_03004664
_08012F44:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r4, r8
	ldr r0, [r4]
	cmp r7, r0
	bls _08012EAE
_08012F52:
	mov r5, sl
	mov r6, sb
	subs r1, r5, r6
	lsls r1, r1, #2
	ldr r7, _08012F7C @ =gUnk_03002920
	adds r1, r1, r7
	movs r5, #0
	strb r5, [r1, #0x12]
	movs r0, #0x13
	strb r0, [r1, #0xf]
	ldr r4, _08012F80 @ =gUnk_03005220
	adds r0, r4, #0
	adds r0, #0x42
	strb r6, [r0]
	movs r0, #0x29
	bl m4aSongNumStart
	adds r4, #0x40
	strb r5, [r4]
	b _080135C2
	.align 2, 0
_08012F7C: .4byte gUnk_03002920
_08012F80: .4byte gUnk_03005220
_08012F84:
	movs r1, #0
	strb r1, [r2, #0x10]
	movs r0, #0x1c
	strb r0, [r2, #0xf]
	strb r1, [r2, #8]
	b _08012FF6
_08012F90:
	adds r0, r6, #0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #0x13
	bls _08012F9C
	b _080135B2
_08012F9C:
	ldrh r0, [r6, #0x1e]
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	ldr r4, _08013058 @ =gUnk_03002920
	adds r3, r1, r4
	ldrh r2, [r3]
	adds r1, r2, #4
	cmp r0, r1
	blt _08012FB4
	b _080135B2
_08012FB4:
	ldrh r1, [r6, #0x20]
	subs r0, r2, #4
	cmp r1, r0
	bgt _08012FBE
	b _080135B2
_08012FBE:
	adds r0, r4, #0
	adds r0, #0xfe
	ldrh r2, [r0]
	adds r0, r2, #0
	subs r0, #0x10
	ldrh r1, [r3, #2]
	cmp r0, r1
	blt _08012FD0
	b _080135B2
_08012FD0:
	adds r0, r1, #0
	subs r0, #0x14
	cmp r2, r0
	bgt _08012FDA
	b _080135B2
_08012FDA:
	movs r7, #1
	adds r1, r4, #0
_08012FDE:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrb r0, [r2, #8]
	cmp r0, sb
	beq _08012F84
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #7
	bls _08012FDE
_08012FF6:
	mov r5, sl
	mov r6, sb
	subs r0, r5, r6
	lsls r0, r0, #2
	ldr r7, _08013058 @ =gUnk_03002920
	adds r3, r0, r7
	movs r4, #0
	strb r4, [r3, #8]
	movs r0, #0x13
	strb r0, [r3, #0xf]
	ldrb r0, [r3, #0x11]
	cmp r0, #0x7a
	bls _0801302E
	ldr r2, _0801305C @ =gUnk_0300528C
	ldrb r1, [r2]
	add r1, sb
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	strb r4, [r0, #0xf]
	ldrb r1, [r2]
	add r1, sb
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	strb r4, [r0, #9]
_0801302E:
	ldr r1, _08013060 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x42
	mov r2, sb
	strb r2, [r0]
	adds r1, #0x33
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r3, #0x11]
	cmp r0, #0x76
	beq _0801304C
	cmp r0, #0xb
	beq _0801304C
	cmp r0, #0x7b
	bne _08013064
_0801304C:
	mov r0, sb
	movs r1, #2
	bl sub_08025B78
	b _0801306C
	.align 2, 0
_08013058: .4byte gUnk_03002920
_0801305C: .4byte gUnk_0300528C
_08013060: .4byte gUnk_03005220
_08013064:
	mov r0, sb
	movs r1, #1
	bl sub_08025B78
_0801306C:
	movs r0, #0x29
	bl m4aSongNumStart
	ldr r0, _080130C4 @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	bne _0801307C
	b _080135C2
_0801307C:
	ldr r0, _080130C8 @ =gUnk_03002920
	mov r3, sl
	mov r4, sb
	subs r2, r3, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r0, [r2, #0xe]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0xe]
	ldr r4, _080130CC @ =gUnk_03005288
	ldrb r1, [r4]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #2
	ldrb r3, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldr r3, _080130D0 @ =gUnk_03004680
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #6]
	strh r1, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	strh r2, [r0, #4]
	strh r2, [r0, #2]
	b _080135C2
	.align 2, 0
_080130C4: .4byte gUnk_03004C20
_080130C8: .4byte gUnk_03002920
_080130CC: .4byte gUnk_03005288
_080130D0: .4byte gUnk_03004680
_080130D4:
	movs r1, #0
	strb r1, [r2, #0x10]
	movs r0, #0x1c
	strb r0, [r2, #0xf]
	strb r1, [r2, #8]
	b _08013154
_080130E0:
	mov r5, sl
	mov r7, sb
	subs r0, r5, r7
	lsls r0, r0, #2
	ldr r1, _08013178 @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r0, [r4, #0xf]
	subs r0, #0xe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080130FA
	b _080135B2
_080130FA:
	ldr r0, _0801317C @ =gUnk_03005400
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	bne _08013104
	b _080135B2
_08013104:
	ldrh r1, [r6, #0x1e]
	ldrh r2, [r4]
	adds r0, r2, #0
	adds r0, #0xe
	cmp r1, r0
	blt _08013112
	b _080135B2
_08013112:
	ldrh r1, [r6, #0x20]
	subs r0, #0x1c
	cmp r1, r0
	bgt _0801311C
	b _080135B2
_0801311C:
	ldr r0, _08013178 @ =gUnk_03002920
	adds r0, #0xfe
	ldrh r3, [r0]
	adds r1, r3, #0
	subs r1, #0x10
	ldrh r2, [r4, #2]
	adds r0, r2, #2
	cmp r1, r0
	blt _08013130
	b _080135B2
_08013130:
	subs r0, #0x20
	cmp r3, r0
	bgt _08013138
	b _080135B2
_08013138:
	movs r7, #1
	ldr r1, _08013178 @ =gUnk_03002920
_0801313C:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrb r0, [r2, #8]
	cmp r0, sb
	beq _080130D4
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #7
	bls _0801313C
_08013154:
	movs r1, #0
	ldr r4, _08013178 @ =gUnk_03002920
_08013158:
	adds r2, r1, #0
	adds r2, #0x13
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r3, r0, r4
	ldrb r0, [r3, #0xf]
	cmp r0, #0x1c
	bne _0801316C
	b _08012B4C
_0801316C:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bls _08013158
	b _080135B2
	.align 2, 0
_08013178: .4byte gUnk_03002920
_0801317C: .4byte gUnk_03005400
_08013180:
	movs r1, #0
	strb r1, [r2, #0x10]
	movs r0, #0x1c
	strb r0, [r2, #0xf]
	strb r1, [r2, #8]
	b _080131FA
_0801318C:
	mov r2, sl
	mov r3, sb
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _080132DC @ =gUnk_03002920
	adds r3, r0, r4
	ldrb r0, [r3, #8]
	cmp r0, #0
	bne _080131A0
	b _080135B2
_080131A0:
	ldrb r0, [r3, #0xf]
	cmp r0, #0
	beq _080131AC
	cmp r0, #0x11
	beq _080131AC
	b _080135B2
_080131AC:
	ldrh r1, [r6, #0x1e]
	ldrh r2, [r3]
	adds r0, r2, #4
	cmp r1, r0
	blt _080131B8
	b _080135B2
_080131B8:
	ldrh r1, [r6, #0x20]
	subs r0, r2, #4
	cmp r1, r0
	bgt _080131C2
	b _080135B2
_080131C2:
	ldr r0, _080132DC @ =gUnk_03002920
	adds r0, #0xfe
	ldrh r2, [r0]
	adds r0, r2, #0
	subs r0, #0x10
	ldrh r1, [r3, #2]
	cmp r0, r1
	blt _080131D4
	b _080135B2
_080131D4:
	adds r0, r1, #0
	subs r0, #0x14
	cmp r2, r0
	bgt _080131DE
	b _080135B2
_080131DE:
	movs r7, #1
	ldr r1, _080132DC @ =gUnk_03002920
_080131E2:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrb r0, [r2, #8]
	cmp r0, sb
	beq _08013180
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #7
	bls _080131E2
_080131FA:
	movs r7, #0
	ldr r1, _080132DC @ =gUnk_03002920
	mov r5, sl
	mov r2, sb
	subs r0, r5, r2
	lsls r0, r0, #2
	mov sl, r0
_08013208:
	adds r2, r7, #0
	adds r2, #0x14
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrb r0, [r5, #0xf]
	cmp r0, #0x1c
	beq _0801321C
	b _08013384
_0801321C:
	ldr r4, _080132DC @ =gUnk_03002920
	add r4, sl
	ldrh r0, [r4]
	movs r6, #0
	strh r0, [r5]
	ldrh r0, [r4, #2]
	strh r0, [r5, #2]
	movs r0, #0x13
	strb r0, [r5, #0xf]
	strb r6, [r5, #8]
	ldr r0, _080132E0 @ =gUnk_03005220
	adds r1, r0, #0
	adds r1, #0x42
	strb r2, [r1]
	adds r3, r0, #0
	adds r3, #0x43
	movs r1, #1
	mov r8, r1
	movs r1, #1
	strb r1, [r3]
	adds r0, #0x33
	strb r1, [r0]
	adds r0, r2, #0
	movs r1, #2
	bl sub_08025B78
	movs r0, #0x29
	bl m4aSongNumStart
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08013304
	ldrb r0, [r4, #0xc]
	movs r2, #4
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	mov r3, r8
	orrs r0, r3
	strb r0, [r4, #0xc]
	ldr r4, _080132E4 @ =gUnk_03005400
	strb r6, [r4, #0x16]
	ldr r1, _080132E8 @ =0x080D8E10
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #9]
	ldr r3, _080132EC @ =0x040000D4
	ldr r1, _080132F0 @ =0x0818B7DC
	ldrb r0, [r5, #9]
	adds r0, #3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r2, _080132F4 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r5, _080132F8 @ =gUnk_0818B8E0
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r1, [r0, #4]
	lsls r0, r7, #3
	adds r0, r0, r1
	adds r0, #0x40
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r6, _080132FC @ =0x05000200
	adds r0, r0, r6
	str r0, [r3, #4]
	ldr r0, _08013300 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080132CA
_080132C2:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080132C2
_080132CA:
	ldr r7, _080132E4 @ =gUnk_03005400
	ldrb r0, [r7, #0x14]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strb r0, [r7, #0x14]
	b _0801335A
	.align 2, 0
_080132DC: .4byte gUnk_03002920
_080132E0: .4byte gUnk_03005220
_080132E4: .4byte gUnk_03005400
_080132E8: .4byte 0x080D8E10
_080132EC: .4byte 0x040000D4
_080132F0: .4byte 0x0818B7DC
_080132F4: .4byte gUnk_03004C20
_080132F8: .4byte gUnk_0818B8E0
_080132FC: .4byte 0x05000200
_08013300: .4byte 0x80000010
_08013304:
	ldr r1, _08013364 @ =gUnk_03002920+0x271
	ldrb r0, [r1]
	strb r0, [r5, #9]
	ldr r3, _08013368 @ =0x040000D4
	ldr r1, _0801336C @ =0x0818B7DC
	ldrb r0, [r5, #9]
	adds r0, #3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r2, _08013370 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r2, _08013374 @ =gUnk_0818B8E0
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r0, #4]
	lsls r0, r7, #3
	adds r0, r0, r1
	adds r0, #0x40
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r4, _08013378 @ =0x05000200
	adds r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _0801337C @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0801335A
_08013352:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08013352
_0801335A:
	ldr r1, _08013380 @ =gUnk_03002920
	add r1, sl
	movs r0, #0x1a
	strb r0, [r1, #0xf]
	b _080135C2
	.align 2, 0
_08013364: .4byte gUnk_03002920+0x271
_08013368: .4byte 0x040000D4
_0801336C: .4byte 0x0818B7DC
_08013370: .4byte gUnk_03004C20
_08013374: .4byte gUnk_0818B8E0
_08013378: .4byte 0x05000200
_0801337C: .4byte 0x80000010
_08013380: .4byte gUnk_03002920
_08013384:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bhi _08013390
	b _08013208
_08013390:
	b _080135B2
_08013392:
	ldrh r0, [r6, #0x1e]
	mov r5, sl
	mov r7, sb
	subs r1, r5, r7
	lsls r1, r1, #2
	ldr r3, _08013424 @ =gUnk_03002920
	adds r2, r1, r3
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #0x10
	cmp r0, r1
	blt _080133AC
	b _080135B2
_080133AC:
	ldrh r1, [r6, #0x20]
	adds r0, r3, #0
	subs r0, #0x10
	cmp r1, r0
	bgt _080133B8
	b _080135B2
_080133B8:
	ldr r0, _08013424 @ =gUnk_03002920
	adds r0, #0xfe
	ldrh r3, [r0]
	adds r0, r3, #0
	subs r0, #0x10
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _080133CA
	b _080135B2
_080133CA:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r3, r0
	bgt _080133D4
	b _080135B2
_080133D4:
	movs r0, #0
	movs r1, #0xe
	bl sub_08025B78
	mov r0, sb
	movs r1, #1
	bl sub_08025B78
	adds r0, r6, #0
	adds r0, #0x34
	movs r1, #0
	movs r5, #1
	strb r5, [r0]
	adds r0, #8
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #0xe
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #9
	strb r7, [r0]
	subs r0, #0xc
	strb r5, [r0]
	adds r4, r6, #0
	adds r4, #0x3d
	ldrb r0, [r4]
	cmp r0, #2
	bne _0801341A
	movs r0, #0x8e
	bl m4aSongNumStart
_0801341A:
	strb r5, [r4]
	movs r0, #0x2c
	bl m4aSongNumStart
	b _080135C2
	.align 2, 0
_08013424: .4byte gUnk_03002920
_08013428:
	mov r4, sl
	mov r5, sb
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r7, _08013440 @ =gUnk_03002920
	adds r0, r0, r7
	ldrb r0, [r0, #0xc]
	lsrs r0, r0, #4
	cmp r0, #1
	bne _0801343E
	b _080135B2
_0801343E:
	b _0801345A
	.align 2, 0
_08013440: .4byte gUnk_03002920
_08013444:
	mov r0, sb
	adds r0, #1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080134B4 @ =gUnk_03002920
	adds r1, r1, r0
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _0801345A
	b _080135B2
_0801345A:
	adds r4, r6, #0
	adds r4, #0x33
	ldrb r0, [r4]
	cmp r0, #0x14
	bls _08013466
	b _080135B2
_08013466:
	ldrh r0, [r6, #0x1e]
	mov r2, sl
	mov r3, sb
	subs r1, r2, r3
	lsls r1, r1, #2
	ldr r5, _080134B4 @ =gUnk_03002920
	adds r2, r1, r5
	ldrh r3, [r2]
	adds r1, r3, #2
	cmp r0, r1
	blt _0801347E
	b _080135B2
_0801347E:
	ldrh r1, [r6, #0x20]
	subs r0, r3, #2
	cmp r1, r0
	bgt _08013488
	b _080135B2
_08013488:
	adds r0, r5, #0
	adds r0, #0xfe
	ldrh r3, [r0]
	adds r0, r3, #0
	subs r0, #0x10
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0801349A
	b _080135B2
_0801349A:
	adds r0, r1, #0
	subs r0, #0x10
	cmp r3, r0
	bgt _080134A4
	b _080135B2
_080134A4:
	movs r0, #1
	strb r0, [r4]
	mov r6, sb
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801EAA4
	b _080135C2
	.align 2, 0
_080134B4: .4byte gUnk_03002920
_080134B8:
	adds r4, r6, #0
	adds r4, #0x33
	ldrb r0, [r4]
	cmp r0, #0x14
	bhi _080135B2
	ldrh r0, [r6, #0x1e]
	mov r7, sl
	mov r2, sb
	subs r1, r7, r2
	lsls r1, r1, #2
	ldr r3, _08013510 @ =gUnk_03002920
	adds r2, r1, r3
	ldrh r3, [r2]
	adds r1, r3, #4
	cmp r0, r1
	bge _080135B2
	ldrh r1, [r6, #0x20]
	subs r0, r3, #4
	cmp r1, r0
	ble _080135B2
	ldr r0, _08013510 @ =gUnk_03002920
	adds r0, #0xfe
	ldrh r3, [r0]
	adds r1, r3, #0
	subs r1, #0x10
	ldrh r2, [r2, #2]
	adds r0, r2, #0
	subs r0, #0xc
	cmp r1, r0
	bge _080135B2
	subs r0, #8
	cmp r3, r0
	ble _080135B2
	movs r0, #1
	strb r0, [r4]
	mov r4, sb
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801EF5C
	movs r0, #0x5e
	bl m4aSongNumStart
	b _080135C2
	.align 2, 0
_08013510: .4byte gUnk_03002920
_08013514:
	ldrh r0, [r6, #0x1e]
	mov r5, sl
	mov r7, sb
	subs r1, r5, r7
	lsls r1, r1, #2
	ldr r3, _0801355C @ =gUnk_03002920
	adds r2, r1, r3
	ldrh r3, [r2]
	adds r1, r3, #0
	adds r1, #8
	cmp r0, r1
	bge _080135B2
	ldrh r1, [r6, #0x20]
	adds r0, r3, #0
	subs r0, #8
	cmp r1, r0
	ble _080135B2
	ldr r0, _0801355C @ =gUnk_03002920
	adds r0, #0xfe
	ldrh r3, [r0]
	adds r0, r3, #0
	subs r0, #0x10
	ldrh r1, [r2, #2]
	cmp r0, r1
	bge _080135B2
	adds r0, r1, #0
	subs r0, #0x20
	cmp r3, r0
	ble _080135B2
	adds r1, r6, #0
	adds r1, #0x33
	movs r0, #1
	strb r0, [r1]
	movs r4, #1
	str r4, [sp, #0x20]
	b _080135C2
	.align 2, 0
_0801355C: .4byte gUnk_03002920
_08013560:
	mov r5, sl
	mov r7, sb
	subs r0, r5, r7
	lsls r0, r0, #2
	ldr r1, _08013644 @ =gUnk_03002920
	adds r2, r0, r1
	ldrb r4, [r2, #0xc]
	lsls r0, r4, #0x1c
	lsrs r0, r0, #0x1e
	movs r7, #0
	cmp r0, #1
	bne _0801357A
	movs r7, #8
_0801357A:
	ldrh r1, [r6, #0x1e]
	ldrh r3, [r2]
	adds r0, r3, r7
	cmp r1, r0
	bge _080135B2
	ldrh r1, [r6, #0x20]
	adds r0, r7, #0
	subs r0, #8
	adds r0, r3, r0
	cmp r1, r0
	ble _080135B2
	ldr r0, _08013644 @ =gUnk_03002920
	adds r0, #0xfe
	ldrh r3, [r0]
	adds r0, r3, #0
	subs r0, #0x10
	ldrh r1, [r2, #2]
	cmp r0, r1
	bge _080135B2
	adds r0, r1, #0
	subs r0, #0x20
	cmp r3, r0
	ble _080135B2
	lsrs r0, r4, #4
	cmp r0, #0
	bne _080135B2
	bl _08012BA0
_080135B2:
	movs r2, #1
	add sb, r2
	mov r3, r8
	ldr r0, [r3]
	cmp sb, r0
	bhi _080135C2
	bl _08012BDC
_080135C2:
	ldr r1, _08013648 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _080135D4
	ldr r4, [sp, #0x20]
	cmp r4, #1
	bne _080135EE
_080135D4:
	adds r1, #0x3d
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08013644 @ =gUnk_03002920
	adds r0, r1, #0
	adds r0, #0xfc
	ldrh r0, [r0]
	adds r1, #0xfe
	ldrh r1, [r1]
	movs r2, #0
	movs r3, #0
	bl sub_0801E664
_080135EE:
	ldr r2, _08013648 @ =gUnk_03005220
	adds r1, r2, #0
	adds r1, #0x33
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r6, r2, #0
	cmp r1, #0
	bne _0801368C
	ldr r2, _08013644 @ =gUnk_03002920
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r2, r5
	strb r1, [r0]
	movs r7, #0x94
	lsls r7, r7, #1
	adds r0, r2, r7
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801368C
	ldr r0, [sp, #0x38]
	cmp r0, #1
	bne _0801368C
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013656
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801364C
	movs r0, #0
	movs r1, #2
	bl sub_08025B78
	b _0801368C
	.align 2, 0
_08013644: .4byte gUnk_03002920
_08013648: .4byte gUnk_03005220
_0801364C:
	movs r0, #0
	movs r1, #0x18
	bl sub_08025B78
	b _0801368C
_08013656:
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0801368C
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013674
	movs r0, #0
	movs r1, #0
	bl sub_08025B78
	b _0801368C
_08013674:
	movs r0, #0
	movs r1, #0x16
	bl sub_08025B78
	b _0801368C
_0801367E:
	subs r0, r1, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0801368C
	strb r0, [r3]
_0801368C:
	ldr r0, _08013724 @ =gUnk_03004C20
	ldrb r1, [r0, #0xa]
	cmp r1, #0
	bne _080136BC
	ldr r1, _08013728 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r0, #1
	beq _080136A4
	b _080138E8
_080136A4:
	ldr r0, _0801372C @ =gUnk_030034E4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080136AE
	b _080138E8
_080136AE:
	ldr r0, _08013730 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080136BC
	b _080138E8
_080136BC:
	ldr r2, _08013734 @ =gUnk_03004790
	ldr r3, _08013738 @ =gUnk_03002920
	ldrh r0, [r3]
	lsrs r7, r0, #3
	ldrh r6, [r3, #2]
	subs r1, r6, #4
	asrs r1, r1, #3
	ldr r0, _0801373C @ =gUnk_03003430
	adds r0, #0x48
	ldrh r4, [r0]
	muls r1, r4, r1
	ldr r5, [r2, #0x14]
	adds r1, r7, r1
	adds r1, r5, r1
	ldr r0, _08013740 @ =gUnk_03004654
	ldr r2, [r0]
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080137C2
	ldr r0, _08013744 @ =gUnk_03003410
	ldrb r1, [r0, #0xb]
	adds r7, r0, #0
	cmp r1, #0
	beq _080136F2
	bl _08014164
_080136F2:
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r3, r2
	strb r1, [r0]
	movs r4, #0x94
	lsls r4, r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	ldr r0, _08013728 @ =gUnk_03005220
	adds r0, #0x33
	strb r1, [r0]
	ldr r5, _08013724 @ =gUnk_03004C20
	ldrb r4, [r5, #0xb]
	cmp r4, #1
	bne _08013750
	ldr r1, _08013748 @ =gUnk_03005418
	ldr r0, _0801374C @ =0x08055614
	str r0, [r1]
	movs r0, #0
	movs r1, #0xf
	bl sub_08025B78
	strb r4, [r7, #0xb]
	bl _08014164
	.align 2, 0
_08013724: .4byte gUnk_03004C20
_08013728: .4byte gUnk_03005220
_0801372C: .4byte gUnk_030034E4
_08013730: .4byte gNewKeys
_08013734: .4byte gUnk_03004790
_08013738: .4byte gUnk_03002920
_0801373C: .4byte gUnk_03003430
_08013740: .4byte gUnk_03004654
_08013744: .4byte gUnk_03003410
_08013748: .4byte gUnk_03005418
_0801374C: .4byte 0x08055614
_08013750:
	movs r3, #0
	ldr r1, _08013774 @ =gUnk_03003510
	adds r4, r1, #0
	adds r4, #0x78
	ldrb r0, [r4]
	adds r0, #1
	mov r8, r1
	cmp r3, r0
	bhs _08013794
	mov r6, r8
	mov r2, r8
	subs r2, #4
	ldr r5, _08013778 @ =sub_080264A4
	adds r1, r4, #0
_0801376C:
	cmp r3, #4
	bne _0801377C
	str r5, [r6, #0x38]
	b _08013788
	.align 2, 0
_08013774: .4byte gUnk_03003510
_08013778: .4byte sub_080264A4
_0801377C:
	cmp r3, #4
	bls _08013784
	ldr r0, [r2]
	b _08013786
_08013784:
	ldr r0, [r2, #4]
_08013786:
	str r0, [r2, #0x2c]
_08013788:
	adds r2, #4
	adds r3, #1
	ldrb r0, [r1]
	adds r0, #1
	cmp r3, r0
	blo _0801376C
_08013794:
	cmp r3, #3
	bls _080137B2
	mov r1, r8
	adds r1, #0x78
	ldrb r0, [r1]
	adds r0, #1
	mov r3, r8
	adds r3, #0x79
	movs r2, #0
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	add r0, r8
	str r2, [r0]
_080137B2:
	movs r0, #2
	strb r0, [r7, #0xb]
	movs r0, #0
	movs r1, #0x25
	bl sub_08025B78
	bl _08014164
_080137C2:
	adds r0, r6, #0
	subs r0, #0x10
	asrs r0, r0, #3
	muls r0, r4, r0
	adds r0, r7, r0
	adds r0, r5, r0
	ldrb r0, [r0]
	str r0, [sp, #0x20]
	ldrb r0, [r2, #0x15]
	ldr r6, _080138AC @ =gUnk_03005220
	ldr r7, [sp, #0x20]
	cmp r0, r7
	bls _080137DE
	b _080138E8
_080137DE:
	adds r0, #3
	cmp r0, r7
	bge _080137E6
	b _080138E8
_080137E6:
	movs r2, #0
	ldr r0, _080138B0 @ =sub_0800BFF4
	mov sl, r0
	ldr r7, _080138B4 @ =0x030051F0
	ldr r1, _080138B8 @ =0x03004D90
	mov r8, r1
	ldr r3, _080138BC @ =sub_08047B1C
	mov sb, r3
	ldr r1, _080138C0 @ =gUnk_03003510
_080137F8:
	ldr r0, [r1]
	str r0, [r1, #0x50]
	adds r1, #4
	adds r2, #1
	cmp r2, #9
	bls _080137F8
	ldr r1, _080138C0 @ =gUnk_03003510
	adds r4, r1, #0
	adds r4, #0x78
	ldrb r0, [r4]
	adds r2, r1, #0
	adds r2, #0x7a
	movs r5, #0
	mov ip, r5
	strb r0, [r2]
	ldr r3, _080138C4 @ =gUnk_03005498
	ldrb r0, [r3]
	strb r0, [r7, #0xe]
	ldr r0, _080138C8 @ =0x04000050
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r7, #4]
	ldr r0, _080138CC @ =0x04000008
	ldrh r0, [r0]
	strh r0, [r7, #6]
	ldr r0, _080138D0 @ =0x0400000A
	ldrh r0, [r0]
	strh r0, [r7, #8]
	ldr r0, _080138D4 @ =0x0400000C
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r0, _080138D8 @ =0x0400000E
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldr r5, _080138DC @ =gUnk_03004C20
	ldr r0, [r5]
	str r0, [r7]
	movs r0, #1
	mov r7, r8
	strb r0, [r7, #8]
	strb r2, [r7, #9]
	strb r2, [r3]
	mov r2, sb
	str r2, [r1, #0x28]
	mov r3, sl
	str r3, [r1, #0x2c]
	str r0, [r1, #0x30]
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	mov r4, ip
	str r4, [r0]
	adds r1, #0x79
	movs r0, #3
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013884
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0x78
	bhi _08013884
	movs r0, #0
	movs r1, #0x23
	bl sub_08025B78
_08013884:
	ldr r3, _080138E0 @ =0x04000052
	ldr r2, _080138C4 @ =gUnk_03005498
	ldrb r1, [r2]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _080138E4 @ =0x04000054
	ldrb r0, [r2]
	strh r0, [r1]
	ldr r3, _080138C0 @ =gUnk_03003510
	adds r1, r3, #0
	adds r1, #0x78
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	str r2, [r3]
	bl _08014164
	.align 2, 0
_080138AC: .4byte gUnk_03005220
_080138B0: .4byte sub_0800BFF4
_080138B4: .4byte 0x030051F0
_080138B8: .4byte 0x03004D90
_080138BC: .4byte sub_08047B1C
_080138C0: .4byte gUnk_03003510
_080138C4: .4byte gUnk_03005498
_080138C8: .4byte 0x04000050
_080138CC: .4byte 0x04000008
_080138D0: .4byte 0x0400000A
_080138D4: .4byte 0x0400000C
_080138D8: .4byte 0x0400000E
_080138DC: .4byte gUnk_03004C20
_080138E0: .4byte 0x04000052
_080138E4: .4byte 0x04000054
_080138E8:
	ldr r0, _08013958 @ =gUnk_03000830
	ldrb r3, [r0]
	cmp r3, #0xc
	bne _080138F2
	b _08013AFA
_080138F2:
	adds r0, r6, #0
	adds r0, #0x34
	adds r1, r6, #0
	adds r1, #0x35
	ldrb r0, [r0]
	ldrb r1, [r1]
	orrs r0, r1
	adds r1, r6, #0
	adds r1, #0x38
	ldrb r1, [r1]
	orrs r0, r1
	adds r1, r6, #0
	adds r1, #0x39
	ldrb r1, [r1]
	orrs r0, r1
	cmp r0, #0
	beq _08013916
	b _08013AFA
_08013916:
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #1
	bne _08013966
	cmp r3, #4
	beq _08013966
	cmp r3, #0x1a
	beq _08013966
	cmp r3, #8
	beq _08013966
	cmp r3, #0xb
	beq _08013966
	cmp r3, #9
	beq _08013966
	cmp r3, #0xa
	beq _08013966
	cmp r3, #3
	bne _0801393E
	b _08013AFA
_0801393E:
	cmp r3, #0x19
	bne _08013944
	b _08013AFA
_08013944:
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801395C
	movs r0, #0
	movs r1, #4
	bl sub_08025B78
	b _08013AFA
	.align 2, 0
_08013958: .4byte gUnk_03000830
_0801395C:
	movs r0, #0
	movs r1, #0x1a
	bl sub_08025B78
	b _08013AFA
_08013966:
	ldr r0, _080139A8 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080139B8
	ldr r5, _080139AC @ =gUnk_03000830
	ldrb r0, [r5]
	cmp r0, #0
	beq _08013982
	cmp r0, #0x16
	beq _08013982
	cmp r0, #0x1b
	bls _080139EA
_08013982:
	ldr r0, _080139B0 @ =gUnk_03004C20
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	beq _08013998
	ldr r6, _080139AC @ =gUnk_03000830
	ldrb r0, [r6]
	cmp r0, #0x1e
	beq _08013998
	cmp r0, #0x21
	beq _08013998
	b _08013AFA
_08013998:
	ldr r0, _080139B4 @ =gUnk_03005220
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _080139A4
	b _08013AC2
_080139A4:
	b _08013AD4
	.align 2, 0
_080139A8: .4byte gHeldKeys
_080139AC: .4byte gUnk_03000830
_080139B0: .4byte gUnk_03004C20
_080139B4: .4byte gUnk_03005220
_080139B8:
	ldr r7, _080139D8 @ =gUnk_03000830
	ldrb r0, [r7]
	cmp r0, #1
	beq _080139C4
	cmp r0, #0x17
	bne _080139EA
_080139C4:
	ldr r0, _080139DC @ =gUnk_03005220
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _080139E0
	movs r0, #0
	movs r1, #0
	bl sub_08025B78
	b _08013AFA
	.align 2, 0
_080139D8: .4byte gUnk_03000830
_080139DC: .4byte gUnk_03005220
_080139E0:
	movs r0, #0
	movs r1, #0x16
	bl sub_08025B78
	b _08013AFA
_080139EA:
	adds r0, r6, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #1
	beq _080139F6
	b _08013AFA
_080139F6:
	ldr r1, _08013A28 @ =gUnk_03000830
	ldrb r0, [r1]
	cmp r0, #4
	beq _08013A0A
	cmp r0, #0x1a
	beq _08013A0A
	cmp r0, #7
	beq _08013A0A
	cmp r0, #0xa
	bne _08013AFA
_08013A0A:
	ldr r0, _08013A2C @ =gUnk_03005220
	adds r1, r0, #0
	adds r1, #0x5c
	ldrb r0, [r1]
	cmp r0, #0
	bne _08013A3C
	ldr r0, _08013A30 @ =gUnk_03004C20
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08013A34
	movs r0, #0x2e
	bl m4aSongNumStart
	b _08013A98
	.align 2, 0
_08013A28: .4byte gUnk_03000830
_08013A2C: .4byte gUnk_03005220
_08013A30: .4byte gUnk_03004C20
_08013A34:
	movs r0, #0xa0
	bl m4aSongNumStart
	b _08013A98
_08013A3C:
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08013A84 @ =gUnk_03004C20
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _08013A98
	ldr r3, _08013A88 @ =gUnk_03004790
	ldr r0, _08013A8C @ =gUnk_03002920
	ldrh r2, [r0]
	lsrs r2, r2, #3
	ldrh r1, [r0, #2]
	subs r1, #4
	asrs r1, r1, #3
	ldr r0, _08013A90 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r1, r0, r1
	ldr r0, [r3, #0x14]
	adds r2, r2, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	str r0, [sp, #0x20]
	ldr r0, _08013A94 @ =gUnk_03004654
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	ldr r2, [sp, #0x20]
	cmp r0, r2
	bhi _08013A98
	ldrb r1, [r1, #0x14]
	cmp r2, r1
	bhi _08013A98
	movs r0, #0
	movs r1, #0x22
	bl sub_08025B78
	b _08013AFA
	.align 2, 0
_08013A84: .4byte gUnk_03004C20
_08013A88: .4byte gUnk_03004790
_08013A8C: .4byte gUnk_03002920
_08013A90: .4byte gUnk_03003430
_08013A94: .4byte gUnk_03004654
_08013A98:
	ldr r2, _08013ACC @ =gUnk_03005220
	adds r0, r2, #0
	adds r0, #0x48
	adds r3, r2, #0
	adds r3, #0x4a
	ldrb r1, [r0]
	ldrb r0, [r3]
	orrs r0, r1
	cmp r0, #0
	bne _08013AFA
	ldr r0, _08013AD0 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08013ADE
	adds r0, r2, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013AD4
_08013AC2:
	movs r0, #0
	movs r1, #1
	bl sub_08025B78
	b _08013AFA
	.align 2, 0
_08013ACC: .4byte gUnk_03005220
_08013AD0: .4byte gHeldKeys
_08013AD4:
	movs r0, #0
	movs r1, #0x17
	bl sub_08025B78
	b _08013AFA
_08013ADE:
	adds r0, r2, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013AF2
	movs r0, #0
	movs r1, #5
	bl sub_08025B78
	b _08013AFA
_08013AF2:
	movs r0, #0
	movs r1, #0x1b
	bl sub_08025B78
_08013AFA:
	ldr r2, _08013B50 @ =gUnk_03004C20
	ldrb r0, [r2, #0xb]
	cmp r0, #1
	beq _08013B04
	b _08013D08
_08013B04:
	ldr r1, _08013B54 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r4, [r0]
	cmp r4, #1
	bne _08013B64
	ldr r0, _08013B58 @ =gUnk_03003410
	ldrb r0, [r0, #0xb]
	cmp r0, #1
	bhi _08013B64
	adds r0, r1, #0
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013B64
	ldr r3, _08013B5C @ =gUnk_03002920
	ldrh r0, [r3]
	subs r0, #0x1c
	movs r5, #0xb6
	lsls r5, r5, #1
	adds r1, r3, r5
	movs r2, #0
	strh r0, [r1]
	ldrh r0, [r3, #2]
	adds r0, #2
	movs r6, #0xb7
	lsls r6, r6, #1
	adds r1, r3, r6
	strh r0, [r1]
	ldr r7, _08013B60 @ =0x0000017B
	adds r0, r3, r7
	strb r2, [r0]
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r0, r3, r1
	strb r4, [r0]
	b _08013B78
	.align 2, 0
_08013B50: .4byte gUnk_03004C20
_08013B54: .4byte gUnk_03005220
_08013B58: .4byte gUnk_03003410
_08013B5C: .4byte gUnk_03002920
_08013B60: .4byte 0x0000017B
_08013B64:
	ldr r2, _08013BD8 @ =gUnk_03002920
	ldr r4, _08013BDC @ =0x0000017B
	adds r3, r2, r4
	movs r0, #0
	movs r1, #0x1c
	strb r1, [r3]
	movs r5, #0xbe
	lsls r5, r5, #1
	adds r1, r2, r5
	strb r0, [r1]
_08013B78:
	ldr r2, _08013BE0 @ =gUnk_03005220
	adds r0, r2, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #1
	beq _08013B86
	b _08013CA2
_08013B86:
	ldr r0, _08013BE4 @ =gUnk_03000830
	ldrb r1, [r0]
	cmp r1, #8
	bne _08013B90
	b _08013CA2
_08013B90:
	cmp r1, #0xc
	bne _08013B96
	b _08013CA2
_08013B96:
	cmp r1, #5
	bne _08013B9C
	b _08013CA2
_08013B9C:
	cmp r1, #0x1b
	bne _08013BA2
	b _08013CA2
_08013BA2:
	cmp r1, #0x13
	bne _08013BA8
	b _08013CA2
_08013BA8:
	cmp r1, #0xf
	beq _08013CA2
	adds r0, r2, #0
	adds r0, #0x2f
	ldrb r2, [r0]
	adds r0, r2, #0
	adds r0, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bhi _08013C10
	ldr r0, _08013BE8 @ =gHeldKeys
	ldrh r2, [r0]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08013BEC
	cmp r1, #0x1c
	beq _08013CA2
	movs r0, #0
	movs r1, #0x1c
	bl sub_08025B78
	b _08013CA2
	.align 2, 0
_08013BD8: .4byte gUnk_03002920
_08013BDC: .4byte 0x0000017B
_08013BE0: .4byte gUnk_03005220
_08013BE4: .4byte gUnk_03000830
_08013BE8: .4byte gHeldKeys
_08013BEC:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08013C02
	cmp r1, #0x1d
	beq _08013CA2
	movs r0, #0
	movs r1, #0x1d
	bl sub_08025B78
	b _08013CA2
_08013C02:
	cmp r1, #0
	beq _08013CA2
	movs r0, #0
	movs r1, #0
	bl sub_08025B78
	b _08013CA2
_08013C10:
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x13
	bgt _08013C5C
	ldr r0, _08013C34 @ =gHeldKeys
	ldrh r2, [r0]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08013C38
	cmp r1, #0x1f
	beq _08013CA2
	movs r0, #0
	movs r1, #0x1f
	bl sub_08025B78
	b _08013CA2
	.align 2, 0
_08013C34: .4byte gHeldKeys
_08013C38:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08013C4E
	cmp r1, #0x20
	beq _08013CA2
	movs r0, #0
	movs r1, #0x20
	bl sub_08025B78
	b _08013CA2
_08013C4E:
	cmp r1, #0x1e
	beq _08013CA2
	movs r0, #0
	movs r1, #0x1e
	bl sub_08025B78
	b _08013CA2
_08013C5C:
	cmp r0, #0x14
	ble _08013CA2
	ldr r0, _08013C7C @ =gHeldKeys
	ldrh r2, [r0]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08013C80
	cmp r1, #0x22
	beq _08013CA2
	movs r0, #0
	movs r1, #0x22
	bl sub_08025B78
	b _08013CA2
	.align 2, 0
_08013C7C: .4byte gHeldKeys
_08013C80:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08013C96
	cmp r1, #0x23
	beq _08013CA2
	movs r0, #0
	movs r1, #0x23
	bl sub_08025B78
	b _08013CA2
_08013C96:
	cmp r1, #0x21
	beq _08013CA2
	movs r0, #0
	movs r1, #0x21
	bl sub_08025B78
_08013CA2:
	ldr r1, _08013CEC @ =gUnk_03004C20
	ldrb r0, [r1, #0xd]
	cmp r0, #5
	beq _08013CAC
	b _08013E7C
_08013CAC:
	ldr r4, [r1, #4]
	movs r1, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08013CBA
	b _08013E7C
_08013CBA:
	ldr r2, _08013CF0 @ =0x040000D4
	lsrs r0, r4, #2
	ands r0, r1
	lsls r0, r0, #5
	ldr r1, _08013CF4 @ =0x080D8AF0
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _08013CF8 @ =0x050000E0
	str r0, [r2, #4]
	ldr r3, _08013CFC @ =0x80000010
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	lsrs r0, r4, #4
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	ldr r1, _08013D00 @ =0x080D8A70
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _08013D04 @ =0x05000080
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	b _08013E7C
	.align 2, 0
_08013CEC: .4byte gUnk_03004C20
_08013CF0: .4byte 0x040000D4
_08013CF4: .4byte 0x080D8AF0
_08013CF8: .4byte 0x050000E0
_08013CFC: .4byte 0x80000010
_08013D00: .4byte 0x080D8A70
_08013D04: .4byte 0x05000080
_08013D08:
	ldr r3, _08013D5C @ =gUnk_03005220
	adds r0, r3, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #1
	beq _08013D16
	b _08013E7C
_08013D16:
	ldr r0, _08013D60 @ =gHeldKeys
	ldrh r0, [r0]
	cmp r0, #0
	bne _08013DD4
	ldr r0, _08013D64 @ =gUnk_03000830
	ldrb r1, [r0]
	cmp r1, #0
	beq _08013D34
	cmp r1, #0x21
	bls _08013DA0
	adds r0, r3, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013DA0
_08013D34:
	ldrh r0, [r3, #0x1c]
	adds r0, #1
	strh r0, [r3, #0x1c]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x13
	cmp r0, r1
	bne _08013DEA
	ldrb r0, [r2, #0xc]
	cmp r0, #8
	beq _08013DEA
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0x20
	cmp r0, #0x3f
	bhi _08013D68
	movs r4, #0x1c
	b _08013D76
	.align 2, 0
_08013D5C: .4byte gUnk_03005220
_08013D60: .4byte gHeldKeys
_08013D64: .4byte gUnk_03000830
_08013D68:
	cmp r0, #0x7f
	bhi _08013D70
	movs r4, #0x1e
	b _08013D76
_08013D70:
	cmp r0, #0xea
	bhi _08013D76
	movs r4, #0x1f
_08013D76:
	ldr r0, _08013D9C @ =gUnk_03005220
	adds r0, #0x5e
	ldrb r0, [r0]
	cmp r4, r0
	bne _08013D88
	adds r4, #1
	cmp r4, #0x21
	bne _08013D88
	movs r4, #0x1c
_08013D88:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl sub_08025B78
	ldr r0, _08013D9C @ =gUnk_03005220
	adds r0, #0x5e
	strb r4, [r0]
	b _08013DEA
	.align 2, 0
_08013D9C: .4byte gUnk_03005220
_08013DA0:
	ldr r6, _08013DCC @ =gUnk_03000830
	ldrb r0, [r6]
	cmp r0, #0x21
	bne _08013DEA
	ldrb r0, [r6, #1]
	cmp r0, #0x30
	bne _08013DEA
	ldrb r1, [r6, #2]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	ldrb r1, [r6, #2]
	strb r0, [r6, #2]
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _08013DEA
	movs r0, #0x8c
	bl m4aSongNumStart
	ldr r0, _08013DD0 @ =0x03005200
	strb r4, [r0]
	b _08013DEA
	.align 2, 0
_08013DCC: .4byte gUnk_03000830
_08013DD0: .4byte 0x03005200
_08013DD4:
	movs r0, #0
	strh r0, [r3, #0x1c]
	ldr r4, _08013E24 @ =0x03005200
	ldrb r0, [r4]
	cmp r0, #0
	beq _08013DEA
	movs r0, #0x90
	bl m4aSongNumStart
	movs r0, #0
	strb r0, [r4]
_08013DEA:
	ldr r0, _08013E28 @ =gUnk_03005220
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013E7C
	ldr r0, _08013E2C @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013E04
	cmp r0, #0x16
	beq _08013E04
	cmp r0, #0x1b
	bls _08013E7C
_08013E04:
	ldr r0, _08013E30 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08013E34
	ldr r0, _08013E2C @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0x25
	beq _08013E44
	movs r0, #0
	movs r1, #0x25
	bl sub_08025B78
	b _08013E44
	.align 2, 0
_08013E24: .4byte 0x03005200
_08013E28: .4byte gUnk_03005220
_08013E2C: .4byte gUnk_03000830
_08013E30: .4byte gHeldKeys
_08013E34:
	ldr r0, _08013E64 @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0x25
	bne _08013E44
	movs r0, #0
	movs r1, #0x23
	bl sub_08025B78
_08013E44:
	ldr r0, _08013E68 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08013E6C
	ldr r0, _08013E64 @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0x24
	beq _08013E7C
	movs r0, #0
	movs r1, #0x24
	bl sub_08025B78
	b _08013E7C
	.align 2, 0
_08013E64: .4byte gUnk_03000830
_08013E68: .4byte gHeldKeys
_08013E6C:
	ldr r0, _080140F4 @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0x24
	bne _08013E7C
	movs r0, #0
	movs r1, #0x22
	bl sub_08025B78
_08013E7C:
	ldr r0, _080140F8 @ =gUnk_03005220
	adds r4, r0, #0
	adds r4, #0x46
	ldrb r0, [r4]
	cmp r0, #0
	beq _08013EAA
	ldr r0, _080140F4 @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0xd
	beq _08013E98
	movs r0, #0
	movs r1, #0xd
	bl sub_08025B78
_08013E98:
	ldrb r0, [r4]
	cmp r0, #1
	bls _08013EA2
	subs r0, #1
	strb r0, [r4]
_08013EA2:
	ldr r0, _080140FC @ =gUnk_03002920
	mov r7, sp
	ldrh r7, [r7, #0x18]
	strh r7, [r0]
_08013EAA:
	ldr r0, _08014100 @ =gUnk_03004C20
	ldrb r1, [r0, #0x10]
	cmp r1, #1
	beq _08013EB4
	b _08013FD0
_08013EB4:
	ldr r0, _08014104 @ =gUnk_03003410
	ldrb r0, [r0, #0xb]
	cmp r0, #1
	bls _08013EBE
	b _08013FD0
_08013EBE:
	ldr r2, _080140F8 @ =gUnk_03005220
	ldr r0, [r2, #0x4c]
	ldr r1, _08014108 @ =0xFFFFFF00
	ands r0, r1
	ldr r1, _0801410C @ =0x633B6300
	adds r6, r2, #0
	cmp r0, r1
	bne _08013ED0
	b _08013FD0
_08013ED0:
	adds r2, #0x60
	ldrh r0, [r2]
	adds r0, #0xa7
	movs r3, #0
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _08014110 @ =0x26790000
	ldr r7, _08014114 @ =gUnk_03000900
	cmp r0, r1
	bls _08013F88
	adds r0, r6, #0
	adds r0, #0x4f
	strb r3, [r0]
	movs r0, #0
	strh r0, [r2]
	adds r2, r6, #0
	adds r2, #0x4e
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3a
	bls _08013F4E
	strb r3, [r2]
	adds r5, r6, #0
	adds r5, #0x4d
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x62
	bls _08013F18
	movs r0, #0x63
	strb r0, [r5]
_08013F18:
	ldrb r0, [r5]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _08014118 @ =0x00000332
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x6a
	strh r0, [r1]
	ldrb r0, [r5]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x6c
	strh r1, [r0]
_08013F4E:
	adds r5, r6, #0
	adds r5, #0x4e
	ldrb r0, [r5]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _08014118 @ =0x00000332
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x70
	strh r1, [r0]
	ldrb r0, [r5]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x72
	strh r0, [r1]
_08013F88:
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r1, #0x64
	bl __udivsi3
	adds r4, r6, #0
	adds r4, #0x4f
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, _08014118 @ =0x00000332
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x76
	strh r0, [r1]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x78
	strh r1, [r0]
_08013FD0:
	ldr r4, _08014100 @ =gUnk_03004C20
	ldr r1, [r4, #4]
	movs r3, #7
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08013FE0
	b _08014144
_08013FE0:
	lsrs r5, r1, #3
	movs r0, #3
	ands r5, r0
	ldr r6, _0801411C @ =gUnk_0300547C
	ldrb r0, [r6]
	cmp r0, #0
	beq _08014028
	ldr r2, _08014120 @ =0x040000D4
	ldr r1, _08014124 @ =0x0818B9B8
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r3, _08014128 @ =gUnk_0818B8E0
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldrb r0, [r6]
	ldr r1, [r1, #4]
	lsls r0, r0, #3
	adds r0, r0, r1
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r3, _0801412C @ =0x06010000
	adds r0, r0, r3
	str r0, [r2, #4]
	ldr r0, _08014130 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08014028:
	ldr r6, _08014134 @ =gUnk_03000818
	ldrb r0, [r6]
	cmp r0, #0
	beq _0801406C
	ldr r2, _08014120 @ =0x040000D4
	ldr r0, _08014124 @ =0x0818B9B8
	lsls r1, r5, #2
	adds r0, #0x10
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	ldr r3, _08014128 @ =gUnk_0818B8E0
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r7, [r4, #0xc]
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldrb r0, [r6]
	ldr r1, [r1, #4]
	lsls r0, r0, #3
	adds r0, r0, r1
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0801412C @ =0x06010000
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08014138 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0801406C:
	ldr r6, _0801413C @ =gUnk_030051B4
	ldrb r0, [r6]
	cmp r0, #0
	beq _080140B0
	ldr r2, _08014120 @ =0x040000D4
	ldr r0, _08014124 @ =0x0818B9B8
	lsls r1, r5, #2
	adds r0, #0x20
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	ldr r3, _08014128 @ =gUnk_0818B8E0
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r4, [r4, #0xc]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldrb r0, [r6]
	ldr r1, [r1, #4]
	lsls r0, r0, #3
	adds r0, r0, r1
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r3, _0801412C @ =0x06010000
	adds r0, r0, r3
	str r0, [r2, #4]
	ldr r0, _08014138 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_080140B0:
	ldr r4, _08014140 @ =gUnk_030008EC
	ldrb r0, [r4]
	cmp r0, #0
	beq _08014164
	ldr r2, _08014120 @ =0x040000D4
	ldr r0, _08014124 @ =0x0818B9B8
	lsls r1, r5, #2
	adds r0, #0x30
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	ldr r3, _08014128 @ =gUnk_0818B8E0
	ldr r5, _08014100 @ =gUnk_03004C20
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r6, [r5, #0xc]
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldrb r0, [r4]
	ldr r1, [r1, #4]
	lsls r0, r0, #3
	adds r0, r0, r1
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r7, _0801412C @ =0x06010000
	adds r0, r0, r7
	str r0, [r2, #4]
	ldr r0, _08014138 @ =0x80000040
	b _08014160
	.align 2, 0
_080140F4: .4byte gUnk_03000830
_080140F8: .4byte gUnk_03005220
_080140FC: .4byte gUnk_03002920
_08014100: .4byte gUnk_03004C20
_08014104: .4byte gUnk_03003410
_08014108: .4byte 0xFFFFFF00
_0801410C: .4byte 0x633B6300
_08014110: .4byte 0x26790000
_08014114: .4byte gUnk_03000900
_08014118: .4byte 0x00000332
_0801411C: .4byte gUnk_0300547C
_08014120: .4byte 0x040000D4
_08014124: .4byte 0x0818B9B8
_08014128: .4byte gUnk_0818B8E0
_0801412C: .4byte 0x06010000
_08014130: .4byte 0x80000010
_08014134: .4byte gUnk_03000818
_08014138: .4byte 0x80000040
_0801413C: .4byte gUnk_030051B4
_08014140: .4byte gUnk_030008EC
_08014144:
	movs r0, #0x21
	ands r0, r1
	cmp r0, #0
	bne _08014164
	ldr r2, _08014174 @ =0x040000D4
	lsrs r0, r1, #2
	ands r0, r3
	lsls r0, r0, #5
	ldr r1, _08014178 @ =0x080D8B30
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _0801417C @ =0x05000180
	str r0, [r2, #4]
	ldr r0, _08014180 @ =0x80000010
_08014160:
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08014164:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014174: .4byte 0x040000D4
_08014178: .4byte 0x080D8B30
_0801417C: .4byte 0x05000180
_08014180: .4byte 0x80000010
