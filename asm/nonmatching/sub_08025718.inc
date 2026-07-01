
    .text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08025788 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r3]
	ldr r2, _0802578C @ =gUnk_03004C20
	ldr r1, [r2, #4]
	movs r0, #1
	ands r1, r0
	mov sl, r3
	mov sb, r2
	cmp r1, #0
	bne _08025804
	ldr r1, _08025790 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	ldr r1, _08025794 @ =gUnk_03005498
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080257FC
	movs r3, #0
	ldr r0, _08025798 @ =gCallbackQueue
	adds r2, r0, #0
	adds r2, #0x78
	ldrb r1, [r2]
	movs r4, #0
	adds r7, r0, #0
	cmp r1, #1
	beq _080257B2
	adds r6, r7, #0
	adds r5, r7, #0
	adds r5, #0x28
	ldr r0, _0802579C @ =sub_08025718
	mov r8, r0
	mov ip, r2
_0802576A:
	lsls r2, r3, #2
	adds r0, r2, r6
	ldr r1, [r0]
	cmp r1, r8
	beq _08025778
	cmp r4, #1
	bne _080257A0
_08025778:
	adds r2, r2, r5
	adds r1, r3, #1
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r2]
	movs r4, #1
	b _080257A6
	.align 2, 0
_08025788: .4byte gUnk_030034E4
_0802578C: .4byte gUnk_03004C20
_08025790: .4byte 0x04000050
_08025794: .4byte gUnk_03005498
_08025798: .4byte gCallbackQueue
_0802579C: .4byte sub_08025718
_080257A0:
	adds r0, r2, r5
	str r1, [r0]
	adds r1, r3, #1
_080257A6:
	adds r3, r1, #0
	mov r1, ip
	ldrb r0, [r1]
	subs r0, #1
	cmp r3, r0
	blo _0802576A
_080257B2:
	cmp r4, #1
	bne _080257D4
	adds r1, r7, #0
	adds r1, #0x78
	ldrb r0, [r1]
	subs r0, #1
	movs r2, #0x79
	adds r2, r2, r7
	mov ip, r2
	movs r2, #0
	mov r3, ip
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r7
	str r2, [r0]
_080257D4:
	movs r0, #0
	mov r1, sb
	str r0, [r1]
	mov r2, sl
	strb r0, [r2]
	ldr r1, _080257F4 @ =0x04000048
	movs r0, #0x3f
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x3b
	strh r0, [r1]
	adds r1, #6
	ldr r3, _080257F8 @ =0x00001B44
	adds r0, r3, #0
	strh r0, [r1]
	b _08025804
	.align 2, 0
_080257F4: .4byte 0x04000048
_080257F8: .4byte 0x00001B44
_080257FC:
	ldr r1, _08025814 @ =gMosaicSize
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_08025804:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025814: .4byte gMosaicSize
