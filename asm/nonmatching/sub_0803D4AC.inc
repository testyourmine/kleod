
    .text

    push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _0803D524 @ =gEntityInfo
	lsls r0, r0, #3
	mov r2, r8
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r3, [r4]
	str r3, [sp, #0x10]
	ldrh r5, [r4, #2]
	mov sl, r5
	ldr r2, _0803D528 @ =gUnk_03005400
	ldrb r1, [r2, #8]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0803D4E4
	b _0803D5F0
_0803D4E4:
	adds r7, r2, #0
	ldrb r0, [r7, #0x10]
	adds r0, #2
	strb r0, [r7, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	cmp r0, #2
	ble _0803D4F8
	movs r0, #0x20
	strb r0, [r7, #0x10]
_0803D4F8:
	ldr r1, _0803D528 @ =gUnk_03005400
	ldrb r0, [r1, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	ldrh r2, [r4, #2]
	adds r3, r0, r2
	strh r3, [r4, #2]
	ldr r5, _0803D52C @ =gUnk_03004C20
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0803D538
	ldr r3, _0803D530 @ =gBgDataPtrs
	ldrh r2, [r4]
	lsrs r2, r2, #3
	ldr r1, _0803D534 @ =gUnk_08116888
	ldrb r0, [r5, #0xd]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #1
	adds r0, r0, r1
	b _0803D58C
	.align 2, 0
_0803D524: .4byte gEntityInfo
_0803D528: .4byte gUnk_03005400
_0803D52C: .4byte gUnk_03004C20
_0803D530: .4byte gBgDataPtrs
_0803D534: .4byte gUnk_08116888
_0803D538:
	ldrh r1, [r4]
	ldr r2, _0803D56C @ =gUnk_08116888
	ldr r7, _0803D570 @ =gUnk_03004C20
	ldrb r0, [r7, #0xd]
	subs r0, #1
	lsls r0, r0, #1
	adds r5, r2, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r3, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sp
	movs r3, #0x18
	bl sub_08014230
	ldr r0, [sp]
	lsls r0, r0, #0x10
	ldr r1, _0803D574 @ =0xFFFF0000
	cmp r0, r1
	beq _0803D57C
	ldr r0, _0803D578 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r3, [r0, #0x1b]
	b _0803D5A6
	.align 2, 0
_0803D56C: .4byte gUnk_08116888
_0803D570: .4byte gUnk_03004C20
_0803D574: .4byte 0xFFFF0000
_0803D578: .4byte gUnk_03004654
_0803D57C:
	ldr r3, _0803D5CC @ =gBgDataPtrs
	ldrh r2, [r4]
	lsrs r2, r2, #3
	ldr r1, _0803D5D0 @ =gUnk_03004C20
	ldrb r0, [r1, #0xd]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r5
_0803D58C:
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r4, [r4, #2]
	adds r1, r1, r4
	asrs r1, r1, #3
	ldr r0, _0803D5D4 @ =gBgInfo
	adds r0, #0x48
	ldrh r0, [r0]
	muls r1, r0, r1
	ldr r0, [r3, #0x14]
	adds r2, r2, r1
	adds r0, r0, r2
	ldrb r3, [r0]
_0803D5A6:
	ldr r0, _0803D5D8 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	cmp r0, r3
	bhi _0803D5E4
	ldr r1, _0803D5DC @ =gEntityInfo
	mov r2, r8
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	mov r3, sl
	strh r3, [r0, #2]
	ldr r5, _0803D5E0 @ =gUnk_03005400
	ldrb r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5, #8]
	b _0803D5F0
	.align 2, 0
_0803D5CC: .4byte gBgDataPtrs
_0803D5D0: .4byte gUnk_03004C20
_0803D5D4: .4byte gBgInfo
_0803D5D8: .4byte gUnk_03004654
_0803D5DC: .4byte gEntityInfo
_0803D5E0: .4byte gUnk_03005400
_0803D5E4:
	ldr r7, _0803D68C @ =gUnk_03005400
	ldrb r1, [r7, #8]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #8]
_0803D5F0:
	mov r0, sp
	ldrb r0, [r0, #0xc]
	mov ip, r0
	mov r1, ip
	lsls r0, r1, #0x18
	asrs r6, r0, #0x18
	cmp r6, #0
	bne _0803D602
	b _0803D77A
_0803D602:
	ldr r3, _0803D690 @ =gEntityInfo
	mov r2, r8
	lsls r4, r2, #3
	subs r0, r4, r2
	lsls r0, r0, #2
	adds r5, r0, r3
	ldrh r7, [r5, #2]
	mov sl, r7
	ldr r0, [sp, #8]
	lsls r1, r0, #8
	lsrs r2, r1, #0x18
	ldr r7, _0803D694 @ =gUnk_03004C20
	ldr r0, [r7, #4]
	ands r0, r2
	adds r1, r2, #0
	mov sb, r4
	cmp r0, r1
	bne _0803D64C
	ldr r1, _0803D68C @ =gUnk_03005400
	ldrb r0, [r1, #0x12]
	ldrb r2, [r1, #0x10]
	adds r0, r0, r2
	strb r0, [r1, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	cmp r0, r6
	ble _0803D63E
	mov r7, ip
	lsls r0, r7, #4
	strb r0, [r1, #0x10]
_0803D63E:
	ldr r1, _0803D68C @ =gUnk_03005400
	ldrb r0, [r1, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	ldrh r2, [r5, #2]
	adds r0, r0, r2
	strh r0, [r5, #2]
_0803D64C:
	ldr r5, _0803D694 @ =gUnk_03004C20
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0803D6A4
	ldr r4, _0803D698 @ =gBgDataPtrs
	mov r7, sb
	mov r0, r8
	subs r2, r7, r0
	lsls r2, r2, #2
	adds r2, r2, r3
	ldrh r3, [r2]
	lsrs r3, r3, #3
	ldr r1, _0803D69C @ =gUnk_08116888
	ldrb r0, [r5, #0xd]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r2, [r2, #2]
	adds r1, r1, r2
	asrs r1, r1, #3
	ldr r0, _0803D6A0 @ =gBgInfo
	adds r0, #0x48
	ldrh r0, [r0]
	muls r1, r0, r1
	ldr r0, [r4, #0x14]
	adds r3, r3, r1
	adds r0, r0, r3
	b _0803D724
	.align 2, 0
_0803D68C: .4byte gUnk_03005400
_0803D690: .4byte gEntityInfo
_0803D694: .4byte gUnk_03004C20
_0803D698: .4byte gBgDataPtrs
_0803D69C: .4byte gUnk_08116888
_0803D6A0: .4byte gBgInfo
_0803D6A4:
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r4, r0, r3
	ldrh r1, [r4]
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0803D6EC @ =gUnk_08116888
	ldr r3, _0803D6F0 @ =gUnk_03004C20
	ldrb r0, [r3, #0xd]
	subs r0, #1
	lsls r0, r0, #1
	adds r5, r2, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldrh r7, [r4, #2]
	adds r2, r2, r7
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r0, sp, #4
	movs r3, #0x18
	bl sub_08014230
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	ldr r1, _0803D6F4 @ =0xFFFF0000
	cmp r0, r1
	beq _0803D6FC
	ldr r0, _0803D6F8 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r3, [r0, #0x1b]
	b _0803D726
	.align 2, 0
_0803D6EC: .4byte gUnk_08116888
_0803D6F0: .4byte gUnk_03004C20
_0803D6F4: .4byte 0xFFFF0000
_0803D6F8: .4byte gUnk_03004654
_0803D6FC:
	ldr r3, _0803D750 @ =gBgDataPtrs
	ldrh r2, [r4]
	lsrs r2, r2, #3
	ldr r1, _0803D754 @ =gUnk_03004C20
	ldrb r0, [r1, #0xd]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r4, [r4, #2]
	adds r1, r1, r4
	asrs r1, r1, #3
	ldr r0, _0803D758 @ =gBgInfo
	adds r0, #0x48
	ldrh r0, [r0]
	muls r1, r0, r1
	ldr r0, [r3, #0x14]
	adds r2, r2, r1
	adds r0, r0, r2
_0803D724:
	ldrb r3, [r0]
_0803D726:
	ldr r0, _0803D75C @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	cmp r0, r3
	bhi _0803D76C
	ldr r1, _0803D760 @ =gEntityInfo
	mov r2, sb
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, _0803D764 @ =0x0000FFF8
	mov r5, sl
	ands r5, r1
	strh r5, [r0, #2]
	ldr r7, _0803D768 @ =gUnk_03005400
	ldrb r0, [r7, #8]
	movs r1, #4
	orrs r0, r1
	strb r0, [r7, #8]
	b _0803D77A
	.align 2, 0
_0803D750: .4byte gBgDataPtrs
_0803D754: .4byte gUnk_03004C20
_0803D758: .4byte gBgInfo
_0803D75C: .4byte gUnk_03004654
_0803D760: .4byte gEntityInfo
_0803D764: .4byte 0x0000FFF8
_0803D768: .4byte gUnk_03005400
_0803D76C:
	ldr r0, _0803D81C @ =gUnk_03005400
	ldrb r1, [r0, #8]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, _0803D81C @ =gUnk_03005400
	strb r0, [r1, #8]
_0803D77A:
	movs r3, #0
	ldr r7, _0803D820 @ =gUnk_03004C20
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x18
	ldr r1, [r7, #4]
	ands r1, r2
	adds r0, r2, #0
	ldr r5, _0803D824 @ =gUnk_03004654
	mov sb, r5
	cmp r1, r0
	beq _0803D794
	b _0803D8A8
_0803D794:
	ldr r0, _0803D828 @ =gEntityInfo
	mov r2, r8
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r6, r1, r0
	ldrb r0, [r6, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0803D838
	ldr r3, _0803D81C @ =gUnk_03005400
	ldrb r0, [r3, #0x11]
	ldrb r5, [r3, #0xf]
	adds r0, r0, r5
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	ldr r2, [sp, #8]
	asrs r1, r2, #0x18
	asrs r0, r0, #0x1c
	cmp r0, r1
	ble _0803D7C4
	lsls r0, r1, #4
	strb r0, [r3, #0xf]
_0803D7C4:
	ldr r3, _0803D81C @ =gUnk_03005400
	ldrb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	ldrh r5, [r6]
	adds r0, r0, r5
	strh r0, [r6]
	ldr r5, _0803D82C @ =gBgDataPtrs
	ldrh r4, [r6]
	ldr r3, _0803D830 @ =gUnk_08116888
	ldrb r7, [r7, #0xd]
	subs r1, r7, #1
	lsls r1, r1, #1
	adds r0, r1, r3
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r4, r2
	asrs r2, r2, #3
	adds r3, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r6, [r6, #2]
	adds r1, r1, r6
	asrs r1, r1, #3
	ldr r0, _0803D834 @ =gBgInfo
	adds r0, #0x48
	ldrh r0, [r0]
	muls r1, r0, r1
	ldr r0, [r5, #0x14]
	adds r2, r2, r1
	adds r0, r0, r2
	ldrb r3, [r0]
	movs r0, #0xac
	lsls r0, r0, #1
	cmp r4, r0
	bls _0803D8A8
	cmp r7, #1
	bne _0803D8A8
	mov r7, sb
	ldr r0, [r7]
	b _0803D8A6
	.align 2, 0
_0803D81C: .4byte gUnk_03005400
_0803D820: .4byte gUnk_03004C20
_0803D824: .4byte gUnk_03004654
_0803D828: .4byte gEntityInfo
_0803D82C: .4byte gBgDataPtrs
_0803D830: .4byte gUnk_08116888
_0803D834: .4byte gBgInfo
_0803D838:
	ldr r1, _0803D8D0 @ =gUnk_03005400
	ldrb r0, [r1, #0x11]
	ldrb r2, [r1, #0xf]
	adds r0, r0, r2
	strb r0, [r1, #0xf]
	lsls r0, r0, #0x18
	ldr r3, [sp, #8]
	asrs r1, r3, #0x18
	asrs r0, r0, #0x1c
	cmp r0, r1
	ble _0803D854
	lsls r0, r1, #4
	ldr r5, _0803D8D0 @ =gUnk_03005400
	strb r0, [r5, #0xf]
_0803D854:
	ldr r7, _0803D8D0 @ =gUnk_03005400
	ldrb r1, [r7, #0xf]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x1c
	ldrh r0, [r6]
	subs r0, r0, r1
	strh r0, [r6]
	ldr r5, _0803D8D4 @ =gBgDataPtrs
	ldrh r4, [r6]
	ldr r3, _0803D8D8 @ =gUnk_08116888
	ldr r0, _0803D8DC @ =gUnk_03004C20
	ldrb r7, [r0, #0xd]
	subs r1, r7, #1
	lsls r1, r1, #1
	adds r0, r1, r3
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r2, r4, r2
	asrs r2, r2, #3
	adds r3, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r6, [r6, #2]
	adds r1, r1, r6
	asrs r1, r1, #3
	ldr r0, _0803D8E0 @ =gBgInfo
	adds r0, #0x48
	ldrh r0, [r0]
	muls r1, r0, r1
	ldr r0, [r5, #0x14]
	adds r2, r2, r1
	adds r0, r0, r2
	ldrb r3, [r0]
	cmp r4, #0x4f
	bhi _0803D8A8
	cmp r7, #1
	bne _0803D8A8
	mov r1, sb
	ldr r0, [r1]
_0803D8A6:
	ldrb r3, [r0, #0x1b]
_0803D8A8:
	mov r2, sb
	ldr r0, [r2]
	ldrb r0, [r0, #0x1b]
	cmp r0, r3
	bhi _0803D8E8
	ldr r1, _0803D8E4 @ =gEntityInfo
	mov r3, r8
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	mov r5, sp
	ldrh r5, [r5, #0x10]
	strh r5, [r0]
	ldr r7, _0803D8D0 @ =gUnk_03005400
	ldrb r0, [r7, #8]
	movs r1, #8
	orrs r0, r1
	strb r0, [r7, #8]
	b _0803D8F6
	.align 2, 0
_0803D8D0: .4byte gUnk_03005400
_0803D8D4: .4byte gBgDataPtrs
_0803D8D8: .4byte gUnk_08116888
_0803D8DC: .4byte gUnk_03004C20
_0803D8E0: .4byte gBgInfo
_0803D8E4: .4byte gEntityInfo
_0803D8E8:
	ldr r0, _0803D908 @ =gUnk_03005400
	ldrb r1, [r0, #8]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, _0803D908 @ =gUnk_03005400
	strb r0, [r1, #8]
_0803D8F6:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D908: .4byte gUnk_03005400
