
    .text

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
	ldr r5, _0800C25C @ =gUnk_030051F0
	ldrb r0, [r5, #0xe]
	b _0800C26A
	.align 2, 0
_0800C25C: .4byte gUnk_030051F0
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
