	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080240F4
sub_080240F4: @ 0x080240F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08024160 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r2]
	ldr r0, _08024164 @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	bne _080241DC
	ldr r1, _08024168 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _0802416C @ =gUnk_03005498
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080241D4
	movs r3, #0
	ldr r0, _08024170 @ =gCallbackQueue
	adds r2, r0, #0
	adds r2, #0x78
	ldrb r1, [r2]
	movs r4, #0
	adds r7, r0, #0
	cmp r1, #1
	beq _0802418A
	adds r6, r7, #0
	adds r5, r7, #0
	adds r5, #0x28
	ldr r0, _08024174 @ =sub_080240F4
	mov r8, r0
	mov ip, r2
_08024142:
	lsls r2, r3, #2
	adds r0, r2, r6
	ldr r1, [r0]
	cmp r1, r8
	beq _08024150
	cmp r4, #1
	bne _08024178
_08024150:
	adds r2, r2, r5
	adds r1, r3, #1
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r2]
	movs r4, #1
	b _0802417E
	.align 2, 0
_08024160: .4byte gUnk_030034E4
_08024164: .4byte gUnk_03004C20
_08024168: .4byte 0x04000050
_0802416C: .4byte gUnk_03005498
_08024170: .4byte gCallbackQueue
_08024174: .4byte sub_080240F4
_08024178:
	adds r0, r2, r5
	str r1, [r0]
	adds r1, r3, #1
_0802417E:
	adds r3, r1, #0
	mov r1, ip
	ldrb r0, [r1]
	subs r0, #1
	cmp r3, r0
	blo _08024142
_0802418A:
	cmp r4, #1
	bne _080241A8
	adds r1, r7, #0
	adds r1, #0x78
	ldrb r0, [r1]
	subs r0, #1
	adds r3, r7, #0
	adds r3, #0x79
	movs r2, #0
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r7
	str r2, [r0]
_080241A8:
	ldr r2, _080241C4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080241C8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _080241CC @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _080241D0 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	mov r1, sb
	b _080241DA
	.align 2, 0
_080241C4: .4byte 0x04000200
_080241C8: .4byte 0x0000FFFD
_080241CC: .4byte 0x04000004
_080241D0: .4byte 0x0000FFEF
_080241D4:
	ldr r1, _080241E8 @ =gMosaicSize
	ldrb r0, [r1]
	subs r0, #1
_080241DA:
	strb r0, [r1]
_080241DC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080241E8: .4byte gMosaicSize

	thumb_func_start sub_080241EC
sub_080241EC: @ 0x080241EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08024258 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r2]
	ldr r0, _0802425C @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	bne _080242AE
	ldr r1, _08024260 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	ldr r1, _08024264 @ =gUnk_03005498
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080242A6
	movs r3, #0
	ldr r0, _08024268 @ =gCallbackQueue
	adds r2, r0, #0
	adds r2, #0x78
	ldrb r1, [r2]
	movs r4, #0
	adds r7, r0, #0
	cmp r1, #1
	beq _08024282
	adds r6, r7, #0
	adds r5, r7, #0
	adds r5, #0x28
	ldr r0, _0802426C @ =sub_080241EC
	mov r8, r0
	mov ip, r2
_0802423A:
	lsls r2, r3, #2
	adds r0, r2, r6
	ldr r1, [r0]
	cmp r1, r8
	beq _08024248
	cmp r4, #1
	bne _08024270
_08024248:
	adds r2, r2, r5
	adds r1, r3, #1
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r2]
	movs r4, #1
	b _08024276
	.align 2, 0
_08024258: .4byte gUnk_030034E4
_0802425C: .4byte gUnk_03004C20
_08024260: .4byte 0x04000050
_08024264: .4byte gUnk_03005498
_08024268: .4byte gCallbackQueue
_0802426C: .4byte sub_080241EC
_08024270:
	adds r0, r2, r5
	str r1, [r0]
	adds r1, r3, #1
_08024276:
	adds r3, r1, #0
	mov r1, ip
	ldrb r0, [r1]
	subs r0, #1
	cmp r3, r0
	blo _0802423A
_08024282:
	cmp r4, #1
	bne _080242A0
	adds r1, r7, #0
	adds r1, #0x78
	ldrb r0, [r1]
	subs r0, #1
	adds r3, r7, #0
	adds r3, #0x79
	movs r2, #0
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r7
	str r2, [r0]
_080242A0:
	movs r0, #0
	mov r1, sb
	b _080242AC
_080242A6:
	ldr r1, _080242BC @ =gMosaicSize
	ldrb r0, [r1]
	subs r0, #1
_080242AC:
	strb r0, [r1]
_080242AE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080242BC: .4byte gMosaicSize

	thumb_func_start sub_080242C0
