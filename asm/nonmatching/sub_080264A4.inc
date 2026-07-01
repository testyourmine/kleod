
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08026550 @ =gCallbackQueue
	ldr r1, [r0, #0x14]
	ldr r2, _08026554 @ =sub_080245E8
	mov sb, r2
	adds r5, r0, #0
	cmp r1, sb
	bne _080264BE
	b _0802687C
_080264BE:
	ldr r6, _08026558 @ =gUnk_03003410
	ldrb r0, [r6, #0xb]
	cmp r0, #2
	bne _0802651C
	movs r2, #0
	movs r0, #3
	strb r0, [r6, #0xb]
	ldr r0, _0802655C @ =gUnk_03004C20
	str r2, [r0]
	ldr r3, _08026560 @ =gUnk_03002920
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r0, r3, r4
	movs r1, #1
	strb r1, [r0]
	subs r4, #0x1c
	adds r0, r3, r4
	strb r1, [r0]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r1, #0x78
	strh r1, [r0]
	subs r4, #0xc
	adds r0, r3, r4
	strh r1, [r0]
	adds r1, #0xde
	adds r0, r3, r1
	strh r2, [r0]
	adds r4, #2
	adds r0, r3, r4
	strh r2, [r0]
	ldr r1, _08026564 @ =0x040000D4
	ldr r0, _08026568 @ =gUnk_080A5088
	str r0, [r1]
	ldr r0, _0802656C @ =gUnk_08057C70
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r2, _08026570 @ =0x06010000
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _08026574 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x1f
	bl m4aSongNumStart
_0802651C:
	ldr r0, _0802655C @ =gUnk_03004C20
	ldr r1, [r0]
	mov ip, r0
	cmp r1, #0x19
	bhi _08026534
	ldr r0, _08026560 @ =gUnk_03002920
	movs r3, #0x9d
	lsls r3, r3, #1
	adds r1, r0, r3
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
_08026534:
	mov r4, ip
	ldr r1, [r4]
	adds r0, r1, #0
	subs r0, #0x15
	cmp r0, #0x3b
	bhi _08026578
	ldr r0, _08026560 @ =gUnk_03002920
	movs r5, #0xab
	lsls r5, r5, #1
	adds r1, r0, r5
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	b _0802687C
	.align 2, 0
_08026550: .4byte gCallbackQueue
_08026554: .4byte sub_080245E8
_08026558: .4byte gUnk_03003410
_0802655C: .4byte gUnk_03004C20
_08026560: .4byte gUnk_03002920
_08026564: .4byte 0x040000D4
_08026568: .4byte gUnk_080A5088
_0802656C: .4byte gUnk_08057C70
_08026570: .4byte 0x06010000
_08026574: .4byte 0x80000400
_08026578:
	cmp r1, #0x92
	bhi _0802657E
	b _0802687C
_0802657E:
	ldr r4, _080265EC @ =gUnk_030034B0
	mov r0, ip
	ldrb r1, [r0, #0xc]
	lsls r3, r1, #4
	ldrb r2, [r4, #6]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r4, #6]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #8
	bne _0802667C
	ldr r0, _080265F0 @ =gUnk_03005498
	ldrb r0, [r0]
	cmp r0, #0
	beq _080265A2
	b _0802687C
_080265A2:
	movs r3, #0xd
	ldr r1, _080265F4 @ =gUnk_03005428
	ldrb r2, [r1]
	cmp r3, r2
	bhs _080265C2
	ldr r0, _080265F8 @ =gUnk_03002920
	movs r2, #0x1a
	movs r4, #0xb6
	lsls r4, r4, #1
	adds r0, r0, r4
_080265B6:
	strb r2, [r0, #0xf]
	adds r0, #0x1c
	adds r3, #1
	ldrb r5, [r1]
	cmp r3, r5
	blo _080265B6
_080265C2:
	bl sub_080008DC
	ldr r2, _080265FC @ =gBg2XMag
	ldr r1, _08026600 @ =gBg2YMag
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	strh r0, [r2]
	ldr r1, _08026604 @ =gBg2Alpha
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08026608 @ =gUnk_03004C20
	ldrb r0, [r1, #0xd]
	cmp r0, #6
	bne _08026610
	ldr r2, _0802660C @ =gUnk_03005284
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #4]
	b _0802661E
	.align 2, 0
_080265EC: .4byte gUnk_030034B0
_080265F0: .4byte gUnk_03005498
_080265F4: .4byte gUnk_03005428
_080265F8: .4byte gUnk_03002920
_080265FC: .4byte gBg2XMag
_08026600: .4byte gBg2YMag
_08026604: .4byte gBg2Alpha
_08026608: .4byte gUnk_03004C20
_0802660C: .4byte gUnk_03005284
_08026610:
	ldr r2, _08026658 @ =gUnk_03005284
	ldr r3, [r2]
	ldrb r1, [r1, #0xd]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #1
	strb r0, [r3, #4]
_0802661E:
	mov sl, r2
	ldr r2, _0802665C @ =gCallbackQueue
	ldr r0, _08026660 @ =InputHandler_Normal
	str r0, [r2, #0x28]
	ldr r0, _08026664 @ =sub_0802528C
	str r0, [r2, #0x2c]
	ldr r0, _08026668 @ =sub_08002AC4
	str r0, [r2, #0x30]
	ldr r0, _0802666C @ =sub_0800C108
	str r0, [r2, #0x34]
	movs r0, #1
	str r0, [r2, #0x38]
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	adds r2, #0x79
	movs r0, #5
	strb r0, [r2]
	ldr r4, _08026670 @ =gUnk_03004C20
	mov ip, r4
	ldr r4, _08026674 @ =gUnk_03005220
	ldr r5, _08026678 @ =gUnk_03004670
	mov r8, r5
	b _0802676A
	.align 2, 0
_08026658: .4byte gUnk_03005284
_0802665C: .4byte gCallbackQueue
_08026660: .4byte InputHandler_Normal
_08026664: .4byte sub_0802528C
_08026668: .4byte sub_08002AC4
_0802666C: .4byte sub_0800C108
_08026670: .4byte gUnk_03004C20
_08026674: .4byte gUnk_03005220
_08026678: .4byte gUnk_03004670
_0802667C:
	mov r0, ip
	ldrh r1, [r0, #0xc]
	ldr r0, _080266C4 @ =0x00000603
	cmp r1, r0
	bne _080266E4
	ldr r1, _080266C8 @ =gUnk_03005498
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080266CC @ =InputHandler_Normal
	str r0, [r5, #0x28]
	ldr r0, _080266D0 @ =sub_08025A28
	str r0, [r5, #0x2c]
	ldr r0, _080266D4 @ =sub_0800BFF4
	str r0, [r5, #0x30]
	movs r3, #1
	str r3, [r5, #0x34]
	adds r2, r5, #0
	adds r2, #0x78
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0
	str r1, [r0]
	adds r4, r5, #0
	adds r4, #0x79
	movs r0, #4
	strb r0, [r4]
	strb r3, [r2]
	str r1, [r5]
	ldr r1, _080266D8 @ =gUnk_03005284
	mov sl, r1
	ldr r4, _080266DC @ =gUnk_03005220
	ldr r2, _080266E0 @ =gUnk_03004670
	mov r8, r2
	b _0802676A
	.align 2, 0
_080266C4: .4byte 0x00000603
_080266C8: .4byte gUnk_03005498
_080266CC: .4byte InputHandler_Normal
_080266D0: .4byte sub_08025A28
_080266D4: .4byte sub_0800BFF4
_080266D8: .4byte gUnk_03005284
_080266DC: .4byte gUnk_03005220
_080266E0: .4byte gUnk_03004670
_080266E4:
	ldr r1, _08026718 @ =gUnk_03005498
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r6, #7]
	movs r2, #0
	adds r1, r5, #0
	adds r1, #0x78
	ldrb r0, [r1]
	adds r0, #1
	ldr r3, _0802671C @ =gUnk_03005284
	mov sl, r3
	ldr r4, _08026720 @ =gUnk_03005220
	ldr r3, _08026724 @ =gUnk_03004670
	mov r8, r3
	cmp r2, r0
	bhs _08026740
	adds r7, r5, #0
	adds r6, r1, #0
	subs r1, r5, #4
	mov r3, sb
_0802670E:
	cmp r2, #5
	bne _08026728
	str r3, [r7, #0x3c]
	b _08026734
	.align 2, 0
_08026718: .4byte gUnk_03005498
_0802671C: .4byte gUnk_03005284
_08026720: .4byte gUnk_03005220
_08026724: .4byte gUnk_03004670
_08026728:
	cmp r2, #5
	bls _08026730
	ldr r0, [r1]
	b _08026732
_08026730:
	ldr r0, [r1, #4]
_08026732:
	str r0, [r1, #0x2c]
_08026734:
	adds r1, #4
	adds r2, #1
	ldrb r0, [r6]
	adds r0, #1
	cmp r2, r0
	blo _0802670E
_08026740:
	cmp r2, #4
	bls _0802675E
	adds r1, r5, #0
	adds r1, #0x78
	ldrb r0, [r1]
	adds r0, #1
	adds r3, r5, #0
	adds r3, #0x79
	movs r2, #0
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r2, [r0]
_0802675E:
	adds r0, r5, #0
	adds r0, #0x78
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	str r2, [r5]
_0802676A:
	mov r5, sl
	ldr r1, [r5]
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	strb r0, [r1]
	ldrh r0, [r4]
	lsls r0, r0, #0x14
	lsrs r3, r0, #0x19
	mov r0, r8
	ldr r1, [r0]
	mov r2, ip
	ldrb r0, [r2, #0xd]
	lsls r0, r0, #3
	subs r0, #9
	ldrb r5, [r2, #0xc]
	adds r0, r0, r5
	adds r1, #8
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	cmp r3, r0
	bgt _0802679E
	cmp r2, #0
	bne _080267A0
_0802679E:
	strb r3, [r1]
_080267A0:
	mov r0, r8
	ldr r1, [r0]
	mov r2, ip
	ldrb r0, [r2, #0xd]
	lsls r0, r0, #3
	subs r0, #9
	ldrb r3, [r2, #0xc]
	adds r0, r0, r3
	adds r1, #8
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1]
	mov r5, ip
	ldrb r0, [r5, #0x10]
	cmp r0, #1
	bne _0802687C
	movs r3, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _08026824
	adds r0, r4, #0
	adds r0, #0x4d
	mov r1, r8
	ldr r2, [r1]
	ldrb r1, [r0]
	ldrb r0, [r2, #1]
	cmp r1, r0
	blo _08026802
	cmp r1, r0
	bne _080267FE
	adds r0, r4, #0
	adds r0, #0x4e
	ldrb r1, [r0]
	ldrb r0, [r2, #2]
	cmp r1, r0
	blo _08026802
	cmp r1, r0
	bne _080267FE
	adds r0, r4, #0
	adds r0, #0x4f
	ldrb r0, [r0]
	ldrb r2, [r2, #3]
	cmp r0, r2
	bhs _080267FE
	movs r3, #1
_080267FE:
	cmp r3, #0
	beq _0802687C
_08026802:
	mov r2, r8
	ldr r1, [r2]
	adds r0, r4, #0
	adds r0, #0x4d
	ldrb r0, [r0]
	strb r0, [r1, #1]
	ldr r1, [r2]
	adds r0, r4, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	strb r0, [r1, #2]
	ldr r1, [r2]
	adds r0, r4, #0
	adds r0, #0x4f
	ldrb r0, [r0]
	strb r0, [r1, #3]
	b _0802687C
_08026824:
	adds r0, r4, #0
	adds r0, #0x4d
	mov r5, r8
	ldr r2, [r5]
	ldrb r1, [r0]
	ldrb r0, [r2, #4]
	cmp r1, r0
	blo _0802685A
	cmp r1, r0
	bne _08026856
	adds r0, r4, #0
	adds r0, #0x4e
	ldrb r1, [r0]
	ldrb r0, [r2, #5]
	cmp r1, r0
	blo _0802685A
	cmp r1, r0
	bne _08026856
	adds r0, r4, #0
	adds r0, #0x4f
	ldrb r0, [r0]
	ldrb r2, [r2, #6]
	cmp r0, r2
	bhs _08026856
	movs r3, #1
_08026856:
	cmp r3, #0
	beq _0802687C
_0802685A:
	mov r0, r8
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x4d
	ldrb r0, [r0]
	strb r0, [r1, #4]
	mov r2, r8
	ldr r1, [r2]
	adds r0, r4, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	strb r0, [r1, #5]
	ldr r1, [r2]
	adds r0, r4, #0
	adds r0, #0x4f
	ldrb r0, [r0]
	strb r0, [r1, #6]
_0802687C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	
