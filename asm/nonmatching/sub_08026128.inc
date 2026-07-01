
    .text

	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r4, #0
	ldr r0, _080261F4 @ =gUnk_03004C20
	mov ip, r0
	ldr r7, _080261F8 @ =gUnk_03004670
	ldr r6, _080261FC @ =gBgTilemapBufs
	ldr r1, _08026200 @ =gUnk_03005220
	mov r8, r1
	ldr r3, _08026204 @ =0x040000D4
	ldr r5, _08026208 @ =0x8000000A
	adds r2, r6, #0
	adds r2, #0x28
	ldr r0, _0802620C @ =0x000005A4
	adds r1, r6, r0
_08026148:
	str r1, [r3]
	str r2, [r3, #4]
	str r5, [r3, #8]
	ldr r0, [r3, #8]
	adds r2, #0x40
	adds r1, #0x40
	adds r4, #1
	cmp r4, #1
	bls _08026148
	mov r1, ip
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bne _08026214
	ldr r2, [r7]
	ldrb r0, [r2, #1]
	ldrb r1, [r2, #2]
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	cmp r0, #0
	bne _0802617E
	movs r0, #0x63
	strb r0, [r2, #3]
	strb r0, [r2, #1]
	ldr r1, [r7]
	movs r0, #0x3b
	strb r0, [r1, #2]
_0802617E:
	ldr r5, [r7]
	ldrb r0, [r5, #1]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _08026210 @ =0x00000312
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r6, #0x2a]
	ldrb r0, [r5, #1]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r6, #0x2c]
	ldrb r0, [r5, #2]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r6, #0x30]
	ldrb r0, [r5, #2]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r6, #0x32]
	ldrb r0, [r5, #3]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r6, #0x36]
	ldrb r0, [r5, #3]
	b _080262A6
	.align 2, 0
_080261F4: .4byte gUnk_03004C20
_080261F8: .4byte gUnk_03004670
_080261FC: .4byte gBgTilemapBufs
_08026200: .4byte gUnk_03005220
_08026204: .4byte 0x040000D4
_08026208: .4byte 0x8000000A
_0802620C: .4byte 0x000005A4
_08026210: .4byte 0x00000312
_08026214:
	adds r3, r7, #0
	ldr r2, [r3]
	ldrb r0, [r2, #4]
	ldrb r1, [r2, #5]
	orrs r0, r1
	ldrb r1, [r2, #6]
	orrs r0, r1
	cmp r0, #0
	bne _08026232
	movs r0, #0x63
	strb r0, [r2, #3]
	strb r0, [r2, #1]
	ldr r1, [r3]
	movs r0, #0x3b
	strb r0, [r1, #2]
_08026232:
	ldr r5, [r7]
	ldrb r0, [r5, #4]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _0802636C @ =0x00000312
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r6, #0x2a]
	ldrb r0, [r5, #4]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r6, #0x2c]
	ldrb r0, [r5, #5]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r6, #0x30]
	ldrb r0, [r5, #5]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r6, #0x32]
	ldrb r0, [r5, #6]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r6, #0x36]
	ldrb r0, [r5, #6]
_080262A6:
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r6, #0x38]
	mov r4, r8
	adds r4, #0x4d
	ldrb r0, [r4]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, _08026370 @ =0x00000332
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x6a
	strh r0, [r1]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x6c
	strh r1, [r0]
	adds r4, #1
	ldrb r0, [r4]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x70
	strh r1, [r0]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x72
	strh r0, [r1]
	adds r4, #1
	ldrb r0, [r4]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x76
	strh r0, [r1]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x78
	strh r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802636C: .4byte 0x00000312
_08026370: .4byte 0x00000332