sub_080242C0: @ 0x080242C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08024318 @ =gUnk_030034E4
	movs r1, #1
	strb r1, [r0]
	ldr r5, _0802431C @ =gUnk_03004C20
	ldr r4, [r5, #4]
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _080242DE
	b _0802454C
_080242DE:
	ldr r0, _08024320 @ =gUnk_03005498
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _08024386
	ldr r0, _08024324 @ =gUnk_03003410
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _080242FA
	bl m4aSoundVSyncOn
	ldr r0, _08024328 @ =gUnk_030052B8
	ldrh r0, [r0]
	bl m4aSongNumContinue
_080242FA:
	ldr r0, _0802432C @ =gUnk_03005210
	ldrh r2, [r0]
	ldr r1, _08024330 @ =0x0000FFFF
	cmp r2, r1
	bne _08024386
	strh r4, [r0]
	ldrb r1, [r5, #0xc]
	cmp r1, #8
	bne _08024340
	ldrb r0, [r5, #0xd]
	cmp r0, #6
	bne _08024334
	ldr r1, _08024328 @ =gUnk_030052B8
	movs r0, #0xb
	b _08024376
	.align 2, 0
_08024318: .4byte gUnk_030034E4
_0802431C: .4byte gUnk_03004C20
_08024320: .4byte gUnk_03005498
_08024324: .4byte gUnk_03003410
_08024328: .4byte gUnk_030052B8
_0802432C: .4byte gUnk_03005210
_08024330: .4byte 0x0000FFFF
_08024334:
	ldr r1, _0802433C @ =gUnk_030052B8
	movs r0, #0xa
	b _08024376
	.align 2, 0
_0802433C: .4byte gUnk_030052B8
_08024340:
	cmp r1, #0
	bne _08024350
	ldr r1, _0802434C @ =gUnk_030052B8
	movs r0, #0x1c
	b _08024376
	.align 2, 0
_0802434C: .4byte gUnk_030052B8
_08024350:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _08024360
	ldr r1, _0802435C @ =gUnk_030052B8
	movs r0, #0x1e
	b _08024376
	.align 2, 0
_0802435C: .4byte gUnk_030052B8
_08024360:
	cmp r1, #6
	bne _08024370
	ldr r1, _0802436C @ =gUnk_030052B8
	movs r0, #0x22
	b _08024376
	.align 2, 0
_0802436C: .4byte gUnk_030052B8
_08024370:
	ldr r1, _080243C8 @ =gUnk_030052B8
	ldrb r0, [r5, #0xd]
	adds r0, #3
_08024376:
	strh r0, [r1]
	ldr r0, _080243CC @ =gUnk_03003410
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _08024386
	ldrh r0, [r1]
	bl m4aSongNumStart
_08024386:
	ldr r0, _080243D0 @ =gUnk_03005498
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802441A
	ldr r0, _080243CC @ =gUnk_03003410
	ldrb r0, [r0, #5]
	cmp r0, #1
	bne _080243E8
	ldr r4, _080243D4 @ =gUnk_03005210
	ldrh r0, [r4]
	adds r0, #0x10
	strh r0, [r4]
	ldr r0, _080243D8 @ =gMPlayInfo_0
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _080243DC @ =gMPlayInfo_1
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _080243E0 @ =gMPlayInfo_2
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _080243E4 @ =gMPlayInfo_3
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	b _0802441A
	.align 2, 0
_080243C8: .4byte gUnk_030052B8
_080243CC: .4byte gUnk_03003410
_080243D0: .4byte gUnk_03005498
_080243D4: .4byte gUnk_03005210
_080243D8: .4byte gMPlayInfo_0
_080243DC: .4byte gMPlayInfo_1
_080243E0: .4byte gMPlayInfo_2
_080243E4: .4byte gMPlayInfo_3
_080243E8:
	ldr r4, _08024480 @ =gUnk_03005210
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	strh r0, [r4]
	ldr r0, _08024484 @ =gMPlayInfo_0
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08024488 @ =gMPlayInfo_1
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _0802448C @ =gMPlayInfo_2
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08024490 @ =gMPlayInfo_3
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
_0802441A:
	ldr r1, _08024494 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	ldr r2, _08024498 @ =gUnk_03005498
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08024432
	b _08024540
_08024432:
	ldr r1, _0802449C @ =gMosaicSize
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	movs r3, #0
	ldr r0, _080244A0 @ =gCallbackQueue
	adds r2, r0, #0
	adds r2, #0x78
	ldrb r1, [r2]
	movs r4, #0
	ldr r5, _080244A4 @ =gUnk_030034E4
	mov sl, r5
	ldr r5, _08024480 @ =gUnk_03005210
	mov r8, r5
	adds r7, r0, #0
	cmp r1, #1
	beq _080244BE
	adds r6, r7, #0
	adds r5, r7, #0
	adds r5, #0x28
	ldr r0, _080244A8 @ =sub_080242C0
	mov sb, r0
	mov ip, r2
_08024460:
	lsls r2, r3, #2
	adds r0, r2, r6
	ldr r1, [r0]
	cmp r1, sb
	beq _0802446E
	cmp r4, #1
	bne _080244AC
_0802446E:
	adds r2, r2, r5
	adds r1, r3, #1
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r2]
	movs r4, #1
	b _080244B2
	.align 2, 0
_08024480: .4byte gUnk_03005210
_08024484: .4byte gMPlayInfo_0
_08024488: .4byte gMPlayInfo_1
_0802448C: .4byte gMPlayInfo_2
_08024490: .4byte gMPlayInfo_3
_08024494: .4byte 0x04000050
_08024498: .4byte gUnk_03005498
_0802449C: .4byte gMosaicSize
_080244A0: .4byte gCallbackQueue
_080244A4: .4byte gUnk_030034E4
_080244A8: .4byte sub_080242C0
_080244AC:
	adds r0, r2, r5
	str r1, [r0]
	adds r1, r3, #1
_080244B2:
	adds r3, r1, #0
	mov r1, ip
	ldrb r0, [r1]
	subs r0, #1
	cmp r3, r0
	blo _08024460
_080244BE:
	cmp r4, #1
	bne _080244DC
	adds r1, r7, #0
	adds r1, #0x78
	ldrb r0, [r1]
	subs r0, #1
	adds r3, r7, #0
	adds r3, #0x79
	movs r2, #0
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r7
	str r2, [r0]
_080244DC:
	movs r0, #0
	mov r2, sl
	strb r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	mov r1, r8
	strh r0, [r1]
	ldrh r2, [r1]
	ldr r0, _08024528 @ =gMPlayInfo_0
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _0802452C @ =gMPlayInfo_1
	mov r5, r8
	ldrh r2, [r5]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08024530 @ =gMPlayInfo_2
	ldrh r2, [r5]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08024534 @ =gMPlayInfo_3
	ldrh r2, [r5]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r1, _08024538 @ =gUnk_03005498
	movs r0, #9
	strb r0, [r1]
	ldr r1, _0802453C @ =0x04000050
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	b _0802454C
	.align 2, 0
_08024528: .4byte gMPlayInfo_0
_0802452C: .4byte gMPlayInfo_1
_08024530: .4byte gMPlayInfo_2
_08024534: .4byte gMPlayInfo_3
_08024538: .4byte gUnk_03005498
_0802453C: .4byte 0x04000050
_08024540:
	ldr r1, _0802455C @ =gMosaicSize
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802454C
	subs r0, #1
	strb r0, [r1]
_0802454C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802455C: .4byte gMosaicSize

	thumb_func_start sub_08024560
sub_08024560: @ 0x08024560
	push {r4, r5, r6, lr}
	ldr r1, _080245C4 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r1]
	ldr r5, _080245C8 @ =gUnk_03004C20
	ldr r4, [r5, #4]
	movs r6, #1
	ands r4, r6
	cmp r4, #0
	bne _080245BC
	ldr r1, _080245CC @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _080245D0 @ =gUnk_03005498
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _080245BC
	bl sub_0800A468
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5]
	ldr r1, _080245D4 @ =gCallbackQueue
	ldr r0, _080245D8 @ =InputHandler_Normal
	str r0, [r1, #0x28]
	ldr r0, _080245DC @ =sub_0804AF00
	str r0, [r1, #0x2c]
	ldr r0, _080245E0 @ =sub_080249A4
	str r0, [r1, #0x30]
	ldr r0, _080245E4 @ =sub_0800BFF4
	str r0, [r1, #0x34]
	str r6, [r1, #0x38]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	adds r1, #0x79
	movs r0, #5
	strb r0, [r1]
_080245BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080245C4: .4byte gUnk_030034E4
_080245C8: .4byte gUnk_03004C20
_080245CC: .4byte 0x04000050
_080245D0: .4byte gUnk_03005498
_080245D4: .4byte gCallbackQueue
_080245D8: .4byte InputHandler_Normal
_080245DC: .4byte sub_0804AF00
_080245E0: .4byte sub_080249A4
_080245E4: .4byte sub_0800BFF4

	thumb_func_start sub_080245E8
sub_080245E8: @ 0x080245E8
	push {r4, r5, r6, r7, lr}
	ldr r2, _08024658 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r2]
	ldr r5, _0802465C @ =gUnk_03004C20
	ldr r4, [r5, #4]
	movs r6, #1
	ands r4, r6
	cmp r4, #0
	beq _080245FE
	b _0802470C
_080245FE:
	ldr r1, _08024660 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _08024664 @ =gUnk_03005498
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08024704
	strb r4, [r2]
	bl sub_080008DC
	movs r7, #1
	rsbs r7, r7, #0
	str r7, [r5]
	ldr r1, _08024668 @ =gCallbackQueue
	ldr r3, _0802466C @ =InputHandler_Normal
	str r3, [r1, #0x28]
	ldr r2, _08024670 @ =gUnk_03003410
	ldrb r0, [r2, #7]
	cmp r0, #1
	bne _080246BC
	ldrb r0, [r5, #0xd]
	cmp r0, #6
	bne _08024680
	ldr r0, _08024674 @ =sub_0803B600
	str r0, [r1, #0x2c]
	ldr r0, _08024678 @ =sub_08025718
	str r0, [r1, #0x30]
	ldr r0, _0802467C @ =sub_0800BFF4
	str r0, [r1, #0x34]
	str r6, [r1, #0x38]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	adds r1, #0x79
	movs r0, #5
	b _080246A4
	.align 2, 0
_08024658: .4byte gUnk_030034E4
_0802465C: .4byte gUnk_03004C20
_08024660: .4byte 0x04000050
_08024664: .4byte gUnk_03005498
_08024668: .4byte gCallbackQueue
_0802466C: .4byte InputHandler_Normal
_08024670: .4byte gUnk_03003410
_08024674: .4byte sub_0803B600
_08024678: .4byte sub_08025718
_0802467C: .4byte sub_0800BFF4
_08024680:
	strb r4, [r5, #0xc]
	strb r4, [r2, #9]
	strb r4, [r2, #0xa]
	ldr r0, _080246B0 @ =sub_08001158
	str r0, [r1, #0x28]
	strb r6, [r2, #8]
	ldr r0, _080246B4 @ =sub_08003904
	str r0, [r1, #0x2c]
	str r6, [r1, #0x30]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	adds r1, #0x79
	movs r0, #3
_080246A4:
	strb r0, [r1]
	ldr r1, _080246B8 @ =gUnk_03004C20
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	b _0802470C
	.align 2, 0
_080246B0: .4byte sub_08001158
_080246B4: .4byte sub_08003904
_080246B8: .4byte gUnk_03004C20
_080246BC:
	ldr r0, _080246F0 @ =gUnk_03002920
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r4, [r0]
	ldr r0, _080246F4 @ =gMosaicSize
	strb r4, [r0]
	ldr r0, _080246F8 @ =sub_08049724
	str r0, [r1, #0x2c]
	ldr r0, _080246FC @ =sub_0800D0C4
	str r0, [r1, #0x30]
	str r6, [r1, #0x34]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	adds r1, #0x79
	movs r0, #4
	strb r0, [r1]
	str r7, [r5]
	ldr r0, _08024700 @ =gUnk_03004D9C
	strb r4, [r0]
	b _0802470C
	.align 2, 0
_080246F0: .4byte gUnk_03002920
_080246F4: .4byte gMosaicSize
_080246F8: .4byte sub_08049724
_080246FC: .4byte sub_0800D0C4
_08024700: .4byte gUnk_03004D9C
_08024704:
	ldr r1, _08024714 @ =gMosaicSize
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802470C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024714: .4byte gMosaicSize

	thumb_func_start sub_08024718
sub_08024718: @ 0x08024718
	push {r4, r5, r6, r7, lr}
	ldr r1, _08024770 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08024774 @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802472E
	b _08024998
_0802472E:
	ldr r0, _08024778 @ =gUnk_03005498
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _080247B8
	ldr r4, _0802477C @ =gUnk_03005210
	ldrh r0, [r4]
	subs r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _08024790
	ldr r0, _08024780 @ =gMPlayInfo_0
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08024784 @ =gMPlayInfo_1
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08024788 @ =gMPlayInfo_2
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _0802478C @ =gMPlayInfo_3
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	b _080247B8
	.align 2, 0
_08024770: .4byte gUnk_030034E4
_08024774: .4byte gUnk_03004C20
_08024778: .4byte gUnk_03005498
_0802477C: .4byte gUnk_03005210
_08024780: .4byte gMPlayInfo_0
_08024784: .4byte gMPlayInfo_1
_08024788: .4byte gMPlayInfo_2
_0802478C: .4byte gMPlayInfo_3
_08024790:
	ldr r0, _08024840 @ =gMPlayInfo_0
	movs r1, #0xff
	movs r2, #0x10
	bl m4aMPlayVolumeControl
	ldr r0, _08024844 @ =gMPlayInfo_1
	movs r1, #0xff
	movs r2, #0x10
	bl m4aMPlayVolumeControl
	ldr r0, _08024848 @ =gMPlayInfo_2
	movs r1, #0xff
	movs r2, #0x10
	bl m4aMPlayVolumeControl
	ldr r0, _0802484C @ =gMPlayInfo_3
	movs r1, #0xff
	movs r2, #0x10
	bl m4aMPlayVolumeControl
_080247B8:
	ldr r1, _08024850 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	ldr r1, _08024854 @ =gUnk_03005498
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x11
	beq _080247D0
	b _08024990
_080247D0:
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08024858 @ =gMosaicSize
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _0802485C @ =gUnk_030034E4
	movs r4, #0
	strb r4, [r0]
	bl sub_0800A468
	ldr r2, _08024860 @ =gBg2XMag
	ldr r1, _08024864 @ =gBg2YMag
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	strh r0, [r2]
	ldr r0, _08024868 @ =gBg2Alpha
	strb r4, [r0]
	ldr r2, _0802486C @ =gUnk_03002920
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #0
	strb r1, [r0]
	adds r3, #0x44
	adds r0, r2, r3
	strb r1, [r0]
	ldr r2, _08024870 @ =gCallbackQueue
	adds r3, r2, #0
	adds r3, #0x78
	ldrb r0, [r3]
	movs r4, #0
	cmp r0, #1
	beq _08024886
	adds r5, r2, #0
	adds r6, r5, #0
	adds r6, #0x28
	ldr r0, _08024874 @ =sub_08026374
	mov ip, r0
	adds r7, r3, #0
_08024822:
	lsls r2, r1, #2
	adds r0, r2, r5
	ldr r3, [r0]
	cmp r3, ip
	beq _08024830
	cmp r4, #1
	bne _08024878
_08024830:
	adds r2, r2, r6
	adds r1, #1
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	str r0, [r2]
	movs r4, #1
	b _0802487E
	.align 2, 0
_08024840: .4byte gMPlayInfo_0
_08024844: .4byte gMPlayInfo_1
_08024848: .4byte gMPlayInfo_2
_0802484C: .4byte gMPlayInfo_3
_08024850: .4byte 0x04000050
_08024854: .4byte gUnk_03005498
_08024858: .4byte gMosaicSize
_0802485C: .4byte gUnk_030034E4
_08024860: .4byte gBg2XMag
_08024864: .4byte gBg2YMag
_08024868: .4byte gBg2Alpha
_0802486C: .4byte gUnk_03002920
_08024870: .4byte gCallbackQueue
_08024874: .4byte sub_08026374
_08024878:
	adds r0, r2, r6
	str r3, [r0]
	adds r1, #1
_0802487E:
	ldrb r0, [r7]
	subs r0, #1
	cmp r1, r0
	blo _08024822
_08024886:
	cmp r4, #1
	bne _080248A6
	ldr r1, _0802491C @ =gCallbackQueue
	adds r2, r1, #0
	adds r2, #0x78
	ldrb r0, [r2]
	subs r0, #1
	adds r4, r1, #0
	adds r4, #0x79
	movs r3, #0
	strb r0, [r4]
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r3, [r0]
_080248A6:
	bl m4aMPlayAllStop
	ldr r4, _08024920 @ =gUnk_03005210
	movs r0, #0
	strh r0, [r4]
	ldr r0, _08024924 @ =gMPlayInfo_0
	movs r1, #0xff
	movs r2, #0
	bl m4aMPlayVolumeControl
	ldr r0, _08024928 @ =gMPlayInfo_1
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _0802492C @ =gMPlayInfo_2
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08024930 @ =gMPlayInfo_3
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r2, _08024934 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08024938 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0802493C @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08024940 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	bl sub_08002FD0
	bl sub_0800B3C0
	ldr r0, _08024944 @ =gUnk_03004C20
	ldrb r0, [r0, #0xb]
	cmp r0, #1
	bne _08024954
	ldr r1, _08024948 @ =gUnk_030051C8
	ldr r0, _0802494C @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	subs r0, #1
	strb r0, [r1]
	ldr r0, _08024950 @ =gUnk_03005284
	ldr r2, [r0]
	ldrb r0, [r2, #8]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #8]
	b _0802495E
	.align 2, 0
_0802491C: .4byte gCallbackQueue
_08024920: .4byte gUnk_03005210
_08024924: .4byte gMPlayInfo_0
_08024928: .4byte gMPlayInfo_1
_0802492C: .4byte gMPlayInfo_2
_08024930: .4byte gMPlayInfo_3
_08024934: .4byte 0x04000200
_08024938: .4byte 0x0000FFFE
_0802493C: .4byte 0x04000004
_08024940: .4byte 0x0000FFF7
_08024944: .4byte gUnk_03004C20
_08024948: .4byte gUnk_030051C8
_0802494C: .4byte gUnk_03004654
_08024950: .4byte gUnk_03005284
_08024954:
	ldr r0, _08024980 @ =gUnk_03005284
	ldr r1, [r0]
	ldr r0, _08024984 @ =gUnk_030051C8
	ldrb r0, [r0]
	strb r0, [r1, #6]
_0802495E:
	movs r0, #0
	movs r1, #1
	bl sub_08046DB8
	ldr r2, _08024988 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0802498C @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	b _08024998
	.align 2, 0
_08024980: .4byte gUnk_03005284
_08024984: .4byte gUnk_030051C8
_08024988: .4byte 0x04000200
_0802498C: .4byte 0x04000004
_08024990:
	ldr r1, _080249A0 @ =gMosaicSize
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08024998:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080249A0: .4byte gMosaicSize

	thumb_func_start sub_080249A4
sub_080249A4: @ 0x080249A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08024A14 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r3]
	ldr r2, _08024A18 @ =gUnk_03004C20
	ldr r1, [r2, #4]
	movs r0, #1
	ands r1, r0
	mov sl, r3
	mov sb, r2
	cmp r1, #0
	bne _08024A6A
	ldr r1, _08024A1C @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _08024A20 @ =gUnk_03005498
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08024A6A
	movs r3, #0
	ldr r0, _08024A24 @ =gCallbackQueue
	adds r2, r0, #0
	adds r2, #0x78
	ldrb r1, [r2]
	movs r4, #0
	adds r7, r0, #0
	cmp r1, #1
	beq _08024A3E
	adds r6, r7, #0
	adds r5, r7, #0
	adds r5, #0x28
	ldr r0, _08024A28 @ =sub_080249A4
	mov r8, r0
	mov ip, r2
_080249F6:
	lsls r2, r3, #2
	adds r0, r2, r6
	ldr r1, [r0]
	cmp r1, r8
	beq _08024A04
	cmp r4, #1
	bne _08024A2C
_08024A04:
	adds r2, r2, r5
	adds r1, r3, #1
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r2]
	movs r4, #1
	b _08024A32
	.align 2, 0
_08024A14: .4byte gUnk_030034E4
_08024A18: .4byte gUnk_03004C20
_08024A1C: .4byte 0x04000050
_08024A20: .4byte gUnk_03005498
_08024A24: .4byte gCallbackQueue
_08024A28: .4byte sub_080249A4
_08024A2C:
	adds r0, r2, r5
	str r1, [r0]
	adds r1, r3, #1
_08024A32:
	adds r3, r1, #0
	mov r1, ip
	ldrb r0, [r1]
	subs r0, #1
	cmp r3, r0
	blo _080249F6
_08024A3E:
	cmp r4, #1
	bne _08024A60
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
_08024A60:
	movs r0, #0
	mov r1, sb
	str r0, [r1]
	mov r2, sl
	strb r0, [r2]
_08024A6A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08024A78
sub_08024A78: @ 0x08024A78
	push {r4, r5, r6, lr}
	ldr r2, _08024B00 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r2]
	ldr r6, _08024B04 @ =gUnk_03004C20
	ldr r4, [r6, #4]
	movs r5, #1
	ands r4, r5
	cmp r4, #0
	bne _08024B48
	ldr r1, _08024B08 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _08024B0C @ =gUnk_03005498
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08024B40
	strb r4, [r2]
	bl sub_080008DC
	ldr r2, _08024B10 @ =gBg2XMag
	ldr r1, _08024B14 @ =gBg2YMag
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	strh r0, [r2]
	ldr r0, _08024B18 @ =gBg2Alpha
	strb r4, [r0]
	ldr r2, _08024B1C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08024B20 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08024B24 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08024B28 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08024B2C @ =gUnk_03004658
	ldr r0, [r0]
	strb r4, [r0, #0xc]
	ldr r1, _08024B30 @ =gCallbackQueue
	ldr r0, _08024B34 @ =InputHandler_Normal
	str r0, [r1, #0x28]
	ldr r0, _08024B38 @ =sub_080487B4
	str r0, [r1, #0x2c]
	ldr r0, _08024B3C @ =sub_0800BFF4
	str r0, [r1, #0x30]
	str r5, [r1, #0x34]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	adds r1, #0x79
	movs r0, #4
	strb r0, [r1]
	subs r0, #5
	str r0, [r6]
	b _08024B48
	.align 2, 0
_08024B00: .4byte gUnk_030034E4
_08024B04: .4byte gUnk_03004C20
_08024B08: .4byte 0x04000050
_08024B0C: .4byte gUnk_03005498
_08024B10: .4byte gBg2XMag
_08024B14: .4byte gBg2YMag
_08024B18: .4byte gBg2Alpha
_08024B1C: .4byte 0x04000200
_08024B20: .4byte 0x0000FFFD
_08024B24: .4byte 0x04000004
_08024B28: .4byte 0x0000FFEF
_08024B2C: .4byte gUnk_03004658
_08024B30: .4byte gCallbackQueue
_08024B34: .4byte InputHandler_Normal
_08024B38: .4byte sub_080487B4
_08024B3C: .4byte sub_0800BFF4
_08024B40:
	ldr r1, _08024B50 @ =gMosaicSize
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08024B48:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024B50: .4byte gMosaicSize

	thumb_func_start sub_08024B54
sub_08024B54: @ 0x08024B54
	push {r4, r5, r6, lr}
	ldr r2, _08024BE0 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r2]
	ldr r6, _08024BE4 @ =gUnk_03004C20
	ldr r4, [r6, #4]
	movs r5, #1
	ands r4, r5
	cmp r4, #0
	bne _08024C28
	ldr r1, _08024BE8 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _08024BEC @ =gUnk_03005498
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08024C20
	strb r4, [r2]
	bl sub_080008DC
	ldr r2, _08024BF0 @ =gBg2XMag
	ldr r1, _08024BF4 @ =gBg2YMag
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	strh r0, [r2]
	ldr r0, _08024BF8 @ =gBg2Alpha
	strb r4, [r0]
	ldr r2, _08024BFC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08024C00 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08024C04 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08024C08 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08024C0C @ =gUnk_03004658
	ldr r0, [r0]
	strb r4, [r0, #0xc]
	ldr r2, _08024C10 @ =gCallbackQueue
	ldr r1, _08024C14 @ =gUnk_03003410
	strb r4, [r1, #9]
	strb r4, [r1, #0xa]
	ldr r0, _08024C18 @ =sub_08001158
	str r0, [r2, #0x28]
	strb r5, [r1, #8]
	ldr r0, _08024C1C @ =sub_08003904
	str r0, [r2, #0x2c]
	str r5, [r2, #0x30]
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	str r4, [r0]
	adds r2, #0x79
	movs r0, #3
	strb r0, [r2]
	subs r0, #4
	str r0, [r6]
	b _08024C28
	.align 2, 0
_08024BE0: .4byte gUnk_030034E4
_08024BE4: .4byte gUnk_03004C20
_08024BE8: .4byte 0x04000050
_08024BEC: .4byte gUnk_03005498
_08024BF0: .4byte gBg2XMag
_08024BF4: .4byte gBg2YMag
_08024BF8: .4byte gBg2Alpha
_08024BFC: .4byte 0x04000200
_08024C00: .4byte 0x0000FFFD
_08024C04: .4byte 0x04000004
_08024C08: .4byte 0x0000FFEF
_08024C0C: .4byte gUnk_03004658
_08024C10: .4byte gCallbackQueue
_08024C14: .4byte gUnk_03003410
_08024C18: .4byte sub_08001158
_08024C1C: .4byte sub_08003904
_08024C20:
	ldr r1, _08024C30 @ =gMosaicSize
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08024C28:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024C30: .4byte gMosaicSize

	thumb_func_start sub_08024C34
sub_08024C34: @ 0x08024C34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08024CDC @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r2]
	ldr r5, _08024CE0 @ =gUnk_03004C20
	ldr r4, [r5, #4]
	movs r0, #1
	mov r8, r0
	ands r4, r0
	cmp r4, #0
	beq _08024C50
	b _08024D74
_08024C50:
	ldr r1, _08024CE4 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r6, _08024CE8 @ =gUnk_03005498
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x10
	beq _08024C68
	b _08024D6C
_08024C68:
	strb r4, [r2]
	bl sub_080008DC
	ldr r2, _08024CEC @ =gBg2XMag
	ldr r1, _08024CF0 @ =gBg2YMag
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	strh r0, [r2]
	ldr r0, _08024CF4 @ =gBg2Alpha
	strb r4, [r0]
	ldr r2, _08024CF8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08024CFC @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08024D00 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08024D04 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08024D08 @ =gUnk_03004658
	ldr r0, [r0]
	strb r4, [r0, #0xc]
	ldr r0, _08024D0C @ =gUnk_03005220
	adds r0, #0x37
	ldrb r3, [r0]
	cmp r3, #0
	bne _08024D4C
	ldrb r0, [r5, #0xd]
	cmp r0, #6
	beq _08024D1C
	ldrb r0, [r5, #0xc]
	cmp r0, #8
	bne _08024D1C
	ldr r0, _08024D10 @ =gUnk_03005284
	ldr r2, [r0]
	ldrb r1, [r5, #0xd]
	lsls r0, r1, #1
	adds r0, r0, r1
	strb r0, [r2, #4]
	strb r7, [r6]
	ldr r1, _08024D14 @ =gCallbackQueue
	ldr r0, _08024D18 @ =sub_0804BE58
	str r0, [r1, #0x28]
	mov r0, r8
	str r0, [r1, #0x2c]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r3, [r0]
	adds r1, #0x79
	movs r0, #2
	b _08024D4A
	.align 2, 0
_08024CDC: .4byte gUnk_030034E4
_08024CE0: .4byte gUnk_03004C20
_08024CE4: .4byte 0x04000050
_08024CE8: .4byte gUnk_03005498
_08024CEC: .4byte gBg2XMag
_08024CF0: .4byte gBg2YMag
_08024CF4: .4byte gBg2Alpha
_08024CF8: .4byte 0x04000200
_08024CFC: .4byte 0x0000FFFD
_08024D00: .4byte 0x04000004
_08024D04: .4byte 0x0000FFEF
_08024D08: .4byte gUnk_03004658
_08024D0C: .4byte gUnk_03005220
_08024D10: .4byte gUnk_03005284
_08024D14: .4byte gCallbackQueue
_08024D18: .4byte sub_0804BE58
_08024D1C:
	bl sub_08003D58
	ldr r2, _08024D58 @ =gUnk_03003410
	movs r4, #0
	strb r4, [r2, #9]
	strb r4, [r2, #0xa]
	ldr r1, _08024D5C @ =gCallbackQueue
	ldr r0, _08024D60 @ =sub_08001158
	str r0, [r1, #0x28]
	movs r3, #1
	strb r3, [r2, #8]
	ldr r0, _08024D64 @ =sub_08003904
	str r0, [r1, #0x2c]
	str r3, [r1, #0x30]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	adds r1, #0x79
	movs r0, #3
_08024D4A:
	strb r0, [r1]
_08024D4C:
	ldr r1, _08024D68 @ =gUnk_03004C20
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	b _08024D74
	.align 2, 0
_08024D58: .4byte gUnk_03003410
_08024D5C: .4byte gCallbackQueue
_08024D60: .4byte sub_08001158
_08024D64: .4byte sub_08003904
_08024D68: .4byte gUnk_03004C20
_08024D6C:
	ldr r1, _08024D80 @ =gMosaicSize
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08024D74:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024D80: .4byte gMosaicSize

	thumb_func_start sub_08024D84
sub_08024D84: @ 0x08024D84
	push {r4, r5, r6, lr}
	ldr r0, _08024DBC @ =gUnk_030034E4
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08024DC0 @ =gUnk_03005498
	ldrb r2, [r0]
	cmp r2, #0
	bne _08024DCC
	movs r1, #1
	ldr r2, _08024DC4 @ =gUnk_03005428
	ldr r5, _08024DC8 @ =gUnk_03002920
	ldrb r0, [r2]
	cmp r1, r0
	bhs _08024DB6
	movs r4, #0
	movs r3, #0x1c
	adds r0, r5, #0
	adds r0, #0x2b
_08024DA8:
	strb r4, [r0, #1]
	strb r3, [r0]
	adds r0, #0x1c
	adds r1, #1
	ldrb r6, [r2]
	cmp r1, r6
	blo _08024DA8
_08024DB6:
	movs r0, #1
	strb r0, [r5, #0x10]
	b _08024DE0
	.align 2, 0
_08024DBC: .4byte gUnk_030034E4
_08024DC0: .4byte gUnk_03005498
_08024DC4: .4byte gUnk_03005428
_08024DC8: .4byte gUnk_03002920
_08024DCC:
	ldr r0, _08024E6C @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08024DDA
	b _08024F4C
_08024DDA:
	cmp r2, #0xf
	bls _08024DE0
	b _08024F4C
_08024DE0:
	ldr r0, _08024E70 @ =gUnk_03005498
	ldrb r0, [r0]
	cmp r0, #1
	bne _08024E30
	ldr r3, _08024E74 @ =0x04000004
	ldrh r1, [r3]
	movs r0, #0xff
	ands r0, r1
	ldr r2, _08024E78 @ =0xFFFF8F00
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08024E7C @ =gIntrTable
	ldr r0, _08024E80 @ =sub_0800111C
	str r0, [r1, #8]
	ldr r2, _08024E84 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08024E88 @ =0x04000050
	movs r0, #0xe7
	strh r0, [r1]
	ldr r1, _08024E6C @ =gUnk_03004C20
	ldrb r0, [r1, #0xd]
	cmp r0, #6
	bne _08024E30
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	beq _08024E28
	cmp r0, #3
	bne _08024E30
_08024E28:
	ldr r1, _08024E8C @ =0x04000048
	ldr r6, _08024E90 @ =0x00000121
	adds r0, r6, #0
	strh r0, [r1]
_08024E30:
	ldr r4, _08024E94 @ =gUnk_03005210
	ldrh r0, [r4]
	subs r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _08024EA8
	ldr r0, _08024E98 @ =gMPlayInfo_0
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08024E9C @ =gMPlayInfo_1
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08024EA0 @ =gMPlayInfo_2
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08024EA4 @ =gMPlayInfo_3
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	b _08024ED0
	.align 2, 0
_08024E6C: .4byte gUnk_03004C20
_08024E70: .4byte gUnk_03005498
_08024E74: .4byte 0x04000004
_08024E78: .4byte 0xFFFF8F00
_08024E7C: .4byte gIntrTable
_08024E80: .4byte sub_0800111C
_08024E84: .4byte 0x04000200
_08024E88: .4byte 0x04000050
_08024E8C: .4byte 0x04000048
_08024E90: .4byte 0x00000121
_08024E94: .4byte gUnk_03005210
_08024E98: .4byte gMPlayInfo_0
_08024E9C: .4byte gMPlayInfo_1
_08024EA0: .4byte gMPlayInfo_2
_08024EA4: .4byte gMPlayInfo_3
_08024EA8:
	ldr r0, _08024F24 @ =gMPlayInfo_0
	movs r1, #0xff
	movs r2, #0x10
	bl m4aMPlayVolumeControl
	ldr r0, _08024F28 @ =gMPlayInfo_1
	movs r1, #0xff
	movs r2, #0x10
	bl m4aMPlayVolumeControl
	ldr r0, _08024F2C @ =gMPlayInfo_2
	movs r1, #0xff
	movs r2, #0x10
	bl m4aMPlayVolumeControl
	ldr r0, _08024F30 @ =gMPlayInfo_3
	movs r1, #0xff
	movs r2, #0x10
	bl m4aMPlayVolumeControl
_08024ED0:
	ldr r1, _08024F34 @ =gUnk_03005498
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08024F3C
	bl m4aMPlayAllStop
	ldr r4, _08024F38 @ =gUnk_03005210
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	strh r0, [r4]
	ldr r0, _08024F24 @ =gMPlayInfo_0
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08024F28 @ =gMPlayInfo_1
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08024F2C @ =gMPlayInfo_2
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08024F30 @ =gMPlayInfo_3
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	movs r0, #0x78
	bl m4aSongNumStart
	bl sub_08025F94
	b _08024F4C
	.align 2, 0
_08024F24: .4byte gMPlayInfo_0
_08024F28: .4byte gMPlayInfo_1
_08024F2C: .4byte gMPlayInfo_2
_08024F30: .4byte gMPlayInfo_3
_08024F34: .4byte gUnk_03005498
_08024F38: .4byte gUnk_03005210
_08024F3C:
	cmp r0, #9
	bne _08024F4C
	ldr r2, _08024FDC @ =gUnk_03002920
	ldrb r1, [r2, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xc]
_08024F4C:
	ldr r0, _08024FE0 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	ldr r1, _08024FE4 @ =gUnk_03003410
	cmp r0, #0
	bne _08024F60
	ldr r0, [r1]
	cmp r0, #0xfa
	bls _08025020
_08024F60:
	ldr r0, [r1]
	cmp r0, #0
	beq _08025020
	ldr r2, _08024FE8 @ =gUnk_03005220
	ldrb r0, [r2]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	bl m4aMPlayAllStop
	bl VBlankIntrWait
	ldr r1, _08024FEC @ =gUnk_03004C20
	ldrb r0, [r1, #0xd]
	cmp r0, #6
	bne _08024F92
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	beq _08024F8A
	cmp r0, #3
	bne _08024F92
_08024F8A:
	ldr r1, _08024FF0 @ =0x04000048
	ldr r2, _08024FF4 @ =0x00002121
	adds r0, r2, #0
	strh r0, [r1]
_08024F92:
	ldr r1, _08024FF8 @ =0x0400004A
	movs r0, #0x30
	strh r0, [r1]
	ldr r4, _08024FFC @ =gUnk_03005210
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r6, #0
	strh r0, [r4]
	ldr r0, _08025000 @ =gMPlayInfo_0
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08025004 @ =gMPlayInfo_1
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _08025008 @ =gMPlayInfo_2
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _0802500C @ =gMPlayInfo_3
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r1, _08025010 @ =gCallbackQueue
	ldr r0, _08025014 @ =sub_0802502C
	str r0, [r1, #4]
	ldr r2, _08025018 @ =gUnk_03005498
	ldr r1, _0802501C @ =gMosaicSize
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	b _08025026
	.align 2, 0
_08024FDC: .4byte gUnk_03002920
_08024FE0: .4byte gNewKeys
_08024FE4: .4byte gUnk_03003410
_08024FE8: .4byte gUnk_03005220
_08024FEC: .4byte gUnk_03004C20
_08024FF0: .4byte 0x04000048
_08024FF4: .4byte 0x00002121
_08024FF8: .4byte 0x0400004A
_08024FFC: .4byte gUnk_03005210
_08025000: .4byte gMPlayInfo_0
_08025004: .4byte gMPlayInfo_1
_08025008: .4byte gMPlayInfo_2
_0802500C: .4byte gMPlayInfo_3
_08025010: .4byte gCallbackQueue
_08025014: .4byte sub_0802502C
_08025018: .4byte gUnk_03005498
_0802501C: .4byte gMosaicSize
_08025020:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08025026:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0802502C
sub_0802502C: @ 0x0802502C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _08025218 @ =gUnk_030034E4
	movs r0, #1
	mov r8, r0
	strb r0, [r7]
	ldr r0, _0802521C @ =gUnk_03004C20
	ldr r3, [r0, #4]
	movs r6, #1
	ands r3, r6
	cmp r3, #0
	beq _08025048
	b _0802520C
_08025048:
	ldr r5, _08025220 @ =gUnk_03005498
	ldrb r0, [r5]
	cmp r0, #0
	bne _08025064
	ldr r2, _08025224 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08025228 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0802522C @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08025230 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2]
_08025064:
	ldr r1, _08025234 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x10
	beq _0802507A
	b _0802520C
_0802507A:
	strb r3, [r7]
	ldr r2, _08025238 @ =gBg2XMag
	ldr r1, _0802523C @ =gBg2YMag
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	strh r0, [r1]
	strh r0, [r2]
	ldr r0, _08025240 @ =gBg2Alpha
	strb r3, [r0]
	strb r4, [r5]
	ldr r1, _08025244 @ =gMosaicSize
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _08025248 @ =gUnk_03005220
	mov ip, r0
	adds r0, #0x37
	ldrb r3, [r0]
	cmp r3, #0
	beq _080250A4
	b _08025204
_080250A4:
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _0802524C @ =0x00003741
	adds r0, r2, #0
	strh r0, [r1]
	ldr r7, _08025224 @ =0x04000200
	ldrh r1, [r7]
	ldr r0, _08025250 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r7]
	ldr r5, _0802522C @ =0x04000004
	ldrh r1, [r5]
	ldr r0, _08025254 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r5]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	movs r1, #0
	strh r3, [r0]
	ldr r2, _08025258 @ =gUnk_03003410
	strb r6, [r2, #9]
	strb r1, [r2, #0xa]
	ldr r1, _0802525C @ =gCallbackQueue
	ldr r0, _08025260 @ =sub_08001158
	str r0, [r1, #0x28]
	strb r6, [r2, #8]
	ldr r0, _08025264 @ =sub_08003904
	str r0, [r1, #0x2c]
	str r6, [r1, #0x30]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r3, [r0]
	adds r1, #0x79
	movs r0, #3
	strb r0, [r1]
	ldr r1, _08025268 @ =gUnk_03005210
	ldr r2, _0802526C @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _08025270 @ =gUnk_03005284
	ldr r3, [r4]
	ldrb r0, [r3, #8]
	movs r1, #0x1c
	ands r1, r0
	mov r0, ip
	ldrb r2, [r0]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrh r0, [r3, #8]
	movs r1, #0xfe
	lsls r1, r1, #4
	ands r1, r0
	mov r0, ip
	ldrh r2, [r0]
	ldr r0, _08025274 @ =0xFFFFF01F
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	ldrb r0, [r3, #9]
	movs r1, #0x70
	ands r1, r0
	mov r0, ip
	ldrb r2, [r0, #1]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #1]
	ldrh r0, [r3, #0x14]
	strh r0, [r1, #0x14]
	ldrb r0, [r3, #0xb]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #5
	ldrb r2, [r1, #3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	mov r0, ip
	strb r1, [r0, #3]
	ldrb r0, [r3, #0xb]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #6
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	mov r0, ip
	strb r1, [r0, #3]
	ldr r0, [r3, #0xc]
	mov r1, ip
	str r0, [r1, #8]
	ldr r0, [r3, #0x10]
	str r0, [r1, #0xc]
	ldrh r0, [r3, #0xa]
	movs r1, #0xfc
	lsls r1, r1, #5
	ands r1, r0
	mov r0, ip
	ldrh r2, [r0, #2]
	ldr r0, _08025278 @ =0xFFFFE07F
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strh r0, [r1, #2]
	ldrb r0, [r3, #5]
	adds r1, #0x2e
	strb r0, [r1]
	ldrb r1, [r3, #7]
	mov r0, ip
	adds r0, #0x58
	strb r1, [r0]
	ldr r2, [r3, #8]
	movs r0, #0xff
	lsls r0, r0, #0xf
	ands r2, r0
	mov r1, ip
	ldr r0, [r1]
	ldr r1, _0802527C @ =0xFF807FFF
	ands r0, r1
	orrs r0, r2
	mov r2, ip
	str r0, [r2]
	mov r0, ip
	adds r0, #0x4c
	ldrb r0, [r0]
	strb r0, [r3]
	ldrh r1, [r7]
	ldr r0, _08025280 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r7]
	ldrh r1, [r5]
	ldr r0, _08025284 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r5]
	bl m4aSoundVSyncOff
	ldr r4, [r4]
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080251E8
	ldr r0, _08025288 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	subs r0, #1
	strb r0, [r4, #6]
_080251E8:
	movs r0, #0
	movs r1, #1
	bl sub_08046DB8
	ldrh r0, [r7]
	movs r1, #1
	orrs r0, r1
	strh r0, [r7]
	ldrh r0, [r5]
	movs r1, #8
	orrs r0, r1
	strh r0, [r5]
	bl m4aSoundVSyncOn
_08025204:
	ldr r1, _0802521C @ =gUnk_03004C20
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_0802520C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025218: .4byte gUnk_030034E4
_0802521C: .4byte gUnk_03004C20
_08025220: .4byte gUnk_03005498
_08025224: .4byte 0x04000200
_08025228: .4byte 0x0000FFFB
_0802522C: .4byte 0x04000004
_08025230: .4byte 0x0000FFDF
_08025234: .4byte 0x04000050
_08025238: .4byte gBg2XMag
_0802523C: .4byte gBg2YMag
_08025240: .4byte gBg2Alpha
_08025244: .4byte gMosaicSize
_08025248: .4byte gUnk_03005220
_0802524C: .4byte 0x00003741
_08025250: .4byte 0x0000FFFD
_08025254: .4byte 0x0000FFEF
_08025258: .4byte gUnk_03003410
_0802525C: .4byte gCallbackQueue
_08025260: .4byte sub_08001158
_08025264: .4byte sub_08003904
_08025268: .4byte gUnk_03005210
_0802526C: .4byte 0x0000FFFF
_08025270: .4byte gUnk_03005284
_08025274: .4byte 0xFFFFF01F
_08025278: .4byte 0xFFFFE07F
_0802527C: .4byte 0xFF807FFF
_08025280: .4byte 0x0000FFFE
_08025284: .4byte 0x0000FFF7
_08025288: .4byte gUnk_03004654

	thumb_func_start sub_0802528C
sub_0802528C: @ 0x0802528C
	push {r4, r5, r6, r7, lr}
	ldr r3, _08025310 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r3]
	ldr r5, _08025314 @ =gUnk_03004C20
	ldr r4, [r5, #4]
	movs r6, #1
	ands r4, r6
	cmp r4, #0
	bne _08025340
	ldr r0, _08025318 @ =0x04000050
	movs r1, #0xff
	strh r1, [r0]
	ldr r2, _0802531C @ =gUnk_03003410
	ldrb r0, [r2, #0xc]
	cmp r0, #1
	bne _080252BA
	ldr r0, _08025320 @ =0x04000048
	ldr r7, _08025324 @ =0x00003F3F
	adds r1, r7, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_080252BA:
	ldr r1, _08025328 @ =gUnk_03005498
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08025338
	strb r4, [r3]
	ldrb r0, [r2, #0xc]
	cmp r0, #1
	bne _080252EE
	bl sub_080471F4
	movs r0, #1
	movs r1, #0
	bl sub_08046DB8
	ldr r0, _0802532C @ =gUnk_03005284
	ldr r1, [r0]
	ldrb r0, [r5, #0xd]
	strb r0, [r1, #1]
	movs r0, #0
	movs r1, #2
	bl sub_08046DB8
_080252EE:
	ldr r1, _08025330 @ =gCallbackQueue
	ldr r0, _08025334 @ =sub_0804BE58
	str r0, [r1, #0x28]
	str r6, [r1, #0x2c]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	adds r1, #0x79
	movs r0, #2
	strb r0, [r1]
	subs r0, #3
	str r0, [r5]
	b _08025340
	.align 2, 0
_08025310: .4byte gUnk_030034E4
_08025314: .4byte gUnk_03004C20
_08025318: .4byte 0x04000050
_0802531C: .4byte gUnk_03003410
_08025320: .4byte 0x04000048
_08025324: .4byte 0x00003F3F
_08025328: .4byte gUnk_03005498
_0802532C: .4byte gUnk_03005284
_08025330: .4byte gCallbackQueue
_08025334: .4byte sub_0804BE58
_08025338:
	ldr r1, _08025348 @ =gMosaicSize
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08025340:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025348: .4byte gMosaicSize

	thumb_func_start sub_0802534C
sub_0802534C: @ 0x0802534C
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _08025390 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r1]
	ldr r4, _08025394 @ =gUnk_03005210
	ldrh r0, [r4]
	subs r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _080253A8
	ldr r0, _08025398 @ =gMPlayInfo_0
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _0802539C @ =gMPlayInfo_1
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _080253A0 @ =gMPlayInfo_2
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _080253A4 @ =gMPlayInfo_3
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	b _080253D0
	.align 2, 0
_08025390: .4byte gUnk_030034E4
_08025394: .4byte gUnk_03005210
_08025398: .4byte gMPlayInfo_0
_0802539C: .4byte gMPlayInfo_1
_080253A0: .4byte gMPlayInfo_2
_080253A4: .4byte gMPlayInfo_3
_080253A8:
	ldr r0, _0802545C @ =gMPlayInfo_0
	movs r1, #0xff
	movs r2, #0x10
	bl m4aMPlayVolumeControl
	ldr r0, _08025460 @ =gMPlayInfo_1
	movs r1, #0xff
	movs r2, #0x10
	bl m4aMPlayVolumeControl
	ldr r0, _08025464 @ =gMPlayInfo_2
	movs r1, #0xff
	movs r2, #0x10
	bl m4aMPlayVolumeControl
	ldr r0, _08025468 @ =gMPlayInfo_3
	movs r1, #0xff
	movs r2, #0x10
	bl m4aMPlayVolumeControl
_080253D0:
	ldr r1, _0802546C @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	ldr r0, _08025470 @ =0x04000048
	ldr r2, _08025474 @ =0x00003F3F
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08025478 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0802547C @ =gUnk_03005498
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	beq _08025400
	b _08025620
_08025400:
	bl m4aMPlayAllStop
	ldr r2, _08025480 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08025484 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08025488 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _0802548C @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	ldr r1, _08025490 @ =gUnk_030034E4
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	bl sub_08046F6C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080254A8
	movs r0, #0
	str r0, [sp]
	ldr r1, _08025494 @ =0x040000D4
	mov r4, sp
	str r4, [r1]
	ldr r0, _08025498 @ =gUnk_03004670
	ldr r2, [r0]
	str r2, [r1, #4]
	ldr r0, _0802549C @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r3, sp, #4
	ldr r4, _080254A0 @ =0x00007F7F
	adds r0, r4, #0
	strh r0, [r3]
	str r3, [r1]
	adds r2, #8
	str r2, [r1, #4]
	ldr r0, _080254A4 @ =0x81000018
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _080254B4
	.align 2, 0
_0802545C: .4byte gMPlayInfo_0
_08025460: .4byte gMPlayInfo_1
_08025464: .4byte gMPlayInfo_2
_08025468: .4byte gMPlayInfo_3
_0802546C: .4byte 0x04000050
_08025470: .4byte 0x04000048
_08025474: .4byte 0x00003F3F
_08025478: .4byte 0x00009FFF
_0802547C: .4byte gUnk_03005498
_08025480: .4byte 0x04000200
_08025484: .4byte 0x0000FFFE
_08025488: .4byte 0x04000004
_0802548C: .4byte 0x0000FFF7
_08025490: .4byte gUnk_030034E4
_08025494: .4byte 0x040000D4
_08025498: .4byte gUnk_03004670
_0802549C: .4byte 0x85000010
_080254A0: .4byte 0x00007F7F
_080254A4: .4byte 0x81000018
_080254A8:
	movs r0, #0
	bl sub_08046F6C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080254E8
_080254B4:
	movs r0, #0
	str r0, [sp]
	ldr r1, _08025534 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r3, _08025538 @ =gUnk_03005284
	ldr r4, [r3]
	str r4, [r1, #4]
	ldr r0, _0802553C @ =0x85000009
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08025540 @ =gUnk_03004C20
	movs r2, #1
	strb r2, [r0, #0xd]
	strb r2, [r4, #1]
	ldr r4, [r3]
	ldr r0, _08025544 @ =gUnk_03005220
	adds r0, #0x4c
	movs r1, #3
	strb r1, [r0]
	strb r1, [r4]
	ldr r1, [r3]
	movs r0, #2
	strb r0, [r1, #0x1c]
	ldr r0, [r3]
	strb r2, [r0, #0x1d]
_080254E8:
	bl sub_080471F4
	ldr r0, _08025548 @ =gUnk_03004670
	ldr r1, [r0]
	ldr r0, [r1, #0x38]
	adds r0, #1
	str r0, [r1, #0x38]
	ldr r2, _0802554C @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08025550 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	ldr r1, _08025544 @ =gUnk_03005220
	ldr r0, _08025538 @ =gUnk_03005284
	ldr r2, [r0]
	ldrb r0, [r2]
	adds r1, #0x4c
	movs r5, #0
	strb r0, [r1]
	ldr r4, _08025540 @ =gUnk_03004C20
	ldrb r0, [r2, #1]
	strb r0, [r4, #0xd]
	ldrb r3, [r2, #2]
	strb r3, [r4, #0xc]
	ldrb r2, [r2, #3]
	cmp r2, #1
	bne _08025554
	movs r0, #0xff
	strb r0, [r4, #0xe]
	b _080255E4
	.align 2, 0
_08025534: .4byte 0x040000D4
_08025538: .4byte gUnk_03005284
_0802553C: .4byte 0x85000009
_08025540: .4byte gUnk_03004C20
_08025544: .4byte gUnk_03005220
_08025548: .4byte gUnk_03004670
_0802554C: .4byte 0x04000200
_08025550: .4byte 0x04000004
_08025554:
	cmp r2, #0
	bne _08025570
	ldr r2, _0802556C @ =gUnk_030034B0
	lsls r3, r3, #4
	ldrb r1, [r2, #6]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #6]
	strb r5, [r4, #0xc]
	b _080255E4
	.align 2, 0
_0802556C: .4byte gUnk_030034B0
_08025570:
	cmp r2, #2
	bne _0802559C
	ldr r1, _08025594 @ =gCallbackQueue
	ldr r0, _08025598 @ =sub_0804BE58
	str r0, [r1, #0x28]
	movs r0, #1
	str r0, [r1, #0x2c]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r5, [r0]
	adds r1, #0x79
	strb r2, [r1]
	b _08025628
	.align 2, 0
_08025594: .4byte gCallbackQueue
_08025598: .4byte sub_0804BE58
_0802559C:
	cmp r2, #7
	bne _080255E4
	ldr r1, _080255D0 @ =gCallbackQueue
	ldr r0, _080255D4 @ =InputHandler_Normal
	str r0, [r1, #0x28]
	ldr r0, _080255D8 @ =sub_0803B600
	str r0, [r1, #0x2c]
	ldr r0, _080255DC @ =sub_08025718
	str r0, [r1, #0x30]
	ldr r0, _080255E0 @ =sub_0800BFF4
	str r0, [r1, #0x34]
	movs r0, #1
	str r0, [r1, #0x38]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r5, [r0]
	adds r1, #0x79
	movs r0, #5
	strb r0, [r1]
	subs r0, #6
	str r0, [r4]
	b _08025628
	.align 2, 0
_080255D0: .4byte gCallbackQueue
_080255D4: .4byte InputHandler_Normal
_080255D8: .4byte sub_0803B600
_080255DC: .4byte sub_08025718
_080255E0: .4byte sub_0800BFF4
_080255E4:
	ldr r2, _08025610 @ =gUnk_03003410
	movs r4, #0
	strb r4, [r2, #9]
	strb r4, [r2, #0xa]
	ldr r1, _08025614 @ =gCallbackQueue
	ldr r0, _08025618 @ =sub_08001158
	str r0, [r1, #0x28]
	movs r3, #1
	strb r3, [r2, #8]
	ldr r0, _0802561C @ =sub_08003904
	str r0, [r1, #0x2c]
	str r3, [r1, #0x30]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	adds r1, #0x79
	movs r0, #3
	b _08025626
	.align 2, 0
_08025610: .4byte gUnk_03003410
_08025614: .4byte gCallbackQueue
_08025618: .4byte sub_08001158
_0802561C: .4byte sub_08003904
_08025620:
	ldr r1, _08025630 @ =gMosaicSize
	ldrb r0, [r1]
	adds r0, #1
_08025626:
	strb r0, [r1]
_08025628:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025630: .4byte gMosaicSize

	thumb_func_start sub_08025634
sub_08025634: @ 0x08025634
	push {r4, r5, r6, r7, lr}
	ldr r2, _080256C4 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r2]
	ldr r7, _080256C8 @ =gUnk_03004C20
	ldr r5, [r7, #4]
	movs r6, #1
	ands r5, r6
	cmp r5, #0
	bne _0802570C
	ldr r1, _080256CC @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _080256D0 @ =gUnk_03005498
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08025704
	strb r5, [r2]
	ldr r2, _080256D4 @ =gBg2XMag
	ldr r1, _080256D8 @ =gBg2YMag
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	strh r0, [r2]
	ldr r0, _080256DC @ =gBg2Alpha
	strb r5, [r0]
	ldr r2, _080256E0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080256E4 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _080256E8 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _080256EC @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080256F0 @ =gUnk_03004658
	ldr r0, [r0]
	strb r5, [r0, #0xc]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7]
	bl sub_08003D58
	ldr r2, _080256F4 @ =gUnk_03003410
	strb r5, [r2, #9]
	strb r5, [r2, #0xa]
	ldr r1, _080256F8 @ =gCallbackQueue
	ldr r0, _080256FC @ =sub_08001158
	str r0, [r1, #0x28]
	strb r6, [r2, #8]
	ldr r0, _08025700 @ =sub_08003904
	str r0, [r1, #0x2c]
	str r6, [r1, #0x30]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r5, [r0]
	adds r1, #0x79
	movs r0, #3
	strb r0, [r1]
	str r4, [r7]
	b _0802570C
	.align 2, 0
_080256C4: .4byte gUnk_030034E4
_080256C8: .4byte gUnk_03004C20
_080256CC: .4byte 0x04000050
_080256D0: .4byte gUnk_03005498
_080256D4: .4byte gBg2XMag
_080256D8: .4byte gBg2YMag
_080256DC: .4byte gBg2Alpha
_080256E0: .4byte 0x04000200
_080256E4: .4byte 0x0000FFFD
_080256E8: .4byte 0x04000004
_080256EC: .4byte 0x0000FFEF
_080256F0: .4byte gUnk_03004658
_080256F4: .4byte gUnk_03003410
_080256F8: .4byte gCallbackQueue
_080256FC: .4byte sub_08001158
_08025700: .4byte sub_08003904
_08025704:
	ldr r1, _08025714 @ =gMosaicSize
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802570C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025714: .4byte gMosaicSize

	thumb_func_start sub_08025718
sub_08025718: @ 0x08025718
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

	thumb_func_start sub_08025818
sub_08025818: @ 0x08025818
	push {r4, r5, r6, r7, lr}
	ldr r2, _080258A8 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r2]
	ldr r6, _080258AC @ =gUnk_03004C20
	ldr r5, [r6, #4]
	movs r7, #1
	ands r5, r7
	cmp r5, #0
	bne _080258F4
	ldr r1, _080258B0 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	ldr r1, _080258B4 @ =gUnk_03005498
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _080258EC
	strb r5, [r2]
	ldr r2, _080258B8 @ =gBg2XMag
	ldr r1, _080258BC @ =gBg2YMag
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	strh r0, [r2]
	ldr r0, _080258C0 @ =gBg2Alpha
	strb r5, [r0]
	ldr r2, _080258C4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080258C8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _080258CC @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _080258D0 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080258D4 @ =gUnk_03004658
	ldr r0, [r0]
	strb r5, [r0, #0xc]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r6]
	bl sub_0800A468
	ldr r1, _080258D8 @ =gCallbackQueue
	ldr r0, _080258DC @ =InputHandler_Normal
	str r0, [r1, #0x28]
	ldr r0, _080258E0 @ =sub_0803B600
	str r0, [r1, #0x2c]
	ldr r0, _080258E4 @ =sub_08025718
	str r0, [r1, #0x30]
	ldr r0, _080258E8 @ =sub_0800BFF4
	str r0, [r1, #0x34]
	str r7, [r1, #0x38]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r5, [r0]
	adds r1, #0x79
	movs r0, #5
	strb r0, [r1]
	str r4, [r6]
	b _080258F4
	.align 2, 0
_080258A8: .4byte gUnk_030034E4
_080258AC: .4byte gUnk_03004C20
_080258B0: .4byte 0x04000050
_080258B4: .4byte gUnk_03005498
_080258B8: .4byte gBg2XMag
_080258BC: .4byte gBg2YMag
_080258C0: .4byte gBg2Alpha
_080258C4: .4byte 0x04000200
_080258C8: .4byte 0x0000FFFD
_080258CC: .4byte 0x04000004
_080258D0: .4byte 0x0000FFEF
_080258D4: .4byte gUnk_03004658
_080258D8: .4byte gCallbackQueue
_080258DC: .4byte InputHandler_Normal
_080258E0: .4byte sub_0803B600
_080258E4: .4byte sub_08025718
_080258E8: .4byte sub_0800BFF4
_080258EC:
	ldr r1, _080258FC @ =gMosaicSize
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080258F4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080258FC: .4byte gMosaicSize

	thumb_func_start sub_08025900
sub_08025900: @ 0x08025900
	push {lr}
	ldr r1, _08025934 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08025938 @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802594C
	ldr r1, _0802593C @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	ldr r1, _08025940 @ =gUnk_03005498
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08025944
	movs r0, #0xff
	bl SoftResetRom
	b _0802594C
	.align 2, 0
_08025934: .4byte gUnk_030034E4
_08025938: .4byte gUnk_03004C20
_0802593C: .4byte 0x04000050
_08025940: .4byte gUnk_03005498
_08025944:
	ldr r1, _08025950 @ =gMosaicSize
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802594C:
	pop {r0}
	bx r0
	.align 2, 0
_08025950: .4byte gMosaicSize

	thumb_func_start sub_08025954
sub_08025954: @ 0x08025954
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080259C0 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r2]
	ldr r0, _080259C4 @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	bne _08025A16
	ldr r1, _080259C8 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _080259CC @ =gUnk_03005498
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08025A0E
	movs r3, #0
	ldr r0, _080259D0 @ =gCallbackQueue
	adds r2, r0, #0
	adds r2, #0x78
	ldrb r1, [r2]
	movs r4, #0
	adds r7, r0, #0
	cmp r1, #1
	beq _080259EA
	adds r6, r7, #0
	adds r5, r7, #0
	adds r5, #0x28
	ldr r0, _080259D4 @ =sub_08025954
	mov r8, r0
	mov ip, r2
_080259A2:
	lsls r2, r3, #2
	adds r0, r2, r6
	ldr r1, [r0]
	cmp r1, r8
	beq _080259B0
	cmp r4, #1
	bne _080259D8
_080259B0:
	adds r2, r2, r5
	adds r1, r3, #1
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r2]
	movs r4, #1
	b _080259DE
	.align 2, 0
_080259C0: .4byte gUnk_030034E4
_080259C4: .4byte gUnk_03004C20
_080259C8: .4byte 0x04000050
_080259CC: .4byte gUnk_03005498
_080259D0: .4byte gCallbackQueue
_080259D4: .4byte sub_08025954
_080259D8:
	adds r0, r2, r5
	str r1, [r0]
	adds r1, r3, #1
_080259DE:
	adds r3, r1, #0
	mov r1, ip
	ldrb r0, [r1]
	subs r0, #1
	cmp r3, r0
	blo _080259A2
_080259EA:
	cmp r4, #1
	bne _08025A08
	adds r1, r7, #0
	adds r1, #0x78
	ldrb r0, [r1]
	subs r0, #1
	adds r3, r7, #0
	adds r3, #0x79
	movs r2, #0
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r7
	str r2, [r0]
_08025A08:
	movs r0, #0
	mov r1, sb
	b _08025A14
_08025A0E:
	ldr r1, _08025A24 @ =gMosaicSize
	ldrb r0, [r1]
	subs r0, #1
_08025A14:
	strb r0, [r1]
_08025A16:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025A24: .4byte gMosaicSize

	thumb_func_start sub_08025A28
sub_08025A28: @ 0x08025A28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _08025B10 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r7]
	ldr r0, _08025B14 @ =gUnk_03004C20
	mov r8, r0
	ldr r6, [r0, #4]
	movs r1, #1
	mov sb, r1
	ands r6, r1
	cmp r6, #0
	beq _08025A48
	b _08025B68
_08025A48:
	ldr r1, _08025B18 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _08025B1C @ =gUnk_03005498
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	beq _08025A60
	b _08025B60
_08025A60:
	ldr r5, _08025B20 @ =0x04000200
	ldrh r1, [r5]
	ldr r0, _08025B24 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5]
	ldr r4, _08025B28 @ =0x04000004
	ldrh r1, [r4]
	ldr r0, _08025B2C @ =0x0000FFF7
	ands r0, r1
	strh r0, [r4]
	bl m4aSoundVSyncOff
	bl m4aMPlayAllStop
	ldr r0, _08025B30 @ =gUnk_03005284
	ldr r1, [r0]
	movs r0, #6
	strb r0, [r1, #1]
	movs r0, #0
	movs r1, #7
	bl sub_08046DB8
	movs r0, #1
	movs r1, #0
	bl sub_08046DB8
	strb r6, [r7]
	bl sub_08003D58
	bl sub_080008DC
	movs r0, #1
	rsbs r0, r0, #0
	mov r3, r8
	str r0, [r3]
	ldr r2, _08025B34 @ =gBg2XMag
	ldr r1, _08025B38 @ =gBg2YMag
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	strh r0, [r2]
	ldr r0, _08025B3C @ =gBg2Alpha
	strb r6, [r0]
	ldrh r1, [r5]
	ldr r0, _08025B40 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5]
	ldrh r1, [r4]
	ldr r0, _08025B44 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4]
	ldr r0, _08025B48 @ =gUnk_03004658
	ldr r0, [r0]
	strb r6, [r0, #0xc]
	ldr r1, _08025B4C @ =gCallbackQueue
	ldr r0, _08025B50 @ =InputHandler_Normal
	str r0, [r1, #0x28]
	ldr r0, _08025B54 @ =sub_0800350C
	str r0, [r1, #0x2c]
	ldr r0, _08025B58 @ =sub_08025954
	str r0, [r1, #0x30]
	ldr r0, _08025B5C @ =sub_0800C900
	str r0, [r1, #0x34]
	mov r0, sb
	str r0, [r1, #0x38]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r6, [r0]
	adds r1, #0x79
	movs r0, #5
	strb r0, [r1]
	ldrh r0, [r5]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5]
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4]
	bl m4aSoundVSyncOn
	b _08025B68
	.align 2, 0
_08025B10: .4byte gUnk_030034E4
_08025B14: .4byte gUnk_03004C20
_08025B18: .4byte 0x04000050
_08025B1C: .4byte gUnk_03005498
_08025B20: .4byte 0x04000200
_08025B24: .4byte 0x0000FFFE
_08025B28: .4byte 0x04000004
_08025B2C: .4byte 0x0000FFF7
_08025B30: .4byte gUnk_03005284
_08025B34: .4byte gBg2XMag
_08025B38: .4byte gBg2YMag
_08025B3C: .4byte gBg2Alpha
_08025B40: .4byte 0x0000FFFD
_08025B44: .4byte 0x0000FFEF
_08025B48: .4byte gUnk_03004658
_08025B4C: .4byte gCallbackQueue
_08025B50: .4byte InputHandler_Normal
_08025B54: .4byte sub_0800350C
_08025B58: .4byte sub_08025954
_08025B5C: .4byte sub_0800C900
_08025B60:
	ldr r1, _08025B74 @ =gMosaicSize
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08025B68:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025B74: .4byte gMosaicSize

	thumb_func_start sub_08025B78
sub_08025B78: @ 0x08025B78
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	cmp r0, #8
	ble _08025B88
	adds r0, #9
	ldr r1, _08025B9C @ =gUnk_030007C4
	ldrb r1, [r1]
	subs r0, r0, r1
_08025B88:
	ldr r1, _08025BA0 @ =gUnk_03000830
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r2, [r0]
	movs r1, #1
	strb r1, [r0, #1]
	ldrb r1, [r0, #2]
	movs r1, #0xff
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
_08025B9C: .4byte gUnk_030007C4
_08025BA0: .4byte gUnk_03000830

	thumb_func_start sub_08025BA4
sub_08025BA4: @ 0x08025BA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r0, _08025BC4 @ =gUnk_03002920
	mov sb, r0
	ldr r1, _08025BC8 @ =gUnk_03000830
	mov r8, r1
	ldr r2, _08025BCC @ =0x040000D4
	mov sl, r2
	mov r6, r8
	b _08025D84
	.align 2, 0
_08025BC4: .4byte gUnk_03002920
_08025BC8: .4byte gUnk_03000830
_08025BCC: .4byte 0x040000D4
_08025BD0:
	cmp r0, #1
	bne _08025BD6
	b _08025D7E
_08025BD6:
	ldr r0, [sp]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	bne _08025BE4
	b _08025D7E
_08025BE4:
	ldr r0, [sp]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #1]
	subs r1, #1
	strb r1, [r0, #1]
	movs r0, #0xff
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r3, #0
	beq _08025BFE
	b _08025D7E
_08025BFE:
	ldr r7, [r5]
	ldr r0, [sp]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r4, [r0]
	ldr r0, [sp]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #2]
	adds r1, #1
	ldrb r2, [r0, #2]
	strb r1, [r0, #2]
	ldrb r0, [r0, #2]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08025C38
	ldr r0, [sp]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #2]
	strb r3, [r0, #2]
	b _08025CF2
_08025C38:
	ldr r0, [sp]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #2]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08025C84
	ldr r1, [sp]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrb r0, [r1, #1]
	mov r2, ip
	orrs r0, r2
	strb r0, [r1, #1]
	ldrb r1, [r5, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	strb r3, [r0, #0x10]
	ldrb r1, [r5, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	ldrb r1, [r5, #0xa]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	strb r3, [r0, #8]
	b _08025D7E
_08025C84:
	ldr r0, [sp]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #2]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _08025CC0 @ =0x0000270F
	cmp r1, r0
	bls _08025CC4
	ldr r0, [sp]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #2]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08025CF2
	ldr r1, [sp]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrb r0, [r1, #1]
	mov r2, ip
	orrs r0, r2
	strb r0, [r1, #1]
	b _08025D7E
	.align 2, 0
_08025CC0: .4byte 0x0000270F
_08025CC4:
	ldr r1, [sp]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r0, [sp]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #2]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0]
	strb r0, [r1]
	ldr r0, [sp]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #2]
	strb r3, [r0, #2]
	ldr r0, [sp]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r4, [r0]
_08025CF2:
	ldr r1, [sp]
	lsls r1, r1, #2
	add r1, r8
	ldr r0, [sp]
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #2]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r0, [r0, #4]
	strb r0, [r1, #1]
	ldr r0, [sp]
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #2]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0]
	mov r1, sl
	str r0, [r1]
	ldr r0, [r5, #4]
	str r0, [r1, #4]
	ldrh r0, [r5, #8]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	mov r2, sl
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrb r0, [r5, #0xa]
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	add r2, sb
	ldr r0, [sp]
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #2]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r1, [r0, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r3, [r2, #0xb]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xb]
	ldrb r0, [r5, #0xa]
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	add r2, sb
	ldr r0, [sp]
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #2]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r1, [r0, #5]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x1c
	lsls r1, r1, #4
	ldrb r3, [r2, #0xb]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xb]
_08025D7E:
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
_08025D84:
	ldr r0, [sp]
	cmp r0, #0x2c
	bhi _08025DBE
	ldr r0, [sp]
	cmp r0, #8
	bhi _08025DA4
	ldr r0, [sp]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _08025DA0 @ =gUnk_03005418
	ldr r0, [r2]
	adds r5, r0, r1
	b _08025DB6
	.align 2, 0
_08025DA0: .4byte gUnk_03005418
_08025DA4:
	ldr r0, [sp]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _08025DD0 @ =gUnk_03005294
	ldr r0, [r2]
	adds r0, r0, r1
	adds r5, r0, #0
	subs r5, #0x6c
_08025DB6:
	ldr r0, [r5]
	cmp r0, #0
	beq _08025DBE
	b _08025BD0
_08025DBE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025DD0: .4byte gUnk_03005294

	thumb_func_start sub_08025DD4
sub_08025DD4: @ 0x08025DD4
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, _08025E50 @ =gUnk_03005220
	ldr r4, _08025E54 @ =gBgTilemapBufs
_08025DDC:
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r5, #2
	cmp r6, r0
	bhs _08025DEA
	movs r5, #0
_08025DEA:
	lsls r3, r6, #1
	ldr r0, _08025E58 @ =0x00000241
	adds r2, r3, r0
	lsls r2, r2, #1
	adds r2, r2, r4
	adds r1, r5, #0
	adds r1, #0x14
	lsls r1, r1, #5
	adds r0, r3, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r0, _08025E5C @ =0x00000242
	adds r2, r3, r0
	lsls r2, r2, #1
	adds r2, r2, r4
	adds r1, #1
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	strh r0, [r2]
	ldr r0, _08025E60 @ =0x00000261
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	adds r2, r5, #0
	adds r2, #0x15
	lsls r2, r2, #5
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08025E64 @ =0x00000262
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	adds r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	adds r3, r3, r4
	ldrh r0, [r3]
	strh r0, [r1]
	adds r6, #1
	cmp r6, #2
	bls _08025DDC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025E50: .4byte gUnk_03005220
_08025E54: .4byte gBgTilemapBufs
_08025E58: .4byte 0x00000241
_08025E5C: .4byte 0x00000242
_08025E60: .4byte 0x00000261
_08025E64: .4byte 0x00000262

	thumb_func_start sub_08025E68
sub_08025E68: @ 0x08025E68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0
	mov sb, r0
	ldr r0, _08025E88 @ =gUnk_03004C20
	ldrb r1, [r0, #0xa]
	adds r3, r0, #0
	cmp r1, #1
	beq _08025E84
	ldrb r0, [r3, #0xc]
	cmp r0, #6
	bne _08025E8C
_08025E84:
	movs r5, #0x64
	b _08025E8E
	.align 2, 0
_08025E88: .4byte gUnk_03004C20
_08025E8C:
	movs r5, #0x1e
_08025E8E:
	ldr r1, _08025ED0 @ =gUnk_03005220
	ldrh r0, [r1]
	lsls r0, r0, #0x14
	lsrs r2, r0, #0x19
	mov r8, r1
	cmp r5, r2
	bne _08025EA0
	movs r1, #1
	mov sb, r1
_08025EA0:
	ldrb r0, [r3, #0xa]
	cmp r0, #1
	beq _08025EAC
	ldrb r0, [r3, #0xc]
	cmp r0, #6
	bne _08025EE0
_08025EAC:
	movs r5, #1
	ldr r6, _08025ED4 @ =gBgTilemapBufs
	cmp r2, #0x63
	ble _08025EE4
	ldr r2, _08025ED8 @ =0x000004A4
	adds r1, r6, r2
	adds r2, #0x82
	adds r0, r6, r2
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08025EDC @ =0x000004E4
	adds r1, r6, r0
	adds r2, #0x40
	adds r0, r6, r2
	ldrh r0, [r0]
	strh r0, [r1]
	b _08025EE4
	.align 2, 0
_08025ED0: .4byte gUnk_03005220
_08025ED4: .4byte gBgTilemapBufs
_08025ED8: .4byte 0x000004A4
_08025EDC: .4byte 0x000004E4
_08025EE0:
	movs r5, #0
	ldr r6, _08025F80 @ =gBgTilemapBufs
_08025EE4:
	mov r7, r8
	ldrh r0, [r7]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x19
	cmp r0, #9
	ble _08025F2E
	movs r4, #0x95
	lsls r4, r4, #2
	subs r4, r4, r5
	lsls r4, r4, #1
	adds r4, r4, r6
	movs r1, #0xa
	bl __divsi3
	ldr r1, _08025F84 @ =0x00000292
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r4]
	movs r4, #0x9d
	lsls r4, r4, #2
	subs r4, r4, r5
	lsls r4, r4, #1
	adds r4, r4, r6
	ldrh r0, [r7]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x19
	movs r1, #0xa
	bl __divsi3
	ldr r2, _08025F88 @ =0x000002B2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r4]
_08025F2E:
	ldr r4, _08025F8C @ =0x00000255
	subs r4, r4, r5
	lsls r4, r4, #1
	adds r4, r4, r6
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x19
	movs r1, #0xa
	bl __modsi3
	ldr r2, _08025F84 @ =0x00000292
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r4, _08025F90 @ =0x00000275
	subs r4, r4, r5
	lsls r4, r4, #1
	adds r4, r4, r6
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x19
	movs r1, #0xa
	bl __modsi3
	ldr r2, _08025F88 @ =0x000002B2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r4]
	mov r0, sb
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08025F80: .4byte gBgTilemapBufs
_08025F84: .4byte 0x00000292
_08025F88: .4byte 0x000002B2
_08025F8C: .4byte 0x00000255
_08025F90: .4byte 0x00000275

	thumb_func_start sub_08025F94
sub_08025F94: @ 0x08025F94
	push {r4, r5, r6, r7, lr}
	ldr r0, _08025FE0 @ =gUnk_03005220
	adds r5, r0, #0
	adds r5, #0x4c
	ldrb r1, [r5]
	adds r7, r0, #0
	cmp r1, #9
	bls _08025FF8
	ldr r4, _08025FE4 @ =gBgTilemapBufs
	adds r0, r1, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, _08025FE8 @ =0x00000524
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r2, _08025FEC @ =0x000004B6
	adds r0, r4, r2
	strh r1, [r0]
	ldrb r0, [r5]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, _08025FF0 @ =0x00000564
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r2, _08025FF4 @ =0x000004F6
	adds r0, r4, r2
	strh r1, [r0]
	adds r6, r4, #0
	b _08026032
	.align 2, 0
_08025FE0: .4byte gUnk_03005220
_08025FE4: .4byte gBgTilemapBufs
_08025FE8: .4byte 0x00000524
_08025FEC: .4byte 0x000004B6
_08025FF0: .4byte 0x00000564
_08025FF4: .4byte 0x000004F6
_08025FF8:
	ldr r6, _08026074 @ =gBgTilemapBufs
	cmp r1, #9
	bne _08026032
	ldrb r0, [r5]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, _08026078 @ =0x000004BC
	adds r0, r0, r1
	adds r0, r0, r6
	ldrh r1, [r0]
	ldr r2, _0802607C @ =0x000004B6
	adds r0, r6, r2
	strh r1, [r0]
	ldrb r0, [r5]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, _08026080 @ =0x000004FC
	adds r0, r0, r1
	adds r0, r0, r6
	ldrh r1, [r0]
	ldr r2, _08026084 @ =0x000004F6
	adds r0, r6, r2
	strh r1, [r0]
_08026032:
	adds r4, r7, #0
	adds r4, #0x4c
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, _08026088 @ =0x00000524
	adds r0, r0, r1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r2, #0x97
	lsls r2, r2, #3
	adds r0, r6, r2
	strh r1, [r0]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, _0802608C @ =0x00000564
	adds r0, r0, r1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r2, #0x9f
	lsls r2, r2, #3
	adds r0, r6, r2
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026074: .4byte gBgTilemapBufs
_08026078: .4byte 0x000004BC
_0802607C: .4byte 0x000004B6
_08026080: .4byte 0x000004FC
_08026084: .4byte 0x000004F6
_08026088: .4byte 0x00000524
_0802608C: .4byte 0x00000564

	thumb_func_start sub_08026090
sub_08026090: @ 0x08026090
	push {r4, r5, lr}
	ldr r0, _08026110 @ =gUnk_03005220
	adds r5, r0, #0
	adds r5, #0x4c
	ldrb r0, [r5]
	ldr r4, _08026114 @ =gBgTilemapBufs
	cmp r0, #9
	bls _080260D2
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, _08026118 @ =0x00000526
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r2, _0802611C @ =0x000004B6
	adds r0, r4, r2
	strh r1, [r0]
	ldrb r0, [r5]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, _08026120 @ =0x00000566
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r2, _08026124 @ =0x000004F6
	adds r0, r4, r2
	strh r1, [r0]
_080260D2:
	ldrb r0, [r5]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, _08026118 @ =0x00000526
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0x97
	lsls r2, r2, #3
	adds r0, r4, r2
	strh r1, [r0]
	ldrb r0, [r5]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, _08026120 @ =0x00000566
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0x9f
	lsls r2, r2, #3
	adds r0, r4, r2
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08026110: .4byte gUnk_03005220
_08026114: .4byte gBgTilemapBufs
_08026118: .4byte 0x00000526
_0802611C: .4byte 0x000004B6
_08026120: .4byte 0x00000566
_08026124: .4byte 0x000004F6

	thumb_func_start sub_08026128
sub_08026128: @ 0x08026128
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

	thumb_func_start sub_08026374
sub_08026374: @ 0x08026374
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _080263A0 @ =gCallbackQueue
	ldr r1, [r2, #0x10]
	ldr r0, _080263A4 @ =sub_080264A4
	mov ip, r2
	cmp r1, r0
	bne _08026388
	b _08026494
_08026388:
	ldr r0, _080263A8 @ =gUnk_03004C20
	ldr r1, [r0]
	adds r2, r0, #0
	cmp r1, #0x4b
	bhi _080263B0
	ldr r1, _080263AC @ =gUnk_03002920
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #2
	b _080263D8
	.align 2, 0
_080263A0: .4byte gCallbackQueue
_080263A4: .4byte sub_080264A4
_080263A8: .4byte gUnk_03004C20
_080263AC: .4byte gUnk_03002920
_080263B0:
	cmp r1, #0xd8
	bls _080263C8
	ldr r0, _080263C4 @ =gUnk_03002920
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	b _080263DA
	.align 2, 0
_080263C4: .4byte gUnk_03002920
_080263C8:
	cmp r1, #0xb0
	bls _080263DA
	ldr r1, _080263F4 @ =gUnk_03002920
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #4
_080263D8:
	strh r0, [r1]
_080263DA:
	ldr r1, [r2]
	adds r0, r1, #0
	subs r0, #0x15
	cmp r0, #0x4a
	bhi _080263F8
	ldr r1, _080263F4 @ =gUnk_03002920
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #2
	b _08026492
	.align 2, 0
_080263F4: .4byte gUnk_03002920
_080263F8:
	cmp r1, #0xec
	bls _08026482
	ldr r0, _08026448 @ =gUnk_03002920
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0802644C @ =gUnk_030034E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08026494
	mov r2, ip
	adds r2, #0x78
	ldrb r0, [r2]
	movs r4, #0
	cmp r0, #1
	beq _08026462
	mov r5, ip
	mov r6, ip
	adds r6, #0x28
	ldr r0, _08026450 @ =sub_08026374
	mov r8, r0
	adds r7, r2, #0
_08026428:
	lsls r2, r1, #2
	adds r0, r2, r5
	ldr r3, [r0]
	cmp r3, r8
	beq _08026436
	cmp r4, #1
	bne _08026454
_08026436:
	adds r2, r2, r6
	adds r1, #1
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	str r0, [r2]
	movs r4, #1
	b _0802645A
	.align 2, 0
_08026448: .4byte gUnk_03002920
_0802644C: .4byte gUnk_030034E4
_08026450: .4byte sub_08026374
_08026454:
	adds r0, r2, r6
	str r3, [r0]
	adds r1, #1
_0802645A:
	ldrb r0, [r7]
	subs r0, #1
	cmp r1, r0
	blo _08026428
_08026462:
	cmp r4, #1
	bne _08026494
	mov r1, ip
	adds r1, #0x78
	ldrb r0, [r1]
	subs r0, #1
	mov r3, ip
	adds r3, #0x79
	movs r2, #0
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	add r0, ip
	str r2, [r0]
	b _08026494
_08026482:
	cmp r1, #0xc4
	bls _08026494
	ldr r1, _080264A0 @ =gUnk_03002920
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #4
_08026492:
	strh r0, [r1]
_08026494:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080264A0: .4byte gUnk_03002920

	thumb_func_start sub_080264A4
sub_080264A4: @ 0x080264A4
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
	ldr r0, _08026568 @ =0x080A5088
	str r0, [r1]
	ldr r0, _0802656C @ =0x08057C70
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
_08026568: .4byte 0x080A5088
_0802656C: .4byte 0x08057C70
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
	.align 2, 0
