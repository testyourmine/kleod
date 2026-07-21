
    .text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0x15
	bne _080202EE
	movs r0, #0
	b _080202F6
_080202EE:
	mov r0, sl
	adds r0, #0xec
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080202F6:
	str r0, [sp, #0x20]
	ldr r4, _08020334 @ =gEntityInfo
	mov r1, sl
	lsls r5, r1, #3
	subs r1, r5, r1
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r2, [sp, #0x20]
	adds r2, #3
	movs r0, #0xf
	ands r2, r0
	lsls r2, r2, #2
	ldrb r3, [r1, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0xd]
	ldrb r0, [r1, #0xf]
	adds r6, r4, #0
	str r5, [sp, #0x24]
	cmp r0, #0x1a
	bls _08020328
	bl _08020F70
_08020328:
	lsls r0, r0, #2
	ldr r1, _08020338 @ =_0802033C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020334: .4byte gEntityInfo
_08020338: .4byte _0802033C
_0802033C: @ jump table
	.4byte _08020430 @ case 0
	.4byte _08020F70 @ case 1
	.4byte _08020F70 @ case 2
	.4byte _080203A8 @ case 3
	.4byte _08020400 @ case 4
	.4byte _080208D4 @ case 5
	.4byte _08020EEC @ case 6
	.4byte _08020F70 @ case 7
	.4byte _08020F70 @ case 8
	.4byte _08020F70 @ case 9
	.4byte _08020F70 @ case 10
	.4byte _08020F70 @ case 11
	.4byte _08020F70 @ case 12
	.4byte _08020F70 @ case 13
	.4byte _080204BC @ case 14
	.4byte _08020554 @ case 15
	.4byte _0802068C @ case 16
	.4byte _08020DDC @ case 17
	.4byte _080206F4 @ case 18
	.4byte _08020BA2 @ case 19
	.4byte _08020F70 @ case 20
	.4byte _08020F70 @ case 21
	.4byte _08020F70 @ case 22
	.4byte _08020F70 @ case 23
	.4byte _08020F70 @ case 24
	.4byte _08020F70 @ case 25
	.4byte _08020F5C @ case 26
_080203A8:
	ldr r1, _080203F4 @ =gEntityInfo
	ldr r3, [sp, #0x24]
	mov r4, sl
	subs r2, r3, r4
	lsls r2, r2, #2
	adds r2, r2, r1
	movs r0, #1
	strb r0, [r2, #0x10]
	movs r5, #0x93
	lsls r5, r5, #2
	adds r3, r1, r5
	ldr r4, _080203F8 @ =gSineTable
	ldrh r0, [r1]
	lsrs r0, r0, #2
	adds r0, #0xc0
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	asrs r0, r0, #5
	ldrh r3, [r3]
	adds r0, r0, r3
	strh r0, [r2]
	ldr r0, _080203FC @ =0x0000024E
	adds r3, r1, r0
	ldrh r0, [r1]
	lsrs r0, r0, #2
	adds r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r1, [r0, r4]
	asrs r1, r1, #5
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r2, #2]
	bl _08020F70
	.align 2, 0
_080203F4: .4byte gEntityInfo
_080203F8: .4byte gSineTable
_080203FC: .4byte 0x0000024E
_08020400:
	ldr r2, _08020428 @ =gEntityInfo
	ldr r5, [sp, #0x24]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0, #0x10]
	movs r3, #0x93
	lsls r3, r3, #2
	adds r1, r2, r3
	ldrh r1, [r1]
	strh r1, [r0]
	ldr r4, _0802042C @ =0x0000024E
	adds r2, r2, r4
	ldrh r1, [r2]
	strh r1, [r0, #2]
	bl _08020F70
	.align 2, 0
_08020428: .4byte gEntityInfo
_0802042C: .4byte 0x0000024E
_08020430:
	ldr r1, _0802049C @ =gEntityAnimationInfo
	ldr r0, _080204A0 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r5, sl
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	bne _0802044C
	mov r0, sl
	movs r1, #0
	bl sub_08025B78
_0802044C:
	ldr r0, _080204A4 @ =gEntityInfo
	ldr r6, [sp, #0x24]
	mov r1, sl
	subs r4, r6, r1
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r5, _080204A8 @ =gUnk_080E2B64
	ldr r3, _080204AC @ =gUnk_03004C20
	ldrb r2, [r3, #0xe]
	subs r2, #1
	lsls r2, r2, #3
	subs r1, #0xd
	movs r0, #0x2c
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r1, _080204B0 @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r1, _080204B4 @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	adds r2, r2, r5
	ldr r1, _080204B8 @ =gSineTable
	ldrb r0, [r3]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	asrs r0, r0, #6
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	strh r0, [r4, #2]
	bl _08020F70
	.align 2, 0
_0802049C: .4byte gEntityAnimationInfo
_080204A0: .4byte gUnk_0300363C
_080204A4: .4byte gEntityInfo
_080204A8: .4byte gUnk_080E2B64
_080204AC: .4byte gUnk_03004C20
_080204B0: .4byte 0x00001130
_080204B4: .4byte 0x00008980
_080204B8: .4byte gSineTable
_080204BC:
	ldr r1, _080204DC @ =gEntityAnimationInfo
	ldr r0, _080204E0 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r4, sl
	subs r0, r4, r0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #5
	beq _080204E4
	movs r0, #0x15
	movs r1, #5
	bl sub_08025B78
	bl _08020F70
	.align 2, 0
_080204DC: .4byte gEntityAnimationInfo
_080204E0: .4byte gUnk_0300363C
_080204E4:
	ldr r2, _08020500 @ =gEntityInfo
	ldr r5, [sp, #0x24]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r4, r0, r2
	ldrh r0, [r4, #2]
	cmp r0, #0x77
	bls _08020504
	subs r0, #1
	strh r0, [r4, #2]
	bl _08020F70
	.align 2, 0
_08020500: .4byte gEntityInfo
_08020504:
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	beq _0802050E
	bl _08020F70
_0802050E:
	ldr r1, _08020548 @ =0x0000028D
	adds r0, r2, r1
	movs r1, #0
	strb r1, [r0]
	ldr r3, _0802054C @ =0x00000271
	adds r0, r2, r3
	strb r1, [r0]
	ldr r5, _08020550 @ =0x00000255
	adds r0, r2, r5
	strb r1, [r0]
	movs r0, #0x80
	strb r0, [r4, #8]
	movs r6, #0x96
	lsls r6, r6, #2
	adds r2, r2, r6
	ldrb r1, [r2]
	subs r0, #0x8d
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r0, sl
	movs r1, #6
	bl sub_08025B78
	movs r0, #0xf
	strb r0, [r4, #0xf]
	bl _08020F70
	.align 2, 0
_08020548: .4byte 0x0000028D
_0802054C: .4byte 0x00000271
_08020550: .4byte 0x00000255
_08020554:
	ldr r1, [sp, #0x24]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0x6e
	beq _0802058C
	cmp r0, #0x6e
	bgt _0802056E
	cmp r0, #0x68
	beq _080205A4
	b _080205B6
_0802056E:
	cmp r0, #0x74
	bne _080205B6
	ldr r3, _08020588 @ =0x00000303
	adds r0, r6, r3
	movs r1, #0x19
	strb r1, [r0]
	movs r4, #0xbf
	lsls r4, r4, #2
	adds r0, r6, r4
	mov r5, sl
	strb r5, [r0]
	b _080205B6
	.align 2, 0
_08020588: .4byte 0x00000303
_0802058C:
	ldr r1, _080205A0 @ =0x000002CB
	adds r0, r6, r1
	movs r1, #0x19
	strb r1, [r0]
	movs r2, #0xb1
	lsls r2, r2, #2
	adds r0, r6, r2
	mov r3, sl
	strb r3, [r0]
	b _080205B6
	.align 2, 0
_080205A0: .4byte 0x000002CB
_080205A4:
	ldr r4, _080205EC @ =0x000002E7
	adds r0, r6, r4
	movs r1, #0x19
	strb r1, [r0]
	movs r5, #0xb8
	lsls r5, r5, #2
	adds r0, r6, r5
	mov r6, sl
	strb r6, [r0]
_080205B6:
	ldr r1, _080205F0 @ =gEntityAnimationInfo
	ldr r0, _080205F4 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r2, sl
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #6
	bne _080205FC
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	bne _0802060E
	ldr r0, _080205F8 @ =gEntityInfo
	movs r3, #0x96
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrb r2, [r0]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	mov r0, sl
	movs r1, #7
	bl sub_08025B78
	b _0802060E
	.align 2, 0
_080205EC: .4byte 0x000002E7
_080205F0: .4byte gEntityAnimationInfo
_080205F4: .4byte gUnk_0300363C
_080205F8: .4byte gEntityInfo
_080205FC:
	cmp r1, #7
	bne _0802060E
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	bne _0802060E
	mov r0, sl
	movs r1, #3
	bl sub_08025B78
_0802060E:
	ldr r4, _08020628 @ =gEntityInfo
	ldr r5, [sp, #0x24]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r1, r0, r4
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _0802062C
	subs r0, #1
	strb r0, [r1, #8]
	bl _08020F70
	.align 2, 0
_08020628: .4byte gEntityInfo
_0802062C:
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r2, #0xa1
	lsls r2, r2, #2
	adds r0, r4, r2
	strh r1, [r0]
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r0, r4, r3
	strh r1, [r0]
	ldr r5, _08020680 @ =0x0000024E
	adds r0, r4, r5
	ldrh r1, [r0]
	ldr r6, _08020684 @ =0x00000286
	adds r0, r4, r6
	strh r1, [r0]
	subs r2, #0x1a
	adds r0, r4, r2
	strh r1, [r0]
	movs r0, #0x16
	movs r1, #3
	bl sub_08025B78
	movs r0, #0x17
	movs r1, #3
	bl sub_08025B78
	ldr r3, _08020688 @ =0x0000025B
	adds r1, r4, r3
	movs r0, #0x12
	strb r0, [r1]
	adds r5, #0x45
	adds r0, r4, r5
	movs r1, #0x10
	strb r1, [r0]
	subs r6, #0xf
	adds r0, r4, r6
	strb r1, [r0]
	bl _08020F70
	.align 2, 0
_08020680: .4byte 0x0000024E
_08020684: .4byte 0x00000286
_08020688: .4byte 0x0000025B
_0802068C:
	ldr r2, _080206C8 @ =gEntityInfo
	ldr r1, [sp, #0x24]
	mov r3, sl
	subs r0, r1, r3
	lsls r0, r0, #2
	adds r4, r0, r2
	ldrb r1, [r4, #9]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080206A6
	b _08020CD0
_080206A6:
	strb r5, [r4, #0x10]
	ldrh r0, [r4, #2]
	cmp r0, #0xb0
	bhi _080206D6
	adds r0, #1
	strh r0, [r4, #2]
	mov r5, sl
	cmp r5, #0x16
	bne _080206CC
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r1, r2, r6
	ldrh r0, [r1]
	subs r0, #2
	strh r0, [r1]
	bl _08020F70
	.align 2, 0
_080206C8: .4byte gEntityInfo
_080206CC:
	ldrh r0, [r4]
	adds r0, #2
	strh r0, [r4]
	bl _08020F70
_080206D6:
	movs r0, #0x1e
	strb r0, [r4, #8]
	bl thunk_GetRandomValue
	ldr r1, _080206F0 @ =gUnk_03005400
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ands r0, r5
	strb r0, [r1, #0x13]
	movs r0, #0x12
	strb r0, [r4, #0xf]
	bl _08020F70
	.align 2, 0
_080206F0: .4byte gUnk_03005400
_080206F4:
	ldr r0, _0802072C @ =gUnk_03004C20
	ldr r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r4, r0, #0
	cmp r1, #0
	bne _08020718
	ldr r1, _08020730 @ =gEntityInfo
	ldr r2, [sp, #0x24]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _08020718
	subs r0, #1
	strb r0, [r1, #8]
_08020718:
	mov r5, sl
	cmp r5, #0x16
	beq _080207D4
	cmp r5, #0x16
	bgt _08020734
	cmp r5, #0x15
	beq _08020740
	bl _08020F70
	.align 2, 0
_0802072C: .4byte gUnk_03004C20
_08020730: .4byte gEntityInfo
_08020734:
	mov r6, sl
	cmp r6, #0x17
	bne _0802073C
	b _08020850
_0802073C:
	bl _08020F70
_08020740:
	ldr r0, [r4]
	ldr r1, _080207BC @ =0x000001FF
	ands r0, r1
	cmp r0, #0
	bne _08020752
	movs r0, #0x15
	movs r1, #3
	bl sub_08025B78
_08020752:
	ldr r2, _080207C0 @ =gEntityInfo
	movs r0, #0x93
	lsls r0, r0, #2
	adds r3, r2, r0
	ldr r1, _080207C4 @ =gSineTable
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r0, #0x78
	strh r0, [r3, #2]
	ldrb r0, [r3, #8]
	cmp r0, #0
	beq _08020776
	bl _08020F70
_08020776:
	ldr r1, _080207C8 @ =0x00000277
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08020784
	bl _08020F70
_08020784:
	ldr r4, _080207CC @ =0x00000293
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08020792
	bl _08020F70
_08020792:
	ldr r1, _080207D0 @ =gUnk_03005400
	ldrh r0, [r2]
	strh r0, [r1, #4]
	movs r0, #0xf0
	strh r0, [r1, #6]
	movs r0, #0x28
	strb r0, [r1, #0x15]
	ldrb r1, [r1, #0x13]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	movs r0, #5
	strb r0, [r3, #0xf]
	b _08020F70
	.align 2, 0
_080207BC: .4byte 0x000001FF
_080207C0: .4byte gEntityInfo
_080207C4: .4byte gSineTable
_080207C8: .4byte 0x00000277
_080207CC: .4byte 0x00000293
_080207D0: .4byte gUnk_03005400
_080207D4:
	ldr r0, [r4]
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080207E6
	movs r0, #0x16
	movs r1, #3
	bl sub_08025B78
_080207E6:
	ldr r3, _08020840 @ =gEntityInfo
	movs r5, #0x9a
	lsls r5, r5, #2
	adds r2, r3, r5
	ldr r1, _08020844 @ =gSineTable
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r0, #0xb0
	strh r0, [r2, #2]
	ldrb r0, [r2, #8]
	cmp r0, #0
	bne _0802080E
	ldr r0, _08020848 @ =gUnk_03005400
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0802081A
_0802080E:
	ldr r6, _0802084C @ =0x00000293
	adds r0, r3, r6
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _0802081A
	b _08020F70
_0802081A:
	ldr r1, _08020848 @ =gUnk_03005400
	ldr r2, _08020840 @ =gEntityInfo
	ldrh r0, [r2]
	strh r0, [r1, #4]
	movs r0, #0x8c
	lsls r0, r0, #1
	strh r0, [r1, #6]
	movs r0, #0x78
	strb r0, [r1, #0x15]
	ldr r0, [sp, #0x24]
	mov r3, sl
	subs r1, r0, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r2, [r1, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	b _080208BC
	.align 2, 0
_08020840: .4byte gEntityInfo
_08020844: .4byte gSineTable
_08020848: .4byte gUnk_03005400
_0802084C: .4byte 0x00000293
_08020850:
	movs r5, #0xff
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020860
	movs r0, #0x17
	movs r1, #3
	bl sub_08025B78
_08020860:
	ldr r3, _080208C4 @ =gEntityInfo
	movs r6, #0xa1
	lsls r6, r6, #2
	adds r2, r3, r6
	ldr r1, _080208C8 @ =gSineTable
	ldr r0, [r4]
	ands r0, r5
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r0, #0xb0
	strh r0, [r2, #2]
	ldrb r0, [r2, #8]
	cmp r0, #0
	bne _0802088A
	ldr r0, _080208CC @ =gUnk_03005400
	ldrb r0, [r0, #0x13]
	cmp r0, #1
	beq _08020896
_0802088A:
	ldr r1, _080208D0 @ =0x00000277
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08020896
	b _08020F70
_08020896:
	ldr r1, _080208CC @ =gUnk_03005400
	ldr r2, _080208C4 @ =gEntityInfo
	ldrh r0, [r2]
	strh r0, [r1, #4]
	movs r0, #0x8c
	lsls r0, r0, #1
	strh r0, [r1, #6]
	movs r0, #0x78
	strb r0, [r1, #0x15]
	ldr r3, [sp, #0x24]
	mov r4, sl
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r2, [r1, #0xc]
	subs r0, #0x85
	ands r0, r2
	movs r2, #4
	orrs r0, r2
_080208BC:
	strb r0, [r1, #0xc]
	movs r0, #5
	strb r0, [r1, #0xf]
	b _08020F70
	.align 2, 0
_080208C4: .4byte gEntityInfo
_080208C8: .4byte gSineTable
_080208CC: .4byte gUnk_03005400
_080208D0: .4byte 0x00000277
_080208D4:
	adds r5, r6, #0
	ldr r1, [sp, #0x24]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrb r0, [r4, #9]
	movs r1, #0xfe
	ands r1, r0
	cmp r1, #2
	bne _080208EC
	b _08020A1C
_080208EC:
	cmp r1, #2
	bgt _080208F6
	cmp r1, #0
	beq _080208FE
	b _08020F70
_080208F6:
	cmp r1, #6
	bne _080208FC
	b _08020AC0
_080208FC:
	b _08020F70
_080208FE:
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0802091C
	ldr r1, _08020918 @ =gUnk_03005400
	ldrb r0, [r1, #0x15]
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r4, r1, #0
	b _08020922
	.align 2, 0
_08020918: .4byte gUnk_03005400
_0802091C:
	ldr r0, _0802095C @ =gUnk_03005400
	ldrb r3, [r0, #0x15]
	adds r4, r0, #0
_08020922:
	mov r2, sp
	ldr r1, _08020960 @ =gEntityInfo
	ldr r5, [sp, #0x24]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r2]
	mov r1, sp
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	lsls r3, r3, #0x18
	asrs r0, r3, #0x18
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	movs r5, #4
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	strh r0, [r2, #4]
	mov r1, sp
	ldrh r0, [r4, #6]
	strh r0, [r1, #6]
	mov r8, r3
	cmp r6, #0x15
	bne _08020964
	movs r0, #2
	b _0802096A
	.align 2, 0
_0802095C: .4byte gUnk_03005400
_08020960: .4byte gEntityInfo
_08020964:
	mov r2, sp
	mov r1, sp
	movs r0, #3
_0802096A:
	strb r0, [r1, #9]
	strb r0, [r2, #8]
	add r0, sp, #0x10
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_0800BEF0
	ldr r5, [sp, #0x10]
	ldr r6, _080209D8 @ =gEntityInfo
	mov sb, r6
	ldr r1, [sp, #0x24]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r3, r0, r6
	strh r5, [r3]
	lsrs r6, r5, #0x10
	strh r6, [r3, #2]
	movs r4, #0xf8
	adds r1, r5, #0
	ands r1, r4
	ldr r7, _080209DC @ =gUnk_03005400
	mov r2, r8
	asrs r0, r2, #0x18
	ldrh r2, [r7, #4]
	adds r0, r0, r2
	ands r0, r4
	cmp r1, r0
	beq _080209A8
	b _08020F70
_080209A8:
	ldrh r2, [r7, #6]
	adds r1, r4, #0
	ands r1, r6
	adds r0, r4, #0
	ands r0, r2
	cmp r1, r0
	beq _080209B8
	b _08020F70
_080209B8:
	movs r4, #0
	ldrsh r0, [r3, r4]
	mov r6, sb
	ldrh r6, [r6]
	cmp r0, r6
	bge _080209E0
	ldrb r0, [r3, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r3, #0xc]
	movs r0, #0x15
	ldrsb r0, [r7, r0]
	adds r0, r5, r0
	b _080209F4
	.align 2, 0
_080209D8: .4byte gEntityInfo
_080209DC: .4byte gUnk_03005400
_080209E0:
	ldrb r1, [r3, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3, #0xc]
	movs r0, #0x15
	ldrsb r0, [r7, r0]
	subs r0, r5, r0
_080209F4:
	strh r0, [r7, #4]
	ldr r0, _08020A18 @ =gEntityInfo
	ldr r1, [sp, #0x24]
	mov r3, sl
	subs r2, r1, r3
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	adds r0, #1
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #7
	strb r0, [r2, #8]
	ldrb r1, [r2, #9]
	movs r0, #2
	b _08020AB2
	.align 2, 0
_08020A18: .4byte gEntityInfo
_08020A1C:
	ldr r3, _08020A58 @ =gUnk_03005400
	movs r1, #0x15
	ldrsb r1, [r3, r1]
	ldr r2, _08020A5C @ =gSineTable
	ldrb r0, [r4, #8]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldrh r1, [r3, #4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	ldrb r1, [r4, #8]
	cmp r0, #0
	bne _08020A60
	lsls r0, r1, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	rsbs r0, r0, #0
	asrs r0, r0, #8
	b _08020A6A
	.align 2, 0
_08020A58: .4byte gUnk_03005400
_08020A5C: .4byte gSineTable
_08020A60:
	lsls r0, r1, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	asrs r0, r0, #3
_08020A6A:
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	strh r0, [r4, #2]
	mov r0, sl
	cmp r0, #0x15
	bne _08020A82
	movs r2, #0x93
	lsls r2, r2, #2
	adds r1, r6, r2
	ldrb r0, [r1, #8]
	adds r0, #2
	b _08020A90
_08020A82:
	ldr r3, [sp, #0x24]
	mov r4, sl
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrb r0, [r1, #8]
	adds r0, #1
_08020A90:
	strb r0, [r1, #8]
	ldr r0, _08020AB8 @ =gEntityInfo
	ldr r5, [sp, #0x24]
	mov r6, sl
	subs r1, r5, r6
	lsls r1, r1, #2
	adds r2, r1, r0
	ldrb r1, [r2, #8]
	movs r0, #0x7f
	ands r1, r0
	cmp r1, #0
	beq _08020AAA
	b _08020F70
_08020AAA:
	ldr r0, _08020ABC @ =gUnk_030034DC
	strh r1, [r0]
	ldrb r1, [r2, #9]
	movs r0, #4
_08020AB2:
	orrs r0, r1
	strb r0, [r2, #9]
	b _08020F70
	.align 2, 0
_08020AB8: .4byte gEntityInfo
_08020ABC: .4byte gUnk_030034DC
_08020AC0:
	mov r1, sp
	ldrh r0, [r4]
	strh r0, [r1]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0x78
	strh r0, [r1, #6]
	mov r2, sp
	movs r0, #4
	strb r0, [r1, #9]
	strb r0, [r2, #8]
	add r0, sp, #0x14
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_0800BEF0
	ldr r0, [sp, #0x14]
	strh r0, [r4]
	lsrs r1, r0, #0x10
	strh r1, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x13
	cmp r0, #0x1e
	beq _08020AF8
	b _08020F70
_08020AF8:
	lsrs r7, r1, #3
	cmp r7, #0xf
	beq _08020B00
	b _08020F70
_08020B00:
	ldrb r1, [r4, #9]
	movs r0, #1
	ands r0, r1
	strb r0, [r4, #9]
	mov r0, sl
	cmp r0, #0x15
	beq _08020B10
	b _08020CD0
_08020B10:
	ldr r0, _08020B64 @ =gUnk_03005400
	ldrh r0, [r0]
	cmp r0, #0
	bne _08020B78
	movs r0, #1
	bl sub_080145A8
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r0, [r0]
	ldr r2, _08020B68 @ =0x00000216
	adds r1, r5, r2
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x13
	bl sub_0801E664
	movs r3, #0x8c
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrh r0, [r0]
	ldr r4, _08020B6C @ =0x00000232
	adds r1, r5, r4
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x14
	bl sub_0801E664
	ldr r6, _08020B70 @ =0x0000023F
	adds r0, r5, r6
	movs r1, #0x1c
	strb r1, [r0]
	ldr r2, _08020B74 @ =0x00000223
	adds r0, r5, r2
	strb r1, [r0]
	movs r3, #0x93
	lsls r3, r3, #2
	adds r1, r5, r3
	movs r0, #0x11
	strb r0, [r1, #0xf]
	b _08020F70
	.align 2, 0
_08020B64: .4byte gUnk_03005400
_08020B68: .4byte 0x00000216
_08020B6C: .4byte 0x00000232
_08020B70: .4byte 0x0000023F
_08020B74: .4byte 0x00000223
_08020B78:
	movs r5, #0x93
	lsls r5, r5, #2
	adds r4, r6, r5
	movs r0, #0x80
	strb r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x15
	movs r1, #6
	bl sub_08025B78
	strb r7, [r4, #0xf]
	b _08020F70
_08020BA2:
	mov r2, sp
	ldr r1, _08020C9C @ =gEntityInfo
	ldr r3, [sp, #0x24]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r0, [r4]
	movs r5, #0
	strh r0, [r2]
	mov r1, sp
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0x78
	strh r0, [r1, #6]
	movs r0, #2
	strb r0, [r1, #9]
	strb r0, [r2, #8]
	add r0, sp, #0x18
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_0800BEF0
	ldr r0, [sp, #0x18]
	strh r0, [r4]
	lsrs r0, r0, #0x10
	strh r0, [r4, #2]
	ldrb r0, [r4, #8]
	cmp r0, #1
	bne _08020BEE
	movs r0, #0x63
	bl m4aSongNumStart
	movs r0, #0
	strb r0, [r4, #8]
_08020BEE:
	ldrh r0, [r4]
	lsrs r0, r0, #3
	cmp r0, #0x1e
	bne _08020CDC
	ldrh r0, [r4, #2]
	lsrs r0, r0, #3
	cmp r0, #0xf
	bne _08020CDC
	ldrb r1, [r4, #9]
	movs r0, #1
	ands r0, r1
	strb r0, [r4, #9]
	mov r6, sl
	cmp r6, #0x15
	bne _08020CC4
	ldr r4, _08020CA0 @ =0x040000D4
	ldr r0, _08020CA4 @ =0x08078968
	str r0, [r4]
	ldr r3, _08020CA8 @ =gUnk_0818B8E0
	ldr r2, _08020CAC @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, #0x48
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r1, _08020CB0 @ =0x05000200
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08020CB4 @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08020C4E
_08020C46:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _08020C46
_08020C4E:
	ldr r4, _08020C9C @ =gEntityInfo
	ldr r2, [sp, #0x24]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0x11
	strb r1, [r0, #0xf]
	movs r5, #0x85
	lsls r5, r5, #2
	adds r0, r4, r5
	ldrh r0, [r0]
	ldr r6, _08020CB8 @ =0x00000216
	adds r1, r4, r6
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x13
	bl sub_0801E664
	movs r1, #0x8c
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r2, _08020CBC @ =0x00000232
	adds r1, r4, r2
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x14
	bl sub_0801E664
	ldr r3, _08020CC0 @ =0x0000023F
	adds r0, r4, r3
	movs r1, #0x1c
	strb r1, [r0]
	adds r5, #0xf
	adds r4, r4, r5
	strb r1, [r4]
	b _08020F70
	.align 2, 0
_08020C9C: .4byte gEntityInfo
_08020CA0: .4byte 0x040000D4
_08020CA4: .4byte 0x08078968
_08020CA8: .4byte gUnk_0818B8E0
_08020CAC: .4byte gUnk_03004C20
_08020CB0: .4byte 0x05000200
_08020CB4: .4byte 0x80000010
_08020CB8: .4byte 0x00000216
_08020CBC: .4byte 0x00000232
_08020CC0: .4byte 0x0000023F
_08020CC4:
	ldr r0, _08020CD8 @ =gUnk_03003590
	ldr r6, [sp, #0x20]
	lsls r1, r6, #3
	adds r1, r1, r0
	strh r5, [r1]
	strh r5, [r1, #2]
_08020CD0:
	movs r0, #0x1a
	strb r0, [r4, #0xf]
	b _08020F70
	.align 2, 0
_08020CD8: .4byte gUnk_03003590
_08020CDC:
	mov r0, sl
	cmp r0, #0x15
	bne _08020D98
	ldr r4, _08020D78 @ =gUnk_03004C20
	ldr r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	cmp r0, #5
	bne _08020D30
	ldr r3, _08020D7C @ =0x040000D4
	ldr r0, _08020D80 @ =0x08078968
	str r0, [r3]
	ldr r2, _08020D84 @ =gUnk_0818B8E0
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, #0x48
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r2, _08020D88 @ =0x05000200
	adds r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _08020D8C @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08020D30
_08020D28:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08020D28
_08020D30:
	ldr r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	cmp r0, #0
	beq _08020D3E
	b _08020F70
_08020D3E:
	add r1, sp, #0xc
	ldr r3, _08020D90 @ =0x0000FFFF
	adds r0, r3, #0
	strh r0, [r1]
	ldr r2, _08020D7C @ =0x040000D4
	str r1, [r2]
	ldr r3, _08020D84 @ =gUnk_0818B8E0
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r4, [r4, #0xc]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r4, [sp, #0x24]
	adds r0, r4, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r5, _08020D88 @ =0x05000200
	adds r0, r0, r5
	str r0, [r2, #4]
	ldr r0, _08020D94 @ =0x81000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08020F70
	.align 2, 0
_08020D78: .4byte gUnk_03004C20
_08020D7C: .4byte 0x040000D4
_08020D80: .4byte 0x08078968
_08020D84: .4byte gUnk_0818B8E0
_08020D88: .4byte 0x05000200
_08020D8C: .4byte 0x80000010
_08020D90: .4byte 0x0000FFFF
_08020D94: .4byte 0x81000010
_08020D98:
	ldr r0, _08020DD0 @ =gUnk_03003590
	ldr r6, [sp, #0x20]
	lsls r1, r6, #3
	adds r1, r1, r0
	ldr r4, _08020DD4 @ =gSineTable
	ldr r3, _08020DD8 @ =gUnk_03004C20
	ldr r0, [r3]
	lsls r0, r0, #3
	movs r2, #0xff
	ands r0, r2
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	asrs r0, r0, #2
	strh r0, [r1]
	ldr r0, [r3]
	lsls r0, r0, #3
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	asrs r0, r0, #3
	strh r0, [r1, #2]
	b _08020F70
	.align 2, 0
_08020DD0: .4byte gUnk_03003590
_08020DD4: .4byte gSineTable
_08020DD8: .4byte gUnk_03004C20
_08020DDC:
	mov r2, sp
	ldr r1, _08020EB4 @ =gEntityInfo
	ldr r3, [sp, #0x24]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r0, [r7]
	strh r0, [r2]
	mov r1, sp
	ldrh r0, [r7, #2]
	strh r0, [r1, #2]
	mov r3, sp
	ldr r5, _08020EB8 @ =gUnk_080E2B64
	mov sb, r5
	ldr r4, _08020EBC @ =gUnk_03004C20
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	mov r2, sl
	subs r2, #0xd
	movs r0, #0x2c
	adds r6, r2, #0
	muls r6, r0, r6
	mov r8, r6
	add r1, r8
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r6, _08020EC0 @ =0x00001130
	muls r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r5, _08020EC4 @ =0x00008980
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1]
	strh r0, [r3, #4]
	mov r2, sp
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	add r1, r8
	ldrb r0, [r4, #0xc]
	subs r0, #1
	muls r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1, #2]
	strh r0, [r2, #6]
	mov r1, sp
	movs r0, #2
	strb r0, [r1, #9]
	strb r0, [r2, #8]
	add r0, sp, #0x1c
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_0800BEF0
	ldr r2, [sp, #0x1c]
	strh r2, [r7]
	lsrs r3, r2, #0x10
	strh r3, [r7, #2]
	lsls r2, r2, #0x10
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	add r1, r8
	ldrb r0, [r4, #0xc]
	subs r0, #1
	muls r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1]
	lsrs r2, r2, #0x13
	lsrs r0, r0, #3
	cmp r2, r0
	bne _08020F70
	ldrh r0, [r1, #2]
	lsrs r1, r3, #3
	lsrs r0, r0, #3
	cmp r1, r0
	bne _08020F70
	ldr r1, _08020EC8 @ =gEntityAnimationInfo
	ldr r0, _08020ECC @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r2, sl
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	beq _08020ED0
	mov r0, sl
	movs r1, #4
	bl sub_08025B78
	b _08020F70
	.align 2, 0
_08020EB4: .4byte gEntityInfo
_08020EB8: .4byte gUnk_080E2B64
_08020EBC: .4byte gUnk_03004C20
_08020EC0: .4byte 0x00001130
_08020EC4: .4byte 0x00008980
_08020EC8: .4byte gEntityAnimationInfo
_08020ECC: .4byte gUnk_0300363C
_08020ED0:
	ldrb r1, [r7, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0xc]
	ldr r1, _08020EE8 @ =gUnk_03005400
	movs r0, #9
	strb r0, [r1, #0xa]
	movs r0, #0xff
	strb r0, [r7, #0xf]
	b _08020F70
	.align 2, 0
_08020EE8: .4byte gUnk_03005400
_08020EEC:
	ldr r2, _08020F44 @ =gEntityAnimationInfo
	ldr r0, _08020F48 @ =gUnk_0300363C
	ldrb r1, [r0]
	movs r0, #0x15
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	bne _08020F70
	ldr r3, _08020F4C @ =gEntityInfo
	movs r4, #0x95
	lsls r4, r4, #2
	adds r1, r3, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r5, #0x93
	lsls r5, r5, #2
	adds r0, r3, r5
	ldrh r2, [r0]
	adds r2, #4
	strh r2, [r0]
	ldr r6, _08020F50 @ =0x0000024E
	adds r3, r3, r6
	ldr r4, _08020F54 @ =gSineTable
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r3]
	lsls r2, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r2, r0
	bls _08020F70
	ldr r1, _08020F58 @ =gUnk_03005400
	movs r0, #0xb
	strb r0, [r1, #0xa]
	b _08020F70
	.align 2, 0
_08020F44: .4byte gEntityAnimationInfo
_08020F48: .4byte gUnk_0300363C
_08020F4C: .4byte gEntityInfo
_08020F50: .4byte 0x0000024E
_08020F54: .4byte gSineTable
_08020F58: .4byte gUnk_03005400
_08020F5C:
	ldr r1, _08020FB0 @ =gEntityInfo
	ldr r2, [sp, #0x24]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	strb r2, [r0, #0x10]
_08020F70:
	ldr r0, _08020FB0 @ =gEntityInfo
	ldr r4, [sp, #0x24]
	mov r5, sl
	subs r1, r4, r5
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0xf]
	cmp r0, #0xf
	bne _08020FA0
	ldr r0, _08020FB4 @ =gUnk_03003590
	ldr r6, [sp, #0x20]
	lsls r3, r6, #3
	adds r3, r3, r0
	ldrb r1, [r1, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	ldrb r2, [r3, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
_08020FA0:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020FB0: .4byte gEntityInfo
_08020FB4: .4byte gUnk_03003590
