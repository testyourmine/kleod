
    .text

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
