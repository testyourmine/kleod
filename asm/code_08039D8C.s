	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08039D8C
sub_08039D8C: @ 0x08039D8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08039DA8 @ =0x030034BC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039DB0
	ldr r0, _08039DAC @ =gUnk_03000800
	ldrb r0, [r0]
	b _08039DB2
	.align 2, 0
_08039DA8: .4byte 0x030034BC
_08039DAC: .4byte gUnk_03000800
_08039DB0:
	movs r0, #0
_08039DB2:
	mov sl, r0
	ldr r2, _08039DE8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08039DEC @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08039DF0 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08039DF4 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	bl m4aMPlayAllStop
	ldr r0, _08039DF8 @ =gUnk_03003410
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08039E2A
	ldr r1, _08039DFC @ =gUnk_03004C20
	ldrb r0, [r1, #0xc]
	cmp r0, #8
	bne _08039E04
	ldr r1, _08039E00 @ =0x030034C0
	movs r0, #3
	b _08039E28
	.align 2, 0
_08039DE8: .4byte 0x04000200
_08039DEC: .4byte 0x0000FFFE
_08039DF0: .4byte 0x04000004
_08039DF4: .4byte 0x0000FFF7
_08039DF8: .4byte gUnk_03003410
_08039DFC: .4byte gUnk_03004C20
_08039E00: .4byte 0x030034C0
_08039E04:
	cmp r0, #0
	bne _08039E14
	ldr r1, _08039E10 @ =0x030034C0
	movs r0, #1
	b _08039E28
	.align 2, 0
_08039E10: .4byte 0x030034C0
_08039E14:
	ldrb r0, [r1, #0xd]
	cmp r0, #6
	bne _08039E24
	ldr r1, _08039E20 @ =0x030034C0
	movs r0, #2
	b _08039E28
	.align 2, 0
_08039E20: .4byte 0x030034C0
_08039E24:
	ldr r1, _08039E4C @ =0x030034C0
	movs r0, #0
_08039E28:
	strb r0, [r1]
_08039E2A:
	ldr r0, _08039E4C @ =0x030034C0
	ldrb r0, [r0]
	cmp r0, #3
	bne _08039E60
	ldr r1, _08039E50 @ =0x082EAF8C
	mov r8, r1
	ldr r0, [r1]
	ldr r5, _08039E54 @ =0x7FFFFFFF
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r4, _08039E58 @ =gUnk_03004790
	str r0, [r4, #0x18]
	ldr r6, _08039E5C @ =0x082EB488
	b _08039EA6
	.align 2, 0
_08039E4C: .4byte 0x030034C0
_08039E50: .4byte 0x082EAF8C
_08039E54: .4byte 0x7FFFFFFF
_08039E58: .4byte gUnk_03004790
_08039E5C: .4byte 0x082EB488
_08039E60:
	cmp r0, #0
	bne _08039E8C
	ldr r2, _08039E7C @ =0x082EB5B8
	mov r8, r2
	ldr r0, [r2]
	ldr r5, _08039E80 @ =0x7FFFFFFF
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r4, _08039E84 @ =gUnk_03004790
	str r0, [r4, #0x18]
	ldr r6, _08039E88 @ =0x082EBB20
	b _08039EA6
	.align 2, 0
_08039E7C: .4byte 0x082EB5B8
_08039E80: .4byte 0x7FFFFFFF
_08039E84: .4byte gUnk_03004790
_08039E88: .4byte 0x082EBB20
_08039E8C:
	cmp r0, #2
	bne _08039ED4
	ldr r0, _08039EC4 @ =0x082EBC68
	mov r8, r0
	ldr r0, [r0]
	ldr r5, _08039EC8 @ =0x7FFFFFFF
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r4, _08039ECC @ =gUnk_03004790
	str r0, [r4, #0x18]
	ldr r6, _08039ED0 @ =0x082EC1A4
_08039EA6:
	ldr r0, [r6]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	mov r1, r8
	bl Decompress
	ldr r0, [r4, #0x1c]
	adds r1, r6, #0
	bl Decompress
	b _08039F06
	.align 2, 0
_08039EC4: .4byte 0x082EBC68
_08039EC8: .4byte 0x7FFFFFFF
_08039ECC: .4byte gUnk_03004790
_08039ED0: .4byte 0x082EC1A4
_08039ED4:
	ldr r1, _0803A02C @ =0x082EC2E4
	mov r8, r1
	ldr r0, [r1]
	ldr r5, _0803A030 @ =0x7FFFFFFF
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r4, _0803A034 @ =gUnk_03004790
	str r0, [r4, #0x18]
	ldr r6, _0803A038 @ =0x082EC7C8
	ldr r0, [r6]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	mov r1, r8
	bl Decompress
	ldr r0, [r4, #0x1c]
	adds r1, r6, #0
	bl Decompress
_08039F06:
	ldr r2, _0803A03C @ =0x04000004
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	movs r4, #0
	movs r5, #0
	ldr r2, _0803A040 @ =0x030034BC
	mov sb, r2
	ldr r0, _0803A044 @ =gUnk_03003410
	mov r8, r0
	ldr r7, _0803A048 @ =gUnk_03000900
	ldr r6, _0803A04C @ =gUnk_03003510
	mov r1, sl
	lsls r1, r1, #5
	str r1, [sp]
_08039F26:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __modsi3
	cmp r0, #0
	bne _08039F38
	cmp r4, #0
	beq _08039F38
	adds r5, #2
_08039F38:
	lsls r2, r5, #1
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	adds r2, r2, r7
	ldr r0, _0803A034 @ =gUnk_03004790
	ldr r1, [r0, #0x1c]
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	add r0, sl
	strh r0, [r2]
	adds r5, #1
	adds r4, #1
	ldr r0, _0803A050 @ =0x0000021B
	cmp r4, r0
	ble _08039F26
	ldr r2, _0803A054 @ =0x040000D4
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0xb
	adds r0, r0, r7
	str r0, [r2]
	ldrb r1, [r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0803A058 @ =gUnk_03003430
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _0803A05C @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	subs r2, #0xd4
	ldrh r1, [r2]
	ldr r0, _0803A060 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	mov r2, r8
	ldrb r0, [r2, #4]
	cmp r0, #0
	beq _0803A004
	ldr r1, _0803A064 @ =0x030051F0
	ldr r2, _0803A068 @ =gUnk_03005498
	ldrb r0, [r2]
	strb r0, [r1, #0xe]
	ldr r0, _0803A06C @ =0x04000050
	ldrh r0, [r0]
	strh r0, [r1, #4]
	ldr r0, _0803A070 @ =0x04000008
	ldrh r0, [r0]
	strh r0, [r1, #6]
	ldr r0, _0803A074 @ =0x0400000A
	ldrh r0, [r0]
	strh r0, [r1, #8]
	ldr r0, _0803A078 @ =0x0400000C
	ldrh r0, [r0]
	strh r0, [r1, #0xa]
	ldr r0, _0803A07C @ =0x0400000E
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldr r2, _0803A080 @ =gUnk_03004C20
	ldr r0, [r2]
	str r0, [r1]
	movs r4, #0
	ldr r5, _0803A084 @ =gUnk_03005428
	ldrb r0, [r5]
	cmp r4, r0
	bge _08039FF2
	ldr r0, _0803A088 @ =gUnk_03002920
	movs r7, #3
	movs r1, #4
	rsbs r1, r1, #0
	mov r8, r1
	adds r3, r0, #0
	adds r3, #0xc
_08039FD6:
	ldrb r2, [r3]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	adds r1, #1
	ands r1, r7
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r3, #0x1c
	adds r4, #1
	ldrb r2, [r5]
	cmp r4, r2
	blt _08039FD6
_08039FF2:
	mov r1, sb
	ldrb r0, [r1]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _0803A058 @ =gUnk_03003430
	adds r1, r1, r2
	movs r0, #0
	strh r0, [r1, #8]
_0803A004:
	movs r0, #9
	ldr r1, _0803A068 @ =gUnk_03005498
	strb r0, [r1]
	ldr r2, _0803A08C @ =gUnk_03004658
	ldr r1, [r2]
	movs r0, #0
	strb r0, [r1, #0xc]
	ldr r0, _0803A090 @ =InputHandler_Normal
	str r0, [r6, #0x28]
	ldr r1, _0803A094 @ =sub_0803A410
	str r1, [r6, #0x2c]
	movs r0, #1
	str r0, [r6, #0x34]
	ldr r2, _0803A080 @ =gUnk_03004C20
	ldrb r0, [r2, #0xc]
	cmp r0, #8
	bne _0803A09C
	ldr r0, _0803A098 @ =sub_0800C108
	b _0803A0AA
	.align 2, 0
_0803A02C: .4byte 0x082EC2E4
_0803A030: .4byte 0x7FFFFFFF
_0803A034: .4byte gUnk_03004790
_0803A038: .4byte 0x082EC7C8
_0803A03C: .4byte 0x04000004
_0803A040: .4byte 0x030034BC
_0803A044: .4byte gUnk_03003410
_0803A048: .4byte gUnk_03000900
_0803A04C: .4byte gUnk_03003510
_0803A050: .4byte 0x0000021B
_0803A054: .4byte 0x040000D4
_0803A058: .4byte gUnk_03003430
_0803A05C: .4byte 0x80000400
_0803A060: .4byte 0x0000BFFF
_0803A064: .4byte 0x030051F0
_0803A068: .4byte gUnk_03005498
_0803A06C: .4byte 0x04000050
_0803A070: .4byte 0x04000008
_0803A074: .4byte 0x0400000A
_0803A078: .4byte 0x0400000C
_0803A07C: .4byte 0x0400000E
_0803A080: .4byte gUnk_03004C20
_0803A084: .4byte gUnk_03005428
_0803A088: .4byte gUnk_03002920
_0803A08C: .4byte gUnk_03004658
_0803A090: .4byte InputHandler_Normal
_0803A094: .4byte sub_0803A410
_0803A098: .4byte sub_0800C108
_0803A09C:
	cmp r0, #0
	bne _0803A0A8
	ldr r0, _0803A0A4 @ =sub_0800C45C
	b _0803A0AA
	.align 2, 0
_0803A0A4: .4byte sub_0800C45C
_0803A0A8:
	ldr r0, _0803A0E8 @ =sub_0800BFF4
_0803A0AA:
	str r0, [r6, #0x30]
	adds r0, r6, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r1, #0
	str r1, [r0]
	adds r1, r6, #0
	adds r1, #0x79
	movs r0, #4
	strb r0, [r1]
	ldr r1, _0803A0EC @ =0x030034C0
	ldrb r0, [r1]
	cmp r0, #1
	bne _0803A0FC
	ldr r1, _0803A0F0 @ =0x040000D4
	ldr r2, _0803A0F4 @ =gUnk_03004790
	ldr r0, [r2, #0x18]
	adds r0, #4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	ldr r2, [sp]
	adds r0, r2, r0
	str r0, [r1, #4]
	ldr r0, _0803A0F8 @ =0x800005B0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0803A15A
	.align 2, 0
_0803A0E8: .4byte sub_0800BFF4
_0803A0EC: .4byte 0x030034C0
_0803A0F0: .4byte 0x040000D4
_0803A0F4: .4byte gUnk_03004790
_0803A0F8: .4byte 0x800005B0
_0803A0FC:
	cmp r0, #2
	bne _0803A134
	ldr r2, _0803A124 @ =0x040000D4
	ldr r1, _0803A128 @ =gUnk_03004790
	ldr r0, [r1, #0x18]
	adds r0, #4
	str r0, [r2]
	mov r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0803A12C @ =gUnk_03003430
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [sp]
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0803A130 @ =0x80000630
	b _0803A156
	.align 2, 0
_0803A124: .4byte 0x040000D4
_0803A128: .4byte gUnk_03004790
_0803A12C: .4byte gUnk_03003430
_0803A130: .4byte 0x80000630
_0803A134:
	ldr r2, _0803A188 @ =0x040000D4
	ldr r1, _0803A18C @ =gUnk_03004790
	ldr r0, [r1, #0x18]
	adds r0, #4
	str r0, [r2]
	mov r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0803A190 @ =gUnk_03003430
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [sp]
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0803A194 @ =0x80000670
_0803A156:
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0803A15A:
	ldr r2, _0803A198 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0803A19C @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	movs r0, #0x55
	bl m4aSongNumStart
	ldr r0, _0803A1A0 @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	bne _0803A1A4
	bl sub_0800C108
	b _0803A1B2
	.align 2, 0
_0803A188: .4byte 0x040000D4
_0803A18C: .4byte gUnk_03004790
_0803A190: .4byte gUnk_03003430
_0803A194: .4byte 0x80000670
_0803A198: .4byte 0x04000200
_0803A19C: .4byte 0x04000004
_0803A1A0: .4byte gUnk_03004C20
_0803A1A4:
	cmp r0, #0
	bne _0803A1AE
	bl sub_0800C45C
	b _0803A1B2
_0803A1AE:
	bl sub_0800BFF4
_0803A1B2:
	ldr r0, _0803A1F0 @ =gUnk_03003410
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0803A214
	ldr r0, _0803A1F4 @ =0x030034BC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A200
	ldr r1, _0803A1F8 @ =0x04000008
	ldrh r2, [r1]
	ldr r0, _0803A1FC @ =0x0000FFFC
	ands r0, r2
	strh r0, [r1]
	ldrh r0, [r1]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r1, #0x42
	movs r0, #0xd6
	b _0803A212
	.align 2, 0
_0803A1F0: .4byte gUnk_03003410
_0803A1F4: .4byte 0x030034BC
_0803A1F8: .4byte 0x04000008
_0803A1FC: .4byte 0x0000FFFC
_0803A200:
	ldr r1, _0803A224 @ =0x0400000A
	ldrh r2, [r1]
	ldr r0, _0803A228 @ =0x0000FFFC
	ands r0, r2
	strh r0, [r1]
	ldrh r0, [r1]
	strh r0, [r1]
	adds r1, #0x46
	movs r0, #0xd5
_0803A212:
	strh r0, [r1]
_0803A214:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A224: .4byte 0x0400000A
_0803A228: .4byte 0x0000FFFC

	thumb_func_start sub_0803A22C
sub_0803A22C: @ 0x0803A22C
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r5, _0803A2C0 @ =gUnk_03005428
	ldrb r0, [r5]
	cmp r4, r0
	bge _0803A260
	ldr r0, _0803A2C4 @ =gUnk_03002920
	movs r6, #3
	movs r7, #4
	rsbs r7, r7, #0
	adds r3, r0, #0
	adds r3, #0xc
_0803A244:
	ldrb r2, [r3]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	subs r1, #1
	ands r1, r6
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r3, #0x1c
	adds r4, #1
	ldrb r2, [r5]
	cmp r4, r2
	blt _0803A244
_0803A260:
	bl sub_08005CF4
	bl VBlankIntrWait
	ldr r2, _0803A2C8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0803A2CC @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0803A2D0 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _0803A2D4 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	bl m4aMPlayAllStop
	ldr r4, _0803A2D8 @ =gUnk_03004790
	ldr r0, [r4, #0x1c]
	bl thunk_HeapFree
	ldr r0, [r4, #0x18]
	bl thunk_HeapFree
	ldr r0, _0803A2DC @ =0x030034BC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A2EC
	ldr r2, _0803A2E0 @ =0x040000D4
	ldr r0, [r4]
	str r0, [r2]
	ldr r0, _0803A2E4 @ =gUnk_03003430
	ldr r1, [r0]
	str r1, [r2, #4]
	ldrb r1, [r0, #0x18]
	ldrh r0, [r0, #0x16]
	muls r0, r1, r0
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r4, #4]
	str r0, [r2]
	ldr r0, _0803A2E8 @ =gUnk_03000900
	b _0803A314
	.align 2, 0
_0803A2C0: .4byte gUnk_03005428
_0803A2C4: .4byte gUnk_03002920
_0803A2C8: .4byte 0x04000200
_0803A2CC: .4byte 0x0000FFFE
_0803A2D0: .4byte 0x04000004
_0803A2D4: .4byte 0x0000FFF7
_0803A2D8: .4byte gUnk_03004790
_0803A2DC: .4byte 0x030034BC
_0803A2E0: .4byte 0x040000D4
_0803A2E4: .4byte gUnk_03003430
_0803A2E8: .4byte gUnk_03000900
_0803A2EC:
	ldr r2, _0803A3CC @ =0x040000D4
	ldr r0, [r4, #8]
	str r0, [r2]
	ldr r1, _0803A3D0 @ =gUnk_03003430
	ldr r0, [r1, #0x1c]
	str r0, [r2, #4]
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r3, [r0]
	ldrh r0, [r1, #0x32]
	muls r0, r3, r0
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r4, #0xc]
	str r0, [r2]
	ldr r0, _0803A3D4 @ =gUnk_03001100
_0803A314:
	str r0, [r2, #4]
	ldr r0, _0803A3D8 @ =0x80000240
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _0803A3DC @ =gUnk_03005498
	ldr r1, _0803A3E0 @ =0x030051F0
	ldrb r0, [r1, #0xe]
	strb r0, [r2]
	ldr r2, _0803A3E4 @ =0x04000050
	ldrh r0, [r1, #4]
	strh r0, [r2]
	subs r2, #0x48
	ldrh r0, [r1, #6]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #8]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xa]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldr r2, _0803A3E8 @ =gUnk_03004C20
	ldr r0, [r1]
	str r0, [r2]
	ldrb r0, [r2, #0xd]
	cmp r0, #6
	bne _0803A380
	ldrb r0, [r2, #0xc]
	cmp r0, #1
	beq _0803A358
	cmp r0, #3
	bne _0803A380
_0803A358:
	ldr r1, _0803A3EC @ =0x04000042
	ldr r2, _0803A3F0 @ =0x0000A0F0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803A3F4 @ =0x00002121
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x3f
	strh r0, [r1]
	subs r1, #0x4a
	ldr r2, _0803A3F8 @ =0x00007741
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_08026128
_0803A380:
	ldr r3, _0803A3CC @ =0x040000D4
	ldr r4, _0803A3FC @ =0x030034BC
	ldrb r0, [r4]
	lsls r0, r0, #0xb
	ldr r1, _0803A400 @ =gUnk_03000900
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _0803A3D0 @ =gUnk_03003430
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r3, #4]
	ldr r0, _0803A404 @ =0x80000400
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0803A3E8 @ =gUnk_03004C20
	ldrb r0, [r0, #0x10]
	cmp r0, #1
	bne _0803A3B2
	bl sub_08026128
_0803A3B2:
	ldr r2, _0803A408 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0803A40C @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A3CC: .4byte 0x040000D4
_0803A3D0: .4byte gUnk_03003430
_0803A3D4: .4byte gUnk_03001100
_0803A3D8: .4byte 0x80000240
_0803A3DC: .4byte gUnk_03005498
_0803A3E0: .4byte 0x030051F0
_0803A3E4: .4byte 0x04000050
_0803A3E8: .4byte gUnk_03004C20
_0803A3EC: .4byte 0x04000042
_0803A3F0: .4byte 0x0000A0F0
_0803A3F4: .4byte 0x00002121
_0803A3F8: .4byte 0x00007741
_0803A3FC: .4byte 0x030034BC
_0803A400: .4byte gUnk_03000900
_0803A404: .4byte 0x80000400
_0803A408: .4byte 0x04000200
_0803A40C: .4byte 0x04000004

	thumb_func_start sub_0803A410
sub_0803A410: @ 0x0803A410
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803A50C @ =gNewKeys
	ldrh r2, [r0]
	movs r1, #0xa
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #4]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0803A442
	ldr r0, _0803A510 @ =gUnk_03004658
	ldr r0, [r0]
	ldrb r0, [r0, #0xc]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
_0803A442:
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	bne _0803A44C
	b _0803A69E
_0803A44C:
	movs r5, #0
	ldr r3, _0803A510 @ =gUnk_03004658
	ldr r0, _0803A514 @ =0x030034BC
	ldr r1, _0803A518 @ =0x030034C0
	mov sb, r1
	mov r4, sp
	movs r7, #0
	ldr r2, _0803A51C @ =0x040000D4
	ldrb r1, [r0]
	lsls r1, r1, #0xb
	ldr r0, _0803A520 @ =0x03000A4A
	adds r6, r1, r0
	mov ip, r6
	adds r0, #0x24
	adds r1, r1, r0
	mov r8, r1
	ldr r3, [r3]
	ldr r6, _0803A524 @ =0x81000002
_0803A470:
	strh r7, [r4]
	mov r0, sp
	str r0, [r2]
	ldrb r1, [r3, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r5, r0
	lsls r0, r0, #6
	add r0, ip
	str r0, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	strh r7, [r4]
	mov r1, sp
	str r1, [r2]
	ldrb r1, [r3, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r5, r0
	lsls r0, r0, #6
	add r0, r8
	str r0, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803A470
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803A4B6
	cmp r0, #2
	bne _0803A528
_0803A4B6:
	ldr r0, _0803A50C @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A4DE
	movs r0, #0x51
	bl m4aSongNumStart
	ldr r2, _0803A510 @ =gUnk_03004658
	ldr r1, [r2]
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
	ldr r2, [r2]
	ldrb r0, [r2, #0xc]
	cmp r0, #3
	bls _0803A4DE
	movs r0, #0
	strb r0, [r2, #0xc]
_0803A4DE:
	ldr r0, _0803A50C @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803A57C
	movs r0, #0x51
	bl m4aSongNumStart
	ldr r2, _0803A510 @ =gUnk_03004658
	ldr r1, [r2]
	ldrb r0, [r1, #0xc]
	subs r0, #1
	strb r0, [r1, #0xc]
	ldr r2, [r2]
	ldrb r1, [r2, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A57C
	movs r0, #3
	b _0803A57A
	.align 2, 0
_0803A50C: .4byte gNewKeys
_0803A510: .4byte gUnk_03004658
_0803A514: .4byte 0x030034BC
_0803A518: .4byte 0x030034C0
_0803A51C: .4byte 0x040000D4
_0803A520: .4byte 0x03000A4A
_0803A524: .4byte 0x81000002
_0803A528:
	ldr r0, _0803A610 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A550
	movs r0, #0x51
	bl m4aSongNumStart
	ldr r2, _0803A614 @ =gUnk_03004658
	ldr r1, [r2]
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
	ldr r2, [r2]
	ldrb r0, [r2, #0xc]
	cmp r0, #2
	bls _0803A550
	movs r0, #0
	strb r0, [r2, #0xc]
_0803A550:
	ldr r0, _0803A610 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803A57C
	movs r0, #0x51
	bl m4aSongNumStart
	ldr r2, _0803A614 @ =gUnk_03004658
	ldr r1, [r2]
	ldrb r0, [r1, #0xc]
	subs r0, #1
	strb r0, [r1, #0xc]
	ldr r2, [r2]
	ldrb r1, [r2, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A57C
	movs r0, #2
_0803A57A:
	strb r0, [r2, #0xc]
_0803A57C:
	movs r5, #0
	ldr r3, _0803A618 @ =0x030034BC
	mov r8, r3
	ldr r6, _0803A61C @ =gUnk_03000900
	mov ip, r6
	ldr r7, _0803A614 @ =gUnk_03004658
	mov sl, r7
_0803A58A:
	movs r4, #0
	adds r0, r5, #1
	mov sb, r0
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #1
	str r0, [sp, #8]
_0803A598:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803A628
	mov r2, sl
	ldr r3, [r2]
	ldrb r0, [r3, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, r5, r1
	lsls r1, r1, #5
	adds r0, r4, #0
	adds r0, #0xa5
	adds r1, r1, r0
	lsls r1, r1, #1
	mov r6, r8
	ldrb r0, [r6]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	add r1, ip
	ldr r7, _0803A620 @ =gUnk_03004790
	ldr r0, [r7, #0x1c]
	ldr r6, [sp, #8]
	adds r2, r6, r4
	lsls r2, r2, #1
	adds r0, r2, r0
	movs r7, #0x9d
	lsls r7, r7, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	ldr r6, _0803A624 @ =gUnk_03000800
	ldrb r6, [r6]
	adds r0, r0, r6
	strh r0, [r1]
	ldrb r0, [r3, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, r5, r1
	lsls r1, r1, #5
	adds r0, r4, #0
	adds r0, #0xb7
	adds r1, r1, r0
	lsls r1, r1, #1
	mov r7, r8
	ldrb r0, [r7]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	add r1, ip
	ldr r3, _0803A620 @ =gUnk_03004790
	ldr r0, [r3, #0x1c]
	adds r2, r2, r0
	movs r6, #0xaf
	lsls r6, r6, #1
	adds r0, r2, r6
	ldrh r0, [r0]
	ldr r7, _0803A624 @ =gUnk_03000800
	ldrb r7, [r7]
	adds r0, r0, r7
	b _0803A686
	.align 2, 0
_0803A610: .4byte gNewKeys
_0803A614: .4byte gUnk_03004658
_0803A618: .4byte 0x030034BC
_0803A61C: .4byte gUnk_03000900
_0803A620: .4byte gUnk_03004790
_0803A624: .4byte gUnk_03000800
_0803A628:
	mov r0, sl
	ldr r3, [r0]
	ldrb r0, [r3, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, r5, r1
	lsls r1, r1, #5
	adds r0, r4, #0
	adds r0, #0xa5
	adds r1, r1, r0
	lsls r1, r1, #1
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	add r1, ip
	ldr r6, _0803A6CC @ =gUnk_03004790
	ldr r0, [r6, #0x1c]
	ldr r7, [sp, #8]
	adds r2, r7, r4
	lsls r2, r2, #1
	adds r0, r2, r0
	movs r6, #0x9d
	lsls r6, r6, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1]
	ldrb r0, [r3, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, r5, r1
	lsls r1, r1, #5
	adds r0, r4, #0
	adds r0, #0xb7
	adds r1, r1, r0
	lsls r1, r1, #1
	mov r7, r8
	ldrb r0, [r7]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	add r1, ip
	ldr r3, _0803A6CC @ =gUnk_03004790
	ldr r0, [r3, #0x1c]
	adds r2, r2, r0
	adds r6, #0x24
	adds r0, r2, r6
	ldrh r0, [r0]
_0803A686:
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803A598
	mov r7, sb
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bhi _0803A69E
	b _0803A58A
_0803A69E:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0803A6B8
	ldr r1, _0803A6D0 @ =0x081166F8
	ldr r0, _0803A6D4 @ =0x030034C0
	ldrb r0, [r0]
	lsls r0, r0, #2
	subs r0, #1
	ldr r2, [sp, #4]
	adds r0, r2, r0
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #4]
_0803A6B8:
	ldr r0, [sp, #4]
	subs r0, #1
	cmp r0, #5
	bls _0803A6C2
	b _0803A88E
_0803A6C2:
	lsls r0, r0, #2
	ldr r1, _0803A6D8 @ =_0803A6DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803A6CC: .4byte gUnk_03004790
_0803A6D0: .4byte 0x081166F8
_0803A6D4: .4byte 0x030034C0
_0803A6D8: .4byte _0803A6DC
_0803A6DC: @ jump table
	.4byte _0803A6F4 @ case 0
	.4byte _0803A73C @ case 1
	.4byte _0803A790 @ case 2
	.4byte _0803A7F0 @ case 3
	.4byte _0803A814 @ case 4
	.4byte _0803A864 @ case 5
_0803A6F4:
	ldr r2, _0803A734 @ =gUnk_03003510
	ldr r0, _0803A738 @ =InputHandler_Normal
	str r0, [r2, #0x28]
	movs r1, #0
	adds r3, r2, #0
	adds r3, #0x28
_0803A700:
	ldr r0, [r3, #0x28]
	stm r3!, {r0}
	adds r1, #1
	cmp r1, #9
	bls _0803A700
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	adds r0, r2, #0
	adds r0, #0x7a
	ldrb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	bl sub_0803A22C
	bl m4aSoundVSyncOn
	bl m4aMPlayAllContinue
	b _0803A88E
	.align 2, 0
_0803A734: .4byte gUnk_03003510
_0803A738: .4byte InputHandler_Normal
_0803A73C:
	bl sub_0803A22C
	ldr r1, _0803A778 @ =gUnk_03003510
	ldr r0, _0803A77C @ =sub_0802502C
	str r0, [r1, #4]
	ldr r3, _0803A780 @ =gUnk_03005220
	ldr r0, _0803A784 @ =gUnk_03005284
	ldr r1, [r0]
	ldr r0, [r1, #0x18]
	str r0, [r3, #4]
	ldrb r2, [r1]
	adds r0, r3, #0
	adds r0, #0x4c
	movs r4, #0
	strb r2, [r0]
	ldrb r1, [r1, #8]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0803A788 @ =0x04000050
	movs r1, #0
	strh r4, [r0]
	ldr r0, _0803A78C @ =gUnk_03005498
	strb r1, [r0]
	b _0803A88E
	.align 2, 0
_0803A778: .4byte gUnk_03003510
_0803A77C: .4byte sub_0802502C
_0803A780: .4byte gUnk_03005220
_0803A784: .4byte gUnk_03005284
_0803A788: .4byte 0x04000050
_0803A78C: .4byte gUnk_03005498
_0803A790:
	ldr r0, _0803A7D4 @ =gUnk_03005284
	ldr r1, [r0]
	ldr r0, _0803A7D8 @ =gUnk_03005220
	ldrb r2, [r1, #0x1e]
	adds r0, #0x4c
	movs r5, #0
	strb r2, [r0]
	ldrb r0, [r1, #0x1e]
	strb r0, [r1]
	bl sub_0803A22C
	ldr r0, _0803A7DC @ =gUnk_03005498
	strb r5, [r0]
	ldr r4, _0803A7E0 @ =gUnk_03004C20
	ldrh r1, [r4, #0xc]
	movs r0, #0xc1
	lsls r0, r0, #3
	cmp r1, r0
	bne _0803A7BA
	movs r0, #5
	strb r0, [r4, #0xd]
_0803A7BA:
	ldr r3, _0803A7E4 @ =0x030034B0
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #4
	ldrb r2, [r3, #6]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #6]
	strb r5, [r4, #0xc]
	ldr r1, _0803A7E8 @ =gUnk_03003510
	ldr r0, _0803A7EC @ =sub_08024C34
	str r0, [r1, #4]
	b _0803A88E
	.align 2, 0
_0803A7D4: .4byte gUnk_03005284
_0803A7D8: .4byte gUnk_03005220
_0803A7DC: .4byte gUnk_03005498
_0803A7E0: .4byte gUnk_03004C20
_0803A7E4: .4byte 0x030034B0
_0803A7E8: .4byte gUnk_03003510
_0803A7EC: .4byte sub_08024C34
_0803A7F0:
	ldr r1, _0803A808 @ =gUnk_03003510
	ldr r0, _0803A80C @ =sub_0803A8B8
	str r0, [r1, #4]
	ldr r4, _0803A810 @ =gUnk_03004790
	ldr r0, [r4, #0x1c]
	bl thunk_HeapFree
	ldr r0, [r4, #0x18]
	bl thunk_HeapFree
	b _0803A88E
	.align 2, 0
_0803A808: .4byte gUnk_03003510
_0803A80C: .4byte sub_0803A8B8
_0803A810: .4byte gUnk_03004790
_0803A814:
	ldr r0, _0803A848 @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _0803A82C
	ldr r0, _0803A84C @ =gUnk_03005284
	ldr r1, [r0]
	ldr r0, _0803A850 @ =gUnk_03005220
	ldrb r2, [r1, #0x1e]
	adds r0, #0x4c
	strb r2, [r0]
	ldrb r0, [r1, #0x1e]
	strb r0, [r1]
_0803A82C:
	bl sub_0803A22C
	ldr r0, _0803A854 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0803A858 @ =gUnk_03005498
	strb r1, [r0]
	bl sub_080008DC
	ldr r1, _0803A85C @ =gUnk_03003510
	ldr r0, _0803A860 @ =sub_08025818
	str r0, [r1, #4]
	b _0803A88E
	.align 2, 0
_0803A848: .4byte gUnk_03004C20
_0803A84C: .4byte gUnk_03005284
_0803A850: .4byte gUnk_03005220
_0803A854: .4byte 0x04000050
_0803A858: .4byte gUnk_03005498
_0803A85C: .4byte gUnk_03003510
_0803A860: .4byte sub_08025818
_0803A864:
	ldr r1, _0803A8A0 @ =gUnk_03005498
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803A8A4 @ =gUnk_03004C20
	movs r2, #0
	movs r0, #9
	strb r0, [r1, #0xc]
	ldr r0, _0803A8A8 @ =0x03004D9C
	strb r2, [r0]
	bl sub_0800A468
	ldr r1, _0803A8AC @ =gUnk_03003510
	ldr r0, _0803A8B0 @ =sub_08025900
	str r0, [r1, #4]
	ldr r4, _0803A8B4 @ =gUnk_03004790
	ldr r0, [r4, #0x1c]
	bl thunk_HeapFree
	ldr r0, [r4, #0x18]
	bl thunk_HeapFree
_0803A88E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A8A0: .4byte gUnk_03005498
_0803A8A4: .4byte gUnk_03004C20
_0803A8A8: .4byte 0x03004D9C
_0803A8AC: .4byte gUnk_03003510
_0803A8B0: .4byte sub_08025900
_0803A8B4: .4byte gUnk_03004790

	thumb_func_start sub_0803A8B8
sub_0803A8B8: @ 0x0803A8B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803A8D0 @ =0x030034BC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A8D8
	ldr r0, _0803A8D4 @ =gUnk_03000800
	ldrb r7, [r0]
	b _0803A8DA
	.align 2, 0
_0803A8D0: .4byte 0x030034BC
_0803A8D4: .4byte gUnk_03000800
_0803A8D8:
	movs r7, #0
_0803A8DA:
	ldr r2, _0803A988 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0803A98C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0803A990 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _0803A994 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	ldr r0, _0803A998 @ =0x082EC8F4
	mov r8, r0
	ldr r0, [r0]
	ldr r5, _0803A99C @ =0x7FFFFFFF
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r4, _0803A9A0 @ =gUnk_03004790
	str r0, [r4, #0x18]
	ldr r6, _0803A9A4 @ =0x082ECD74
	ldr r0, [r6]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	mov r1, r8
	bl Decompress
	ldr r0, [r4, #0x1c]
	adds r1, r6, #0
	bl Decompress
	movs r5, #0
	movs r6, #0
	lsls r1, r7, #5
	mov sl, r1
	ldr r2, _0803A9A8 @ =gUnk_03000900
	mov sb, r2
	ldr r3, _0803A9AC @ =0x0000021B
	mov r8, r3
_0803A934:
	adds r0, r5, #0
	movs r1, #0x1e
	bl __modsi3
	cmp r0, #0
	bne _0803A946
	cmp r5, #0
	beq _0803A946
	adds r6, #2
_0803A946:
	lsls r2, r6, #1
	ldr r0, _0803A9B0 @ =0x030034BC
	ldrb r0, [r0]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	add r2, sb
	ldr r0, _0803A9A0 @ =gUnk_03004790
	ldr r1, [r0, #0x1c]
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	adds r0, r0, r7
	strh r0, [r2]
	adds r6, #1
	adds r5, #1
	cmp r5, r8
	ble _0803A934
	ldr r1, _0803A9B4 @ =0x04000042
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0803A9B8 @ =0x00001E90
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _0803A9B0 @ =0x030034BC
	ldrb r0, [r3]
	cmp r0, #0
	bne _0803A9C0
	adds r1, #2
	ldr r2, _0803A9BC @ =0x00003621
	adds r0, r2, #0
	b _0803A9C6
	.align 2, 0
_0803A988: .4byte 0x04000200
_0803A98C: .4byte 0x0000FFFE
_0803A990: .4byte 0x04000004
_0803A994: .4byte 0x0000FFF7
_0803A998: .4byte 0x082EC8F4
_0803A99C: .4byte 0x7FFFFFFF
_0803A9A0: .4byte gUnk_03004790
_0803A9A4: .4byte 0x082ECD74
_0803A9A8: .4byte gUnk_03000900
_0803A9AC: .4byte 0x0000021B
_0803A9B0: .4byte 0x030034BC
_0803A9B4: .4byte 0x04000042
_0803A9B8: .4byte 0x00001E90
_0803A9BC: .4byte 0x00003621
_0803A9C0:
	ldr r1, _0803A9D8 @ =0x04000048
	ldr r3, _0803A9DC @ =0x00003521
	adds r0, r3, #0
_0803A9C6:
	strh r0, [r1]
	ldr r0, _0803A9E0 @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	bne _0803A9EC
	ldr r1, _0803A9E4 @ =gUnk_03003510
	ldr r0, _0803A9E8 @ =sub_0800C108
	b _0803A9F0
	.align 2, 0
_0803A9D8: .4byte 0x04000048
_0803A9DC: .4byte 0x00003521
_0803A9E0: .4byte gUnk_03004C20
_0803A9E4: .4byte gUnk_03003510
_0803A9E8: .4byte sub_0800C108
_0803A9EC:
	ldr r1, _0803AA70 @ =gUnk_03003510
	ldr r0, _0803AA74 @ =sub_0800BFF4
_0803A9F0:
	str r0, [r1, #0x30]
	ldr r0, _0803AA78 @ =InputHandler_Normal
	str r0, [r1, #0x28]
	ldr r0, _0803AA7C @ =sub_0803AAA0
	str r0, [r1, #0x2c]
	movs r0, #1
	str r0, [r1, #0x34]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r4, #0
	str r4, [r0]
	adds r1, #0x79
	movs r0, #4
	strb r0, [r1]
	ldr r2, _0803AA80 @ =0x040000D4
	ldr r1, _0803AA84 @ =gUnk_03004790
	ldr r0, [r1, #0x18]
	adds r0, #4
	str r0, [r2]
	ldr r3, _0803AA88 @ =gUnk_03003430
	ldr r0, _0803AA8C @ =0x030034BC
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	add r0, sl
	str r0, [r2, #4]
	ldr r0, _0803AA90 @ =0x800005C0
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	subs r2, #0xd4
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0803AA94 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0803AA98 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	ldr r0, _0803AA9C @ =gUnk_03004C20
	str r4, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AA70: .4byte gUnk_03003510
_0803AA74: .4byte sub_0800BFF4
_0803AA78: .4byte InputHandler_Normal
_0803AA7C: .4byte sub_0803AAA0
_0803AA80: .4byte 0x040000D4
_0803AA84: .4byte gUnk_03004790
_0803AA88: .4byte gUnk_03003430
_0803AA8C: .4byte 0x030034BC
_0803AA90: .4byte 0x800005C0
_0803AA94: .4byte 0x04000200
_0803AA98: .4byte 0x04000004
_0803AA9C: .4byte gUnk_03004C20

	thumb_func_start sub_0803AAA0
sub_0803AAA0: @ 0x0803AAA0
	push {r4, r5, lr}
	ldr r5, _0803AAD4 @ =gUnk_03004C20
	ldr r0, [r5]
	adds r1, r0, #5
	str r1, [r5]
	cmp r1, #0x60
	bhi _0803AAB0
	b _0803ABC2
_0803AAB0:
	cmp r1, #0xc7
	bhi _0803AB60
	movs r0, #0x60
	str r0, [r5]
	ldr r0, _0803AAD8 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803AAE0
	ldr r0, _0803AADC @ =gUnk_03005284
	ldr r1, [r0]
	movs r4, #0
	movs r0, #1
	b _0803AAEE
	.align 2, 0
_0803AAD4: .4byte gUnk_03004C20
_0803AAD8: .4byte gNewKeys
_0803AADC: .4byte gUnk_03005284
_0803AAE0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803AAF8
	ldr r0, _0803AB14 @ =gUnk_03005284
	ldr r1, [r0]
	movs r0, #2
_0803AAEE:
	strb r0, [r1, #0x1c]
	movs r0, #0x51
	bl m4aSongNumStart
	str r4, [r5]
_0803AAF8:
	ldr r0, _0803AB18 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803ABC2
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803AB1C
	movs r0, #0x52
	bl m4aSongNumStart
	b _0803AB22
	.align 2, 0
_0803AB14: .4byte gUnk_03005284
_0803AB18: .4byte gNewKeys
_0803AB1C:
	movs r0, #0x54
	bl m4aSongNumStart
_0803AB22:
	ldr r1, _0803AB48 @ =gUnk_03004C20
	movs r0, #0xc8
	str r0, [r1]
	ldr r0, _0803AB4C @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r2, _0803AB50 @ =gUnk_03005284
	cmp r0, #0
	beq _0803AB54
	ldr r1, [r2]
	ldrb r3, [r1, #0x1d]
	ldrb r0, [r1, #0x1c]
	cmp r0, r3
	bne _0803AB54
	movs r0, #3
	eors r0, r3
	strb r0, [r1, #0x1d]
	b _0803ABC2
	.align 2, 0
_0803AB48: .4byte gUnk_03004C20
_0803AB4C: .4byte gNewKeys
_0803AB50: .4byte gUnk_03005284
_0803AB54:
	ldr r2, [r2]
	ldrb r1, [r2, #0x1d]
	movs r0, #3
	subs r0, r0, r1
	strb r0, [r2, #0x1c]
	b _0803ABC2
_0803AB60:
	movs r0, #0xaf
	lsls r0, r0, #1
	cmp r1, r0
	bls _0803ABC2
	ldr r0, _0803AB7C @ =gUnk_03003410
	movs r1, #0
	strb r1, [r0, #4]
	ldrb r0, [r5, #0xc]
	cmp r0, #8
	bne _0803AB88
	ldr r1, _0803AB80 @ =gUnk_03003510
	ldr r0, _0803AB84 @ =sub_0800C108
	b _0803AB8C
	.align 2, 0
_0803AB7C: .4byte gUnk_03003410
_0803AB80: .4byte gUnk_03003510
_0803AB84: .4byte sub_0800C108
_0803AB88:
	ldr r1, _0803ABE0 @ =gUnk_03003510
	ldr r0, _0803ABE4 @ =sub_0800BFF4
_0803AB8C:
	str r0, [r1, #0x30]
	adds r2, r1, #0
	ldr r0, _0803ABE8 @ =InputHandler_Normal
	str r0, [r2, #0x28]
	ldr r0, _0803ABEC @ =sub_08039D8C
	str r0, [r2, #0x2c]
	movs r0, #1
	str r0, [r2, #0x34]
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	adds r1, r2, #0
	adds r1, #0x79
	movs r0, #4
	strb r0, [r1]
	ldr r4, _0803ABF0 @ =gUnk_03004790
	ldr r0, [r4, #0x1c]
	bl thunk_HeapFree
	ldr r0, [r4, #0x18]
	bl thunk_HeapFree
_0803ABC2:
	ldr r0, _0803ABF4 @ =gUnk_03004C20
	ldr r2, [r0]
	cmp r2, #0xc7
	bhi _0803AC0E
	ldr r0, _0803ABF8 @ =gUnk_03005284
	ldr r0, [r0]
	ldrb r0, [r0, #0x1c]
	cmp r0, #1
	bne _0803AC00
	ldr r1, _0803ABFC @ =0x04000042
	movs r0, #0xe0
	subs r0, r0, r2
	strh r0, [r1]
	b _0803AC0E
	.align 2, 0
_0803ABE0: .4byte gUnk_03003510
_0803ABE4: .4byte sub_0800BFF4
_0803ABE8: .4byte InputHandler_Normal
_0803ABEC: .4byte sub_08039D8C
_0803ABF0: .4byte gUnk_03004790
_0803ABF4: .4byte gUnk_03004C20
_0803ABF8: .4byte gUnk_03005284
_0803ABFC: .4byte 0x04000042
_0803AC00:
	ldr r0, _0803AC14 @ =0x04000042
	adds r1, r2, #0
	adds r1, #0x18
	lsls r1, r1, #8
	movs r2, #0xe0
	orrs r1, r2
	strh r1, [r0]
_0803AC0E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803AC14: .4byte 0x04000042

	thumb_func_start sub_0803AC18
sub_0803AC18: @ 0x0803AC18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _0803AC68
	ldr r0, _0803AC64 @ =gUnk_03004670
	ldr r2, [r0]
	mov r0, sb
	lsls r1, r0, #3
	adds r0, r2, #0
	adds r0, #0xf
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803AC46
	b _0803AD80
_0803AC46:
	mov r1, sb
	adds r1, #1
	lsls r1, r1, #3
	adds r0, r2, #0
	adds r0, #8
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x7f
	bne _0803AC5E
	b _0803AD80
_0803AC5E:
	movs r0, #1
	b _0803AD82
	.align 2, 0
_0803AC64: .4byte gUnk_03004670
_0803AC68:
	ldr r2, _0803ACB4 @ =gUnk_03004670
	ldr r0, [r2]
	adds r0, #0x37
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803AC7A
	b _0803AD80
_0803AC7A:
	movs r1, #0
	mov r8, r1
	mov ip, r1
	movs r6, #0
	mov sl, r6
	movs r0, #0
	adds r4, r2, #0
	movs r7, #0x7f
_0803AC8A:
	movs r2, #0
	adds r5, r0, #1
	lsls r3, r0, #3
_0803AC90:
	cmp r2, #3
	beq _0803AC98
	cmp r2, #5
	bne _0803ACB8
_0803AC98:
	ldr r0, [r4]
	adds r0, #8
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0x64
	bne _0803ACB8
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	b _0803ACD6
	.align 2, 0
_0803ACB4: .4byte gUnk_03004670
_0803ACB8:
	cmp r2, #7
	beq _0803ACD6
	ldr r0, [r4]
	adds r0, #8
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0x1e
	bne _0803ACD6
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
_0803ACD6:
	ldr r0, [r4]
	adds r0, #8
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803ACEC
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803ACEC:
	adds r3, #1
	adds r2, #1
	cmp r2, #6
	bls _0803AC90
	adds r0, r5, #0
	cmp r0, #4
	bls _0803AC8A
	ldr r0, _0803AD90 @ =gUnk_03004670
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	movs r4, #0x7f
	adds r3, r4, #0
	ands r3, r0
	cmp r3, #0x1e
	bne _0803AD18
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_0803AD18:
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0x1e
	bne _0803AD30
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_0803AD30:
	mov r1, sb
	cmp r1, #4
	bne _0803AD3E
	cmp r3, #0x7f
	beq _0803AD3E
	cmp r6, #0x23
	beq _0803AC5E
_0803AD3E:
	mov r0, sb
	cmp r0, #5
	bne _0803AD5E
	ldr r1, _0803AD90 @ =gUnk_03004670
	ldr r0, [r1]
	adds r0, #0x31
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x7f
	beq _0803AD5E
	mov r0, ip
	add r0, r8
	cmp r0, #0x18
	ble _0803AD5E
	b _0803AC5E
_0803AD5E:
	mov r0, sb
	cmp r0, #6
	bne _0803AD80
	ldr r1, _0803AD90 @ =gUnk_03004670
	ldr r0, [r1]
	adds r0, #0x32
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x7f
	beq _0803AD80
	mov r0, ip
	add r0, r8
	add r0, sl
	cmp r0, #0x25
	bne _0803AD80
	b _0803AC5E
_0803AD80:
	movs r0, #0
_0803AD82:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803AD90: .4byte gUnk_03004670

	thumb_func_start sub_0803AD94
sub_0803AD94: @ 0x0803AD94
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r7, r0, #0x18
	cmp r7, #4
	bhi _0803AE04
	ldr r0, _0803ADFC @ =0x08116708
	lsls r2, r7, #2
	adds r1, r0, #2
	adds r1, r2, r1
	adds r0, #3
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0803AE00 @ =gUnk_03001100
	adds r4, r0, r1
	adds r2, r2, r7
	lsls r2, r2, #1
	movs r3, #0xa0
	lsls r3, r3, #3
	adds r1, r1, r3
	adds r2, r2, r1
	movs r0, #0
_0803ADCC:
	movs r3, #0
	adds r5, r4, #0
	adds r5, #0x40
	adds r6, r2, #0
	adds r6, #0x40
	adds r7, r0, #1
_0803ADD8:
	lsls r0, r3, #1
	adds r1, r0, r4
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0803ADD8
	adds r4, r5, #0
	adds r2, r6, #0
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0803ADCC
	b _0803AE70
	.align 2, 0
_0803ADFC: .4byte 0x08116708
_0803AE00: .4byte gUnk_03001100
_0803AE04:
	ldr r5, _0803AE78 @ =gUnk_03000900
	ldr r1, _0803AE7C @ =0x08116708
	lsls r2, r7, #2
	adds r0, r1, #2
	adds r0, r2, r0
	ldrb r4, [r0]
	adds r1, #3
	adds r2, r2, r1
	ldrb r6, [r2]
	lsls r1, r6, #5
	adds r1, r4, r1
	lsls r3, r1, #1
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	adds r3, r3, r5
	subs r2, r7, #5
	lsls r2, r2, #1
	movs r7, #0xd0
	lsls r7, r7, #2
	adds r0, r2, r7
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r3]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r5
	ldr r3, _0803AE80 @ =0x00000341
	adds r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r6, #1
	lsls r6, r6, #5
	adds r4, r4, r6
	lsls r1, r4, #1
	adds r1, r1, r5
	adds r7, #0x20
	adds r0, r2, r7
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r4, #1
	lsls r4, r4, #1
	adds r4, r4, r5
	ldr r0, _0803AE84 @ =0x00000361
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r5
	ldrh r0, [r2]
	strh r0, [r4]
_0803AE70:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AE78: .4byte gUnk_03000900
_0803AE7C: .4byte 0x08116708
_0803AE80: .4byte 0x00000341
_0803AE84: .4byte 0x00000361

	thumb_func_start sub_0803AE88
sub_0803AE88: @ 0x0803AE88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r4, _0803AF28 @ =0x08116708
	lsls r0, r0, #2
	adds r3, r4, #2
	adds r3, r0, r3
	adds r2, r4, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldrb r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r2, _0803AF2C @ =gUnk_03001100
	adds r5, r0, r2
	adds r0, r5, #0
	adds r0, #0x40
	ldrh r0, [r0]
	mov sl, r0
	movs r0, #0
	mov sb, r4
	lsrs r7, r1, #0xc
	ldr r3, _0803AF30 @ =0x00000FFF
	mov ip, r3
_0803AECC:
	movs r3, #0
	adds r6, r5, #0
	adds r6, #0x40
	adds r4, r0, #1
_0803AED4:
	lsls r1, r3, #1
	adds r1, r1, r5
	ldrh r2, [r1]
	mov r0, ip
	ands r0, r2
	orrs r0, r7
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0803AED4
	adds r5, r6, #0
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0803AECC
	mov r0, r8
	cmp r0, #4
	bne _0803AF18
	ldr r1, _0803AF34 @ =gUnk_03000900
	mov r2, sb
	ldrb r0, [r2, #0x13]
	lsls r0, r0, #5
	ldrb r3, [r2, #0x12]
	adds r0, r0, r3
	adds r0, #0x20
	lsls r0, r0, #1
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r1, r2
	adds r0, r0, r1
	mov r3, sl
	strh r3, [r0]
_0803AF18:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AF28: .4byte 0x08116708
_0803AF2C: .4byte gUnk_03001100
_0803AF30: .4byte 0x00000FFF
_0803AF34: .4byte gUnk_03000900

	thumb_func_start sub_0803AF38
sub_0803AF38: @ 0x0803AF38
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _0803AFD4
	ldr r6, _0803AFC8 @ =gUnk_03000900
	ldr r4, _0803AFCC @ =0x08116748
	lsls r5, r3, #3
	adds r2, r5, r4
	adds r0, r4, #1
	adds r0, r5, r0
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldrb r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	adds r1, r1, r6
	ldr r0, _0803AFD0 @ =0x08116880
	adds r0, r3, r0
	ldrb r3, [r0]
	adds r3, #0x1c
	lsls r0, r3, #6
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1]
	adds r2, r4, #2
	adds r2, r5, r2
	adds r0, r4, #3
	adds r0, r5, r0
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldrb r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	lsls r3, r3, #5
	adds r0, r3, #1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1]
	adds r2, r4, #4
	adds r2, r5, r2
	adds r0, r4, #5
	adds r0, r5, r0
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldrb r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, #2
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, r4, #6
	adds r1, r5, r1
	adds r4, #7
	adds r5, r5, r4
	ldrb r0, [r5]
	lsls r0, r0, #5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	adds r3, #3
	b _0803B058
	.align 2, 0
_0803AFC8: .4byte gUnk_03000900
_0803AFCC: .4byte 0x08116748
_0803AFD0: .4byte 0x08116880
_0803AFD4:
	ldr r6, _0803B068 @ =gUnk_03000900
	ldr r4, _0803B06C @ =0x08116748
	lsls r5, r3, #3
	adds r2, r5, r4
	adds r0, r4, #1
	adds r0, r5, r0
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldrb r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	adds r1, r1, r6
	ldr r0, _0803B070 @ =0x08116880
	adds r0, r3, r0
	ldrb r3, [r0]
	adds r3, #0x1c
	lsls r3, r3, #5
	adds r0, r3, #4
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1]
	adds r2, r4, #2
	adds r2, r5, r2
	adds r0, r4, #3
	adds r0, r5, r0
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldrb r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, #5
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1]
	adds r2, r4, #4
	adds r2, r5, r2
	adds r0, r4, #5
	adds r0, r5, r0
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldrb r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, #6
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, r4, #6
	adds r1, r5, r1
	adds r4, #7
	adds r5, r5, r4
	ldrb r0, [r5]
	lsls r0, r0, #5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	adds r3, #7
_0803B058:
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrh r1, [r3]
	strh r1, [r0]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B068: .4byte gUnk_03000900
_0803B06C: .4byte 0x08116748
_0803B070: .4byte 0x08116880

	thumb_func_start sub_0803B074
sub_0803B074: @ 0x0803B074
	push {r4, lr}
	movs r4, #0
_0803B078:
	adds r0, r4, #0
	bl sub_0803AC18
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803B090
	adds r0, r4, #0
	bl sub_0803AD94
	adds r0, r4, #0
	bl sub_0803AF38
_0803B090:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _0803B078
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803B0A0
sub_0803B0A0: @ 0x0803B0A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _0803B108 @ =gUnk_03004670
	ldr r3, [r2]
	adds r0, r3, #0
	adds r0, #0x37
	ldrb r1, [r0]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov sl, r2
	cmp r5, #0
	bne _0803B0C8
	b _0803B23C
_0803B0C8:
	movs r0, #0
	mov ip, r0
	mov r8, r0
	movs r6, #0
	movs r1, #0
	str r1, [sp]
	mov r4, sl
	movs r1, #0x7f
	mov sb, r1
_0803B0DA:
	movs r3, #0
	adds r5, r0, #1
	lsls r2, r0, #3
_0803B0E0:
	cmp r3, #3
	beq _0803B0E8
	cmp r3, #5
	bne _0803B10C
_0803B0E8:
	ldr r0, [r4]
	adds r1, r3, r2
	adds r0, #8
	adds r0, r0, r1
	ldrb r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #0x64
	bne _0803B10C
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	b _0803B12C
	.align 2, 0
_0803B108: .4byte gUnk_03004670
_0803B10C:
	cmp r3, #7
	beq _0803B12C
	ldr r0, [r4]
	adds r1, r3, r2
	adds r0, #8
	adds r0, r0, r1
	ldrb r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #0x1e
	bne _0803B12C
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0803B12C:
	ldr r0, [r4]
	adds r1, r3, r2
	adds r0, #8
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r7, #0x80
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0803B146
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803B146:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #6
	bls _0803B0E0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0803B0DA
	mov r0, sl
	ldr r1, [r0]
	adds r5, r1, #0
	adds r5, #0x30
	ldrb r0, [r5]
	movs r4, #0x7f
	adds r3, r4, #0
	ands r3, r0
	cmp r3, #0x1e
	bne _0803B176
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
_0803B176:
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0x1e
	bne _0803B18E
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
_0803B18E:
	cmp r3, #0x7f
	bne _0803B1B8
	cmp r6, #0x23
	bne _0803B1B8
	ldr r2, _0803B1B0 @ =0x03004C08
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r2, #2]
	strb r7, [r5]
	ldr r0, _0803B1B4 @ =sub_0803B378
	b _0803B35A
	.align 2, 0
_0803B1B0: .4byte 0x03004C08
_0803B1B4: .4byte sub_0803B378
_0803B1B8:
	mov r1, sl
	ldr r0, [r1]
	adds r3, r0, #0
	adds r3, #0x31
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x7f
	bne _0803B1F8
	mov r0, r8
	add r0, ip
	cmp r0, #0x18
	ble _0803B1F8
	ldr r2, _0803B1F0 @ =0x03004C08
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r2, #2]
	movs r0, #0x80
	strb r0, [r3]
	ldr r0, _0803B1F4 @ =sub_0803B378
	b _0803B35A
	.align 2, 0
_0803B1F0: .4byte 0x03004C08
_0803B1F4: .4byte sub_0803B378
_0803B1F8:
	mov r1, sl
	ldr r0, [r1]
	adds r3, r0, #0
	adds r3, #0x32
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x7f
	beq _0803B20C
	b _0803B358
_0803B20C:
	ldr r0, [sp]
	add r0, ip
	add r0, r8
	cmp r0, #0x25
	beq _0803B218
	b _0803B358
_0803B218:
	ldr r2, _0803B234 @ =0x03004C08
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r2, #2]
	movs r0, #0x80
	strb r0, [r3]
	ldr r0, _0803B238 @ =sub_0803B378
	b _0803B35A
	.align 2, 0
_0803B234: .4byte 0x03004C08
_0803B238: .4byte sub_0803B378
_0803B23C:
	ldrb r1, [r3, #0xf]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0803B278
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x7f
	bne _0803B278
	ldr r1, _0803B26C @ =0x03004C08
	ldrb r2, [r1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	strb r5, [r1, #2]
	ldrb r1, [r3, #0x10]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r3, #0x10]
	ldr r1, _0803B270 @ =gUnk_03003510
	ldr r0, _0803B274 @ =sub_0803B378
	b _0803B35C
	.align 2, 0
_0803B26C: .4byte 0x03004C08
_0803B270: .4byte gUnk_03003510
_0803B274: .4byte sub_0803B378
_0803B278:
	mov r0, sl
	ldr r3, [r0]
	ldrb r1, [r3, #0x17]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0803B2C0
	ldrb r1, [r3, #0x18]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x7f
	bne _0803B2C0
	ldr r2, _0803B2B4 @ =0x03004C08
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r2, #2]
	ldrb r1, [r3, #0x18]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r3, #0x18]
	ldr r1, _0803B2B8 @ =gUnk_03003510
	ldr r0, _0803B2BC @ =sub_0803B378
	b _0803B35C
	.align 2, 0
_0803B2B4: .4byte 0x03004C08
_0803B2B8: .4byte gUnk_03003510
_0803B2BC: .4byte sub_0803B378
_0803B2C0:
	mov r1, sl
	ldr r3, [r1]
	ldrb r1, [r3, #0x1f]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0803B30C
	adds r3, #0x20
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x7f
	bne _0803B30C
	ldr r2, _0803B300 @ =0x03004C08
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r2, #2]
	ldrb r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r3]
	ldr r1, _0803B304 @ =gUnk_03003510
	ldr r0, _0803B308 @ =sub_0803B378
	b _0803B35C
	.align 2, 0
_0803B300: .4byte 0x03004C08
_0803B304: .4byte gUnk_03003510
_0803B308: .4byte sub_0803B378
_0803B30C:
	mov r0, sl
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r1, [r0]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0803B358
	adds r3, r2, #0
	adds r3, #0x28
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x7f
	bne _0803B358
	ldr r2, _0803B350 @ =0x03004C08
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r2, #2]
	ldrb r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r3]
	ldr r0, _0803B354 @ =sub_0803B378
	b _0803B35A
	.align 2, 0
_0803B350: .4byte 0x03004C08
_0803B354: .4byte sub_0803B378
_0803B358:
	ldr r0, _0803B370 @ =sub_0803BF84
_0803B35A:
	ldr r1, _0803B374 @ =gUnk_03003510
_0803B35C:
	str r0, [r1, #4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B370: .4byte sub_0803BF84
_0803B374: .4byte gUnk_03003510

	thumb_func_start sub_0803B378
sub_0803B378: @ 0x0803B378
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803B38C @ =0x03004C08
	ldr r1, [r0]
	lsls r2, r1, #0x1c
	lsrs r1, r2, #0x1c
	adds r3, r0, #0
	cmp r1, #3
	bhi _0803B390
	movs r7, #0
	b _0803B392
	.align 2, 0
_0803B38C: .4byte 0x03004C08
_0803B390:
	movs r7, #4
_0803B392:
	ldr r1, _0803B3B8 @ =0x08116880
	lsrs r0, r2, #0x1c
	adds r0, r0, r1
	ldrb r6, [r0]
	ldrb r0, [r3, #2]
	movs r1, #0x1e
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #1
	cmp r0, #7
	bls _0803B3AE
	b _0803B5E6
_0803B3AE:
	lsls r0, r0, #2
	ldr r1, _0803B3BC @ =_0803B3C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803B3B8: .4byte 0x08116880
_0803B3BC: .4byte _0803B3C0
_0803B3C0: @ jump table
	.4byte _0803B3E0 @ case 0
	.4byte _0803B434 @ case 1
	.4byte _0803B488 @ case 2
	.4byte _0803B4EC @ case 3
	.4byte _0803B558 @ case 4
	.4byte _0803B56E @ case 5
	.4byte _0803B56E @ case 6
	.4byte _0803B5D4 @ case 7
_0803B3E0:
	ldr r4, _0803B428 @ =0x03004C08
	ldrb r0, [r4, #2]
	movs r1, #0x1e
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803B3F6
	movs r0, #0x89
	bl m4aSongNumStart
_0803B3F6:
	ldr r3, _0803B42C @ =gUnk_03000900
	ldr r1, _0803B430 @ =0x08116748
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x19
	adds r2, r2, r1
	lsrs r0, r0, #0x19
	adds r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldrb r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #4
	adds r3, r3, r0
	adds r1, r1, r3
	adds r0, r6, #0
	adds r0, #0x1c
	lsls r0, r0, #5
	adds r0, r7, r0
	lsls r0, r0, #1
	adds r0, r0, r3
	b _0803B544
	.align 2, 0
_0803B428: .4byte 0x03004C08
_0803B42C: .4byte gUnk_03000900
_0803B430: .4byte 0x08116748
_0803B434:
	ldr r5, _0803B47C @ =0x03004C08
	ldrb r0, [r5, #2]
	movs r1, #0x1e
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803B44A
	movs r0, #0x89
	bl m4aSongNumStart
_0803B44A:
	ldr r4, _0803B480 @ =gUnk_03000900
	ldr r2, _0803B484 @ =0x08116748
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	lsrs r3, r0, #0x19
	adds r1, r2, #2
	adds r3, r3, r1
	lsrs r0, r0, #0x19
	adds r2, #3
	adds r0, r0, r2
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldrb r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r1, r1, r4
	adds r0, r6, #0
	adds r0, #0x1c
	lsls r0, r0, #5
	adds r0, #1
	b _0803B53E
	.align 2, 0
_0803B47C: .4byte 0x03004C08
_0803B480: .4byte gUnk_03000900
_0803B484: .4byte 0x08116748
_0803B488:
	ldr r5, _0803B49C @ =0x03004C08
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #6
	bne _0803B4A0
	movs r0, #0x95
	strb r0, [r5, #2]
	b _0803B5E6
	.align 2, 0
_0803B49C: .4byte 0x03004C08
_0803B4A0:
	ldrb r0, [r5, #2]
	movs r1, #0x1e
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803B4B4
	movs r0, #0x89
	bl m4aSongNumStart
_0803B4B4:
	ldr r4, _0803B4E4 @ =gUnk_03000900
	ldr r2, _0803B4E8 @ =0x08116748
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	lsrs r3, r0, #0x19
	adds r1, r2, #4
	adds r3, r3, r1
	lsrs r0, r0, #0x19
	adds r2, #5
	adds r0, r0, r2
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldrb r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r1, r1, r4
	adds r0, r6, #0
	adds r0, #0x1c
	lsls r0, r0, #5
	adds r0, #2
	b _0803B53E
	.align 2, 0
_0803B4E4: .4byte gUnk_03000900
_0803B4E8: .4byte 0x08116748
_0803B4EC:
	ldr r5, _0803B54C @ =0x03004C08
	ldrb r0, [r5]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #4
	beq _0803B5E6
	cmp r1, #6
	beq _0803B5E6
	ldrb r0, [r5, #2]
	movs r1, #0x1e
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803B510
	movs r0, #0x89
	bl m4aSongNumStart
_0803B510:
	ldr r4, _0803B550 @ =gUnk_03000900
	ldr r2, _0803B554 @ =0x08116748
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	lsrs r3, r0, #0x19
	adds r1, r2, #6
	adds r3, r3, r1
	lsrs r0, r0, #0x19
	adds r2, #7
	adds r0, r0, r2
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldrb r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r1, r1, r4
	adds r0, r6, #0
	adds r0, #0x1c
	lsls r0, r0, #5
	adds r0, #3
_0803B53E:
	adds r0, r7, r0
	lsls r0, r0, #1
	adds r0, r0, r4
_0803B544:
	ldrh r0, [r0]
	strh r0, [r1]
	b _0803B5E6
	.align 2, 0
_0803B54C: .4byte 0x03004C08
_0803B550: .4byte gUnk_03000900
_0803B554: .4byte 0x08116748
_0803B558:
	ldr r0, _0803B5B4 @ =0x03004C08
	ldrb r0, [r0, #2]
	movs r1, #0x1e
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803B56E
	movs r0, #0x8a
	bl m4aSongNumStart
_0803B56E:
	ldr r5, _0803B5B4 @ =0x03004C08
	ldr r0, [r5]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1c
	cmp r0, #3
	bhi _0803B5CC
	ldr r0, _0803B5B8 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803B5E6
	ldr r4, _0803B5BC @ =0x040000D4
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	movs r1, #0xe0
	lsls r1, r1, #0x13
	ands r1, r0
	lsrs r1, r1, #0x13
	ldr r0, _0803B5C0 @ =0x08116780
	adds r1, r1, r0
	str r1, [r4]
	ldr r0, _0803B5C4 @ =0x05000160
	str r0, [r4, #4]
	ldr r0, _0803B5C8 @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	movs r1, #0xb
	bl sub_0803AE88
	b _0803B5E6
	.align 2, 0
_0803B5B4: .4byte 0x03004C08
_0803B5B8: .4byte gUnk_03004C20
_0803B5BC: .4byte 0x040000D4
_0803B5C0: .4byte 0x08116780
_0803B5C4: .4byte 0x05000160
_0803B5C8: .4byte 0x80000010
_0803B5CC:
	lsrs r0, r1, #0x1c
	bl sub_0803AD94
	b _0803B5E6
_0803B5D4:
	ldr r0, _0803B5F4 @ =0x03004C08
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	bl sub_0803AD94
	ldr r1, _0803B5F8 @ =gUnk_03003510
	ldr r0, _0803B5FC @ =sub_0803B0A0
	str r0, [r1, #4]
_0803B5E6:
	ldr r1, _0803B5F4 @ =0x03004C08
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B5F4: .4byte 0x03004C08
_0803B5F8: .4byte gUnk_03003510
_0803B5FC: .4byte sub_0803B0A0

	thumb_func_start sub_0803B600
sub_0803B600: @ 0x0803B600
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0803B630 @ =gUnk_03004C20
	ldrb r4, [r0, #0xd]
	adds r7, r0, #0
	cmp r4, #6
	bne _0803B638
	ldr r3, _0803B634 @ =0x03004C08
	ldrb r1, [r7, #0xc]
	adds r1, #0xfe
	adds r1, r4, r1
	lsls r1, r1, #4
	ldrb r2, [r3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r2, r3, #0
	b _0803B648
	.align 2, 0
_0803B630: .4byte gUnk_03004C20
_0803B634: .4byte 0x03004C08
_0803B638:
	ldr r2, _0803B9E4 @ =0x03004C08
	subs r1, r4, #1
	lsls r1, r1, #4
	ldrb r3, [r2]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_0803B648:
	movs r5, #0
	strb r5, [r2, #1]
	ldrb r6, [r7, #0xd]
	ldrb r0, [r7, #0xc]
	mov r8, r0
	bl sub_08003D58
	ldr r1, _0803B9E8 @ =0x040000D4
	ldr r0, _0803B9EC @ =gUnk_03004800
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0803B9F0 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803B9F4 @ =gUnk_03003410
	strb r5, [r0, #8]
	movs r4, #1
	strb r4, [r7, #0xd]
	strb r4, [r7, #0xc]
	strb r5, [r7, #0xa]
	bl sub_08003904
	strb r6, [r7, #0xd]
	mov r1, r8
	strb r1, [r7, #0xc]
	ldr r0, _0803B9F8 @ =0x03004680
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, _0803B9FC @ =gUnk_03002920
	strb r4, [r0, #0x10]
	movs r1, #0
	adds r0, #0x1c
	movs r4, #0x11
_0803B696:
	strb r1, [r0, #0x10]
	adds r0, #0x1c
	subs r4, #1
	cmp r4, #0
	bge _0803B696
	ldr r3, _0803BA00 @ =0x04000200
	ldrh r1, [r3]
	ldr r0, _0803BA04 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r3]
	ldr r2, _0803BA08 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _0803BA0C @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	ldrh r1, [r3]
	ldr r0, _0803BA10 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3]
	ldrh r1, [r2]
	ldr r0, _0803BA14 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	bl m4aMPlayAllStop
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	ldr r6, _0803BA18 @ =gUnk_03003430
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r6]
	ldr r0, _0803BA1C @ =0x06004000
	str r0, [r6, #0x1c]
	ldr r0, _0803BA20 @ =0x06008000
	str r0, [r6, #0x38]
	ldr r0, _0803BA24 @ =0x0600C000
	str r0, [r6, #0x54]
	ldr r0, _0803BA28 @ =0x0600E000
	str r0, [r6, #4]
	ldr r0, _0803BA2C @ =0x0600E800
	str r0, [r6, #0x20]
	ldr r0, _0803BA30 @ =0x0600F000
	str r0, [r6, #0x3c]
	ldr r0, _0803BA34 @ =0x0600F800
	str r0, [r6, #0x58]
	ldr r0, _0803BA38 @ =0x083128F8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl DecompressDma
	ldr r7, _0803BA3C @ =0x08312A58
	ldr r0, [r7]
	ldr r5, _0803BA40 @ =0x7FFFFFFF
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r4, _0803BA44 @ =gUnk_03004790
	str r0, [r4]
	ldr r2, _0803BA48 @ =0x08312B70
	mov sl, r2
	ldr r0, [r2]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #4]
	ldr r3, _0803BA4C @ =0x08312BD8
	mov sb, r3
	ldr r0, [r3]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #8]
	ldr r0, _0803BA50 @ =0x08313C34
	mov r8, r0
	ldr r0, [r0]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #0xc]
	ldr r0, [r4]
	adds r1, r7, #0
	bl Decompress
	ldr r0, [r4, #4]
	mov r1, sl
	bl Decompress
	ldr r0, [r4, #8]
	mov r1, sb
	bl Decompress
	ldr r0, [r4, #0xc]
	mov r1, r8
	bl Decompress
	ldr r1, [r4]
	adds r1, #4
	str r1, [r4]
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	adds r0, #4
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	adds r0, #4
	str r0, [r4, #0xc]
	ldr r2, _0803B9E8 @ =0x040000D4
	str r1, [r2]
	ldr r0, [r6]
	str r0, [r2, #4]
	ldr r0, _0803BA54 @ =0x80000130
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803B7A0
_0803B798:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803B798
_0803B7A0:
	ldr r2, _0803B9E8 @ =0x040000D4
	ldr r1, _0803BA44 @ =gUnk_03004790
	ldr r0, [r1, #8]
	str r0, [r2]
	ldr r0, _0803BA18 @ =gUnk_03003430
	ldr r0, [r0, #0x1c]
	str r0, [r2, #4]
	ldr r0, _0803BA58 @ =0x80000DE0
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	mov sb, r1
	ldr r6, _0803BA5C @ =gUnk_03000900
	cmp r0, #0
	bge _0803B7CC
	adds r1, r3, #0
_0803B7C4:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803B7C4
_0803B7CC:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0803B9E8 @ =0x040000D4
	str r1, [r0]
	str r6, [r0, #4]
	ldr r1, _0803BA60 @ =0x81000400
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r4, #0
	movs r5, #0
_0803B7E2:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __modsi3
	cmp r0, #0
	bne _0803B7F4
	cmp r4, #0
	beq _0803B7F4
	adds r5, #2
_0803B7F4:
	lsls r1, r5, #1
	adds r1, r1, r6
	mov r3, sb
	ldr r2, [r3, #4]
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r5, #1
	adds r4, #1
	ldr r0, _0803BA64 @ =0x00000257
	cmp r4, r0
	ble _0803B7E2
	movs r4, #0
	ldr r5, _0803BA68 @ =0x000003FF
	ldr r0, _0803BA5C @ =gUnk_03000900
	ldr r3, _0803BA44 @ =gUnk_03004790
	movs r1, #0x80
	lsls r1, r1, #4
	adds r2, r0, r1
_0803B81C:
	lsls r0, r4, #1
	ldr r1, [r3, #0xc]
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, #2
	adds r4, #1
	cmp r4, r5
	ble _0803B81C
	ldr r4, _0803BA44 @ =gUnk_03004790
	ldr r0, [r4, #0xc]
	subs r0, #4
	bl thunk_HeapFree
	ldr r0, [r4, #8]
	subs r0, #4
	bl thunk_HeapFree
	ldr r0, [r4, #4]
	subs r0, #4
	bl thunk_HeapFree
	ldr r0, [r4]
	subs r0, #4
	bl thunk_HeapFree
	ldr r2, _0803BA6C @ =0x08313F24
	mov sl, r2
	ldr r0, [r2]
	ldr r5, _0803BA40 @ =0x7FFFFFFF
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4]
	ldr r3, _0803BA70 @ =0x083141F0
	mov sb, r3
	ldr r0, [r3]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #4]
	ldr r0, _0803BA74 @ =0x083142EC
	mov r8, r0
	ldr r0, [r0]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #8]
	ldr r6, _0803BA78 @ =0x083155C4
	ldr r0, [r6]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #0xc]
	ldr r0, [r4]
	mov r1, sl
	bl Decompress
	ldr r0, [r4, #4]
	mov r1, sb
	bl Decompress
	ldr r0, [r4, #8]
	mov r1, r8
	bl Decompress
	ldr r0, [r4, #0xc]
	adds r1, r6, #0
	bl Decompress
	ldr r1, [r4]
	adds r1, #4
	str r1, [r4]
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	adds r0, #4
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	adds r0, #4
	str r0, [r4, #0xc]
	ldr r2, _0803B9E8 @ =0x040000D4
	str r1, [r2]
	ldr r0, _0803BA18 @ =gUnk_03003430
	ldr r0, [r0, #0x38]
	str r0, [r2, #4]
	ldr r0, _0803BA7C @ =0x80000410
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803B8EA
_0803B8E2:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803B8E2
_0803B8EA:
	ldr r2, _0803B9E8 @ =0x040000D4
	ldr r1, _0803BA44 @ =gUnk_03004790
	ldr r0, [r1, #8]
	str r0, [r2]
	ldr r0, _0803BA18 @ =gUnk_03003430
	ldr r0, [r0, #0x54]
	str r0, [r2, #4]
	ldr r0, _0803BA80 @ =0x80000D40
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	mov sb, r1
	cmp r0, #0
	bge _0803B914
	adds r1, r3, #0
_0803B90C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803B90C
_0803B914:
	movs r4, #0
	movs r5, #0
	ldr r1, _0803BA5C @ =gUnk_03000900
	mov r8, r1
	ldr r6, _0803BA44 @ =gUnk_03004790
	movs r2, #0xc0
	lsls r2, r2, #5
	add r2, r8
	mov sl, r2
_0803B926:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __modsi3
	cmp r0, #0
	bne _0803B938
	cmp r4, #0
	beq _0803B938
	adds r5, #2
_0803B938:
	lsls r2, r5, #1
	movs r7, #0x80
	lsls r7, r7, #5
	add r7, r8
	adds r3, r2, r7
	ldr r0, [r6, #4]
	lsls r1, r4, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r3]
	add r2, sl
	ldr r0, [r6, #0xc]
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	adds r5, #1
	adds r4, #1
	ldr r0, _0803BA64 @ =0x00000257
	cmp r4, r0
	ble _0803B926
	mov r3, sb
	ldr r0, [r3, #0xc]
	subs r0, #4
	bl thunk_HeapFree
	mov r1, sb
	ldr r0, [r1, #8]
	subs r0, #4
	bl thunk_HeapFree
	mov r2, sb
	ldr r0, [r2, #4]
	subs r0, #4
	bl thunk_HeapFree
	mov r3, sb
	ldr r0, [r3]
	subs r0, #4
	bl thunk_HeapFree
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfd
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	ldr r3, _0803BA84 @ =0x00001C41
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803BA88 @ =0x00001D46
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _0803BA8C @ =0x00001E48
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803BA90 @ =0x00001F4F
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803BA94 @ =0x04000048
	movs r6, #0x3b
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	ldr r3, _0803BA98 @ =0x04000040
	ldr r2, _0803BA9C @ =0x08116728
	ldr r0, _0803B9E4 @ =0x03004C08
	mov r8, r0
	ldr r1, [r0]
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #4
	lsrs r0, r1, #0x1c
	lsls r0, r0, #2
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	b _0803BAA0
	.align 2, 0
_0803B9E4: .4byte 0x03004C08
_0803B9E8: .4byte 0x040000D4
_0803B9EC: .4byte gUnk_03004800
_0803B9F0: .4byte 0x84000100
_0803B9F4: .4byte gUnk_03003410
_0803B9F8: .4byte 0x03004680
_0803B9FC: .4byte gUnk_03002920
_0803BA00: .4byte 0x04000200
_0803BA04: .4byte 0x0000FFFE
_0803BA08: .4byte 0x04000004
_0803BA0C: .4byte 0x0000FFF7
_0803BA10: .4byte 0x0000FFFD
_0803BA14: .4byte 0x0000FFEF
_0803BA18: .4byte gUnk_03003430
_0803BA1C: .4byte 0x06004000
_0803BA20: .4byte 0x06008000
_0803BA24: .4byte 0x0600C000
_0803BA28: .4byte 0x0600E000
_0803BA2C: .4byte 0x0600E800
_0803BA30: .4byte 0x0600F000
_0803BA34: .4byte 0x0600F800
_0803BA38: .4byte 0x083128F8
_0803BA3C: .4byte 0x08312A58
_0803BA40: .4byte 0x7FFFFFFF
_0803BA44: .4byte gUnk_03004790
_0803BA48: .4byte 0x08312B70
_0803BA4C: .4byte 0x08312BD8
_0803BA50: .4byte 0x08313C34
_0803BA54: .4byte 0x80000130
_0803BA58: .4byte 0x80000DE0
_0803BA5C: .4byte gUnk_03000900
_0803BA60: .4byte 0x81000400
_0803BA64: .4byte 0x00000257
_0803BA68: .4byte 0x000003FF
_0803BA6C: .4byte 0x08313F24
_0803BA70: .4byte 0x083141F0
_0803BA74: .4byte 0x083142EC
_0803BA78: .4byte 0x083155C4
_0803BA7C: .4byte 0x80000410
_0803BA80: .4byte 0x80000D40
_0803BA84: .4byte 0x00001C41
_0803BA88: .4byte 0x00001D46
_0803BA8C: .4byte 0x00001E48
_0803BA90: .4byte 0x00001F4F
_0803BA94: .4byte 0x04000048
_0803BA98: .4byte 0x04000040
_0803BA9C: .4byte 0x08116728
_0803BAA0:
	strh r0, [r3]
	ldr r4, _0803BC44 @ =gUnk_03002920
	ldr r2, _0803BC48 @ =0x08116708
	lsrs r0, r1, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r3, #0
	mov sb, r3
	movs r3, #0
	strh r0, [r4]
	lsrs r1, r1, #0x1c
	lsls r1, r1, #2
	adds r2, #1
	adds r1, r1, r2
	ldrb r0, [r1]
	strh r0, [r4, #2]
	ldr r1, _0803BC4C @ =gUnk_03003430
	adds r0, r1, #0
	adds r0, #0x5e
	strh r3, [r0]
	subs r0, #2
	strh r3, [r0]
	subs r0, #0x1c
	strh r3, [r0]
	strh r3, [r1, #0x26]
	strh r3, [r1, #0x24]
	strh r3, [r1, #8]
	adds r2, r1, #0
	adds r2, #0x42
	movs r0, #4
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #0xa]
	ldr r5, _0803BC50 @ =gUnk_03004670
	ldr r2, [r5]
	ldr r0, [r2]
	ldr r1, _0803BC54 @ =0xFFFFFF00
	ands r0, r1
	cmp r0, #0
	bne _0803BB00
	movs r0, #0x63
	strb r0, [r2, #1]
	ldr r1, [r5]
	strb r6, [r1, #2]
	ldr r1, [r5]
	strb r0, [r1, #3]
_0803BB00:
	ldr r2, [r5]
	ldr r0, [r2, #4]
	ldr r1, _0803BC58 @ =0x00FFFFFF
	ands r0, r1
	cmp r0, #0
	bne _0803BB18
	movs r0, #0x63
	strb r0, [r2, #4]
	ldr r1, [r5]
	strb r6, [r1, #5]
	ldr r1, [r5]
	strb r0, [r1, #6]
_0803BB18:
	mov r1, r8
	ldrb r0, [r1]
	movs r2, #0xf0
	ands r2, r0
	cmp r2, #0x50
	beq _0803BB26
	b _0803BCBC
_0803BB26:
	ldr r2, _0803BC5C @ =0xFFFFF098
	adds r1, r7, r2
	ldr r0, _0803BC60 @ =0x0000A00C
	strh r0, [r1]
	ldr r3, _0803BC64 @ =0xFFFFF09A
	adds r1, r7, r3
	adds r0, #1
	strh r0, [r1]
	ldr r0, _0803BC68 @ =0xFFFFF09C
	adds r1, r7, r0
	ldr r0, _0803BC6C @ =0x0000A00E
	strh r0, [r1]
	adds r2, #6
	adds r1, r7, r2
	adds r0, #1
	strh r0, [r1]
	adds r3, #6
	adds r0, r7, r3
	ldr r1, _0803BC70 @ =0x0000A010
	mov r8, r1
	mov r2, r8
	strh r2, [r0]
	ldr r5, [r5]
	ldrb r0, [r5, #1]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	ldr r3, _0803BC74 @ =0xFFFFA000
	adds r6, r3, #0
	orrs r0, r6
	ldr r2, _0803BC78 @ =0xFFFFF0DA
	adds r1, r7, r2
	strh r0, [r1]
	ldrb r0, [r5, #1]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	orrs r0, r6
	ldr r3, _0803BC7C @ =0xFFFFF0DC
	adds r1, r7, r3
	strh r0, [r1]
	ldr r1, _0803BC80 @ =0xFFFFF0DE
	adds r0, r7, r1
	ldr r4, _0803BC84 @ =0x0000A00B
	strh r4, [r0]
	ldrb r0, [r5, #2]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	orrs r0, r6
	ldr r2, _0803BC88 @ =0xFFFFF0E0
	adds r1, r7, r2
	strh r0, [r1]
	ldrb r0, [r5, #2]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	orrs r0, r6
	ldr r3, _0803BC8C @ =0xFFFFF0E2
	adds r1, r7, r3
	strh r0, [r1]
	ldr r1, _0803BC90 @ =0xFFFFF0E4
	adds r0, r7, r1
	strh r4, [r0]
	ldrb r0, [r5, #3]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	orrs r0, r6
	ldr r2, _0803BC94 @ =0xFFFFF0E6
	adds r1, r7, r2
	strh r0, [r1]
	ldrb r0, [r5, #3]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	orrs r0, r6
	ldr r3, _0803BC98 @ =0xFFFFF0E8
	adds r1, r7, r3
	strh r0, [r1]
	ldr r0, _0803BC9C @ =0xFFFFF058
	adds r1, r7, r0
	ldr r0, _0803BCA0 @ =0x0000A011
	strh r0, [r1]
	ldr r1, _0803BCA4 @ =0xFFFFF060
	adds r0, r7, r1
	mov r2, r8
	strh r2, [r0]
	subs r3, #0x86
	adds r1, r7, r3
	ldr r0, _0803BCA8 @ =0x0000A004
	strh r0, [r1]
	ldr r0, _0803BCAC @ =0xFFFFF064
	adds r1, r7, r0
	ldr r0, _0803BCB0 @ =0x0000A001
	strh r0, [r1]
	adds r5, #0x30
	ldrb r1, [r5]
	movs r4, #0x7f
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	orrs r0, r6
	ldr r2, _0803BCB4 @ =0xFFFFF05C
	adds r1, r7, r2
	strh r0, [r1]
	ldrb r0, [r5]
	ands r4, r0
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	orrs r0, r6
	ldr r3, _0803BCB8 @ =0xFFFFF05E
	adds r1, r7, r3
	strh r0, [r1]
	b _0803BE7C
	.align 2, 0
_0803BC44: .4byte gUnk_03002920
_0803BC48: .4byte 0x08116708
_0803BC4C: .4byte gUnk_03003430
_0803BC50: .4byte gUnk_03004670
_0803BC54: .4byte 0xFFFFFF00
_0803BC58: .4byte 0x00FFFFFF
_0803BC5C: .4byte 0xFFFFF098
_0803BC60: .4byte 0x0000A00C
_0803BC64: .4byte 0xFFFFF09A
_0803BC68: .4byte 0xFFFFF09C
_0803BC6C: .4byte 0x0000A00E
_0803BC70: .4byte 0x0000A010
_0803BC74: .4byte 0xFFFFA000
_0803BC78: .4byte 0xFFFFF0DA
_0803BC7C: .4byte 0xFFFFF0DC
_0803BC80: .4byte 0xFFFFF0DE
_0803BC84: .4byte 0x0000A00B
_0803BC88: .4byte 0xFFFFF0E0
_0803BC8C: .4byte 0xFFFFF0E2
_0803BC90: .4byte 0xFFFFF0E4
_0803BC94: .4byte 0xFFFFF0E6
_0803BC98: .4byte 0xFFFFF0E8
_0803BC9C: .4byte 0xFFFFF058
_0803BCA0: .4byte 0x0000A011
_0803BCA4: .4byte 0xFFFFF060
_0803BCA8: .4byte 0x0000A004
_0803BCAC: .4byte 0xFFFFF064
_0803BCB0: .4byte 0x0000A001
_0803BCB4: .4byte 0xFFFFF05C
_0803BCB8: .4byte 0xFFFFF05E
_0803BCBC:
	cmp r2, #0x60
	bne _0803BD90
	ldr r1, _0803BD70 @ =0xFFFFF098
	adds r0, r7, r1
	movs r4, #0xa0
	lsls r4, r4, #8
	strh r4, [r0]
	ldr r2, _0803BD74 @ =0xFFFFF09A
	adds r0, r7, r2
	strh r4, [r0]
	ldr r3, _0803BD78 @ =0xFFFFF09C
	adds r0, r7, r3
	strh r4, [r0]
	adds r1, #6
	adds r0, r7, r1
	strh r4, [r0]
	adds r2, #6
	adds r0, r7, r2
	strh r4, [r0]
	adds r3, #0x3e
	adds r0, r7, r3
	strh r4, [r0]
	adds r1, #0x3e
	adds r0, r7, r1
	strh r4, [r0]
	adds r2, #0x3e
	adds r0, r7, r2
	strh r4, [r0]
	adds r3, #6
	adds r0, r7, r3
	strh r4, [r0]
	adds r1, #6
	adds r0, r7, r1
	strh r4, [r0]
	adds r2, #6
	adds r0, r7, r2
	strh r4, [r0]
	adds r3, #6
	adds r0, r7, r3
	strh r4, [r0]
	adds r1, #6
	adds r0, r7, r1
	strh r4, [r0]
	subs r2, #0x8c
	adds r1, r7, r2
	ldr r0, _0803BD7C @ =0x0000A011
	strh r0, [r1]
	subs r3, #0x86
	adds r1, r7, r3
	subs r0, #1
	strh r0, [r1]
	ldr r0, _0803BD80 @ =0xFFFFF062
	adds r1, r7, r0
	ldr r0, _0803BD84 @ =0x0000A004
	strh r0, [r1]
	adds r2, #0xc
	adds r1, r7, r2
	subs r0, #3
	strh r0, [r1]
	ldr r6, [r5]
	adds r6, #0x31
	ldrb r1, [r6]
	movs r5, #0x7f
	adds r0, r5, #0
	ands r0, r1
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	orrs r0, r4
	ldr r3, _0803BD88 @ =0xFFFFF05C
	adds r1, r7, r3
	strh r0, [r1]
	ldrb r0, [r6]
	ands r5, r0
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	orrs r0, r4
	ldr r2, _0803BD8C @ =0xFFFFF05E
	adds r1, r7, r2
	strh r0, [r1]
	b _0803BE7C
	.align 2, 0
_0803BD70: .4byte 0xFFFFF098
_0803BD74: .4byte 0xFFFFF09A
_0803BD78: .4byte 0xFFFFF09C
_0803BD7C: .4byte 0x0000A011
_0803BD80: .4byte 0xFFFFF062
_0803BD84: .4byte 0x0000A004
_0803BD88: .4byte 0xFFFFF05C
_0803BD8C: .4byte 0xFFFFF05E
_0803BD90:
	cmp r2, #0x70
	bne _0803BE7C
	ldr r3, _0803BF0C @ =0xFFFFF098
	adds r1, r7, r3
	ldr r0, _0803BF10 @ =0x0000A00C
	strh r0, [r1]
	ldr r0, _0803BF14 @ =0xFFFFF09A
	adds r1, r7, r0
	ldr r0, _0803BF18 @ =0x0000A00D
	strh r0, [r1]
	ldr r2, _0803BF1C @ =0xFFFFF09C
	adds r1, r7, r2
	adds r0, #1
	strh r0, [r1]
	adds r3, #6
	adds r1, r7, r3
	adds r0, #1
	strh r0, [r1]
	ldr r0, _0803BF20 @ =0xFFFFF0A0
	adds r1, r7, r0
	ldr r0, _0803BF24 @ =0x0000A010
	strh r0, [r1]
	ldr r5, [r5]
	ldrb r0, [r5, #4]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	ldr r1, _0803BF28 @ =0xFFFFA000
	adds r4, r1, #0
	orrs r0, r4
	ldr r2, _0803BF2C @ =0xFFFFF0DA
	adds r1, r7, r2
	strh r0, [r1]
	ldrb r0, [r5, #4]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	orrs r0, r4
	ldr r3, _0803BF30 @ =0xFFFFF0DC
	adds r1, r7, r3
	strh r0, [r1]
	ldr r1, _0803BF34 @ =0xFFFFF0DE
	adds r0, r7, r1
	ldr r6, _0803BF38 @ =0x0000A00B
	strh r6, [r0]
	ldrb r0, [r5, #5]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	orrs r0, r4
	ldr r2, _0803BF3C @ =0xFFFFF0E0
	adds r1, r7, r2
	strh r0, [r1]
	ldrb r0, [r5, #5]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	orrs r0, r4
	ldr r3, _0803BF40 @ =0xFFFFF0E2
	adds r1, r7, r3
	strh r0, [r1]
	ldr r1, _0803BF44 @ =0xFFFFF0E4
	adds r0, r7, r1
	strh r6, [r0]
	ldrb r0, [r5, #6]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	orrs r0, r4
	ldr r2, _0803BF48 @ =0xFFFFF0E6
	adds r1, r7, r2
	strh r0, [r1]
	ldrb r0, [r5, #6]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	orrs r0, r4
	ldr r3, _0803BF4C @ =0xFFFFF0E8
	adds r1, r7, r3
	strh r0, [r1]
	ldr r1, _0803BF50 @ =0xFFFFF058
	adds r0, r7, r1
	movs r1, #0xa0
	lsls r1, r1, #8
	strh r4, [r0]
	ldr r2, _0803BF54 @ =0xFFFFF060
	adds r0, r7, r2
	strh r1, [r0]
	subs r3, #0x86
	adds r0, r7, r3
	strh r1, [r0]
	adds r2, #4
	adds r0, r7, r2
	strh r1, [r0]
	subs r3, #6
	adds r0, r7, r3
	strh r1, [r0]
	subs r2, #6
	adds r0, r7, r2
	strh r1, [r0]
_0803BE7C:
	ldr r0, _0803BF58 @ =0x04000010
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _0803BF5C @ =gUnk_030007FC
	ldr r1, _0803BF60 @ =gUnk_030051D0
	movs r0, #0
	str r0, [r1]
	str r0, [r2]
	movs r1, #0
	bl sub_08025B78
	bl sub_08025BA4
	ldr r1, _0803BF64 @ =gIntrTable
	ldr r0, _0803BF68 @ =sub_08000BD4
	str r0, [r1]
	ldr r1, _0803BF6C @ =gUnk_03003510
	ldr r0, _0803BF70 @ =sub_0803B0A0
	str r0, [r1, #4]
	bl sub_0803B074
	ldr r0, _0803BF74 @ =gUnk_03005284
	ldr r1, [r0]
	ldr r0, _0803BF78 @ =gUnk_03004C20
	ldrb r0, [r0, #0xd]
	strb r0, [r1, #1]
	movs r0, #0
	movs r1, #7
	bl sub_08046DB8
	movs r0, #1
	movs r1, #0
	bl sub_08046DB8
	ldr r2, _0803BF7C @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0803BF80 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	movs r0, #3
	bl m4aSongNumStart
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BF0C: .4byte 0xFFFFF098
_0803BF10: .4byte 0x0000A00C
_0803BF14: .4byte 0xFFFFF09A
_0803BF18: .4byte 0x0000A00D
_0803BF1C: .4byte 0xFFFFF09C
_0803BF20: .4byte 0xFFFFF0A0
_0803BF24: .4byte 0x0000A010
_0803BF28: .4byte 0xFFFFA000
_0803BF2C: .4byte 0xFFFFF0DA
_0803BF30: .4byte 0xFFFFF0DC
_0803BF34: .4byte 0xFFFFF0DE
_0803BF38: .4byte 0x0000A00B
_0803BF3C: .4byte 0xFFFFF0E0
_0803BF40: .4byte 0xFFFFF0E2
_0803BF44: .4byte 0xFFFFF0E4
_0803BF48: .4byte 0xFFFFF0E6
_0803BF4C: .4byte 0xFFFFF0E8
_0803BF50: .4byte 0xFFFFF058
_0803BF54: .4byte 0xFFFFF060
_0803BF58: .4byte 0x04000010
_0803BF5C: .4byte gUnk_030007FC
_0803BF60: .4byte gUnk_030051D0
_0803BF64: .4byte gIntrTable
_0803BF68: .4byte sub_08000BD4
_0803BF6C: .4byte gUnk_03003510
_0803BF70: .4byte sub_0803B0A0
_0803BF74: .4byte gUnk_03005284
_0803BF78: .4byte gUnk_03004C20
_0803BF7C: .4byte 0x04000200
_0803BF80: .4byte 0x04000004

	thumb_func_start sub_0803BF84
sub_0803BF84: @ 0x0803BF84
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	ldr r0, _0803BFD8 @ =gUnk_030034E4
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803BF98
	bl _0803C7E2
_0803BF98:
	ldr r3, _0803BFDC @ =gUnk_03005498
	ldrb r2, [r3]
	cmp r2, #0xf
	bhi _0803BFB0
	ldr r0, _0803BFE0 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803BFB0
	adds r0, r2, #1
	strb r0, [r3]
_0803BFB0:
	bl sub_08025BA4
	ldr r6, _0803BFE4 @ =0x03004C08
	movs r0, #1
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _0803BFC0
	b _0803C67C
_0803BFC0:
	ldr r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bls _0803BFEC
	ldr r1, _0803BFE8 @ =gUnk_03003430
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _0803BFFC
	subs r0, #0x80
	strh r0, [r1, #0xa]
	b _0803BFFC
	.align 2, 0
_0803BFD8: .4byte gUnk_030034E4
_0803BFDC: .4byte gUnk_03005498
_0803BFE0: .4byte gUnk_03004C20
_0803BFE4: .4byte 0x03004C08
_0803BFE8: .4byte gUnk_03003430
_0803BFEC:
	ldr r2, _0803C064 @ =gUnk_03003430
	ldrh r1, [r2, #0xa]
	ldr r0, _0803C068 @ =0x000003FF
	cmp r1, r0
	bhi _0803BFFC
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r2, #0xa]
_0803BFFC:
	ldr r0, _0803C06C @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803C0D4
	ldr r1, _0803C070 @ =gUnk_03005498
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0803C074 @ =gUnk_03004C20
	ldr r5, _0803C078 @ =0x03004C08
	ldr r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	adds r0, #1
	movs r6, #0
	strb r0, [r4, #0xd]
	strb r6, [r4, #0xc]
	ldr r2, _0803C07C @ =0x030034B0
	ldrb r1, [r2, #6]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #6]
	movs r0, #0x52
	bl m4aSongNumStart
	ldr r3, _0803C080 @ =gUnk_03005284
	ldr r2, [r3]
	ldr r0, _0803C084 @ =gUnk_03005220
	adds r0, #0x4c
	ldrb r1, [r0]
	strb r1, [r2]
	ldrb r0, [r0]
	strb r0, [r2, #0x1e]
	ldr r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bls _0803C0B0
	strb r6, [r4, #0xe]
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0x50
	bne _0803C088
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r0, #1
	b _0803C09E
	.align 2, 0
_0803C064: .4byte gUnk_03003430
_0803C068: .4byte 0x000003FF
_0803C06C: .4byte gNewKeys
_0803C070: .4byte gUnk_03005498
_0803C074: .4byte gUnk_03004C20
_0803C078: .4byte 0x03004C08
_0803C07C: .4byte 0x030034B0
_0803C080: .4byte gUnk_03005284
_0803C084: .4byte gUnk_03005220
_0803C088:
	cmp r1, #0x60
	bne _0803C094
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r0, #2
	b _0803C09E
_0803C094:
	cmp r1, #0x70
	bne _0803C0A0
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r0, #3
_0803C09E:
	strb r0, [r4, #0xc]
_0803C0A0:
	ldr r1, _0803C0A8 @ =gUnk_03003510
	ldr r0, _0803C0AC @ =sub_08025634
	str r0, [r1, #4]
	b _0803C7E2
	.align 2, 0
_0803C0A8: .4byte gUnk_03003510
_0803C0AC: .4byte sub_08025634
_0803C0B0:
	ldr r2, [r3]
	ldrb r1, [r4, #0xd]
	lsls r0, r1, #1
	adds r0, r0, r1
	subs r0, #1
	strb r0, [r2, #4]
	ldr r0, _0803C0C8 @ =gUnk_03003410
	strb r6, [r0, #0xc]
	ldr r1, _0803C0CC @ =gUnk_03003510
	ldr r0, _0803C0D0 @ =sub_0802528C
	str r0, [r1, #4]
	b _0803C7E2
	.align 2, 0
_0803C0C8: .4byte gUnk_03003410
_0803C0CC: .4byte gUnk_03003510
_0803C0D0: .4byte sub_0802528C
_0803C0D4:
	ldr r0, _0803C0EC @ =0x03004C08
	ldr r0, [r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #7
	bls _0803C0E2
	b _0803C610
_0803C0E2:
	lsls r0, r0, #2
	ldr r1, _0803C0F0 @ =_0803C0F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803C0EC: .4byte 0x03004C08
_0803C0F0: .4byte _0803C0F4
_0803C0F4: @ jump table
	.4byte _0803C114 @ case 0
	.4byte _0803C270 @ case 1
	.4byte _0803C2B0 @ case 2
	.4byte _0803C2FC @ case 3
	.4byte _0803C33C @ case 4
	.4byte _0803C598 @ case 5
	.4byte _0803C5C4 @ case 6
	.4byte _0803C5F0 @ case 7
_0803C114:
	ldr r0, _0803C254 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x90
	ands r0, r1
	cmp r0, #0
	beq _0803C144
	ldr r4, _0803C258 @ =0x03004C08
	ldr r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	bl sub_0803AC18
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803C144
	movs r0, #1
	strb r0, [r4, #1]
	movs r0, #0x51
	bl m4aSongNumStart
	movs r0, #0
	movs r1, #1
	bl sub_08025B78
_0803C144:
	ldr r0, _0803C254 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0803C152
	b _0803C610
_0803C152:
	movs r0, #6
	bl sub_0803AC18
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C160
	b _0803C610
_0803C160:
	ldr r1, _0803C258 @ =0x03004C08
	movs r0, #7
	strb r0, [r1, #1]
	movs r0, #0x51
	bl m4aSongNumStart
	movs r0, #0
	movs r1, #0x25
	bl sub_08025B78
	ldr r0, _0803C25C @ =gUnk_03000900
	mov r8, r0
	mov r1, r8
	adds r1, #0x98
	ldr r0, _0803C260 @ =0x0000A00C
	strh r0, [r1]
	adds r1, #2
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	adds r0, #1
	strh r0, [r1]
	ldr r0, _0803C264 @ =gUnk_03004670
	ldr r4, [r0]
	ldrb r0, [r4, #4]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	ldr r1, _0803C268 @ =0xFFFFA000
	adds r5, r1, #0
	mov r1, r8
	adds r1, #0xda
	orrs r0, r5
	strh r0, [r1]
	ldrb r0, [r4, #4]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	mov r1, r8
	adds r1, #0xdc
	orrs r0, r5
	strh r0, [r1]
	mov r0, r8
	adds r0, #0xde
	ldr r6, _0803C26C @ =0x0000A00B
	strh r6, [r0]
	ldrb r0, [r4, #5]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	mov r1, r8
	adds r1, #0xe0
	orrs r0, r5
	strh r0, [r1]
	ldrb r0, [r4, #5]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	mov r1, r8
	adds r1, #0xe2
	orrs r0, r5
	strh r0, [r1]
	mov r0, r8
	adds r0, #0xe4
	strh r6, [r0]
	ldrb r0, [r4, #6]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	mov r1, r8
	adds r1, #0xe6
	orrs r0, r5
	strh r0, [r1]
	ldrb r0, [r4, #6]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	mov r1, r8
	adds r1, #0xe8
	orrs r0, r5
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x58
	movs r1, #0xa0
	lsls r1, r1, #8
	strh r1, [r0]
	adds r0, #8
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _0803C610
	.align 2, 0
_0803C254: .4byte gHeldKeys
_0803C258: .4byte 0x03004C08
_0803C25C: .4byte gUnk_03000900
_0803C260: .4byte 0x0000A00C
_0803C264: .4byte gUnk_03004670
_0803C268: .4byte 0xFFFFA000
_0803C26C: .4byte 0x0000A00B
_0803C270:
	ldr r0, _0803C2A8 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0803C27E
	b _0803C54C
_0803C27E:
	ldr r4, _0803C2AC @ =0x03004C08
	ldr r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	bl sub_0803AC18
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C292
	b _0803C54C
_0803C292:
	movs r0, #1
	strb r0, [r4, #1]
	movs r0, #0x51
	bl m4aSongNumStart
	movs r0, #0
	movs r1, #0x25
	bl sub_08025B78
	b _0803C54C
	.align 2, 0
_0803C2A8: .4byte gHeldKeys
_0803C2AC: .4byte 0x03004C08
_0803C2B0:
	ldr r0, _0803C2F4 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803C2E0
	ldr r4, _0803C2F8 @ =0x03004C08
	ldr r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	bl sub_0803AC18
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803C2E0
	movs r0, #1
	strb r0, [r4, #1]
	movs r0, #0x51
	bl m4aSongNumStart
	movs r0, #0
	movs r1, #1
	bl sub_08025B78
_0803C2E0:
	ldr r0, _0803C2F4 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803C2EE
	b _0803C610
_0803C2EE:
	ldr r1, _0803C2F8 @ =0x03004C08
	movs r0, #0xff
	b _0803C5D4
	.align 2, 0
_0803C2F4: .4byte gHeldKeys
_0803C2F8: .4byte 0x03004C08
_0803C2FC:
	ldr r0, _0803C334 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x90
	ands r0, r1
	cmp r0, #0
	bne _0803C30A
	b _0803C54C
_0803C30A:
	ldr r4, _0803C338 @ =0x03004C08
	ldr r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	bl sub_0803AC18
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C31E
	b _0803C54C
_0803C31E:
	movs r0, #1
	strb r0, [r4, #1]
	movs r0, #0x51
	bl m4aSongNumStart
	movs r0, #0
	movs r1, #1
	bl sub_08025B78
	b _0803C54C
	.align 2, 0
_0803C334: .4byte gHeldKeys
_0803C338: .4byte 0x03004C08
_0803C33C:
	ldr r0, _0803C570 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803C402
	ldr r4, _0803C574 @ =0x03004C08
	ldr r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	adds r0, #1
	bl sub_0803AC18
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803C402
	movs r0, #2
	strb r0, [r4, #1]
	movs r0, #0x51
	bl m4aSongNumStart
	movs r0, #0
	movs r1, #0x25
	bl sub_08025B78
	ldr r0, _0803C578 @ =gUnk_03000900
	mov r8, r0
	adds r0, #0x98
	movs r4, #0xa0
	lsls r4, r4, #8
	strh r4, [r0]
	mov r0, r8
	adds r0, #0x9a
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #0x3a
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	mov r1, r8
	adds r1, #0x58
	ldr r0, _0803C57C @ =0x0000A011
	strh r0, [r1]
	adds r1, #8
	subs r0, #1
	strh r0, [r1]
	adds r1, #2
	subs r0, #0xc
	strh r0, [r1]
	adds r1, #2
	subs r0, #3
	strh r0, [r1]
	ldr r0, _0803C580 @ =gUnk_03004670
	ldr r6, [r0]
	adds r6, #0x31
	ldrb r1, [r6]
	movs r5, #0x7f
	adds r0, r5, #0
	ands r0, r1
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	mov r1, r8
	adds r1, #0x5c
	orrs r0, r4
	strh r0, [r1]
	ldrb r0, [r6]
	ands r5, r0
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	mov r1, r8
	adds r1, #0x5e
	orrs r0, r4
	strh r0, [r1]
_0803C402:
	ldr r0, _0803C570 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803C410
	b _0803C54C
_0803C410:
	ldr r4, _0803C574 @ =0x03004C08
	ldr r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	bl sub_0803AC18
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C424
	b _0803C54C
_0803C424:
	movs r0, #1
	strb r0, [r4, #1]
	movs r0, #0x51
	bl m4aSongNumStart
	movs r0, #0
	movs r1, #0x24
	bl sub_08025B78
	ldr r7, _0803C578 @ =gUnk_03000900
	adds r1, r7, #0
	adds r1, #0x98
	ldr r0, _0803C584 @ =0x0000A00C
	strh r0, [r1]
	adds r1, #2
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	adds r0, #1
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _0803C588 @ =0x0000A010
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	ldr r0, _0803C580 @ =gUnk_03004670
	ldr r5, [r0]
	ldrb r0, [r5, #1]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	ldr r1, _0803C58C @ =0xFFFFA000
	adds r6, r1, #0
	adds r1, r7, #0
	adds r1, #0xda
	orrs r0, r6
	strh r0, [r1]
	ldrb r0, [r5, #1]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0xdc
	orrs r0, r6
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xde
	ldr r4, _0803C590 @ =0x0000A00B
	strh r4, [r0]
	ldrb r0, [r5, #2]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0xe0
	orrs r0, r6
	strh r0, [r1]
	ldrb r0, [r5, #2]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0xe2
	orrs r0, r6
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xe4
	strh r4, [r0]
	ldrb r0, [r5, #3]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0xe6
	orrs r0, r6
	strh r0, [r1]
	ldrb r0, [r5, #3]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0xe8
	orrs r0, r6
	strh r0, [r1]
	subs r1, #0x90
	ldr r0, _0803C57C @ =0x0000A011
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x60
	mov r1, r8
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0x62
	ldr r0, _0803C594 @ =0x0000A004
	strh r0, [r1]
	adds r1, #2
	subs r0, #3
	strh r0, [r1]
	adds r5, #0x30
	ldrb r1, [r5]
	movs r4, #0x7f
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0x5c
	orrs r0, r6
	strh r0, [r1]
	ldrb r0, [r5]
	ands r4, r0
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0x5e
	orrs r0, r6
	strh r0, [r1]
_0803C54C:
	ldr r0, _0803C570 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803C610
	ldr r1, _0803C574 @ =0x03004C08
	movs r0, #0xff
	strb r0, [r1, #1]
	movs r0, #0x51
	bl m4aSongNumStart
	movs r0, #0
	movs r1, #1
	bl sub_08025B78
	b _0803C610
	.align 2, 0
_0803C570: .4byte gHeldKeys
_0803C574: .4byte 0x03004C08
_0803C578: .4byte gUnk_03000900
_0803C57C: .4byte 0x0000A011
_0803C580: .4byte gUnk_03004670
_0803C584: .4byte 0x0000A00C
_0803C588: .4byte 0x0000A010
_0803C58C: .4byte 0xFFFFA000
_0803C590: .4byte 0x0000A00B
_0803C594: .4byte 0x0000A004
_0803C598:
	ldr r0, _0803C5BC @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0
	beq _0803C610
	ldr r1, _0803C5C0 @ =0x03004C08
	movs r0, #0xff
	strb r0, [r1, #1]
	movs r0, #0x51
	bl m4aSongNumStart
	movs r0, #0
	movs r1, #0x25
	bl sub_08025B78
	b _0803C610
	.align 2, 0
_0803C5BC: .4byte gHeldKeys
_0803C5C0: .4byte 0x03004C08
_0803C5C4:
	ldr r0, _0803C5E8 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803C610
	ldr r1, _0803C5EC @ =0x03004C08
	movs r0, #0xfe
_0803C5D4:
	strb r0, [r1, #1]
	movs r0, #0x51
	bl m4aSongNumStart
	movs r0, #0
	movs r1, #0x24
	bl sub_08025B78
	b _0803C610
	.align 2, 0
_0803C5E8: .4byte gHeldKeys
_0803C5EC: .4byte 0x03004C08
_0803C5F0:
	ldr r0, _0803C650 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803C610
	ldr r1, _0803C654 @ =0x03004C08
	movs r0, #0xf9
	strb r0, [r1, #1]
	movs r0, #0x51
	bl m4aSongNumStart
	movs r0, #0
	movs r1, #0x24
	bl sub_08025B78
_0803C610:
	ldr r1, _0803C654 @ =0x03004C08
	movs r0, #1
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0803C61C
	b _0803C7E2
_0803C61C:
	ldr r3, _0803C658 @ =0x08116708
	ldr r0, [r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x1c
	lsls r2, r2, #2
	adds r2, r2, r3
	lsrs r0, r0, #0x1c
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	blo _0803C660
	ldr r2, _0803C65C @ =gUnk_03002920
	ldrb r1, [r2, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	b _0803C66A
	.align 2, 0
_0803C650: .4byte gHeldKeys
_0803C654: .4byte 0x03004C08
_0803C658: .4byte 0x08116708
_0803C65C: .4byte gUnk_03002920
_0803C660:
	ldr r2, _0803C674 @ =gUnk_03002920
	ldrb r1, [r2, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
_0803C66A:
	strb r0, [r2, #0xc]
	ldr r1, _0803C678 @ =0x030034DC
	movs r0, #0
	strh r0, [r1]
	b _0803C7E2
	.align 2, 0
_0803C674: .4byte gUnk_03002920
_0803C678: .4byte 0x030034DC
_0803C67C:
	mov r1, sp
	ldr r4, _0803C6F0 @ =gUnk_03002920
	ldrh r0, [r4]
	strh r0, [r1]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	mov r5, sp
	ldr r3, _0803C6F4 @ =0x08116708
	ldr r1, [r6]
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x1c
	movs r2, #1
	ldrsb r2, [r6, r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	strh r0, [r5, #4]
	mov r2, sp
	lsrs r1, r1, #0x1c
	movs r0, #1
	ldrsb r0, [r6, r0]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r3, #1
	adds r1, r1, r3
	ldrb r0, [r1]
	strh r0, [r2, #6]
	mov r1, sp
	movs r0, #2
	strb r0, [r1, #9]
	strb r0, [r2, #8]
	add r0, sp, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_0800BEF0
	ldr r0, [sp, #0xc]
	strh r0, [r4]
	lsrs r0, r0, #0x10
	strh r0, [r4, #2]
	ldr r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	movs r1, #1
	ldrsb r1, [r6, r1]
	adds r0, r0, r1
	cmp r0, #4
	ble _0803C720
	ldr r1, _0803C6F8 @ =gUnk_03003430
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _0803C730
	subs r0, #0x80
	strh r0, [r1, #0xa]
	b _0803C730
	.align 2, 0
_0803C6F0: .4byte gUnk_03002920
_0803C6F4: .4byte 0x08116708
_0803C6F8: .4byte gUnk_03003430
_0803C6FC:
	ldr r2, _0803C714 @ =0x04000040
	ldr r0, _0803C718 @ =0x08116728
	adds r1, r3, r0
	ldrh r1, [r1]
	strh r1, [r2]
	ldr r1, _0803C71C @ =0x04000044
	adds r0, #2
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r1]
	b _0803C7E2
	.align 2, 0
_0803C714: .4byte 0x04000040
_0803C718: .4byte 0x08116728
_0803C71C: .4byte 0x04000044
_0803C720:
	ldr r2, _0803C7F0 @ =gUnk_03003430
	ldrh r1, [r2, #0xa]
	ldr r0, _0803C7F4 @ =0x000003FF
	cmp r1, r0
	bhi _0803C730
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r2, #0xa]
_0803C730:
	ldr r6, _0803C7F8 @ =gUnk_03002920
	ldr r5, _0803C7FC @ =0x08116708
	ldr r4, _0803C800 @ =0x03004C08
	ldr r0, [r4]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x1c
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r1, [r6]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0803C7A2
	lsrs r0, r2, #0x1c
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r1, r5, #1
	adds r0, r0, r1
	ldrh r1, [r6, #2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0803C7A2
	lsrs r1, r2, #0x1c
	ldrb r0, [r4, #1]
	adds r1, r1, r0
	lsls r1, r1, #4
	ldrb r2, [r4]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0
	strb r0, [r4, #1]
	ldr r4, _0803C804 @ =gUnk_03000830
	ldrb r0, [r4]
	cmp r0, #1
	bne _0803C786
	movs r0, #0
	movs r1, #0
	bl sub_08025B78
_0803C786:
	ldrb r0, [r4]
	cmp r0, #0x25
	bne _0803C794
	movs r0, #0
	movs r1, #0x23
	bl sub_08025B78
_0803C794:
	ldrb r0, [r4]
	cmp r0, #0x24
	bne _0803C7A2
	movs r0, #0
	movs r1, #0x22
	bl sub_08025B78
_0803C7A2:
	movs r4, #0
	ldr r7, _0803C7F8 @ =gUnk_03002920
	ldrh r5, [r7]
	ldr r6, _0803C7FC @ =0x08116708
	adds r1, r6, #1
	mov r8, r1
_0803C7AE:
	lsls r3, r4, #2
	adds r0, r3, r6
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x10
	cmp r5, r0
	blt _0803C7D8
	adds r0, #0x20
	cmp r5, r0
	bgt _0803C7D8
	ldrh r2, [r7, #2]
	mov r1, r8
	adds r0, r3, r1
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x10
	cmp r2, r0
	blt _0803C7D8
	adds r0, #0x20
	cmp r2, r0
	ble _0803C6FC
_0803C7D8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803C7AE
_0803C7E2:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C7F0: .4byte gUnk_03003430
_0803C7F4: .4byte 0x000003FF
_0803C7F8: .4byte gUnk_03002920
_0803C7FC: .4byte 0x08116708
_0803C800: .4byte 0x03004C08
_0803C804: .4byte gUnk_03000830

	thumb_func_start sub_0803C808
sub_0803C808: @ 0x0803C808
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _0803C940 @ =0x030007CC
	ldr r1, _0803C944 @ =0x081168DC
	ldr r0, _0803C948 @ =gUnk_03004C20
	ldrb r0, [r0, #0xd]
	subs r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r1, _0803C94C @ =gUnk_03005400
	ldrb r2, [r1, #8]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #2
	rsbs r2, r2, #0
	mov r8, r2
	ands r0, r2
	movs r6, #3
	rsbs r6, r6, #0
	ands r0, r6
	subs r2, #3
	ands r0, r2
	movs r5, #9
	rsbs r5, r5, #0
	ands r0, r5
	movs r3, #0x11
	rsbs r3, r3, #0
	ands r0, r3
	strb r0, [r1, #8]
	movs r4, #0
	strb r4, [r1, #9]
	ldrb r2, [r1, #0xe]
	movs r0, #0x7f
	ands r0, r2
	ands r0, r5
	ands r0, r3
	mov r2, r8
	ands r0, r2
	ands r0, r6
	strb r0, [r1, #0xe]
	strb r4, [r1, #0xa]
	strb r4, [r1, #0xb]
	strb r4, [r1, #0x13]
	strb r4, [r1, #0x14]
	strb r4, [r1, #0x15]
	strb r4, [r1, #0x16]
	movs r0, #3
	strb r0, [r1, #0xc]
	strb r4, [r1, #0xd]
	movs r0, #0
	strh r4, [r1]
	strb r0, [r1, #0xf]
	strb r0, [r1, #0x10]
	strb r0, [r1, #0x11]
	strb r0, [r1, #0x12]
	strh r4, [r1, #2]
	ldr r3, _0803C950 @ =0x04000200
	ldrh r1, [r3]
	ldr r0, _0803C954 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r3]
	ldr r2, _0803C958 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _0803C95C @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	ldrh r1, [r3]
	ldr r0, _0803C960 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3]
	ldrh r1, [r2]
	ldr r0, _0803C964 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	bl m4aMPlayAllStop
	mov r0, sp
	strh r4, [r0]
	ldr r1, _0803C968 @ =0x040000D4
	str r0, [r1]
	ldr r0, _0803C96C @ =0x03003590
	str r0, [r1, #4]
	ldr r0, _0803C970 @ =0x81000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #1
	subs r6, #0x3a
	adds r5, #5
	ldr r7, _0803C974 @ =gUnk_03002920
	adds r2, r7, #0
	adds r2, #0xc
_0803C8CE:
	ldrb r0, [r2, #2]
	orrs r0, r3
	strb r0, [r2, #2]
	ldrb r1, [r2, #1]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2, #1]
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r2, #0x1c
	adds r4, #1
	cmp r4, #0xa
	bls _0803C8CE
	movs r4, #0xd
	ldr r0, _0803C978 @ =gUnk_03005428
	ldr r6, _0803C948 @ =gUnk_03004C20
	mov sl, r0
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0803C9EE
	ldr r0, _0803C974 @ =gUnk_03002920
	movs r1, #2
	rsbs r1, r1, #0
	mov sb, r1
	movs r5, #4
	rsbs r5, r5, #0
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r3, r0, r2
	movs r0, #1
	mov r8, r0
	subs r1, #0x3b
	mov ip, r1
_0803C916:
	ldrb r0, [r3, #0xe]
	mov r2, r8
	orrs r2, r0
	strb r2, [r3, #0xe]
	ldrb r1, [r3, #0xd]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #0xd]
	ldrb r0, [r3, #0x11]
	cmp r0, #0x20
	beq _0803C9A2
	cmp r0, #0x20
	bgt _0803C982
	cmp r0, #0xb
	beq _0803C9B0
	cmp r0, #0xb
	bgt _0803C97C
	cmp r0, #0
	beq _0803C994
	b _0803C9C6
	.align 2, 0
_0803C940: .4byte 0x030007CC
_0803C944: .4byte 0x081168DC
_0803C948: .4byte gUnk_03004C20
_0803C94C: .4byte gUnk_03005400
_0803C950: .4byte 0x04000200
_0803C954: .4byte 0x0000FFFE
_0803C958: .4byte 0x04000004
_0803C95C: .4byte 0x0000FFF7
_0803C960: .4byte 0x0000FFFD
_0803C964: .4byte 0x0000FFEF
_0803C968: .4byte 0x040000D4
_0803C96C: .4byte 0x03003590
_0803C970: .4byte 0x81000040
_0803C974: .4byte gUnk_03002920
_0803C978: .4byte gUnk_03005428
_0803C97C:
	cmp r0, #0x16
	beq _0803C9B0
	b _0803C9C6
_0803C982:
	cmp r0, #0x36
	beq _0803C9B8
	cmp r0, #0x36
	blt _0803C9C6
	cmp r0, #0x7d
	bgt _0803C9C6
	cmp r0, #0x76
	blt _0803C9C6
	b _0803C9B0
_0803C994:
	mov r0, sb
	ands r2, r0
	strb r2, [r3, #0xe]
	ldrb r1, [r3, #0xc]
	adds r0, r5, #0
	ands r0, r1
	b _0803C9D0
_0803C9A2:
	mov r1, sb
	ands r2, r1
	strb r2, [r3, #0xe]
	ldrb r1, [r3, #0xc]
	adds r0, r5, #0
	ands r0, r1
	b _0803C9D0
_0803C9B0:
	ldrb r1, [r3, #0xc]
	adds r0, r5, #0
	ands r0, r1
	b _0803C9D0
_0803C9B8:
	ldrb r0, [r3, #0xc]
	adds r1, r5, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r3, #0xc]
	b _0803C9D2
_0803C9C6:
	ldrb r1, [r3, #0xc]
	adds r0, r5, #0
	ands r0, r1
	mov r2, r8
	orrs r0, r2
_0803C9D0:
	strb r0, [r3, #0xc]
_0803C9D2:
	ldrb r0, [r3, #0x11]
	cmp r0, #0
	bne _0803C9E2
	ldrb r0, [r3, #0xf]
	cmp r0, #0x1c
	beq _0803C9E2
	movs r0, #1
	strb r0, [r3, #0x10]
_0803C9E2:
	adds r3, #0x1c
	adds r4, #1
	mov r0, sl
	ldrb r0, [r0]
	cmp r4, r0
	blo _0803C916
_0803C9EE:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	cmp r0, #5
	bls _0803C9F8
	b _0803CD58
_0803C9F8:
	lsls r0, r0, #2
	ldr r1, _0803CA04 @ =_0803CA08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803CA04: .4byte _0803CA08
_0803CA08: @ jump table
	.4byte _0803CA20 @ case 0
	.4byte _0803CA3C @ case 1
	.4byte _0803CB40 @ case 2
	.4byte _0803CC48 @ case 3
	.4byte _0803CD08 @ case 4
	.4byte _0803CD24 @ case 5
_0803CA20:
	ldr r1, _0803CA30 @ =0x030034A8
	ldr r0, _0803CA34 @ =sub_0803D90C
	str r0, [r1]
	ldr r1, _0803CA38 @ =0x03005288
	movs r0, #5
	strb r0, [r1]
	b _0803CD58
	.align 2, 0
_0803CA30: .4byte 0x030034A8
_0803CA34: .4byte sub_0803D90C
_0803CA38: .4byte 0x03005288
_0803CA3C:
	ldr r1, _0803CB10 @ =0x030034A8
	ldr r0, _0803CB14 @ =sub_0803E904
	str r0, [r1]
	ldr r1, _0803CB18 @ =0x03005288
	movs r0, #5
	strb r0, [r1]
	ldr r1, _0803CB1C @ =0x03002C04
	ldrb r0, [r1]
	movs r1, #4
	rsbs r1, r1, #0
	mov r8, r1
	mov r2, r8
	ands r2, r0
	movs r4, #1
	orrs r2, r4
	mov r8, r2
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r0, r0, r7
	mov sl, r0
	ldrb r0, [r0]
	adds r3, r1, #0
	ands r3, r0
	orrs r3, r4
	movs r2, #0xab
	lsls r2, r2, #2
	adds r2, r2, r7
	mov ip, r2
	ldrb r0, [r2]
	adds r5, r1, #0
	ands r5, r0
	orrs r5, r4
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r0, r0, r7
	mov sb, r0
	ldrb r0, [r0]
	ands r1, r0
	orrs r1, r4
	ldr r0, _0803CB20 @ =0x000002E6
	adds r2, r7, r0
	ldrb r0, [r2]
	orrs r0, r4
	strb r0, [r2]
	ldr r0, _0803CB24 @ =0x000002CA
	adds r2, r7, r0
	ldrb r0, [r2]
	orrs r0, r4
	strb r0, [r2]
	ldr r0, _0803CB28 @ =0x000002AE
	adds r2, r7, r0
	ldrb r0, [r2]
	orrs r0, r4
	strb r0, [r2]
	ldr r0, _0803CB2C @ =0x00000292
	adds r2, r7, r0
	ldrb r0, [r2]
	orrs r0, r4
	strb r0, [r2]
	movs r6, #0xd
	rsbs r6, r6, #0
	ands r3, r6
	movs r4, #4
	orrs r3, r4
	mov r2, sl
	strb r3, [r2]
	ands r1, r6
	orrs r1, r4
	mov r0, sb
	strb r1, [r0]
	ldr r1, _0803CB30 @ =0x000002C9
	adds r3, r7, r1
	ldrb r2, [r3]
	movs r1, #0x3d
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3]
	ldr r2, _0803CB34 @ =0x00000291
	adds r3, r7, r2
	ldrb r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3]
	mov r0, r8
	ands r0, r6
	ldr r2, _0803CB1C @ =0x03002C04
	strb r0, [r2]
	ands r5, r6
	mov r0, ip
	strb r5, [r0]
	ldr r2, _0803CB38 @ =0x000002E5
	adds r3, r7, r2
	ldrb r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	ldr r0, _0803CB3C @ =0x000002AD
	adds r2, r7, r0
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	b _0803CD58
	.align 2, 0
_0803CB10: .4byte 0x030034A8
_0803CB14: .4byte sub_0803E904
_0803CB18: .4byte 0x03005288
_0803CB1C: .4byte 0x03002C04
_0803CB20: .4byte 0x000002E6
_0803CB24: .4byte 0x000002CA
_0803CB28: .4byte 0x000002AE
_0803CB2C: .4byte 0x00000292
_0803CB30: .4byte 0x000002C9
_0803CB34: .4byte 0x00000291
_0803CB38: .4byte 0x000002E5
_0803CB3C: .4byte 0x000002AD
_0803CB40:
	ldr r1, _0803CC28 @ =0x030034A8
	ldr r0, _0803CC2C @ =sub_0803F9EC
	str r0, [r1]
	ldr r1, _0803CC30 @ =0x03005288
	movs r0, #0xf
	strb r0, [r1]
	movs r4, #0
	mov r3, sl
	ldr r7, _0803CC34 @ =gUnk_08051BD4
	ldrb r1, [r3]
	cmp r4, r1
	bhs _0803CB74
	ldr r0, _0803CC38 @ =gUnk_03002920
	movs r5, #4
	rsbs r5, r5, #0
	adds r2, r0, #0
	adds r2, #0xc
_0803CB62:
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #0x1c
	adds r4, #1
	ldrb r0, [r3]
	cmp r4, r0
	blo _0803CB62
_0803CB74:
	ldr r3, _0803CC3C @ =0x04000008
	ldrb r0, [r6, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldrb r2, [r6, #0xd]
	subs r2, #1
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	subs r0, r0, r2
	adds r1, r1, r0
	adds r1, r1, r7
	ldrb r1, [r1]
	movs r0, #3
	orrs r0, r1
	movs r2, #0xe2
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r6, #0xc]
	lsls r2, r0, #1
	adds r2, r2, r0
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r2, r0
	adds r0, r7, #1
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	ldr r2, _0803CC40 @ =0x00001D44
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r6, #0xc]
	lsls r2, r0, #1
	adds r2, r2, r0
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r2, r0
	adds r0, r7, #2
	adds r2, r2, r0
	ldrb r0, [r2]
	ldr r2, _0803CC44 @ =0x00009E48
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_0803F68C
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_0803F68C
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_0803F68C
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_0803F68C
	movs r0, #4
	movs r1, #0
	movs r2, #0
	bl sub_0803F68C
	movs r0, #5
	movs r1, #0
	movs r2, #0
	bl sub_0803F68C
	b _0803CD58
	.align 2, 0
_0803CC28: .4byte 0x030034A8
_0803CC2C: .4byte sub_0803F9EC
_0803CC30: .4byte 0x03005288
_0803CC34: .4byte gUnk_08051BD4
_0803CC38: .4byte gUnk_03002920
_0803CC3C: .4byte 0x04000008
_0803CC40: .4byte 0x00001D44
_0803CC44: .4byte 0x00009E48
_0803CC48:
	ldr r1, _0803CCE8 @ =0x03005288
	movs r0, #0xf
	strb r0, [r1]
	ldr r1, _0803CCEC @ =0x030034A8
	ldr r0, _0803CCF0 @ =sub_08040F1C
	str r0, [r1]
	ldr r4, _0803CCF4 @ =0x04000008
	ldr r3, _0803CCF8 @ =gUnk_08051BD4
	ldrb r0, [r6, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldrb r2, [r6, #0xd]
	subs r2, #1
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	subs r0, r0, r2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r0, #3
	orrs r0, r1
	movs r2, #0xe2
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r6, #0xc]
	lsls r2, r0, #1
	adds r2, r2, r0
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r2, r0
	adds r0, r3, #1
	adds r2, r2, r0
	ldrb r0, [r2]
	ldr r2, _0803CCFC @ =0x00001D44
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r6, #0xc]
	lsls r2, r0, #1
	adds r2, r2, r0
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r2, r0
	adds r3, #2
	adds r2, r2, r3
	ldrb r0, [r2]
	ldr r2, _0803CD00 @ =0x00009E49
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _0803CD04 @ =gUnk_03005440
	movs r3, #0
	movs r1, #0x30
	strh r1, [r0, #0xc]
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	movs r2, #0x80
	lsls r2, r2, #2
	strh r2, [r0, #0x12]
	movs r1, #0xd8
	lsls r1, r1, #1
	strh r1, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	b _0803CD58
	.align 2, 0
_0803CCE8: .4byte 0x03005288
_0803CCEC: .4byte 0x030034A8
_0803CCF0: .4byte sub_08040F1C
_0803CCF4: .4byte 0x04000008
_0803CCF8: .4byte gUnk_08051BD4
_0803CCFC: .4byte 0x00001D44
_0803CD00: .4byte 0x00009E49
_0803CD04: .4byte gUnk_03005440
_0803CD08:
	ldr r1, _0803CD18 @ =0x03005288
	movs r0, #0xf
	strb r0, [r1]
	ldr r1, _0803CD1C @ =0x030034A8
	ldr r0, _0803CD20 @ =sub_08042024
	str r0, [r1]
	b _0803CD58
	.align 2, 0
_0803CD18: .4byte 0x03005288
_0803CD1C: .4byte 0x030034A8
_0803CD20: .4byte sub_08042024
_0803CD24:
	ldr r1, _0803CD94 @ =0x03005288
	movs r0, #0xf
	strb r0, [r1]
	ldr r1, _0803CD98 @ =0x030034A8
	ldr r0, _0803CD9C @ =sub_08042E64
	str r0, [r1]
	ldr r0, _0803CDA0 @ =0x00000201
	adds r1, r7, r0
	movs r3, #0
	movs r0, #0x10
	strb r0, [r1]
	ldr r2, _0803CDA4 @ =gUnk_03005400
	ldrb r0, [r2, #0xe]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0xe]
	ldr r1, _0803CDA8 @ =gUnk_030007E0
	movs r0, #3
	strb r0, [r1, #0xc]
	movs r0, #0x78
	strh r0, [r1, #6]
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r1, #8]
	strh r0, [r1, #2]
	strh r3, [r1, #0xa]
_0803CD58:
	movs r3, #0
	ldr r0, _0803CDAC @ =gUnk_03003510
	adds r2, r0, #0
	adds r2, #0x78
	ldrb r1, [r2]
	movs r4, #0
	adds r7, r0, #0
	cmp r1, #1
	beq _0803CDC6
	adds r6, r7, #0
	adds r5, r7, #0
	adds r5, #0x28
	ldr r1, _0803CDB0 @ =sub_0803C808
	mov sb, r1
	mov r8, r2
_0803CD76:
	lsls r2, r3, #2
	adds r0, r2, r6
	ldr r1, [r0]
	cmp r1, sb
	beq _0803CD84
	cmp r4, #1
	bne _0803CDB4
_0803CD84:
	adds r2, r2, r5
	adds r1, r3, #1
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r2]
	movs r4, #1
	b _0803CDBA
	.align 2, 0
_0803CD94: .4byte 0x03005288
_0803CD98: .4byte 0x030034A8
_0803CD9C: .4byte sub_08042E64
_0803CDA0: .4byte 0x00000201
_0803CDA4: .4byte gUnk_03005400
_0803CDA8: .4byte gUnk_030007E0
_0803CDAC: .4byte gUnk_03003510
_0803CDB0: .4byte sub_0803C808
_0803CDB4:
	adds r0, r2, r5
	str r1, [r0]
	adds r1, r3, #1
_0803CDBA:
	adds r3, r1, #0
	mov r2, r8
	ldrb r0, [r2]
	subs r0, #1
	cmp r3, r0
	blo _0803CD76
_0803CDC6:
	cmp r4, #1
	bne _0803CDE4
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
_0803CDE4:
	ldr r2, _0803CE0C @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0803CE10 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CE0C: .4byte 0x04000200
_0803CE10: .4byte 0x04000004

	thumb_func_start sub_0803CE14
sub_0803CE14: @ 0x0803CE14
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _0803CE38 @ =gUnk_03002920
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrb r0, [r4, #0xf]
	cmp r0, #0x11
	beq _0803CEA8
	cmp r0, #0x11
	ble _0803CF02
	cmp r0, #0x18
	beq _0803CE3C
	cmp r0, #0x19
	beq _0803CE50
	b _0803CF02
	.align 2, 0
_0803CE38: .4byte gUnk_03002920
_0803CE3C:
	strh r0, [r4]
	strh r0, [r4, #2]
	ldrb r0, [r4, #0xc]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r4, #0xc]
	movs r0, #0x19
	strb r0, [r4, #0xf]
	b _0803CF02
_0803CE50:
	ldr r3, _0803CE88 @ =0x080E2B64
	ldr r5, _0803CE8C @ =gUnk_03004C20
	ldrb r1, [r5, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	subs r2, #0xd
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r5, #0xc]
	subs r0, #1
	ldr r2, _0803CE90 @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r5, #0xd]
	subs r0, #1
	ldr r2, _0803CE94 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r4, #4]
	ldrh r1, [r1]
	cmp r0, r1
	blo _0803CE98
	movs r0, #0
	strb r0, [r4, #0xf]
	b _0803CF02
	.align 2, 0
_0803CE88: .4byte 0x080E2B64
_0803CE8C: .4byte gUnk_03004C20
_0803CE90: .4byte 0x00001130
_0803CE94: .4byte 0x00008980
_0803CE98:
	ldr r0, [r5]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803CF02
	ldrh r0, [r4]
	adds r0, #1
	b _0803CF00
_0803CEA8:
	ldrh r6, [r4]
	ldr r3, _0803CEE4 @ =0x080E2B64
	ldr r5, _0803CEE8 @ =gUnk_03004C20
	ldrb r1, [r5, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	subs r2, #0xd
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r5, #0xc]
	subs r0, #1
	ldr r2, _0803CEEC @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r5, #0xd]
	subs r0, #1
	ldr r2, _0803CEF0 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	subs r0, #0x10
	cmp r6, r0
	bgt _0803CEF4
	movs r0, #0
	strb r0, [r4, #0x10]
	movs r0, #0x1c
	strb r0, [r4, #0xf]
	b _0803CF02
	.align 2, 0
_0803CEE4: .4byte 0x080E2B64
_0803CEE8: .4byte gUnk_03004C20
_0803CEEC: .4byte 0x00001130
_0803CEF0: .4byte 0x00008980
_0803CEF4:
	ldr r0, [r5]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803CF02
	subs r0, r6, #1
_0803CF00:
	strh r0, [r4]
_0803CF02:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0803CF08
sub_0803CF08: @ 0x0803CF08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, _0803D01C @ =gUnk_03002920
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #0xe]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0, #0xe]
	ldr r0, _0803D020 @ =gUnk_03005400
	ldrb r1, [r0, #0xe]
	movs r0, #0x10
	ands r0, r1
	mov r8, r3
	cmp r0, #0
	bne _0803CF34
	b _0803D044
_0803CF34:
	ldr r1, _0803D024 @ =0x0811710A
	ldr r0, _0803D028 @ =gUnk_03004C20
	ldrb r0, [r0, #0xd]
	subs r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r6, #0
	movs r7, #0
	lsls r5, r1, #0x18
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r3
_0803CF4E:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803CF58
	cmp r0, #0x19
	bne _0803CF6A
_0803CF58:
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	lsrs r3, r5, #0x18
	movs r2, #2
	bl sub_0801E664
	movs r0, #0x1c
	strb r0, [r4, #0xf]
	strb r7, [r4, #0x10]
_0803CF6A:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r5, r5, r0
	adds r4, #0x1c
	adds r6, #1
	cmp r6, #1
	bls _0803CF4E
	ldr r4, _0803D02C @ =gUnk_03005220
	adds r5, r4, #0
	adds r5, #0x42
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803CFC4
	ldr r3, _0803D01C @ =gUnk_03002920
	adds r1, r0, #0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	movs r2, #0
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strb r2, [r0, #0x10]
	adds r0, r4, #0
	adds r0, #0x38
	strb r2, [r0]
	adds r0, #0xb
	strb r2, [r0]
	strb r2, [r5]
	ldr r0, _0803D030 @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0x15
	bls _0803CFC4
	adds r1, r0, #0
	subs r1, #0x16
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl sub_08025B78
_0803CFC4:
	ldr r3, _0803D01C @ =gUnk_03002920
	ldrb r1, [r3, #0xc]
	movs r4, #4
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r3, #0xc]
	ldr r2, _0803D020 @ =gUnk_03005400
	ldrb r1, [r2, #0xe]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xe]
	ldr r1, _0803D034 @ =0x04000050
	movs r2, #0xe8
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0803D038 @ =gUnk_03005498
	movs r0, #0x10
	strb r0, [r1]
	movs r6, #0x12
	ldr r2, _0803D03C @ =gUnk_03005428
	mov r8, r3
	ldrb r0, [r2]
	cmp r6, r0
	blo _0803CFFC
	b _0803D134
_0803CFFC:
	adds r5, r4, #0
	movs r4, #1
	ldr r3, _0803D040 @ =0x00000205
	add r3, r8
_0803D004:
	ldrb r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r3]
	adds r3, #0x1c
	adds r6, #1
	ldrb r1, [r2]
	cmp r6, r1
	blo _0803D004
	b _0803D134
	.align 2, 0
_0803D01C: .4byte gUnk_03002920
_0803D020: .4byte gUnk_03005400
_0803D024: .4byte 0x0811710A
_0803D028: .4byte gUnk_03004C20
_0803D02C: .4byte gUnk_03005220
_0803D030: .4byte gUnk_03000830
_0803D034: .4byte 0x04000050
_0803D038: .4byte gUnk_03005498
_0803D03C: .4byte gUnk_03005428
_0803D040: .4byte 0x00000205
_0803D044:
	ldr r0, _0803D0B0 @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #7
	ands r0, r1
	ldr r1, _0803D0B4 @ =gUnk_03005498
	cmp r0, #0
	bne _0803D05C
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803D062
	subs r0, #1
	strb r0, [r1]
_0803D05C:
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803D134
_0803D062:
	ldr r1, _0803D0B8 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r0, [r0]
	mov ip, r1
	cmp r0, #0
	bne _0803D07A
	mov r0, ip
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D134
_0803D07A:
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	movs r1, #4
	strb r1, [r0, #0xf]
	ldr r1, _0803D0BC @ =gUnk_03003410
	movs r0, #2
	strb r0, [r1, #0xb]
	movs r4, #0
	ldr r1, _0803D0C0 @ =gUnk_03003510
	adds r6, r1, #0
	adds r6, #0x78
	ldrb r0, [r6]
	adds r0, #1
	adds r5, r1, #0
	cmp r4, r0
	bhs _0803D0E0
	adds r7, r5, #0
	subs r2, r5, #4
	ldr r3, _0803D0C4 @ =sub_080264A4
	adds r1, r6, #0
_0803D0A6:
	cmp r4, #4
	bne _0803D0C8
	str r3, [r7, #0x38]
	b _0803D0D4
	.align 2, 0
_0803D0B0: .4byte gUnk_03004C20
_0803D0B4: .4byte gUnk_03005498
_0803D0B8: .4byte gUnk_03005220
_0803D0BC: .4byte gUnk_03003410
_0803D0C0: .4byte gUnk_03003510
_0803D0C4: .4byte sub_080264A4
_0803D0C8:
	cmp r4, #4
	bls _0803D0D0
	ldr r0, [r2]
	b _0803D0D2
_0803D0D0:
	ldr r0, [r2, #4]
_0803D0D2:
	str r0, [r2, #0x2c]
_0803D0D4:
	adds r2, #4
	adds r4, #1
	ldrb r0, [r1]
	adds r0, #1
	cmp r4, r0
	blo _0803D0A6
_0803D0E0:
	cmp r4, #3
	bls _0803D0FE
	adds r1, r5, #0
	adds r1, #0x78
	ldrb r0, [r1]
	adds r0, #1
	adds r4, r5, #0
	adds r4, #0x79
	movs r2, #0
	strb r0, [r4]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r2, [r0]
_0803D0FE:
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	add r0, r8
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D122
	movs r0, #0
	bl sub_08025B78
	b _0803D134
_0803D122:
	mov r0, ip
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D134
	movs r0, #0
	movs r1, #0x10
	bl sub_08025B78
_0803D134:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803D140
sub_0803D140: @ 0x0803D140
	lsls r0, r0, #0x18
	ldr r2, _0803D154 @ =gUnk_03005400
	ldr r1, _0803D158 @ =0x081168E8
	lsrs r0, r0, #0x15
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	strb r1, [r2, #0x11]
	ldrb r0, [r0, #6]
	strb r0, [r2, #0x12]
	bx lr
	.align 2, 0
_0803D154: .4byte gUnk_03005400
_0803D158: .4byte 0x081168E8

	thumb_func_start sub_0803D15C
sub_0803D15C: @ 0x0803D15C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803D300 @ =gUnk_080D8E14
	adds r0, #0x80
	movs r1, #0
	ldrsh r5, [r0, r1]
	ldr r2, _0803D304 @ =gUnk_030034AC
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, _0803D300 @ =gUnk_080D8E14
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r2, _0803D304 @ =gUnk_030034AC
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _0803D300 @ =gUnk_080D8E14
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r1, _0803D308 @ =gUnk_03005420
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r3, _0803D308 @ =gUnk_03005420
	movs r1, #0
	ldrsh r0, [r3, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r6, _0803D30C @ =0x03004680
	mov r2, sl
	strh r2, [r6]
	mov r3, sb
	strh r3, [r6, #2]
	strh r7, [r6, #4]
	strh r4, [r6, #6]
	mov r5, sl
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r6, #8]
	strh r3, [r6, #0xa]
	strh r7, [r6, #0xc]
	strh r4, [r6, #0xe]
	strh r5, [r6, #0x10]
	strh r3, [r6, #0x12]
	strh r7, [r6, #0x14]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r6, #0x16]
	ldr r5, _0803D310 @ =0x03003590
	ldrb r0, [r5, #4]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0803D300 @ =gUnk_080D8E14
	adds r0, r0, r1
	movs r2, #0
	ldrsh r4, [r0, r2]
	ldrh r1, [r5]
	ldr r3, _0803D304 @ =gUnk_030034AC
	ldrh r3, [r3]
	adds r1, r1, r3
	ldr r2, _0803D314 @ =0x030007CC
	ldrb r0, [r2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrb r0, [r5, #4]
	lsls r0, r0, #1
	ldr r3, _0803D300 @ =gUnk_080D8E14
	adds r0, r0, r3
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldrh r1, [r5]
	ldr r2, _0803D304 @ =gUnk_030034AC
	ldrh r2, [r2]
	adds r1, r1, r2
	ldr r3, _0803D314 @ =0x030007CC
	ldrb r0, [r3]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrb r0, [r5, #4]
	lsls r0, r0, #1
	ldr r1, _0803D300 @ =gUnk_080D8E14
	adds r0, r0, r1
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrh r1, [r5, #2]
	ldr r2, _0803D308 @ =gUnk_03005420
	ldrh r2, [r2]
	adds r1, r1, r2
	ldr r3, _0803D314 @ =0x030007CC
	ldrb r0, [r3]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r0, [r5, #4]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0803D300 @ =gUnk_080D8E14
	adds r0, r0, r1
	movs r2, #0
	ldrsh r4, [r0, r2]
	ldrh r1, [r5, #2]
	ldr r3, _0803D308 @ =gUnk_03005420
	ldrh r3, [r3]
	adds r1, r1, r3
	ldr r2, _0803D314 @ =0x030007CC
	ldrb r0, [r2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r5, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0803D318
	mov r3, sl
	strh r3, [r6, #0x18]
	strh r7, [r6, #0x1c]
	b _0803D32A
	.align 2, 0
_0803D300: .4byte gUnk_080D8E14
_0803D304: .4byte gUnk_030034AC
_0803D308: .4byte gUnk_03005420
_0803D30C: .4byte 0x03004680
_0803D310: .4byte 0x03003590
_0803D314: .4byte 0x030007CC
_0803D318:
	mov r5, sl
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r6, #0x18]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r6, #0x1c]
_0803D32A:
	ldr r0, _0803D34C @ =0x03004680
	mov r1, sb
	strh r1, [r0, #0x1a]
	strh r4, [r0, #0x1e]
	movs r2, #1
	str r2, [sp]
	ldr r3, _0803D350 @ =0x03003590
_0803D338:
	ldr r5, [sp]
	lsls r1, r5, #3
	adds r4, r1, r3
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1f
	mov r8, r1
	cmp r0, #0
	bne _0803D354
	ldrb r4, [r4, #4]
	b _0803D35C
	.align 2, 0
_0803D34C: .4byte 0x03004680
_0803D350: .4byte 0x03003590
_0803D354:
	ldrb r0, [r4, #4]
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0803D35C:
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0803D424 @ =gUnk_080D8E14
	adds r0, r0, r1
	movs r3, #0
	ldrsh r2, [r0, r3]
	str r2, [sp, #4]
	ldr r5, _0803D428 @ =0x03003590
	add r5, r8
	ldrh r0, [r5]
	ldr r1, _0803D42C @ =gUnk_030034AC
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #4]
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r4, r4, #1
	ldr r2, _0803D424 @ =gUnk_080D8E14
	adds r4, r4, r2
	movs r0, #0
	ldrsh r3, [r4, r0]
	str r3, [sp, #8]
	ldrh r0, [r5]
	ldr r1, _0803D42C @ =gUnk_030034AC
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #8]
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrh r4, [r4]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrh r0, [r5, #2]
	ldr r2, _0803D430 @ =gUnk_03005420
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrh r0, [r5, #2]
	ldr r3, _0803D430 @ =gUnk_03005420
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #4]
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r5, #5]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803D438
	ldr r0, _0803D434 @ =0x03004680
	ldr r2, [sp]
	adds r2, #3
	lsls r1, r2, #3
	adds r1, r1, r0
	mov r5, sl
	strh r5, [r1]
	adds r6, r0, #0
	b _0803D450
	.align 2, 0
_0803D424: .4byte gUnk_080D8E14
_0803D428: .4byte 0x03003590
_0803D42C: .4byte gUnk_030034AC
_0803D430: .4byte gUnk_03005420
_0803D434: .4byte 0x03004680
_0803D438:
	ldr r2, _0803D474 @ =0x03004680
	ldr r3, [sp]
	adds r3, #3
	lsls r1, r3, #3
	adds r1, r1, r2
	mov r5, sl
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r6, r2, #0
	adds r2, r3, #0
_0803D450:
	ldr r1, _0803D478 @ =0x03003590
	mov r0, r8
	adds r5, r0, r1
	ldrb r0, [r5, #5]
	lsls r0, r0, #0x1f
	adds r3, r1, #0
	cmp r0, #0
	beq _0803D47C
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0803D47C
	lsls r1, r2, #3
	adds r1, r1, r6
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r1, #4]
	b _0803D482
	.align 2, 0
_0803D474: .4byte 0x03004680
_0803D478: .4byte 0x03003590
_0803D47C:
	lsls r0, r2, #3
	adds r0, r0, r6
	strh r7, [r0, #4]
_0803D482:
	lsls r0, r2, #3
	adds r0, r0, r6
	mov r1, sb
	strh r1, [r0, #2]
	strh r4, [r0, #6]
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #0xf
	bhi _0803D49C
	b _0803D338
_0803D49C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803D4AC
sub_0803D4AC: @ 0x0803D4AC
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
	ldr r1, _0803D524 @ =gUnk_03002920
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
	ldr r3, _0803D530 @ =gUnk_03004790
	ldrh r2, [r4]
	lsrs r2, r2, #3
	ldr r1, _0803D534 @ =0x08116888
	ldrb r0, [r5, #0xd]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #1
	adds r0, r0, r1
	b _0803D58C
	.align 2, 0
_0803D524: .4byte gUnk_03002920
_0803D528: .4byte gUnk_03005400
_0803D52C: .4byte gUnk_03004C20
_0803D530: .4byte gUnk_03004790
_0803D534: .4byte 0x08116888
_0803D538:
	ldrh r1, [r4]
	ldr r2, _0803D56C @ =0x08116888
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
_0803D56C: .4byte 0x08116888
_0803D570: .4byte gUnk_03004C20
_0803D574: .4byte 0xFFFF0000
_0803D578: .4byte gUnk_03004654
_0803D57C:
	ldr r3, _0803D5CC @ =gUnk_03004790
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
	ldr r0, _0803D5D4 @ =gUnk_03003430
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
	ldr r1, _0803D5DC @ =gUnk_03002920
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
_0803D5CC: .4byte gUnk_03004790
_0803D5D0: .4byte gUnk_03004C20
_0803D5D4: .4byte gUnk_03003430
_0803D5D8: .4byte gUnk_03004654
_0803D5DC: .4byte gUnk_03002920
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
	ldr r3, _0803D690 @ =gUnk_03002920
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
	ldr r4, _0803D698 @ =gUnk_03004790
	mov r7, sb
	mov r0, r8
	subs r2, r7, r0
	lsls r2, r2, #2
	adds r2, r2, r3
	ldrh r3, [r2]
	lsrs r3, r3, #3
	ldr r1, _0803D69C @ =0x08116888
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
	ldr r0, _0803D6A0 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r1, r0, r1
	ldr r0, [r4, #0x14]
	adds r3, r3, r1
	adds r0, r0, r3
	b _0803D724
	.align 2, 0
_0803D68C: .4byte gUnk_03005400
_0803D690: .4byte gUnk_03002920
_0803D694: .4byte gUnk_03004C20
_0803D698: .4byte gUnk_03004790
_0803D69C: .4byte 0x08116888
_0803D6A0: .4byte gUnk_03003430
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
	ldr r2, _0803D6EC @ =0x08116888
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
_0803D6EC: .4byte 0x08116888
_0803D6F0: .4byte gUnk_03004C20
_0803D6F4: .4byte 0xFFFF0000
_0803D6F8: .4byte gUnk_03004654
_0803D6FC:
	ldr r3, _0803D750 @ =gUnk_03004790
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
	ldr r0, _0803D758 @ =gUnk_03003430
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
	ldr r1, _0803D760 @ =gUnk_03002920
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
_0803D750: .4byte gUnk_03004790
_0803D754: .4byte gUnk_03004C20
_0803D758: .4byte gUnk_03003430
_0803D75C: .4byte gUnk_03004654
_0803D760: .4byte gUnk_03002920
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
	ldr r0, _0803D828 @ =gUnk_03002920
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
	ldr r5, _0803D82C @ =gUnk_03004790
	ldrh r4, [r6]
	ldr r3, _0803D830 @ =0x08116888
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
	ldr r0, _0803D834 @ =gUnk_03003430
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
_0803D828: .4byte gUnk_03002920
_0803D82C: .4byte gUnk_03004790
_0803D830: .4byte 0x08116888
_0803D834: .4byte gUnk_03003430
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
	ldr r5, _0803D8D4 @ =gUnk_03004790
	ldrh r4, [r6]
	ldr r3, _0803D8D8 @ =0x08116888
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
	ldr r0, _0803D8E0 @ =gUnk_03003430
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
	ldr r1, _0803D8E4 @ =gUnk_03002920
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
_0803D8D4: .4byte gUnk_03004790
_0803D8D8: .4byte 0x08116888
_0803D8DC: .4byte gUnk_03004C20
_0803D8E0: .4byte gUnk_03003430
_0803D8E4: .4byte gUnk_03002920
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

	thumb_func_start sub_0803D90C
sub_0803D90C: @ 0x0803D90C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, _0803D998 @ =gUnk_03002920
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r4, r0, r2
	ldrb r1, [r4, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0xe]
	ldr r3, _0803D99C @ =0x03003590
	movs r0, #0x81
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r1, [r2]
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
	ldr r6, _0803D9A0 @ =gUnk_03005400
	ldrh r0, [r6]
	cmp r0, #0
	beq _0803D964
	subs r0, #1
	strh r0, [r6]
_0803D964:
	ldr r3, _0803D9A4 @ =0x03003620
	ldr r1, _0803D9A8 @ =0x081168E8
	ldrb r0, [r6, #9]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [r3]
	str r2, [r3, #4]
	adds r0, r5, #0
	bl sub_0803D4AC
	ldrb r0, [r4, #0xf]
	cmp r0, #0xe
	beq _0803D984
	b _0803DB24
_0803D984:
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _0803D98E
	bl _0803E6CA
_0803D98E:
	lsls r0, r0, #2
	ldr r1, _0803D9AC @ =_0803D9B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803D998: .4byte gUnk_03002920
_0803D99C: .4byte 0x03003590
_0803D9A0: .4byte gUnk_03005400
_0803D9A4: .4byte 0x03003620
_0803D9A8: .4byte 0x081168E8
_0803D9AC: .4byte _0803D9B0
_0803D9B0: @ jump table
	.4byte _0803D9C4 @ case 0
	.4byte _0803DA18 @ case 1
	.4byte _0803DA48 @ case 2
	.4byte _0803DA98 @ case 3
	.4byte _0803DAE8 @ case 4
_0803D9C4:
	ldr r0, _0803DA0C @ =gUnk_030007E0
	movs r1, #0x15
	strb r1, [r0, #0xc]
	ldr r3, _0803DA10 @ =gUnk_03002920
	ldrh r1, [r3]
	movs r2, #0
	strh r1, [r0, #6]
	strh r1, [r0]
	ldrh r1, [r3, #2]
	strh r1, [r0, #8]
	strh r1, [r0, #2]
	strh r2, [r0, #0xa]
	strh r2, [r0, #4]
	strh r2, [r3]
	movs r0, #0x95
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0
	movs r1, #1
	bl sub_08025B78
	adds r0, r5, #0
	movs r1, #0
	bl sub_08025B78
	ldr r1, _0803DA14 @ =gUnk_03005400
	ldrb r2, [r1, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0xa]
	bl _0803E6CA
	.align 2, 0
_0803DA0C: .4byte gUnk_030007E0
_0803DA10: .4byte gUnk_03002920
_0803DA14: .4byte gUnk_03005400
_0803DA18:
	ldr r1, _0803DA40 @ =gUnk_03002920
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bhi _0803DA2C
	bl _0803E6CA
_0803DA2C:
	ldr r2, _0803DA44 @ =0x000002E7
	adds r1, r1, r2
	movs r0, #0x1c
	strb r0, [r1]
	movs r0, #0
	movs r1, #2
	bl sub_08025B78
	b _0803DF50
	.align 2, 0
_0803DA40: .4byte gUnk_03002920
_0803DA44: .4byte 0x000002E7
_0803DA48:
	ldr r1, _0803DA60 @ =gUnk_03002920
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r1, #2]
	mov r8, r1
	cmp r0, #0xd1
	bls _0803DA64
	subs r0, #2
	strh r0, [r1, #2]
	b _0803DA6A
	.align 2, 0
_0803DA60: .4byte gUnk_03002920
_0803DA64:
	subs r0, #1
	mov r3, r8
	strh r0, [r3, #2]
_0803DA6A:
	mov r4, r8
	ldrh r0, [r4, #2]
	cmp r0, #0xf0
	bls _0803DA76
	bl _0803E6CA
_0803DA76:
	movs r0, #0
	movs r1, #3
	bl sub_08025B78
	ldr r1, _0803DA90 @ =gUnk_03005400
	movs r2, #0
	movs r0, #3
	strb r0, [r1, #0xa]
	ldr r0, _0803DA94 @ =0x000002E7
	add r0, r8
	strb r2, [r0]
	bl _0803E6CA
	.align 2, 0
_0803DA90: .4byte gUnk_03005400
_0803DA94: .4byte 0x000002E7
_0803DA98:
	ldr r1, _0803DADC @ =gUnk_03002920
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	ldr r1, _0803DAE0 @ =0x01110000
	cmp r0, r1
	bhi _0803DAB2
	bl _0803E6CA
_0803DAB2:
	movs r0, #0x2e
	bl m4aSongNumStart
	movs r0, #0x64
	bl m4aSongNumStart
	adds r0, r5, #0
	movs r1, #0xc
	bl sub_08025B78
	ldr r2, _0803DAE4 @ =gUnk_03005400
	ldrb r0, [r2, #0xe]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0xe]
	movs r0, #4
	strb r0, [r2, #0xa]
	movs r0, #0xa0
	strh r0, [r2]
	bl _0803E6CA
	.align 2, 0
_0803DADC: .4byte gUnk_03002920
_0803DAE0: .4byte 0x01110000
_0803DAE4: .4byte gUnk_03005400
_0803DAE8:
	ldr r3, _0803DB18 @ =gUnk_03005400
	ldrh r2, [r3]
	cmp r2, #0
	beq _0803DAF4
	bl _0803E6CA
_0803DAF4:
	ldrb r0, [r3, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #8]
	strb r2, [r3, #0xa]
	ldr r1, _0803DB1C @ =gUnk_03002920
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r2, [r0, #0xf]
	ldr r7, _0803DB20 @ =0x00000223
	adds r1, r1, r7
	movs r0, #0x19
	strb r0, [r1]
	bl _0803E6CA
	.align 2, 0
_0803DB18: .4byte gUnk_03005400
_0803DB1C: .4byte gUnk_03002920
_0803DB20: .4byte 0x00000223
_0803DB24:
	cmp r0, #0x1a
	bne _0803DB30
	movs r0, #0
	strb r0, [r4, #0xf]
	bl _0803E6CA
_0803DB30:
	cmp r0, #0
	beq _0803DB38
	bl sub_0803E6C0
_0803DB38:
	ldrb r0, [r6, #0xa]
	cmp r0, #0xe
	bls _0803DB42
	bl _0803E6CA
_0803DB42:
	lsls r0, r0, #2
	ldr r1, _0803DB4C @ =_0803DB50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DB4C: .4byte _0803DB50
_0803DB50: @ jump table
	.4byte _0803DFD0 @ case 0
	.4byte _0803DB8C @ case 1
	.4byte _0803DF60 @ case 2
	.4byte _0803E0E8 @ case 3
	.4byte _0803E1C4 @ case 4
	.4byte _0803E36C @ case 5
	.4byte _0803E3C0 @ case 6
	.4byte _0803E40C @ case 7
	.4byte _0803E4E0 @ case 8
	.4byte _0803DEF4 @ case 9
	.4byte _0803DE5C @ case 10
	.4byte _0803DEC8 @ case 11
	.4byte _0803E64E @ case 12
	.4byte _0803E00C @ case 13
	.4byte _0803DDA0 @ case 14
_0803DB8C:
	ldr r0, _0803DBBC @ =gUnk_03005400
	ldrh r1, [r0]
	mov sb, r0
	ldr r7, _0803DBC0 @ =gUnk_03004C20
	cmp r1, #0
	bne _0803DC18
	movs r0, #0x3c
	mov r1, sb
	strh r0, [r1]
	ldr r1, _0803DBC4 @ =gUnk_03002920
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	mov r8, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _0803DBC8
	ldrh r0, [r3]
	adds r0, #0x10
	b _0803DBCC
	.align 2, 0
_0803DBBC: .4byte gUnk_03005400
_0803DBC0: .4byte gUnk_03004C20
_0803DBC4: .4byte gUnk_03002920
_0803DBC8:
	ldrh r0, [r3]
	subs r0, #0x10
_0803DBCC:
	strh r0, [r3]
	subs r0, r6, r5
	lsls r0, r0, #2
	mov r2, r8
	adds r4, r0, r2
	ldrh r3, [r4]
	ldr r6, _0803DCB0 @ =0x08116888
	ldr r2, _0803DCB4 @ =gUnk_03004C20
	ldrb r0, [r2, #0xd]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0xc8
	lsls r0, r0, #1
	subs r0, r0, r1
	adds r7, r2, #0
	cmp r3, r0
	ble _0803DBF6
	strh r0, [r4]
_0803DBF6:
	ldrh r0, [r4]
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #0x40
	cmp r0, r1
	bge _0803DC0E
	strh r1, [r4]
_0803DC0E:
	mov r3, sb
	ldrb r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #8]
_0803DC18:
	mov r4, sb
	ldrh r0, [r4]
	cmp r0, #1
	bne _0803DCE6
	ldr r3, _0803DCB8 @ =0x040000D4
	ldr r0, _0803DCBC @ =0x08078508
	str r0, [r3]
	ldr r2, _0803DCC0 @ =gUnk_0818B8E0
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r7, [r7, #0xc]
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r0, #4]
	lsls r0, r5, #3
	adds r0, r0, r1
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r7, _0803DCC4 @ =0x05000200
	adds r0, r0, r7
	str r0, [r3, #4]
	ldr r0, _0803DCC8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803DC64
_0803DC5C:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803DC5C
_0803DC64:
	mov r1, sb
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _0803DCDC
	ldr r4, _0803DCCC @ =gUnk_03002920
	movs r2, #0x85
	lsls r2, r2, #2
	adds r0, r4, r2
	ldrh r0, [r0]
	ldr r3, _0803DCD0 @ =0x00000216
	adds r1, r4, r3
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x13
	bl sub_0801E664
	ldr r7, _0803DCD4 @ =0x00000223
	adds r0, r4, r7
	movs r1, #0x1c
	strb r1, [r0]
	ldr r0, _0803DCD8 @ =0x0000023F
	adds r4, r4, r0
	strb r1, [r4]
	movs r0, #0xc
	mov r1, sb
	strb r0, [r1, #0xa]
	adds r0, #0xf4
	strh r0, [r1]
	ldrb r0, [r1, #8]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	mov r2, sb
	strb r0, [r2, #8]
	bl _0803E6CA
	.align 2, 0
_0803DCB0: .4byte 0x08116888
_0803DCB4: .4byte gUnk_03004C20
_0803DCB8: .4byte 0x040000D4
_0803DCBC: .4byte 0x08078508
_0803DCC0: .4byte gUnk_0818B8E0
_0803DCC4: .4byte 0x05000200
_0803DCC8: .4byte 0x80000010
_0803DCCC: .4byte gUnk_03002920
_0803DCD0: .4byte 0x00000216
_0803DCD4: .4byte 0x00000223
_0803DCD8: .4byte 0x0000023F
_0803DCDC:
	movs r0, #5
	mov r3, sb
	strb r0, [r3, #0xa]
	bl _0803E6CA
_0803DCE6:
	ldr r0, [r7]
	movs r1, #0xa
	bl __umodsi3
	cmp r0, #5
	bne _0803DD36
	ldr r3, _0803DD84 @ =0x040000D4
	ldr r0, _0803DD88 @ =0x08078508
	str r0, [r3]
	ldr r2, _0803DD8C @ =gUnk_0818B8E0
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r4, [r7, #0xc]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r0, #4]
	lsls r0, r5, #3
	adds r0, r0, r1
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r1, _0803DD90 @ =0x05000200
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _0803DD94 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803DD36
_0803DD2E:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803DD2E
_0803DD36:
	ldr r0, [r7]
	movs r1, #0xa
	bl __umodsi3
	cmp r0, #0
	beq _0803DD46
	bl _0803E6CA
_0803DD46:
	mov r1, sp
	ldr r2, _0803DD98 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0803DD84 @ =0x040000D4
	str r1, [r2]
	ldr r3, _0803DD8C @ =gUnk_0818B8E0
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r7, [r7, #0xc]
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, [r0, #4]
	lsls r0, r5, #3
	adds r0, r0, r1
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r3, _0803DD90 @ =0x05000200
	adds r0, r0, r3
	str r0, [r2, #4]
	ldr r0, _0803DD9C @ =0x81000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	bl _0803E6CA
	.align 2, 0
_0803DD84: .4byte 0x040000D4
_0803DD88: .4byte 0x08078508
_0803DD8C: .4byte gUnk_0818B8E0
_0803DD90: .4byte 0x05000200
_0803DD94: .4byte 0x80000010
_0803DD98: .4byte 0x0000FFFF
_0803DD9C: .4byte 0x81000010
_0803DDA0:
	ldr r1, _0803DDCC @ =gUnk_03000830
	ldr r0, _0803DDD0 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	cmp r1, #0xff
	bne _0803DDD8
	ldr r2, _0803DDD4 @ =gUnk_03005400
	ldrb r1, [r2, #8]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803DDC2
	bl _0803E6CA
_0803DDC2:
	movs r0, #9
	strb r0, [r2, #0xa]
	bl _0803E6CA
	.align 2, 0
_0803DDCC: .4byte gUnk_03000830
_0803DDD0: .4byte gUnk_0300363C
_0803DDD4: .4byte gUnk_03005400
_0803DDD8:
	cmp r1, #0x10
	bhi _0803DDE6
	ldrb r0, [r0, #2]
	cmp r0, #2
	bls _0803DDE6
	bl _0803E6CA
_0803DDE6:
	ldr r1, _0803DE04 @ =gUnk_03002920
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	mov r8, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _0803DE08
	ldrh r0, [r3]
	subs r0, #1
	b _0803DE0C
	.align 2, 0
_0803DE04: .4byte gUnk_03002920
_0803DE08:
	ldrh r0, [r3]
	adds r0, #1
_0803DE0C:
	strh r0, [r3]
	subs r0, r6, r5
	lsls r0, r0, #2
	mov r7, r8
	adds r4, r0, r7
	ldrh r2, [r4]
	ldr r5, _0803DE54 @ =0x08116888
	ldr r3, _0803DE58 @ =gUnk_03004C20
	ldrb r0, [r3, #0xd]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0xc8
	lsls r0, r0, #1
	subs r0, r0, r1
	cmp r2, r0
	ble _0803DE34
	strh r0, [r4]
_0803DE34:
	ldrh r0, [r4]
	ldrb r1, [r3, #0xd]
	subs r1, #1
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #0x40
	cmp r0, r1
	blt _0803DE4E
	bl _0803E6CA
_0803DE4E:
	strh r1, [r4]
	bl _0803E6CA
	.align 2, 0
_0803DE54: .4byte 0x08116888
_0803DE58: .4byte gUnk_03004C20
_0803DE5C:
	ldr r1, _0803DEA4 @ =gUnk_03000830
	ldr r0, _0803DEA8 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803DEB4
	adds r0, r5, #0
	movs r1, #1
	bl sub_08025B78
	ldr r4, _0803DEAC @ =gUnk_03005400
	movs r0, #0
	strb r0, [r4, #9]
	bl sub_0803D140
	ldr r2, _0803DEB0 @ =0x081169F9
	ldrb r0, [r4, #0xc]
	subs r0, #1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r2, #1
	adds r1, r1, r2
	ldrb r0, [r1]
	strh r0, [r4]
	ldrb r0, [r4, #0xe]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0xe]
	movs r0, #3
	strb r0, [r4, #0xd]
	bl _0803E6CA
	.align 2, 0
_0803DEA4: .4byte gUnk_03000830
_0803DEA8: .4byte gUnk_0300363C
_0803DEAC: .4byte gUnk_03005400
_0803DEB0: .4byte 0x081169F9
_0803DEB4:
	ldr r1, _0803DEC4 @ =gUnk_03005400
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803DEC0
	bl _0803E6CA
_0803DEC0:
	b _0803DF52
	.align 2, 0
_0803DEC4: .4byte gUnk_03005400
_0803DEC8:
	ldr r1, _0803DEE8 @ =gUnk_03000830
	ldr r0, _0803DEEC @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _0803DEDE
	bl _0803E6CA
_0803DEDE:
	ldr r1, _0803DEF0 @ =gUnk_03005400
	ldrb r0, [r1, #0xb]
	strb r0, [r1, #0xa]
	bl _0803E6CA
	.align 2, 0
_0803DEE8: .4byte gUnk_03000830
_0803DEEC: .4byte gUnk_0300363C
_0803DEF0: .4byte gUnk_03005400
_0803DEF4:
	ldr r1, _0803DF14 @ =gUnk_03000830
	ldr r0, _0803DF18 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #4
	beq _0803DF1C
	adds r0, r5, #0
	movs r1, #4
	bl sub_08025B78
	bl _0803E6CA
	.align 2, 0
_0803DF14: .4byte gUnk_03000830
_0803DF18: .4byte gUnk_0300363C
_0803DF1C:
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	beq _0803DF26
	bl _0803E6CA
_0803DF26:
	ldr r1, _0803DF58 @ =gUnk_03002920
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrh r3, [r1]
	ldrh r1, [r2]
	cmp r3, r1
	bhs _0803DF42
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	beq _0803DF50
_0803DF42:
	cmp r3, r1
	bls _0803DF90
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0803DF90
_0803DF50:
	ldr r1, _0803DF5C @ =gUnk_03005400
_0803DF52:
	movs r0, #2
	strb r0, [r1, #0xa]
	b _0803E6CA
	.align 2, 0
_0803DF58: .4byte gUnk_03002920
_0803DF5C: .4byte gUnk_03005400
_0803DF60:
	ldr r1, _0803DF80 @ =gUnk_03000830
	ldr r0, _0803DF84 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0xe
	beq _0803DF9C
	cmp r1, #0xf
	beq _0803DF88
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_08025B78
	b _0803E6CA
	.align 2, 0
_0803DF80: .4byte gUnk_03000830
_0803DF84: .4byte gUnk_0300363C
_0803DF88:
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _0803DF90
	b _0803E6CA
_0803DF90:
	ldr r1, _0803DF98 @ =gUnk_03005400
	movs r0, #0
	strb r0, [r1, #0xa]
	b _0803E6CA
	.align 2, 0
_0803DF98: .4byte gUnk_03005400
_0803DF9C:
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _0803DFA4
	b _0803E6CA
_0803DFA4:
	ldr r0, _0803DFCC @ =gUnk_03002920
	lsls r2, r5, #3
	subs r2, r2, r5
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r3, [r2, #0xc]
	lsls r1, r3, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #2
	subs r0, #0xe
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xc]
	adds r0, r5, #0
	movs r1, #0xf
	bl sub_08025B78
	b _0803E6CA
	.align 2, 0
_0803DFCC: .4byte gUnk_03002920
_0803DFD0:
	ldr r1, _0803E000 @ =gUnk_03000830
	ldr r0, _0803E004 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803DFF0
	adds r0, r5, #0
	movs r1, #0
	bl sub_08025B78
	ldr r1, _0803E008 @ =gUnk_03005400
	movs r0, #0x20
	strh r0, [r1]
_0803DFF0:
	ldr r1, _0803E008 @ =gUnk_03005400
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803DFFA
	b _0803E6CA
_0803DFFA:
	movs r0, #0xd
	strb r0, [r1, #0xa]
	b _0803E6CA
	.align 2, 0
_0803E000: .4byte gUnk_03000830
_0803E004: .4byte gUnk_0300363C
_0803E008: .4byte gUnk_03005400
_0803E00C:
	ldr r1, _0803E090 @ =gUnk_03000830
	ldr r0, _0803E094 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _0803E038
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_08025B78
	ldr r3, _0803E098 @ =gUnk_03005400
	ldr r2, _0803E09C @ =0x081169F9
	ldrb r1, [r3, #0xc]
	subs r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strh r0, [r3]
_0803E038:
	ldr r7, _0803E098 @ =gUnk_03005400
	ldrh r0, [r7]
	cmp r0, #0
	beq _0803E042
	b _0803E6CA
_0803E042:
	ldr r1, _0803E0A0 @ =gUnk_03002920
	lsls r4, r5, #3
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r1]
	subs r0, r0, r1
	bl Abs
	adds r6, r4, #0
	cmp r0, #0
	bge _0803E05E
	adds r0, #7
_0803E05E:
	asrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r2, _0803E09C @ =0x081169F9
	ldrb r0, [r7, #0xc]
	subs r0, #1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r2, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	cmp r3, r1
	bls _0803E0A8
	ldr r0, _0803E0A4 @ =gUnk_03005220
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E0A8
	ldrb r0, [r7, #0x14]
	cmp r0, #3
	beq _0803E0A8
	movs r0, #3
	strb r0, [r7, #0xa]
	strb r0, [r7, #0x14]
	b _0803E6CA
	.align 2, 0
_0803E090: .4byte gUnk_03000830
_0803E094: .4byte gUnk_0300363C
_0803E098: .4byte gUnk_03005400
_0803E09C: .4byte 0x081169F9
_0803E0A0: .4byte gUnk_03002920
_0803E0A4: .4byte gUnk_03005220
_0803E0A8:
	ldr r2, _0803E0D4 @ =gUnk_03005400
	movs r0, #4
	strb r0, [r2, #0xa]
	lsls r3, r3, #2
	strb r3, [r2, #0x13]
	ldr r1, _0803E0D8 @ =gUnk_03002920
	subs r0, r6, r5
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrh r0, [r1, #2]
	strh r0, [r2, #6]
	ldrb r0, [r1, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0803E0DC
	ldrh r0, [r1]
	adds r0, r0, r3
	strh r0, [r2, #4]
	movs r0, #0x80
	strb r0, [r1, #8]
	b _0803E6CA
	.align 2, 0
_0803E0D4: .4byte gUnk_03005400
_0803E0D8: .4byte gUnk_03002920
_0803E0DC:
	ldrh r0, [r1]
	subs r0, r0, r3
	strh r0, [r2, #4]
	movs r0, #0
	strb r0, [r1, #8]
	b _0803E6CA
_0803E0E8:
	ldr r1, _0803E108 @ =gUnk_03000830
	ldr r0, _0803E10C @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #6
	beq _0803E1B2
	cmp r1, #5
	beq _0803E110
	adds r0, r5, #0
	movs r1, #6
	bl sub_08025B78
	b _0803E6CA
	.align 2, 0
_0803E108: .4byte gUnk_03000830
_0803E10C: .4byte gUnk_0300363C
_0803E110:
	ldr r1, _0803E140 @ =gUnk_03002920
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	mov r8, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _0803E148
	ldrh r0, [r3]
	adds r4, r0, #1
	strh r4, [r3]
	ldr r2, _0803E144 @ =gUnk_03004C20
	ldr r0, [r2]
	movs r1, #1
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _0803E160
	adds r0, r4, #1
	b _0803E15E
	.align 2, 0
_0803E140: .4byte gUnk_03002920
_0803E144: .4byte gUnk_03004C20
_0803E148:
	ldrh r4, [r3]
	subs r0, r4, #1
	strh r0, [r3]
	ldr r2, _0803E1A0 @ =gUnk_03004C20
	ldr r0, [r2]
	movs r1, #1
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _0803E160
	subs r0, r4, #2
_0803E15E:
	strh r0, [r3]
_0803E160:
	subs r0, r6, r5
	lsls r0, r0, #2
	add r0, r8
	ldrh r4, [r0]
	ldr r1, _0803E1A4 @ =0x08116888
	ldrb r0, [r7, #0xd]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r2, #0
	adds r0, #0x40
	cmp r4, r0
	blt _0803E18A
	movs r0, #0xc8
	lsls r0, r0, #1
	subs r0, r0, r2
	cmp r4, r0
	bgt _0803E18A
	b _0803E6CA
_0803E18A:
	movs r0, #0x43
	bl m4aSongNumStart
	ldr r1, _0803E1A8 @ =gUnk_03005400
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bne _0803E1AC
	movs r0, #5
	strb r0, [r1, #0xa]
	b _0803E6CA
	.align 2, 0
_0803E1A0: .4byte gUnk_03004C20
_0803E1A4: .4byte 0x08116888
_0803E1A8: .4byte gUnk_03005400
_0803E1AC:
	movs r0, #0xa
	strb r0, [r1, #0xa]
	b _0803E6CA
_0803E1B2:
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _0803E1BA
	b _0803E6CA
_0803E1BA:
	adds r0, r5, #0
	movs r1, #5
	bl sub_08025B78
	b _0803E6CA
_0803E1C4:
	ldr r1, _0803E1F0 @ =gUnk_03000830
	ldr r0, _0803E1F4 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #7
	bne _0803E1D8
	b _0803E334
_0803E1D8:
	cmp r0, #8
	beq _0803E1FC
	adds r0, r5, #0
	movs r1, #7
	bl sub_08025B78
	ldr r0, _0803E1F8 @ =gUnk_03005400
	ldrb r1, [r0, #8]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #8]
	b _0803E6CA
	.align 2, 0
_0803E1F0: .4byte gUnk_03000830
_0803E1F4: .4byte gUnk_0300363C
_0803E1F8: .4byte gUnk_03005400
_0803E1FC:
	ldr r1, _0803E22C @ =gUnk_03002920
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r3, [r0]
	mov sb, r3
	ldrb r3, [r0, #8]
	adds r0, r3, #0
	subs r0, #0x31
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r1
	adds r6, r2, #0
	cmp r0, #0x2e
	bls _0803E228
	adds r0, r3, #0
	adds r0, #0x4f
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2e
	bhi _0803E230
_0803E228:
	movs r2, #1
	b _0803E232
	.align 2, 0
_0803E22C: .4byte gUnk_03002920
_0803E230:
	movs r2, #2
_0803E232:
	subs r0, r6, r5
	lsls r0, r0, #2
	mov r4, r8
	adds r1, r0, r4
	ldrb r0, [r1, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0803E24A
	ldrb r0, [r1, #8]
	adds r0, r2, r0
	b _0803E24E
_0803E24A:
	ldrb r0, [r1, #8]
	subs r0, r0, r2
_0803E24E:
	strb r0, [r1, #8]
	subs r0, r6, r5
	lsls r0, r0, #2
	mov r7, r8
	adds r4, r0, r7
	ldr r2, _0803E310 @ =gUnk_03005400
	ldrb r1, [r2, #0x13]
	ldr r3, _0803E314 @ =gUnk_080D8E14
	ldrb r0, [r4, #8]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldrh r1, [r2, #4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrb r0, [r4, #8]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #4
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	strh r0, [r4, #2]
	ldrh r2, [r4]
	ldr r1, _0803E318 @ =0x08116888
	ldr r0, _0803E31C @ =gUnk_03004C20
	ldrb r0, [r0, #0xd]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r1, #0
	adds r0, #0x40
	cmp r2, r0
	blt _0803E2AE
	movs r0, #0xc8
	lsls r0, r0, #1
	subs r0, r0, r1
	cmp r2, r0
	ble _0803E2B2
_0803E2AE:
	mov r7, sb
	strh r7, [r4]
_0803E2B2:
	subs r0, r6, r5
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0803E2C4
	cmp r0, #0x80
	beq _0803E2C4
	b _0803E6CA
_0803E2C4:
	adds r0, r5, #0
	movs r1, #9
	bl sub_08025B78
	movs r0, #0x43
	bl m4aSongNumStart
	ldr r2, _0803E310 @ =gUnk_03005400
	ldrb r0, [r2, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xe]
	movs r1, #0
	movs r0, #2
	strb r0, [r2, #0xd]
	movs r0, #9
	strb r0, [r2, #0xb]
	movs r0, #0xb
	strb r0, [r2, #0xa]
	strb r1, [r2, #0x14]
	ldr r0, _0803E320 @ =0x0000038F
	add r0, r8
	movs r1, #3
	strb r1, [r0]
	ldr r0, _0803E324 @ =0x00000373
	add r0, r8
	strb r1, [r0]
	ldr r0, _0803E328 @ =0x00000357
	add r0, r8
	strb r1, [r0]
	ldr r0, _0803E32C @ =0x0000033B
	add r0, r8
	strb r1, [r0]
	ldr r0, _0803E330 @ =0x0000031F
	add r0, r8
	strb r1, [r0]
	b _0803E6CA
	.align 2, 0
_0803E310: .4byte gUnk_03005400
_0803E314: .4byte gUnk_080D8E14
_0803E318: .4byte 0x08116888
_0803E31C: .4byte gUnk_03004C20
_0803E320: .4byte 0x0000038F
_0803E324: .4byte 0x00000373
_0803E328: .4byte 0x00000357
_0803E32C: .4byte 0x0000033B
_0803E330: .4byte 0x0000031F
_0803E334:
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _0803E346
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _0803E346
	movs r0, #0x65
	bl m4aSongNumStart
_0803E346:
	ldr r1, _0803E364 @ =gUnk_03000830
	ldr r0, _0803E368 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _0803E35A
	b _0803E6CA
_0803E35A:
	adds r0, r5, #0
	movs r1, #8
	bl sub_08025B78
	b _0803E6CA
	.align 2, 0
_0803E364: .4byte gUnk_03000830
_0803E368: .4byte gUnk_0300363C
_0803E36C:
	ldr r1, _0803E388 @ =gUnk_03000830
	ldr r0, _0803E38C @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #2
	beq _0803E390
	adds r0, r5, #0
	movs r1, #2
	bl sub_08025B78
	b _0803E6CA
	.align 2, 0
_0803E388: .4byte gUnk_03000830
_0803E38C: .4byte gUnk_0300363C
_0803E390:
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	beq _0803E398
	b _0803E6CA
_0803E398:
	ldr r2, _0803E3BC @ =gUnk_03005400
	ldrb r0, [r2, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xe]
	movs r0, #3
	strb r0, [r2, #0xd]
	ldrb r1, [r2, #8]
	subs r0, #0x14
	ands r0, r1
	strb r0, [r2, #8]
	movs r0, #6
	strb r0, [r2, #0xa]
	movs r0, #0x65
	bl m4aSongNumStart
	b _0803E6CA
	.align 2, 0
_0803E3BC: .4byte gUnk_03005400
_0803E3C0:
	ldr r1, _0803E3FC @ =0x03003590
	ldrb r0, [r1, #4]
	adds r0, #8
	strb r0, [r1, #4]
	ldr r0, _0803E400 @ =gUnk_03002920
	lsls r1, r5, #3
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	subs r0, #4
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2f
	ble _0803E3E2
	b _0803E6CA
_0803E3E2:
	ldr r1, _0803E404 @ =gUnk_03005400
	movs r0, #7
	strb r0, [r1, #0xa]
	ldr r2, _0803E408 @ =gUnk_030007E0
	ldrb r1, [r2, #0xc]
	subs r0, #0x17
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0xc]
	movs r0, #0x8c
	strh r0, [r2, #8]
	b _0803E6CA
	.align 2, 0
_0803E3FC: .4byte 0x03003590
_0803E400: .4byte gUnk_03002920
_0803E404: .4byte gUnk_03005400
_0803E408: .4byte gUnk_030007E0
_0803E40C:
	ldr r4, _0803E460 @ =gUnk_03005400
	ldrh r0, [r4]
	cmp r0, #0
	bne _0803E424
	movs r0, #0x1e
	strb r0, [r4, #9]
	bl sub_0803D140
	movs r1, #0
	movs r0, #0x46
	strh r0, [r4]
	strb r1, [r4, #0x10]
_0803E424:
	ldrh r0, [r4]
	cmp r0, #0xa
	bls _0803E4A0
	ldr r1, _0803E464 @ =gUnk_03002920
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrh r0, [r1]
	mov r8, r1
	adds r6, r2, #0
	ldrh r1, [r3]
	cmp r0, r1
	bhs _0803E468
	ldrb r1, [r3, #0xc]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0803E468
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3, #0xc]
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	rsbs r0, r0, #0
	strb r0, [r4, #0xf]
	b _0803E4A6
	.align 2, 0
_0803E460: .4byte gUnk_03005400
_0803E464: .4byte gUnk_03002920
_0803E468:
	subs r0, r6, r5
	lsls r0, r0, #2
	mov r2, r8
	adds r1, r0, r2
	ldrh r0, [r2]
	ldr r3, _0803E49C @ =gUnk_03005400
	mov sb, r3
	ldrh r4, [r1]
	cmp r0, r4
	bls _0803E4A8
	ldrb r2, [r1, #0xc]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0803E4A8
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0xc]
	mov r7, sb
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	rsbs r0, r0, #0
	strb r0, [r7, #0xf]
	b _0803E4A8
	.align 2, 0
_0803E49C: .4byte gUnk_03005400
_0803E4A0:
	movs r0, #0
	strb r0, [r4, #0xf]
	strb r0, [r4, #0x11]
_0803E4A6:
	mov sb, r4
_0803E4A8:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #1
	beq _0803E4B2
	b _0803E6CA
_0803E4B2:
	ldrb r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r0
	movs r2, #0
	movs r0, #0
	mov r3, sb
	strh r0, [r3]
	movs r0, #8
	strb r0, [r3, #0xa]
	strb r2, [r3, #0x13]
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r3, #8]
	ldr r1, _0803E4DC @ =0x03003590
	movs r0, #4
	strb r0, [r1, #4]
	movs r0, #0x42
	bl m4aSongNumStart
	b _0803E6CA
	.align 2, 0
_0803E4DC: .4byte 0x03003590
_0803E4E0:
	ldr r2, _0803E5E4 @ =gUnk_03005400
	ldrb r1, [r2, #8]
	movs r7, #4
	adds r0, r7, #0
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	bne _0803E4F2
	b _0803E60C
_0803E4F2:
	ldrb r4, [r2, #0x13]
	cmp r4, #0
	beq _0803E4FA
	b _0803E60C
_0803E4FA:
	movs r0, #0x43
	bl m4aSongNumStart
	ldr r6, _0803E5E8 @ =gUnk_03002920
	ldr r1, _0803E5EC @ =0x0000038F
	adds r0, r6, r1
	strb r7, [r0]
	ldr r2, _0803E5F0 @ =0x00000373
	adds r0, r6, r2
	strb r7, [r0]
	ldr r3, _0803E5F4 @ =0x00000357
	adds r0, r6, r3
	strb r7, [r0]
	subs r1, #0x54
	adds r0, r6, r1
	strb r7, [r0]
	subs r2, #0x54
	adds r0, r6, r2
	strb r7, [r0]
	ldr r0, _0803E5F8 @ =0x03003590
	strb r4, [r0, #4]
	mov r3, sb
	strb r4, [r3, #9]
	movs r0, #0
	bl sub_0803D140
	movs r0, #0x14
	mov r4, sb
	strh r0, [r4]
	movs r0, #1
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0xe]
	movs r0, #5
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #8]
	subs r0, #0x46
	ands r0, r1
	strb r0, [r4, #8]
	ldr r1, _0803E5FC @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E568
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803E568
	ldrh r0, [r6, #2]
	subs r0, #0x30
	strh r0, [r6, #2]
_0803E568:
	ldr r2, _0803E600 @ =gUnk_030007E0
	ldrb r1, [r2, #0xc]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2, #0xc]
	movs r0, #0x78
	strh r0, [r2, #8]
	ldr r3, _0803E5E8 @ =gUnk_03002920
	movs r7, #0x96
	lsls r7, r7, #2
	adds r4, r3, r7
	ldrb r2, [r4]
	movs r1, #0xd
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4]
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r2, r3, r0
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r2]
	lsls r1, r5, #3
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #0x20
	movs r4, #0x93
	lsls r4, r4, #2
	adds r2, r3, r4
	strh r0, [r2]
	ldrh r0, [r1]
	subs r0, #0x20
	adds r7, #0x10
	adds r2, r3, r7
	strh r0, [r2]
	ldrh r0, [r1, #2]
	adds r0, #0xc
	adds r4, #2
	adds r2, r3, r4
	strh r0, [r2]
	ldrh r0, [r1, #2]
	adds r0, #0xc
	adds r7, #2
	adds r1, r3, r7
	strh r0, [r1]
	ldr r1, _0803E604 @ =0x0000025B
	adds r0, r3, r1
	movs r1, #0x19
	strb r1, [r0]
	ldr r2, _0803E608 @ =0x00000277
	adds r3, r3, r2
	strb r1, [r3]
	b _0803E6CA
	.align 2, 0
_0803E5E4: .4byte gUnk_03005400
_0803E5E8: .4byte gUnk_03002920
_0803E5EC: .4byte 0x0000038F
_0803E5F0: .4byte 0x00000373
_0803E5F4: .4byte 0x00000357
_0803E5F8: .4byte 0x03003590
_0803E5FC: .4byte gUnk_03005220
_0803E600: .4byte gUnk_030007E0
_0803E604: .4byte 0x0000025B
_0803E608: .4byte 0x00000277
_0803E60C:
	mov r3, sb
	ldrh r1, [r3]
	cmp r1, #0
	bne _0803E634
	ldrb r0, [r3, #0x13]
	cmp r0, #1
	bne _0803E634
	ldr r0, _0803E630 @ =0x03003590
	strb r1, [r0, #4]
	movs r0, #9
	strb r0, [r3, #0xa]
	movs r0, #0x3c
	strh r0, [r3]
	adds r0, r5, #0
	movs r1, #9
	bl sub_08025B78
	b _0803E6CA
	.align 2, 0
_0803E630: .4byte 0x03003590
_0803E634:
	ldr r2, _0803E644 @ =0x03003590
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	cmp r1, #0
	bne _0803E648
	strb r1, [r2, #4]
	b _0803E6CA
	.align 2, 0
_0803E644: .4byte 0x03003590
_0803E648:
	adds r0, #4
	strb r0, [r2, #4]
	b _0803E6CA
_0803E64E:
	ldr r4, _0803E67C @ =gUnk_03002920
	ldr r7, _0803E680 @ =0x00000223
	adds r0, r4, r7
	movs r1, #0x1c
	strb r1, [r0]
	ldr r2, _0803E684 @ =0x0000023F
	adds r0, r4, r2
	strb r1, [r0]
	ldr r1, _0803E688 @ =gUnk_03000830
	ldr r0, _0803E68C @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0x10
	beq _0803E690
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_08025B78
	b _0803E6CA
	.align 2, 0
_0803E67C: .4byte gUnk_03002920
_0803E680: .4byte 0x00000223
_0803E684: .4byte 0x0000023F
_0803E688: .4byte gUnk_03000830
_0803E68C: .4byte gUnk_0300363C
_0803E690:
	ldr r0, _0803E6B8 @ =gUnk_03005220
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E6CA
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	bne _0803E6CA
	ldr r2, _0803E6BC @ =gUnk_03005400
	ldrb r0, [r2, #0xe]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0xe]
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #3
	strb r1, [r0, #0xf]
	b _0803E6CA
	.align 2, 0
_0803E6B8: .4byte gUnk_03005220
_0803E6BC: .4byte gUnk_03005400

	thumb_func_start sub_0803E6C0
sub_0803E6C0: @ 0x0803E6C0
	cmp r0, #3
	bne _0803E6CA
	adds r0, r5, #0
	bl sub_0803CF08
_0803E6CA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803E6D8
sub_0803E6D8: @ 0x0803E6D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	ldr r2, _0803E72C @ =gUnk_03005400
	movs r1, #0
	strb r1, [r2, #0x14]
	movs r3, #0
	ldr r1, _0803E730 @ =gUnk_03002920
	str r1, [sp]
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	movs r5, #0xfc
	lsls r5, r5, #2
	adds r2, r1, r5
	movs r6, #0xbd
	lsls r6, r6, #2
	adds r1, r1, r6
_0803E702:
	strb r4, [r2, #0xf]
	strb r0, [r1, #0xf]
	adds r2, #0x1c
	adds r1, #0x1c
	adds r3, #1
	cmp r3, #8
	bls _0803E702
	cmp r4, #0
	beq _0803E716
	b _0803E884
_0803E716:
	ldr r0, _0803E734 @ =gUnk_03004C20
	ldrb r0, [r0, #0xe]
	subs r0, #1
	cmp r0, #4
	bhi _0803E79E
	lsls r0, r0, #2
	ldr r1, _0803E738 @ =_0803E73C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803E72C: .4byte gUnk_03005400
_0803E730: .4byte gUnk_03002920
_0803E734: .4byte gUnk_03004C20
_0803E738: .4byte _0803E73C
_0803E73C: @ jump table
	.4byte _0803E750 @ case 0
	.4byte _0803E75C @ case 1
	.4byte _0803E76C @ case 2
	.4byte _0803E780 @ case 3
	.4byte _0803E790 @ case 4
_0803E750:
	ldr r1, _0803E758 @ =0x03000790
	movs r0, #0x48
	b _0803E770
	.align 2, 0
_0803E758: .4byte 0x03000790
_0803E75C:
	ldr r0, _0803E768 @ =0x03000790
	movs r1, #0x68
	strh r1, [r0, #8]
	strh r1, [r0, #4]
	movs r1, #0x48
	b _0803E79A
	.align 2, 0
_0803E768: .4byte 0x03000790
_0803E76C:
	ldr r1, _0803E77C @ =0x03000790
	movs r0, #0x68
_0803E770:
	strh r0, [r1, #8]
	strh r0, [r1, #4]
	strh r0, [r1, #0x18]
	strh r0, [r1, #0x14]
	b _0803E79E
	.align 2, 0
_0803E77C: .4byte 0x03000790
_0803E780:
	ldr r0, _0803E78C @ =0x03000790
	movs r1, #0x88
	strh r1, [r0, #8]
	strh r1, [r0, #4]
	movs r1, #0x48
	b _0803E79A
	.align 2, 0
_0803E78C: .4byte 0x03000790
_0803E790:
	ldr r0, _0803E86C @ =0x03000790
	movs r1, #0x48
	strh r1, [r0, #8]
	strh r1, [r0, #4]
	movs r1, #0x88
_0803E79A:
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x14]
_0803E79E:
	movs r3, #0
	ldr r0, _0803E870 @ =gUnk_03002920
	ldr r7, _0803E874 @ =0x080E2B64
	mov sl, r7
	ldr r2, _0803E878 @ =gUnk_03004C20
	ldr r1, _0803E87C @ =0x00001130
	mov sb, r1
	ldr r4, _0803E880 @ =0x00008980
	mov r8, r4
	movs r6, #0xfc
	lsls r6, r6, #2
	adds r5, r0, r6
	movs r7, #0xfd
	lsls r7, r7, #2
	str r7, [sp, #4]
	movs r1, #0xbd
	lsls r1, r1, #2
	adds r4, r0, r1
	movs r6, #0x9a
	lsls r6, r6, #2
	ldr r7, _0803E86C @ =0x03000790
	mov ip, r7
_0803E7CA:
	ldrb r1, [r2, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r0, [r2, #0xc]
	subs r0, #1
	mov r7, sb
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	mov r7, r8
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, r1, r0
	add r1, sl
	ldrh r0, [r1]
	strh r0, [r4]
	ldrb r1, [r2, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	ldr r0, [sp, #4]
	adds r1, r1, r0
	ldrb r0, [r2, #0xc]
	subs r0, #1
	mov r7, sb
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	mov r7, r8
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, r1, r0
	add r1, sl
	ldrh r0, [r1]
	strh r0, [r5]
	mov r1, ip
	ldrh r0, [r1, #4]
	strh r0, [r4, #2]
	ldrh r0, [r1, #0x14]
	strh r0, [r5, #2]
	movs r0, #1
	strb r0, [r5, #0x10]
	strb r0, [r4, #0x10]
	adds r5, #0x1c
	ldr r7, [sp, #4]
	adds r7, #0x2c
	str r7, [sp, #4]
	adds r4, #0x1c
	adds r6, #0x2c
	adds r3, #1
	cmp r3, #8
	bls _0803E7CA
	ldr r0, [sp]
	movs r2, #0xbd
	lsls r2, r2, #2
	adds r1, r0, r2
	ldrh r0, [r1]
	subs r0, #0x10
	ldr r4, _0803E86C @ =0x03000790
	strh r0, [r4]
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r4, #2]
	ldr r5, [sp]
	movs r6, #0xfc
	lsls r6, r6, #2
	adds r1, r5, r6
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r4, #0x10]
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r4, #0x12]
	movs r0, #0x68
	bl m4aSongNumStart
	b _0803E8B2
	.align 2, 0
_0803E86C: .4byte 0x03000790
_0803E870: .4byte gUnk_03002920
_0803E874: .4byte 0x080E2B64
_0803E878: .4byte gUnk_03004C20
_0803E87C: .4byte 0x00001130
_0803E880: .4byte 0x00008980
_0803E884:
	ldr r0, _0803E8C4 @ =gUnk_03005220
	adds r2, r0, #0
	adds r2, #0x3b
	movs r1, #0
	strb r1, [r2]
	adds r0, #0x3a
	strb r1, [r0]
	movs r3, #0
	ldr r0, _0803E8C8 @ =gUnk_03002920
	movs r2, #0
	movs r7, #0xfc
	lsls r7, r7, #2
	adds r1, r0, r7
	movs r4, #0xbd
	lsls r4, r4, #2
	adds r0, r0, r4
_0803E8A4:
	strb r2, [r1, #0x10]
	strb r2, [r0, #0x10]
	adds r1, #0x1c
	adds r0, #0x1c
	adds r3, #1
	cmp r3, #8
	bls _0803E8A4
_0803E8B2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E8C4: .4byte gUnk_03005220
_0803E8C8: .4byte gUnk_03002920

	thumb_func_start sub_0803E8CC
sub_0803E8CC: @ 0x0803E8CC
	push {r4, r5, r6, lr}
	ldr r0, _0803E8FC @ =gUnk_03005400
	ldrb r4, [r0, #0xc]
	subs r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl thunk_GetRandomValue
	ldr r6, _0803E900 @ =gUnk_03004C20
	movs r5, #1
	ands r5, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #5
	subs r1, r1, r4
	bl __modsi3
	adds r5, r5, r0
	adds r5, #1
	strb r5, [r6, #0xe]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803E8FC: .4byte gUnk_03005400
_0803E900: .4byte gUnk_03004C20

	thumb_func_start sub_0803E904
sub_0803E904: @ 0x0803E904
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r6, _0803E99C @ =gUnk_03005400
	ldrb r0, [r6, #0xc]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r2, _0803E9A0 @ =gUnk_03002920
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r5, r0, r2
	ldrb r1, [r5, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5, #0xe]
	ldr r3, _0803E9A4 @ =0x03003590
	mov r8, r3
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r0, r2
	mov sb, r0
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r2, #1
	mov sl, r2
	mov r3, sl
	ands r1, r3
	mov r0, r8
	ldrb r2, [r0, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #5]
	ldrh r0, [r6]
	cmp r0, #0
	beq _0803E974
	subs r0, #1
	strh r0, [r6]
_0803E974:
	ldr r0, _0803E9A8 @ =0x03003620
	ldr r1, [r0]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl sub_0803D4AC
	ldrb r0, [r5, #0xf]
	cmp r0, #0xe
	beq _0803E988
	b _0803EAFC
_0803E988:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _0803EA2C
	cmp r0, #1
	bgt _0803E9AC
	cmp r0, #0
	beq _0803E9B6
	bl _0803F666
	.align 2, 0
_0803E99C: .4byte gUnk_03005400
_0803E9A0: .4byte gUnk_03002920
_0803E9A4: .4byte 0x03003590
_0803E9A8: .4byte 0x03003620
_0803E9AC:
	cmp r0, #2
	bne _0803E9B2
	b _0803EAD0
_0803E9B2:
	bl _0803F666
_0803E9B6:
	ldr r0, _0803EA24 @ =gUnk_030007E0
	mov r2, sl
	strb r2, [r0, #0xc]
	movs r4, #0
	movs r1, #0x78
	strh r1, [r0, #6]
	strh r1, [r0]
	movs r1, #0x50
	strh r1, [r0, #8]
	strh r1, [r0, #2]
	movs r1, #0x40
	strh r1, [r0, #0xa]
	strh r1, [r0, #4]
	movs r0, #0
	movs r1, #0
	bl sub_08025B78
	movs r0, #0x12
	movs r1, #2
	bl sub_08025B78
	movs r0, #0x17
	movs r1, #0
	bl sub_08025B78
	movs r0, #0x19
	movs r1, #1
	bl sub_08025B78
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0803EA28 @ =0x0000FF40
	mov r2, r8
	strh r0, [r2, #2]
	strh r0, [r2]
	ldrb r0, [r6, #8]
	mov r3, sl
	orrs r0, r3
	strb r0, [r6, #8]
	strb r4, [r6, #0x13]
	movs r0, #1
	strb r0, [r6, #0xa]
	ldrb r0, [r6, #0xe]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r6, #0xe]
	bl _0803F666
	.align 2, 0
_0803EA24: .4byte gUnk_030007E0
_0803EA28: .4byte 0x0000FF40
_0803EA2C:
	ldrb r0, [r6, #0x13]
	adds r0, #4
	strb r0, [r6, #0x13]
	ldr r4, _0803EAB8 @ =0x080E2B64
	adds r1, r7, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r3, _0803EABC @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r1, _0803EAC0 @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r1, _0803EAC4 @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r1, _0803EAC8 @ =gUnk_080D8E14
	ldrb r0, [r6, #0x13]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #4
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	strh r0, [r5, #2]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r2, _0803EACC @ =0x081168E2
	ldrb r0, [r6, #0xc]
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r1, r0
	bge _0803EA8C
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
_0803EA8C:
	mov r3, r8
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldrb r0, [r6, #0xc]
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r1, r0
	beq _0803EAA0
	bl _0803F666
_0803EAA0:
	ldrb r0, [r6, #0x13]
	cmp r0, #0x40
	beq _0803EAAA
	bl _0803F666
_0803EAAA:
	movs r0, #0x1c
	bl sub_0803E6D8
	movs r0, #2
	strb r0, [r6, #0xa]
	bl _0803F666
	.align 2, 0
_0803EAB8: .4byte 0x080E2B64
_0803EABC: .4byte gUnk_03004C20
_0803EAC0: .4byte 0x00001130
_0803EAC4: .4byte 0x00008980
_0803EAC8: .4byte gUnk_080D8E14
_0803EACC: .4byte 0x081168E2
_0803EAD0:
	ldrb r1, [r6, #8]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0
	strb r1, [r6, #0x13]
	mov r2, sl
	orrs r0, r2
	strb r0, [r6, #8]
	movs r0, #0x80
	strb r0, [r5, #8]
	movs r0, #6
	strb r0, [r6, #0xa]
	strb r1, [r5, #0xf]
	mov r3, sb
	ldrb r1, [r3]
	subs r0, #0xa
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	bl _0803F666
_0803EAFC:
	cmp r0, #0
	beq _0803EB04
	bl sub_0803F65C
_0803EB04:
	ldrb r0, [r6, #0xa]
	cmp r0, #0xa
	bls _0803EB0E
	bl _0803F666
_0803EB0E:
	lsls r0, r0, #2
	ldr r1, _0803EB18 @ =_0803EB1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803EB18: .4byte _0803EB1C
_0803EB1C: @ jump table
	.4byte _0803EB48 @ case 0
	.4byte _0803EBAC @ case 1
	.4byte _0803EE30 @ case 2
	.4byte _0803EFFC @ case 3
	.4byte _0803F384 @ case 4
	.4byte _0803F3C0 @ case 5
	.4byte _0803F18C @ case 6
	.4byte _0803F250 @ case 7
	.4byte _0803F320 @ case 8
	.4byte _0803F414 @ case 9
	.4byte _0803F0E0 @ case 10
_0803EB48:
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _0803EB78
	ldr r0, _0803EB74 @ =gUnk_03002920
	lsls r1, r7, #3
	subs r1, r1, r7
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r2, [r1, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0xc]
	b _0803EB90
	.align 2, 0
_0803EB74: .4byte gUnk_03002920
_0803EB78:
	ldr r1, _0803EBA4 @ =gUnk_03002920
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r2, [r0, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	strb r1, [r0, #0xc]
_0803EB90:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08025B78
	ldr r1, _0803EBA8 @ =gUnk_03005400
	movs r0, #2
	strb r0, [r1, #0xa]
	bl _0803F666
	.align 2, 0
_0803EBA4: .4byte gUnk_03002920
_0803EBA8: .4byte gUnk_03005400
_0803EBAC:
	ldr r2, _0803ECF4 @ =0x030007CC
	ldr r0, _0803ECF8 @ =0x081168E2
	ldr r1, _0803ECFC @ =gUnk_03005400
	ldrb r3, [r1, #0xc]
	adds r0, r3, r0
	ldrb r4, [r2]
	mov r8, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0803EBC8
	cmp r3, #0
	beq _0803EBC8
	adds r0, r4, #2
	strb r0, [r2]
_0803EBC8:
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	bne _0803EBE2
	movs r0, #0x3c
	strh r0, [r1]
	ldrb r0, [r1, #8]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	mov r2, r8
	strb r0, [r2, #8]
_0803EBE2:
	mov r3, r8
	ldrh r0, [r3]
	cmp r0, #1
	beq _0803EBEC
	b _0803ED70
_0803EBEC:
	ldr r5, _0803ED00 @ =0x040000D4
	ldr r0, _0803ED04 @ =0x08078628
	str r0, [r5]
	ldr r3, _0803ED08 @ =gUnk_0818B8E0
	ldr r2, _0803ED0C @ =gUnk_03004C20
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
	lsls r1, r7, #3
	adds r0, r1, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r2, _0803ED10 @ =0x05000200
	adds r0, r0, r2
	str r0, [r5, #4]
	ldr r0, _0803ED14 @ =0x80000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	ldr r4, _0803ED18 @ =gUnk_03002920
	mov r8, r1
	cmp r0, #0
	bge _0803EC38
	adds r1, r2, #0
_0803EC30:
	ldr r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803EC30
_0803EC38:
	ldr r3, _0803ED1C @ =0x00000223
	adds r5, r4, r3
	ldrb r0, [r5]
	cmp r0, #0x1c
	beq _0803EC5C
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r2, _0803ED20 @ =0x00000216
	adds r1, r4, r2
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x13
	bl sub_0801E664
	movs r0, #0x1c
	strb r0, [r5]
_0803EC5C:
	ldr r3, _0803ED24 @ =0x0000023F
	adds r5, r4, r3
	ldrb r0, [r5]
	cmp r0, #0x1c
	beq _0803EC80
	movs r1, #0x8c
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r2, _0803ED28 @ =0x00000232
	adds r1, r4, r2
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x14
	bl sub_0801E664
	movs r0, #0x1c
	strb r0, [r5]
_0803EC80:
	ldr r3, _0803ED2C @ =0x0000025B
	adds r5, r4, r3
	ldrb r0, [r5]
	cmp r0, #0x1c
	beq _0803ECA4
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r2, _0803ED30 @ =0x0000024E
	adds r1, r4, r2
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x15
	bl sub_0801E664
	movs r0, #0x1c
	strb r0, [r5]
_0803ECA4:
	ldr r3, _0803ED34 @ =0x00000277
	adds r5, r4, r3
	ldrb r0, [r5]
	cmp r0, #0x1c
	beq _0803ECC8
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r2, _0803ED38 @ =0x0000026A
	adds r1, r4, r2
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x16
	bl sub_0801E664
	movs r0, #0x1c
	strb r0, [r5]
_0803ECC8:
	ldr r5, _0803ECFC @ =gUnk_03005400
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	bne _0803ECD6
	movs r0, #0x1c
	bl sub_0803E6D8
_0803ECD6:
	ldrb r6, [r5, #0xc]
	cmp r6, #0
	bne _0803ED3C
	movs r0, #0x1c
	bl sub_0803E6D8
	movs r0, #9
	strb r0, [r5, #0xa]
	strb r6, [r5, #0x13]
	adds r0, r7, #0
	movs r1, #6
	bl sub_08025B78
	bl _0803F666
	.align 2, 0
_0803ECF4: .4byte 0x030007CC
_0803ECF8: .4byte 0x081168E2
_0803ECFC: .4byte gUnk_03005400
_0803ED00: .4byte 0x040000D4
_0803ED04: .4byte 0x08078628
_0803ED08: .4byte gUnk_0818B8E0
_0803ED0C: .4byte gUnk_03004C20
_0803ED10: .4byte 0x05000200
_0803ED14: .4byte 0x80000010
_0803ED18: .4byte gUnk_03002920
_0803ED1C: .4byte 0x00000223
_0803ED20: .4byte 0x00000216
_0803ED24: .4byte 0x0000023F
_0803ED28: .4byte 0x00000232
_0803ED2C: .4byte 0x0000025B
_0803ED30: .4byte 0x0000024E
_0803ED34: .4byte 0x00000277
_0803ED38: .4byte 0x0000026A
_0803ED3C:
	ldr r1, _0803ED6C @ =0x08116A02
	ldrb r2, [r5, #0xc]
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r1, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0x14]
	mov r3, r8
	subs r0, r3, r7
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	strb r0, [r5, #0x16]
	movs r0, #4
	strb r0, [r5, #0xa]
	ldrb r1, [r5, #8]
	subs r0, #6
	ands r0, r1
	strb r0, [r5, #8]
	bl _0803F666
	.align 2, 0
_0803ED6C: .4byte 0x08116A02
_0803ED70:
	ldr r4, _0803EE10 @ =gUnk_03004C20
	ldr r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	cmp r0, #5
	bne _0803EDC2
	ldr r3, _0803EE14 @ =0x040000D4
	ldr r0, _0803EE18 @ =0x08078628
	str r0, [r3]
	ldr r2, _0803EE1C @ =gUnk_0818B8E0
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r0, #4]
	lsls r0, r7, #3
	adds r0, r0, r1
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r2, _0803EE20 @ =0x05000200
	adds r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _0803EE24 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803EDC2
_0803EDBA:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803EDBA
_0803EDC2:
	ldr r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	cmp r0, #0
	beq _0803EDD2
	bl _0803F666
_0803EDD2:
	mov r1, sp
	ldr r3, _0803EE28 @ =0x0000FFFF
	adds r0, r3, #0
	strh r0, [r1]
	ldr r2, _0803EE14 @ =0x040000D4
	str r1, [r2]
	ldr r3, _0803EE1C @ =gUnk_0818B8E0
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r4, [r4, #0xc]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, [r0, #4]
	lsls r0, r7, #3
	adds r0, r0, r1
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r1, _0803EE20 @ =0x05000200
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0803EE2C @ =0x81000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	bl _0803F666
	.align 2, 0
_0803EE10: .4byte gUnk_03004C20
_0803EE14: .4byte 0x040000D4
_0803EE18: .4byte 0x08078628
_0803EE1C: .4byte gUnk_0818B8E0
_0803EE20: .4byte 0x05000200
_0803EE24: .4byte 0x80000010
_0803EE28: .4byte 0x0000FFFF
_0803EE2C: .4byte 0x81000010
_0803EE30:
	ldr r1, _0803EE84 @ =gUnk_03000830
	ldr r0, _0803EE88 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803EE4A
	adds r0, r7, #0
	movs r1, #0
	bl sub_08025B78
_0803EE4A:
	ldr r2, _0803EE8C @ =gUnk_03004C20
	ldr r1, [r2]
	movs r0, #1
	ands r1, r0
	lsls r3, r7, #3
	mov r8, r3
	adds r4, r2, #0
	ldr r3, _0803EE90 @ =0x08116A02
	cmp r1, #0
	bne _0803EEAE
	ldr r0, _0803EE94 @ =gUnk_03002920
	mov r2, r8
	subs r1, r2, r7
	lsls r1, r1, #2
	adds r2, r1, r0
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0803EE9C
	ldr r0, _0803EE98 @ =gUnk_03005400
	ldrb r0, [r0, #0xc]
	lsls r1, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r2]
	ldrb r1, [r1]
	adds r0, r0, r1
	b _0803EEAC
	.align 2, 0
_0803EE84: .4byte gUnk_03000830
_0803EE88: .4byte gUnk_0300363C
_0803EE8C: .4byte gUnk_03004C20
_0803EE90: .4byte 0x08116A02
_0803EE94: .4byte gUnk_03002920
_0803EE98: .4byte gUnk_03005400
_0803EE9C:
	ldr r0, _0803EF28 @ =gUnk_03005400
	ldrb r1, [r0, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r1, [r0]
	ldrh r0, [r2]
	subs r0, r0, r1
_0803EEAC:
	strh r0, [r2]
_0803EEAE:
	ldr r6, _0803EF28 @ =gUnk_03005400
	ldrb r1, [r6, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r3, [r6, #0x13]
	adds r0, r0, r3
	strb r0, [r6, #0x13]
	ldr r1, _0803EF2C @ =gUnk_03002920
	mov r2, r8
	subs r0, r2, r7
	lsls r0, r0, #2
	adds r5, r0, r1
	ldr r3, _0803EF30 @ =0x080E2B64
	adds r1, r7, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r1, _0803EF34 @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r1, _0803EF38 @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	adds r2, r2, r3
	ldr r1, _0803EF3C @ =gUnk_080D8E14
	ldrb r0, [r6, #0x13]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	asrs r0, r0, #3
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	strh r0, [r5, #2]
	ldrb r0, [r6, #0x13]
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0803EF14
	movs r0, #0x66
	bl m4aSongNumStart
_0803EF14:
	ldrh r1, [r5]
	cmp r1, #0x5f
	bhi _0803EF40
	ldrb r0, [r5, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r5, #0xc]
	b _0803EF56
	.align 2, 0
_0803EF28: .4byte gUnk_03005400
_0803EF2C: .4byte gUnk_03002920
_0803EF30: .4byte 0x080E2B64
_0803EF34: .4byte 0x00001130
_0803EF38: .4byte 0x00008980
_0803EF3C: .4byte gUnk_080D8E14
_0803EF40:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	bls _0803EF5C
	ldrb r1, [r5, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r5, #0xc]
_0803EF56:
	ldrb r0, [r6, #0x14]
	adds r0, #1
	strb r0, [r6, #0x14]
_0803EF5C:
	ldr r1, _0803EFA4 @ =gUnk_03002920
	mov r2, r8
	subs r0, r2, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #0xe7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x12
	bhi _0803EFB4
	ldr r3, _0803EFA8 @ =0x00000223
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _0803EFB4
	ldr r2, _0803EFAC @ =0x0000023F
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _0803EFB4
	adds r3, #0x38
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _0803EFB4
	adds r2, #0x38
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _0803EFB4
	ldr r1, _0803EFB0 @ =gUnk_03005400
	movs r0, #3
	strb r0, [r1, #0xa]
	b _0803F666
	.align 2, 0
_0803EFA4: .4byte gUnk_03002920
_0803EFA8: .4byte 0x00000223
_0803EFAC: .4byte 0x0000023F
_0803EFB0: .4byte gUnk_03005400
_0803EFB4:
	ldr r4, _0803EFF0 @ =gUnk_03005400
	ldrb r0, [r4, #0x14]
	cmp r0, #3
	beq _0803EFBE
	b _0803F666
_0803EFBE:
	ldr r3, [sp, #0x14]
	cmp r3, #2
	bne _0803EFC6
	b _0803F666
_0803EFC6:
	movs r0, #0x1c
	bl sub_0803E6D8
	ldr r1, _0803EFF4 @ =gUnk_03002920
	mov r2, r8
	subs r0, r2, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x50
	strb r1, [r0, #8]
	movs r0, #2
	strb r0, [r4, #0x15]
	movs r0, #0xa
	strb r0, [r4, #0xa]
	ldr r1, _0803EFF8 @ =gUnk_030007E0
	movs r0, #6
	strb r0, [r1, #0xc]
	movs r0, #0x78
	strh r0, [r1, #6]
	movs r0, #0x3c
	b _0803F164
	.align 2, 0
_0803EFF0: .4byte gUnk_03005400
_0803EFF4: .4byte gUnk_03002920
_0803EFF8: .4byte gUnk_030007E0
_0803EFFC:
	add r3, sp, #4
	ldr r1, _0803F0C8 @ =gUnk_03002920
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	mov sl, r0
	ldrh r0, [r0]
	strh r0, [r3]
	mov r1, sl
	ldrh r0, [r1, #2]
	strh r0, [r3, #2]
	ldr r2, _0803F0CC @ =0x080E2B64
	mov sb, r2
	adds r1, r7, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r4, r1, #0
	muls r4, r0, r4
	ldr r5, _0803F0D0 @ =gUnk_03004C20
	ldrb r0, [r5, #0xc]
	subs r0, #1
	ldr r1, _0803F0D4 @ =0x00001130
	mov r8, r1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r4, r0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	ldr r6, _0803F0D8 @ =0x00008980
	muls r1, r6, r1
	adds r0, r0, r1
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r3, #4]
	ldrb r0, [r5, #0xc]
	subs r0, #1
	mov r1, r8
	muls r1, r0, r1
	adds r1, r4, r1
	ldrb r0, [r5, #0xd]
	subs r0, #1
	muls r0, r6, r0
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1, #2]
	strh r0, [r3, #6]
	movs r0, #2
	strb r0, [r3, #9]
	strb r0, [r3, #8]
	add r0, sp, #0x10
	ldr r1, [sp, #4]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	bl sub_0800BEF0
	ldr r1, [sp, #0x10]
	mov r3, sl
	strh r1, [r3]
	lsrs r2, r1, #0x10
	strh r2, [r3, #2]
	ldrb r0, [r5, #0xc]
	subs r0, #1
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r4, r4, r0
	ldrb r0, [r5, #0xd]
	subs r0, #1
	muls r0, r6, r0
	adds r4, r4, r0
	add r4, sb
	ldrh r0, [r4]
	lsls r1, r1, #0x10
	lsrs r0, r0, #3
	lsrs r1, r1, #0x13
	cmp r0, r1
	beq _0803F09C
	b _0803F666
_0803F09C:
	ldrh r0, [r4, #2]
	lsrs r0, r0, #3
	lsrs r1, r2, #3
	cmp r0, r1
	beq _0803F0A8
	b _0803F666
_0803F0A8:
	ldr r4, _0803F0DC @ =gUnk_03005400
	ldrb r1, [r4, #8]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #8]
	adds r0, r7, #0
	movs r1, #2
	bl sub_08025B78
	movs r0, #0x78
	mov r1, sl
	strb r0, [r1, #8]
	movs r0, #6
	strb r0, [r4, #0xa]
	b _0803F666
	.align 2, 0
_0803F0C8: .4byte gUnk_03002920
_0803F0CC: .4byte 0x080E2B64
_0803F0D0: .4byte gUnk_03004C20
_0803F0D4: .4byte 0x00001130
_0803F0D8: .4byte 0x00008980
_0803F0DC: .4byte gUnk_03005400
_0803F0E0:
	ldr r6, _0803F16C @ =gUnk_03005400
	ldrb r0, [r6, #0x13]
	adds r0, #2
	strb r0, [r6, #0x13]
	ldr r1, _0803F170 @ =gUnk_03002920
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r5, r0, r1
	ldr r4, _0803F174 @ =0x080E2B64
	adds r1, r7, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r3, _0803F178 @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r1, _0803F17C @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r1, _0803F180 @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r1, _0803F184 @ =gUnk_080D8E14
	ldrb r0, [r6, #0x13]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #7
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	strh r0, [r5, #2]
	ldrb r0, [r5, #8]
	cmp r0, #0x32
	bne _0803F140
	bl sub_0803E8CC
	movs r0, #0
	bl sub_0803E6D8
_0803F140:
	ldrb r0, [r5, #8]
	subs r0, #1
	strb r0, [r5, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0803F150
	b _0803F666
_0803F150:
	movs r0, #0
	strb r0, [r6, #0x14]
	ldrb r0, [r6, #0x15]
	strb r0, [r6, #0xa]
	ldr r1, _0803F188 @ =gUnk_030007E0
	movs r0, #1
	strb r0, [r1, #0xc]
	movs r0, #0x78
	strh r0, [r1, #6]
	movs r0, #0x50
_0803F164:
	strh r0, [r1, #8]
	movs r0, #0x40
	strh r0, [r1, #0xa]
	b _0803F666
	.align 2, 0
_0803F16C: .4byte gUnk_03005400
_0803F170: .4byte gUnk_03002920
_0803F174: .4byte 0x080E2B64
_0803F178: .4byte gUnk_03004C20
_0803F17C: .4byte 0x00001130
_0803F180: .4byte 0x00008980
_0803F184: .4byte gUnk_080D8E14
_0803F188: .4byte gUnk_030007E0
_0803F18C:
	ldr r1, _0803F1CC @ =gUnk_030007E0
	movs r0, #0x80
	strh r0, [r1, #0xa]
	ldr r2, _0803F1D0 @ =gUnk_03005400
	ldrb r1, [r2, #8]
	subs r0, #0x82
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #8]
	ldrb r0, [r2, #0x15]
	adds r0, #1
	strb r0, [r2, #0x15]
	movs r0, #0x15
	ldrsb r0, [r2, r0]
	mov r8, r2
	cmp r0, #0
	bge _0803F1B2
	adds r0, #7
_0803F1B2:
	asrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803F1D8
	ldr r0, _0803F1D4 @ =0x03003590
	ldrh r1, [r0]
	adds r1, #8
	strh r1, [r0]
	ldrh r1, [r0, #2]
	adds r1, #8
	b _0803F1E4
	.align 2, 0
_0803F1CC: .4byte gUnk_030007E0
_0803F1D0: .4byte gUnk_03005400
_0803F1D4: .4byte 0x03003590
_0803F1D8:
	ldr r0, _0803F240 @ =0x03003590
	ldrh r1, [r0]
	subs r1, #8
	strh r1, [r0]
	ldrh r1, [r0, #2]
	subs r1, #8
_0803F1E4:
	strh r1, [r0, #2]
	mov r1, r8
	ldrb r0, [r1, #0x15]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0803F1F8
	movs r0, #0x69
	bl m4aSongNumStart
_0803F1F8:
	ldr r5, _0803F244 @ =gUnk_03002920
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrb r0, [r4, #8]
	subs r0, #1
	strb r0, [r4, #8]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803F210
	b _0803F666
_0803F210:
	movs r0, #0x1c
	bl sub_0803E6D8
	adds r0, r7, #0
	movs r1, #5
	bl sub_08025B78
	movs r0, #0xb4
	strb r0, [r4, #8]
	movs r0, #7
	mov r2, r8
	strb r0, [r2, #0xa]
	movs r0, #0x69
	bl m4aSongNumStart
	ldr r3, _0803F248 @ =0x00000277
	adds r0, r5, r3
	movs r1, #3
	strb r1, [r0]
	ldr r2, _0803F24C @ =0x0000025B
	adds r0, r5, r2
	strb r1, [r0]
	b _0803F666
	.align 2, 0
_0803F240: .4byte 0x03003590
_0803F244: .4byte gUnk_03002920
_0803F248: .4byte 0x00000277
_0803F24C: .4byte 0x0000025B
_0803F250:
	ldr r1, _0803F27C @ =gUnk_03005400
	ldrb r0, [r1, #0x15]
	adds r0, #1
	strb r0, [r1, #0x15]
	movs r0, #0x15
	ldrsb r0, [r1, r0]
	mov r8, r1
	cmp r0, #0
	bge _0803F264
	adds r0, #7
_0803F264:
	asrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803F284
	ldr r0, _0803F280 @ =0x03003590
	ldrh r1, [r0]
	adds r1, #9
	strh r1, [r0]
	ldrh r1, [r0, #2]
	adds r1, #9
	b _0803F290
	.align 2, 0
_0803F27C: .4byte gUnk_03005400
_0803F280: .4byte 0x03003590
_0803F284:
	ldr r0, _0803F30C @ =0x03003590
	ldrh r1, [r0]
	subs r1, #9
	strh r1, [r0]
	ldrh r1, [r0, #2]
	subs r1, #9
_0803F290:
	strh r1, [r0, #2]
	adds r6, r0, #0
	ldr r5, _0803F310 @ =gUnk_03002920
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrb r0, [r4, #8]
	subs r0, #1
	strb r0, [r4, #8]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _0803F2AE
	b _0803F666
_0803F2AE:
	ldr r0, _0803F314 @ =0x030007CC
	mov sb, r0
	ldr r1, _0803F318 @ =0x081168E2
	mov r2, r8
	ldrb r0, [r2, #0xc]
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r1, sb
	strb r0, [r1]
	strh r3, [r6, #2]
	strh r3, [r6]
	ldrh r1, [r4]
	movs r2, #0x9a
	lsls r2, r2, #2
	adds r0, r5, r2
	strh r1, [r0]
	ldrh r1, [r4]
	movs r3, #0x93
	lsls r3, r3, #2
	adds r0, r5, r3
	strh r1, [r0]
	ldrh r0, [r4, #2]
	subs r0, #0x3c
	adds r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	adds r3, #2
	adds r1, r5, r3
	strh r0, [r1]
	ldr r1, _0803F31C @ =0x00000277
	adds r0, r5, r1
	movs r1, #0x19
	strb r1, [r0]
	subs r2, #0xf
	adds r0, r5, r2
	strb r1, [r0]
	adds r0, r7, #0
	movs r1, #6
	bl sub_08025B78
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r0, #8
	mov r3, r8
	strb r0, [r3, #0xa]
	b _0803F666
	.align 2, 0
_0803F30C: .4byte 0x03003590
_0803F310: .4byte gUnk_03002920
_0803F314: .4byte 0x030007CC
_0803F318: .4byte 0x081168E2
_0803F31C: .4byte 0x00000277
_0803F320:
	ldr r1, _0803F370 @ =gUnk_03000830
	ldr r0, _0803F374 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _0803F334
	b _0803F666
_0803F334:
	ldr r1, _0803F378 @ =gUnk_030007E0
	movs r4, #0
	movs r0, #0x40
	strh r0, [r1, #0xa]
	movs r0, #0x1c
	bl sub_0803E6D8
	movs r0, #0x12
	movs r1, #2
	bl sub_08025B78
	ldr r2, _0803F37C @ =gUnk_03005400
	strb r4, [r2, #0x15]
	ldr r1, _0803F380 @ =gUnk_03002920
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x50
	strb r1, [r0, #8]
	movs r0, #0xa
	strb r0, [r2, #0xa]
	ldrb r1, [r2, #8]
	subs r0, #0xc
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2, #8]
	b _0803F666
	.align 2, 0
_0803F370: .4byte gUnk_03000830
_0803F374: .4byte gUnk_0300363C
_0803F378: .4byte gUnk_030007E0
_0803F37C: .4byte gUnk_03005400
_0803F380: .4byte gUnk_03002920
_0803F384:
	ldr r1, _0803F3B0 @ =gUnk_03000830
	ldr r0, _0803F3B4 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _0803F398
	b _0803F4A0
_0803F398:
	ldr r1, _0803F3B8 @ =gUnk_03005400
	movs r0, #5
	strb r0, [r1, #0xa]
	adds r0, r7, #0
	movs r1, #4
	bl sub_08025B78
	ldr r2, _0803F3BC @ =gUnk_03002920
	movs r0, #0x81
	lsls r0, r0, #2
	adds r2, r2, r0
	b _0803F3E8
	.align 2, 0
_0803F3B0: .4byte gUnk_03000830
_0803F3B4: .4byte gUnk_0300363C
_0803F3B8: .4byte gUnk_03005400
_0803F3BC: .4byte gUnk_03002920
_0803F3C0:
	ldr r1, _0803F404 @ =gUnk_03000830
	ldr r0, _0803F408 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	bne _0803F4A0
	ldr r1, _0803F40C @ =gUnk_03005400
	movs r0, #4
	strb r0, [r1, #0xa]
	adds r0, r7, #0
	movs r1, #3
	bl sub_08025B78
	ldr r2, _0803F410 @ =gUnk_03002920
	movs r1, #0x81
	lsls r1, r1, #2
	adds r2, r2, r1
_0803F3E8:
	ldrb r3, [r2]
	lsls r1, r3, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #2
	subs r0, #0xe
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x67
	bl m4aSongNumStart
	b _0803F4A0
	.align 2, 0
_0803F404: .4byte gUnk_03000830
_0803F408: .4byte gUnk_0300363C
_0803F40C: .4byte gUnk_03005400
_0803F410: .4byte gUnk_03002920
_0803F414:
	ldr r1, _0803F46C @ =gUnk_03000830
	ldr r0, _0803F470 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _0803F428
	b _0803F666
_0803F428:
	ldr r2, _0803F474 @ =0x03003590
	ldrb r0, [r2, #4]
	adds r0, #4
	movs r3, #0
	strb r0, [r2, #4]
	ldrh r4, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0xf0
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0803F484
	ldr r0, _0803F478 @ =gUnk_03005220
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803F49A
	ldr r0, _0803F47C @ =gUnk_03002920
	lsls r1, r7, #3
	subs r1, r1, r7
	lsls r1, r1, #2
	adds r1, r1, r0
	strb r3, [r1, #0x10]
	strh r3, [r1, #2]
	strh r3, [r1]
	ldr r3, _0803F480 @ =gUnk_03005400
	ldrb r0, [r3, #0xe]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r3, #0xe]
	movs r0, #3
	strb r0, [r1, #0xf]
	b _0803F666
	.align 2, 0
_0803F46C: .4byte gUnk_03000830
_0803F470: .4byte gUnk_0300363C
_0803F474: .4byte 0x03003590
_0803F478: .4byte gUnk_03005220
_0803F47C: .4byte gUnk_03002920
_0803F480: .4byte gUnk_03005400
_0803F484:
	ldr r0, _0803F4CC @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803F49A
	subs r0, r4, #4
	strh r0, [r2]
	ldrh r0, [r2, #2]
	subs r0, #4
	strh r0, [r2, #2]
_0803F49A:
	ldr r1, _0803F4D0 @ =gUnk_03005400
	movs r0, #0x7f
	strb r0, [r1, #0x14]
_0803F4A0:
	ldr r2, _0803F4D0 @ =gUnk_03005400
	ldrb r1, [r2, #0x16]
	movs r0, #1
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _0803F4DC
	ldr r4, _0803F4D4 @ =gUnk_03002920
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r2, r4, r1
	ldr r3, _0803F4D8 @ =0x08116A02
	mov r1, r8
	ldrb r0, [r1, #0xc]
	lsls r1, r0, #2
	adds r1, r1, r0
	adds r0, r3, #2
	adds r1, r1, r0
	ldrh r0, [r2]
	ldrb r1, [r1]
	adds r0, r0, r1
	b _0803F4F8
	.align 2, 0
_0803F4CC: .4byte gUnk_03004C20
_0803F4D0: .4byte gUnk_03005400
_0803F4D4: .4byte gUnk_03002920
_0803F4D8: .4byte 0x08116A02
_0803F4DC:
	ldr r4, _0803F520 @ =gUnk_03002920
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r2, r4, r3
	ldr r3, _0803F524 @ =0x08116A02
	mov r0, r8
	ldrb r1, [r0, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r1, r3, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrh r0, [r2]
	subs r0, r0, r1
_0803F4F8:
	strh r0, [r2]
	mov r2, r8
	ldrb r1, [r2, #0x16]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803F528
	movs r0, #0xfd
	lsls r0, r0, #1
	adds r2, r4, r0
	mov r1, r8
	ldrb r0, [r1, #0xc]
	lsls r1, r0, #2
	adds r1, r1, r0
	adds r0, r3, #3
	adds r1, r1, r0
	ldrh r0, [r2]
	ldrb r1, [r1]
	adds r0, r0, r1
	b _0803F540
	.align 2, 0
_0803F520: .4byte gUnk_03002920
_0803F524: .4byte 0x08116A02
_0803F528:
	movs r0, #0xfd
	lsls r0, r0, #1
	adds r2, r4, r0
	mov r0, r8
	ldrb r1, [r0, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r1, r3, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrh r0, [r2]
	subs r0, r0, r1
_0803F540:
	strh r0, [r2]
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	cmp r1, #0x4f
	bhi _0803F574
	ldr r5, _0803F570 @ =gUnk_03005400
	ldrb r0, [r5, #0x14]
	cmp r0, #0x7f
	bne _0803F55C
	movs r0, #0x7e
	bl m4aSongNumStart
_0803F55C:
	ldrb r0, [r5, #0x14]
	subs r0, #1
	strb r0, [r5, #0x14]
	ldrb r1, [r5, #0x16]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	b _0803F598
	.align 2, 0
_0803F570: .4byte gUnk_03005400
_0803F574:
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r1, r0
	bls _0803F59C
	ldr r5, _0803F5CC @ =gUnk_03005400
	ldrb r0, [r5, #0x14]
	cmp r0, #0x7f
	bne _0803F58A
	movs r0, #0x7e
	bl m4aSongNumStart
_0803F58A:
	ldrb r0, [r5, #0x14]
	subs r0, #1
	strb r0, [r5, #0x14]
	ldrb r1, [r5, #0x16]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
_0803F598:
	strb r0, [r5, #0x16]
	mov r8, r5
_0803F59C:
	movs r2, #0xfd
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r1, [r0]
	cmp r1, #0x7f
	bhi _0803F5D0
	ldr r4, _0803F5CC @ =gUnk_03005400
	ldrb r0, [r4, #0x14]
	cmp r0, #0x7f
	bne _0803F5B6
	movs r0, #0x7e
	bl m4aSongNumStart
_0803F5B6:
	ldrb r0, [r4, #0x14]
	subs r0, #1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x16]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	b _0803F5F4
	.align 2, 0
_0803F5CC: .4byte gUnk_03005400
_0803F5D0:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bls _0803F5F8
	ldr r4, _0803F620 @ =gUnk_03005400
	ldrb r0, [r4, #0x14]
	cmp r0, #0x7f
	bne _0803F5E6
	movs r0, #0x7e
	bl m4aSongNumStart
_0803F5E6:
	ldrb r0, [r4, #0x14]
	subs r0, #1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x16]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
_0803F5F4:
	strb r0, [r4, #0x16]
	mov r8, r4
_0803F5F8:
	mov r3, r8
	movs r0, #0x14
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bgt _0803F666
	ldr r1, _0803F624 @ =gUnk_03002920
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0xef
	bhi _0803F628
	movs r3, #0x81
	lsls r3, r3, #2
	adds r2, r1, r3
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	b _0803F63A
	.align 2, 0
_0803F620: .4byte gUnk_03005400
_0803F624: .4byte gUnk_03002920
_0803F628:
	movs r0, #0x81
	lsls r0, r0, #2
	adds r2, r1, r0
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
_0803F63A:
	strb r0, [r2]
	movs r0, #0
	mov r1, r8
	strb r0, [r1, #0x13]
	ldr r1, _0803F658 @ =0x030034DC
	strh r0, [r1]
	movs r0, #3
	mov r2, r8
	strb r0, [r2, #0xa]
	adds r0, r7, #0
	movs r1, #0
	bl sub_08025B78
	b _0803F666
	.align 2, 0
_0803F658: .4byte 0x030034DC

	thumb_func_start sub_0803F65C
sub_0803F65C: @ 0x0803F65C
	cmp r0, #3
	bne _0803F666
	adds r0, r7, #0
	bl sub_0803CF08
_0803F666:
	ldr r0, _0803F688 @ =gUnk_03005220
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _0803F676
	movs r0, #0x1c
	bl sub_0803E6D8
_0803F676:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F688: .4byte gUnk_03005220

	thumb_func_start sub_0803F68C
sub_0803F68C: @ 0x0803F68C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	cmp r2, #0
	beq _0803F6C2
	ldr r1, _0803F6D4 @ =gUnk_03002920
	ldr r2, _0803F6D8 @ =0x000003E3
	adds r0, r1, r2
	movs r2, #0x19
	strb r2, [r0]
	ldr r7, _0803F6DC @ =0x000003C7
	adds r0, r1, r7
	strb r2, [r0]
	subs r7, #0x1c
	adds r0, r1, r7
	strb r2, [r0]
	ldr r0, _0803F6E0 @ =0x0000038F
	adds r1, r1, r0
	strb r2, [r1]
_0803F6C2:
	mov r1, r8
	cmp r1, #9
	bls _0803F6CA
	b _0803F8BE
_0803F6CA:
	lsls r0, r1, #2
	ldr r1, _0803F6E4 @ =_0803F6E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803F6D4: .4byte gUnk_03002920
_0803F6D8: .4byte 0x000003E3
_0803F6DC: .4byte 0x000003C7
_0803F6E0: .4byte 0x0000038F
_0803F6E4: .4byte _0803F6E8
_0803F6E8: @ jump table
	.4byte _0803F710 @ case 0
	.4byte _0803F716 @ case 1
	.4byte _0803F74C @ case 2
	.4byte _0803F780 @ case 3
	.4byte _0803F7B8 @ case 4
	.4byte _0803F7EC @ case 5
	.4byte _0803F824 @ case 6
	.4byte _0803F84C @ case 7
	.4byte _0803F870 @ case 8
	.4byte _0803F898 @ case 9
_0803F710:
	movs r2, #0xd
	mov sb, r2
	b _0803F89C
_0803F716:
	movs r7, #4
	mov sb, r7
	lsls r2, r4, #3
	ldr r0, _0803F740 @ =0x03003F56
	adds r6, r2, r0
	ldr r3, _0803F744 @ =gUnk_03004790
	ldr r0, _0803F748 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #6
	adds r2, r2, r0
	ldr r3, [r3, #0x14]
	adds r5, r3, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	b _0803F812
	.align 2, 0
_0803F740: .4byte 0x03003F56
_0803F744: .4byte gUnk_03004790
_0803F748: .4byte gUnk_03003430
_0803F74C:
	movs r0, #6
	mov sb, r0
	lsls r2, r4, #3
	ldr r0, _0803F774 @ =0x03003E96
	adds r6, r2, r0
	ldr r3, _0803F778 @ =gUnk_03004790
	ldr r0, _0803F77C @ =gUnk_03003430
	adds r0, #0x48
	ldrh r1, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	adds r0, #6
	adds r2, r2, r0
	ldr r3, [r3, #0x14]
	adds r5, r3, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	b _0803F812
	.align 2, 0
_0803F774: .4byte 0x03003E96
_0803F778: .4byte gUnk_03004790
_0803F77C: .4byte gUnk_03003430
_0803F780:
	movs r1, #6
	mov sb, r1
	lsls r2, r4, #3
	ldr r0, _0803F7AC @ =0x03003DD6
	adds r6, r2, r0
	ldr r3, _0803F7B0 @ =gUnk_03004790
	ldr r0, _0803F7B4 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, #6
	adds r2, r2, r0
	ldr r3, [r3, #0x14]
	adds r5, r3, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	b _0803F812
	.align 2, 0
_0803F7AC: .4byte 0x03003DD6
_0803F7B0: .4byte gUnk_03004790
_0803F7B4: .4byte gUnk_03003430
_0803F7B8:
	movs r2, #6
	mov sb, r2
	lsls r2, r4, #3
	ldr r0, _0803F7E0 @ =0x03003D16
	adds r6, r2, r0
	ldr r3, _0803F7E4 @ =gUnk_03004790
	ldr r0, _0803F7E8 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r0, #6
	adds r2, r2, r0
	ldr r3, [r3, #0x14]
	adds r5, r3, r2
	movs r0, #0xd
	b _0803F810
	.align 2, 0
_0803F7E0: .4byte 0x03003D16
_0803F7E4: .4byte gUnk_03004790
_0803F7E8: .4byte gUnk_03003430
_0803F7EC:
	movs r7, #6
	mov sb, r7
	lsls r2, r4, #3
	ldr r0, _0803F818 @ =0x03003D16
	adds r6, r2, r0
	ldr r3, _0803F81C @ =gUnk_03004790
	ldr r0, _0803F820 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r0, #6
	adds r2, r2, r0
	ldr r3, [r3, #0x14]
	adds r5, r3, r2
	movs r0, #0x16
_0803F810:
	muls r0, r1, r0
_0803F812:
	adds r0, #0x3c
	adds r3, r3, r0
	b _0803F8BE
	.align 2, 0
_0803F818: .4byte 0x03003D16
_0803F81C: .4byte gUnk_03004790
_0803F820: .4byte gUnk_03003430
_0803F824:
	movs r0, #4
	mov sb, r0
	lsls r2, r4, #3
	ldr r0, _0803F840 @ =0x03003F56
	adds r6, r2, r0
	ldr r3, _0803F844 @ =gUnk_03004790
	ldr r0, _0803F848 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	b _0803F8B2
	.align 2, 0
_0803F840: .4byte 0x03003F56
_0803F844: .4byte gUnk_03004790
_0803F848: .4byte gUnk_03003430
_0803F84C:
	movs r1, #7
	mov sb, r1
	lsls r2, r4, #3
	ldr r0, _0803F864 @ =0x03003E96
	adds r6, r2, r0
	ldr r3, _0803F868 @ =gUnk_03004790
	ldr r0, _0803F86C @ =gUnk_03003430
	adds r0, #0x48
	ldrh r1, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	b _0803F8B2
	.align 2, 0
_0803F864: .4byte 0x03003E96
_0803F868: .4byte gUnk_03004790
_0803F86C: .4byte gUnk_03003430
_0803F870:
	movs r2, #0xa
	mov sb, r2
	lsls r2, r4, #3
	ldr r0, _0803F88C @ =0x03003DD6
	adds r6, r2, r0
	ldr r3, _0803F890 @ =gUnk_03004790
	ldr r0, _0803F894 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	b _0803F8B2
	.align 2, 0
_0803F88C: .4byte 0x03003DD6
_0803F890: .4byte gUnk_03004790
_0803F894: .4byte gUnk_03003430
_0803F898:
	movs r7, #0xd
	mov sb, r7
_0803F89C:
	lsls r2, r4, #3
	ldr r0, _0803F938 @ =0x03003D16
	adds r6, r2, r0
	ldr r3, _0803F93C @ =gUnk_03004790
	ldr r0, _0803F940 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
_0803F8B2:
	adds r0, #6
	adds r2, r2, r0
	ldr r0, [r3, #0x14]
	adds r5, r0, r2
	adds r3, r0, #0
	adds r3, #0x3c
_0803F8BE:
	movs r1, #0
	cmp r1, sb
	bhs _0803F92A
	ldr r4, _0803F944 @ =0x040000D4
	ldr r0, _0803F948 @ =0x80000004
	mov r8, r0
	movs r2, #0x80
	lsls r2, r2, #0x18
	mov ip, r2
	ldr r7, _0803F94C @ =gUnk_03003478
	mov sl, r7
_0803F8D4:
	str r3, [r4]
	str r6, [r4, #4]
	mov r0, r8
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r2, ip
	ands r0, r2
	adds r6, #0x40
	adds r7, r1, #1
	cmp r0, #0
	beq _0803F8F8
	movs r1, #0x80
	lsls r1, r1, #0x18
_0803F8F0:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803F8F0
_0803F8F8:
	ldr r1, _0803F944 @ =0x040000D4
	str r3, [r1]
	str r5, [r1, #4]
	mov r0, r8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, ip
	ands r0, r2
	cmp r0, #0
	beq _0803F91A
	movs r2, #0x80
	lsls r2, r2, #0x18
_0803F912:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803F912
_0803F91A:
	mov r1, sl
	ldrh r0, [r1]
	adds r5, r5, r0
	adds r3, r3, r0
	lsls r0, r7, #0x18
	lsrs r1, r0, #0x18
	cmp r1, sb
	blo _0803F8D4
_0803F92A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F938: .4byte 0x03003D16
_0803F93C: .4byte gUnk_03004790
_0803F940: .4byte gUnk_03003430
_0803F944: .4byte 0x040000D4
_0803F948: .4byte 0x80000004
_0803F94C: .4byte gUnk_03003478

	thumb_func_start sub_0803F950
sub_0803F950: @ 0x0803F950
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _0803F988 @ =gUnk_03005400
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _0803F9E0
	cmp r1, #0x19
	bne _0803F990
	movs r5, #0
	ldr r3, _0803F98C @ =gUnk_03002920
	movs r2, #0x19
_0803F968:
	adds r0, r5, #0
	adds r0, #0x13
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrb r0, [r1, #0xf]
	cmp r0, #0x1c
	bne _0803F97C
	strb r2, [r1, #0xf]
_0803F97C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803F968
	b _0803F9E0
	.align 2, 0
_0803F988: .4byte gUnk_03005400
_0803F98C: .4byte gUnk_03002920
_0803F990:
	movs r5, #0
	ldr r6, _0803F9E8 @ =gUnk_03002920
_0803F994:
	adds r1, r5, #0
	adds r1, #0x13
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r6
	ldrb r0, [r2, #0xf]
	adds r4, r1, #0
	cmp r0, #0
	beq _0803F9AC
	cmp r0, #0x19
	bne _0803F9BA
_0803F9AC:
	ldrh r0, [r2]
	ldrh r1, [r2, #2]
	lsls r3, r4, #0x18
	lsrs r3, r3, #0x18
	movs r2, #2
	bl sub_0801E664
_0803F9BA:
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r1, r0, r6
	ldrb r0, [r1, #0xf]
	cmp r0, #0x13
	bne _0803F9D6
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	lsls r3, r4, #0x18
	lsrs r3, r3, #0x18
	movs r2, #2
	bl sub_0801E664
_0803F9D6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803F994
_0803F9E0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F9E8: .4byte gUnk_03002920

	thumb_func_start sub_0803F9EC
sub_0803F9EC: @ 0x0803F9EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r5, _0803FAE4 @ =gUnk_03002920
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrb r2, [r1, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #0xc
	orrs r0, r2
	strb r0, [r1, #0xd]
	ldrb r0, [r1, #0xe]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1, #0xe]
	ldr r3, _0803FAE8 @ =0x03003590
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r6, #1
	ands r1, r6
	ldrb r2, [r3, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, _0803FAEC @ =gUnk_03005400
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803FA48
	subs r0, #1
	strh r0, [r1]
_0803FA48:
	ldr r4, _0803FAF0 @ =0x040000D4
	ldr r0, _0803FAF4 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #0xc
	bl __udivsi3
	movs r1, #6
	bl __umodsi3
	lsls r0, r0, #6
	ldr r1, _0803FAF8 @ =0x080D8C30
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, _0803FAFC @ =0x05000100
	str r0, [r4, #4]
	ldr r0, _0803FB00 @ =0x80000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r5, #2]
	ldr r0, _0803FB04 @ =0x00000147
	cmp r1, r0
	bls _0803FA8E
	ldr r2, _0803FB08 @ =gUnk_03005220
	ldrb r1, [r2]
	lsls r0, r1, #0x1e
	cmp r0, #0
	beq _0803FA8E
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	movs r0, #1
	bl sub_08014624
_0803FA8E:
	ldr r2, _0803FAE4 @ =gUnk_03002920
	mov r3, r8
	lsls r1, r3, #3
	subs r0, r1, r3
	lsls r0, r0, #2
	adds r4, r0, r2
	ldrb r0, [r4, #0xf]
	str r1, [sp, #4]
	cmp r0, #0xe
	bne _0803FB10
	ldr r3, _0803FAEC @ =gUnk_03005400
	ldrb r0, [r3, #0xa]
	cmp r0, #0
	beq _0803FAAE
	bl _08040B3E
_0803FAAE:
	ldr r0, _0803FB0C @ =gUnk_030007E0
	movs r1, #7
	strb r1, [r0, #0xc]
	movs r2, #0
	movs r1, #0x78
	strh r1, [r0, #6]
	strh r1, [r0]
	movs r1, #0xa0
	strh r1, [r0, #8]
	strh r1, [r0, #2]
	movs r1, #0x60
	strh r1, [r0, #0xa]
	strh r1, [r0, #4]
	strb r2, [r3, #9]
	ldrb r0, [r3, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #8]
	strb r2, [r4, #0xf]
	ldrb r0, [r3, #0xe]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #0xe]
	movs r0, #0xff
	strb r0, [r3, #0x14]
	bl _08040B3E
	.align 2, 0
_0803FAE4: .4byte gUnk_03002920
_0803FAE8: .4byte 0x03003590
_0803FAEC: .4byte gUnk_03005400
_0803FAF0: .4byte 0x040000D4
_0803FAF4: .4byte gUnk_03004C20
_0803FAF8: .4byte 0x080D8C30
_0803FAFC: .4byte 0x05000100
_0803FB00: .4byte 0x80000020
_0803FB04: .4byte 0x00000147
_0803FB08: .4byte gUnk_03005220
_0803FB0C: .4byte gUnk_030007E0
_0803FB10:
	cmp r0, #0
	beq _0803FB1C
	cmp r0, #0x1a
	beq _0803FB1C
	bl sub_08040B34
_0803FB1C:
	ldr r0, _0803FB40 @ =0x03003620
	ldr r1, [r0]
	ldr r2, [r0, #4]
	mov r0, r8
	bl sub_0803D4AC
	ldr r0, _0803FB44 @ =gUnk_03005400
	ldrb r0, [r0, #0xa]
	cmp r0, #0xd
	bls _0803FB34
	bl _08040B3E
_0803FB34:
	lsls r0, r0, #2
	ldr r1, _0803FB48 @ =_0803FB4C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803FB40: .4byte 0x03003620
_0803FB44: .4byte gUnk_03005400
_0803FB48: .4byte _0803FB4C
_0803FB4C: @ jump table
	.4byte _0803FB84 @ case 0
	.4byte _08040074 @ case 1
	.4byte _080400C0 @ case 2
	.4byte _08040234 @ case 3
	.4byte _0803FC94 @ case 4
	.4byte _0803FEBC @ case 5
	.4byte _0803FF64 @ case 6
	.4byte _08040038 @ case 7
	.4byte _08040388 @ case 8
	.4byte _08040620 @ case 9
	.4byte _080407D0 @ case 10
	.4byte _080408E0 @ case 11
	.4byte _0804093C @ case 12
	.4byte _08040994 @ case 13
_0803FB84:
	bl thunk_GetRandomValue
	ldr r4, _0803FBA0 @ =gUnk_03005400
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #6
	bl __umodsi3
	strb r0, [r4, #0x13]
	movs r6, #0x15
	ldrsb r6, [r4, r6]
	movs r5, #1
	b _0803FBB0
	.align 2, 0
_0803FBA0: .4byte gUnk_03005400
_0803FBA4:
	ldrb r0, [r4, #0x13]
	adds r0, #1
	movs r1, #6
	bl __modsi3
	strb r0, [r4, #0x13]
_0803FBB0:
	cmp r6, #3
	beq _0803FBC2
	ldrb r0, [r4, #0x14]
	ldrb r7, [r4, #0x13]
	asrs r0, r7
	ands r0, r5
	cmp r0, #0
	bne _0803FBCE
	b _0803FBA4
_0803FBC2:
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0x13]
	asrs r0, r1
	ands r0, r5
	cmp r0, #0
	bne _0803FBA4
_0803FBCE:
	ldr r2, _0803FC08 @ =gUnk_03002920
	ldr r3, _0803FC0C @ =gUnk_03005400
	ldrb r1, [r3, #0x13]
	lsls r1, r1, #6
	adds r1, #0x50
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r1, [r0]
	movs r7, #0xfd
	lsls r7, r7, #1
	adds r3, r2, r7
	movs r0, #0xc8
	lsls r0, r0, #1
	strh r0, [r3]
	ldrh r0, [r2]
	cmp r0, r1
	bhs _0803FC10
	adds r0, r2, #0
	movs r1, #0x81
	lsls r1, r1, #2
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	b _0803FC20
	.align 2, 0
_0803FC08: .4byte gUnk_03002920
_0803FC0C: .4byte gUnk_03005400
_0803FC10:
	ldr r3, _0803FC84 @ =gUnk_03002920
	movs r4, #0x81
	lsls r4, r4, #2
	adds r2, r3, r4
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
_0803FC20:
	strb r0, [r2]
	ldr r1, _0803FC88 @ =0x03003590
	movs r3, #0
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	movs r0, #0xc0
	strb r0, [r1, #4]
	ldr r7, _0803FC8C @ =gUnk_03005400
	ldrb r1, [r7, #8]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xf
	ands r0, r1
	strb r0, [r7, #8]
	ldr r0, [sp, #4]
	mov r2, r8
	subs r1, r0, r2
	lsls r1, r1, #2
	ldr r4, _0803FC84 @ =gUnk_03002920
	adds r1, r1, r4
	ldrb r2, [r1, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xf]
	mov r0, r8
	movs r1, #0
	bl sub_08025B78
	ldr r1, _0803FC90 @ =0x08116A46
	ldrb r0, [r7, #0xc]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	strh r0, [r7]
	movs r0, #4
	strb r0, [r7, #0xa]
	bl _08040B3E
	.align 2, 0
_0803FC84: .4byte gUnk_03002920
_0803FC88: .4byte 0x03003590
_0803FC8C: .4byte gUnk_03005400
_0803FC90: .4byte 0x08116A46
_0803FC94:
	ldr r2, _0803FE60 @ =gUnk_03005400
	ldrh r3, [r2]
	ldr r1, _0803FE64 @ =0x08116A46
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #1
	adds r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r3, r0
	ble _0803FCB2
	bl _08040B3E
_0803FCB2:
	adds r2, r3, #0
	cmp r2, #0
	beq _0803FD48
	ldr r7, _0803FE60 @ =gUnk_03005400
	ldrb r0, [r7, #0x14]
	ldrb r1, [r7, #0x13]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803FD3C
	ldr r0, _0803FE68 @ =gUnk_03004C20
	ldr r0, [r0]
	lsrs r0, r0, #3
	movs r1, #3
	ands r0, r1
	adds r1, r0, #1
	cmp r2, #1
	bne _0803FCDA
	movs r1, #0
_0803FCDA:
	movs r3, #0
	ldr r2, _0803FE6C @ =gUnk_03003430
	mov sb, r2
	lsls r0, r1, #1
	movs r4, #0x48
	add r4, sb
	mov sl, r4
	adds r0, r0, r1
	mov ip, r0
	ldr r7, _0803FE60 @ =gUnk_03005400
	mov sb, r7
_0803FCF0:
	movs r4, #0
	adds r0, r3, #0
	adds r0, #0x17
	adds r1, r3, #1
	str r1, [sp, #8]
	lsls r6, r0, #6
	adds r5, r3, #0
	adds r5, #0x2d
_0803FD00:
	mov r2, sb
	ldrb r1, [r2, #0x13]
	lsls r1, r1, #3
	adds r1, #8
	adds r1, r4, r1
	adds r1, r1, r6
	ldr r3, _0803FE70 @ =gUnk_03003650
	adds r1, r1, r3
	mov r7, sl
	ldrh r0, [r7]
	adds r3, r5, #0
	muls r3, r0, r3
	ldr r0, _0803FE74 @ =gUnk_03004790
	ldr r2, [r0, #0x14]
	mov r7, ip
	adds r0, r7, r4
	adds r0, r0, r3
	adds r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0803FD00
	ldr r1, [sp, #8]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0803FCF0
_0803FD3C:
	ldr r2, _0803FE60 @ =gUnk_03005400
	ldrh r0, [r2]
	cmp r0, #0x78
	bls _0803FD48
	bl _08040B3E
_0803FD48:
	ldr r2, _0803FE78 @ =gUnk_03002920
	movs r3, #0xfd
	lsls r3, r3, #1
	adds r4, r2, r3
	ldrh r1, [r4]
	ldr r0, _0803FE7C @ =0x00000117
	cmp r1, r0
	bhi _0803FD5A
	b _0803FE80
_0803FD5A:
	ldr r0, _0803FE68 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _0803FD6A
	subs r0, r1, #1
	strh r0, [r4]
_0803FD6A:
	ldr r4, _0803FE60 @ =gUnk_03005400
	ldrb r0, [r4, #0x14]
	ldrb r7, [r4, #0x13]
	asrs r0, r7
	ands r0, r3
	cmp r0, #0
	bne _0803FD7C
	bl _08040B3E
_0803FD7C:
	ldr r1, [sp, #4]
	mov r3, r8
	subs r0, r1, r3
	lsls r0, r0, #2
	adds r4, r0, r2
	ldrh r1, [r4, #2]
	movs r0, #0xb2
	lsls r0, r0, #1
	cmp r1, r0
	bne _0803FDAE
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r7, _0803FE60 @ =gUnk_03005400
	ldrb r0, [r7, #0x13]
	movs r1, #1
	movs r2, #1
	bl sub_0803F68C
	ldrb r0, [r7, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7, #0xe]
	movs r0, #2
	strb r0, [r7, #0xd]
_0803FDAE:
	ldrh r1, [r4, #2]
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bne _0803FDD8
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r1, _0803FE60 @ =gUnk_03005400
	ldrb r0, [r1, #0x13]
	movs r1, #2
	movs r2, #1
	bl sub_0803F68C
	ldr r2, _0803FE60 @ =gUnk_03005400
	ldrb r0, [r2, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xe]
	movs r0, #2
	strb r0, [r2, #0xd]
_0803FDD8:
	ldrh r1, [r4, #2]
	movs r0, #0xa2
	lsls r0, r0, #1
	cmp r1, r0
	bne _0803FE02
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r3, _0803FE60 @ =gUnk_03005400
	ldrb r0, [r3, #0x13]
	movs r1, #3
	movs r2, #1
	bl sub_0803F68C
	ldr r7, _0803FE60 @ =gUnk_03005400
	ldrb r0, [r7, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7, #0xe]
	movs r0, #4
	strb r0, [r7, #0xd]
_0803FE02:
	ldrh r1, [r4, #2]
	movs r0, #0x9a
	lsls r0, r0, #1
	cmp r1, r0
	bne _0803FE2C
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r1, _0803FE60 @ =gUnk_03005400
	ldrb r0, [r1, #0x13]
	movs r1, #4
	movs r2, #1
	bl sub_0803F68C
	ldr r2, _0803FE60 @ =gUnk_03005400
	ldrb r0, [r2, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xe]
	movs r0, #4
	strb r0, [r2, #0xd]
_0803FE2C:
	ldrh r1, [r4, #2]
	movs r0, #0x8c
	lsls r0, r0, #1
	cmp r1, r0
	beq _0803FE3A
	bl _08040B3E
_0803FE3A:
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r3, _0803FE60 @ =gUnk_03005400
	ldrb r0, [r3, #0x13]
	movs r1, #5
	movs r2, #1
	bl sub_0803F68C
	ldr r4, _0803FE60 @ =gUnk_03005400
	ldrb r0, [r4, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0xd]
	bl _08040B3E
	.align 2, 0
_0803FE60: .4byte gUnk_03005400
_0803FE64: .4byte 0x08116A46
_0803FE68: .4byte gUnk_03004C20
_0803FE6C: .4byte gUnk_03003430
_0803FE70: .4byte gUnk_03003650
_0803FE74: .4byte gUnk_03004790
_0803FE78: .4byte gUnk_03002920
_0803FE7C: .4byte 0x00000117
_0803FE80:
	movs r0, #1
	ldr r7, _0803FEB8 @ =gUnk_03005400
	ldrb r7, [r7, #0x13]
	lsls r0, r7
	ldr r3, _0803FEB8 @ =gUnk_03005400
	ldrb r1, [r3, #0x14]
	bics r1, r0
	movs r0, #0
	strb r1, [r3, #0x14]
	strb r0, [r3, #0x13]
	ldrb r0, [r3, #0x15]
	adds r0, #1
	strb r0, [r3, #0x15]
	movs r0, #5
	strb r0, [r3, #0xa]
	movs r0, #0x50
	strh r0, [r3]
	ldr r4, [sp, #4]
	mov r7, r8
	subs r1, r4, r7
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r2, [r1, #0xc]
	subs r0, #0x54
	ands r0, r2
	strb r0, [r1, #0xc]
	bl _08040B3E
	.align 2, 0
_0803FEB8: .4byte gUnk_03005400
_0803FEBC:
	ldr r0, _0803FF3C @ =gUnk_03005400
	ldrh r1, [r0]
	cmp r1, #0
	beq _0803FEC8
	bl _08040B3E
_0803FEC8:
	ldr r0, _0803FF40 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0803FEE0
	ldr r1, _0803FF3C @ =gUnk_03005400
	ldrb r0, [r1, #0x13]
	cmp r0, #7
	bhi _0803FEE0
	adds r0, #1
	strb r0, [r1, #0x13]
_0803FEE0:
	ldr r4, _0803FF44 @ =gUnk_03002920
	movs r2, #0xfd
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x10
	bgt _0803FF54
	mov r0, r8
	movs r1, #6
	bl sub_08025B78
	ldr r3, _0803FF3C @ =gUnk_03005400
	ldrb r0, [r3, #8]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3, #8]
	movs r0, #0x15
	ldrsb r0, [r3, r0]
	cmp r0, #3
	bne _0803FF48
	ldr r7, [sp, #4]
	mov r0, r8
	subs r2, r7, r0
	lsls r2, r2, #2
	adds r2, r2, r4
	ldrb r1, [r2, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xc]
	ldrb r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #8]
	movs r0, #0xb
	strb r0, [r3, #0xa]
	bl _08040B3E
	.align 2, 0
_0803FF3C: .4byte gUnk_03005400
_0803FF40: .4byte gUnk_03004C20
_0803FF44: .4byte gUnk_03002920
_0803FF48:
	movs r0, #0x60
	strh r0, [r3]
	movs r0, #6
	strb r0, [r3, #0xa]
	bl _08040B3E
_0803FF54:
	ldr r3, _0803FF60 @ =gUnk_03005400
	ldrb r0, [r3, #0x13]
	subs r0, r2, r0
	strh r0, [r1]
	bl _08040B3E
	.align 2, 0
_0803FF60: .4byte gUnk_03005400
_0803FF64:
	ldr r4, _0803FFC0 @ =gUnk_03005400
	ldrh r0, [r4]
	cmp r0, #0
	beq _0803FF70
	bl _08040B3E
_0803FF70:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0803FFC8
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x46
	bls _0803FFC8
	ldr r0, _0803FFC4 @ =gUnk_03002920
	ldr r7, [sp, #4]
	mov r2, r8
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r0]
	strh r0, [r1]
	ldrb r2, [r1, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0xc]
	ldrb r1, [r4, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #8]
	movs r0, #0x42
	bl m4aSongNumStart
	movs r0, #0xd
	strb r0, [r4, #0xa]
	bl _08040B3E
	.align 2, 0
_0803FFC0: .4byte gUnk_03005400
_0803FFC4: .4byte gUnk_03002920
_0803FFC8:
	bl thunk_GetRandomValue
	ldr r4, _0804002C @ =gUnk_03005400
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #6
	bl __umodsi3
	strb r0, [r4, #0x13]
	ldrb r2, [r4, #0x14]
	adds r0, r2, #0
	ldrb r3, [r4, #0x13]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08040006
	adds r5, r2, #0
	movs r6, #1
_0803FFEE:
	ldrb r0, [r4, #0x13]
	adds r0, #1
	movs r1, #6
	bl __modsi3
	strb r0, [r4, #0x13]
	adds r0, r5, #0
	ldrb r7, [r4, #0x13]
	asrs r0, r7
	ands r0, r6
	cmp r0, #0
	bne _0803FFEE
_08040006:
	ldr r1, _08040030 @ =gUnk_03002920
	ldr r4, _0804002C @ =gUnk_03005400
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #6
	adds r0, #0x50
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r1, r1, r2
	strh r0, [r1]
	ldr r1, _08040034 @ =0x03003590
	movs r0, #0x40
	strb r0, [r1, #4]
	movs r0, #0x6c
	bl m4aSongNumStart
	movs r0, #7
	strb r0, [r4, #0xa]
	bl _08040B3E
	.align 2, 0
_0804002C: .4byte gUnk_03005400
_08040030: .4byte gUnk_03002920
_08040034: .4byte 0x03003590
_08040038:
	ldr r0, _08040058 @ =gUnk_03002920
	ldr r3, [sp, #4]
	mov r4, r8
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r2, r1, r0
	ldrh r1, [r2, #2]
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0804005C
	adds r0, r1, #0
	adds r0, #8
	strh r0, [r2, #2]
	bl _08040B3E
	.align 2, 0
_08040058: .4byte gUnk_03002920
_0804005C:
	ldrb r1, [r2, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xc]
	ldr r1, _08040070 @ =gUnk_03005400
	movs r0, #0
	strb r0, [r1, #0xa]
	bl _08040B3E
	.align 2, 0
_08040070: .4byte gUnk_03005400
_08040074:
	ldr r4, _080400B4 @ =gUnk_03005400
	ldrb r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #8]
	ldr r1, _080400B8 @ =gUnk_03000830
	ldr r0, _080400BC @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r7, r8
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _0804009A
	bl _08040B3E
_0804009A:
	movs r0, #0x1c
	bl sub_0803F950
	movs r0, #2
	strb r0, [r4, #0xa]
	mov r0, r8
	movs r1, #2
	bl sub_08025B78
	movs r0, #0x3c
	strh r0, [r4]
	bl _08040B3E
	.align 2, 0
_080400B4: .4byte gUnk_03005400
_080400B8: .4byte gUnk_03000830
_080400BC: .4byte gUnk_0300363C
_080400C0:
	ldr r0, _0804016C @ =gUnk_03005400
	ldrh r0, [r0]
	cmp r0, #0
	beq _08040190
	ldr r4, _08040170 @ =gUnk_03004C20
	ldr r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	mov sl, r4
	cmp r0, #5
	bne _0804011C
	ldr r3, _08040174 @ =0x040000D4
	ldr r0, _08040178 @ =0x08078628
	str r0, [r3]
	ldr r2, _0804017C @ =gUnk_0818B8E0
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
	ldr r2, [sp, #4]
	adds r0, r2, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r4, _08040180 @ =0x05000200
	adds r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _08040184 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0804011C
_08040114:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08040114
_0804011C:
	mov r7, sl
	ldr r0, [r7]
	movs r1, #0xa
	bl __umodsi3
	cmp r0, #0
	beq _0804012E
	bl _08040B3E
_0804012E:
	mov r1, sp
	ldr r2, _08040188 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08040174 @ =0x040000D4
	str r1, [r2]
	ldr r3, _0804017C @ =gUnk_0818B8E0
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r4, [r7, #0xc]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r7, [sp, #4]
	adds r0, r7, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r1, _08040180 @ =0x05000200
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0804018C @ =0x81000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	bl _08040B3E
	.align 2, 0
_0804016C: .4byte gUnk_03005400
_08040170: .4byte gUnk_03004C20
_08040174: .4byte 0x040000D4
_08040178: .4byte 0x08078628
_0804017C: .4byte gUnk_0818B8E0
_08040180: .4byte 0x05000200
_08040184: .4byte 0x80000010
_08040188: .4byte 0x0000FFFF
_0804018C: .4byte 0x81000010
_08040190:
	ldr r1, _08040208 @ =gUnk_03000830
	ldr r0, _0804020C @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r2, r8
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _080401A8
	bl _08040B3E
_080401A8:
	ldr r4, _08040210 @ =0x040000D4
	ldr r0, _08040214 @ =0x08078768
	str r0, [r4]
	ldr r3, _08040218 @ =gUnk_0818B8E0
	ldr r2, _0804021C @ =gUnk_03004C20
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
	ldr r3, [sp, #4]
	adds r0, r3, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r7, _08040220 @ =0x05000200
	adds r0, r0, r7
	str r0, [r4, #4]
	ldr r0, _08040224 @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080401EE
_080401E6:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _080401E6
_080401EE:
	mov r0, r8
	movs r1, #3
	bl sub_08025B78
	ldr r1, _08040228 @ =gUnk_03005400
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _0804022C
	movs r0, #9
	strb r0, [r1, #0xa]
	bl _08040B3E
	.align 2, 0
_08040208: .4byte gUnk_03000830
_0804020C: .4byte gUnk_0300363C
_08040210: .4byte 0x040000D4
_08040214: .4byte 0x08078768
_08040218: .4byte gUnk_0818B8E0
_0804021C: .4byte gUnk_03004C20
_08040220: .4byte 0x05000200
_08040224: .4byte 0x80000010
_08040228: .4byte gUnk_03005400
_0804022C:
	movs r0, #3
	strb r0, [r1, #0xa]
	bl _08040B3E
_08040234:
	ldr r1, _08040274 @ =gUnk_03000830
	ldr r0, _08040278 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r2, r8
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _0804024C
	bl _08040B3E
_0804024C:
	ldr r1, _0804027C @ =0x03003590
	ldrb r0, [r1, #4]
	adds r0, #4
	strb r0, [r1, #4]
	ldr r2, _08040280 @ =gUnk_03002920
	ldr r3, [sp, #4]
	mov r4, r8
	subs r0, r3, r4
	lsls r0, r0, #2
	adds r4, r0, r2
	ldrh r3, [r4, #2]
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r5, r1, #0
	cmp r3, r0
	bhi _08040284
	adds r0, r3, #2
	strh r0, [r4, #2]
	bl _08040B3E
	.align 2, 0
_08040274: .4byte gUnk_03000830
_08040278: .4byte gUnk_0300363C
_0804027C: .4byte 0x03003590
_08040280: .4byte gUnk_03002920
_08040284:
	movs r2, #0
	ldr r3, _08040360 @ =gUnk_03005400
	ldrb r0, [r3, #0xc]
	subs r0, #1
	lsls r0, r0, #1
	movs r1, #0xa
	subs r1, r1, r0
	ldr r7, _08040364 @ =gUnk_03004C20
	mov sl, r7
	ldr r0, _08040368 @ =gUnk_03003430
	mov sb, r0
	ldr r4, _0804036C @ =0x08078728
	mov ip, r4
	cmp r2, r1
	bge _080402C8
	ldr r4, _08040370 @ =gUnk_03002920
	movs r7, #0x18
	movs r6, #0xa
_080402A8:
	adds r1, r2, #0
	adds r1, #0x16
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	strb r7, [r0, #0xf]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r3, #0xc]
	subs r0, #1
	lsls r0, r0, #1
	subs r0, r6, r0
	cmp r2, r0
	blt _080402A8
_080402C8:
	ldr r7, [sp, #4]
	mov r0, r8
	subs r2, r7, r0
	lsls r2, r2, #2
	ldr r1, _08040370 @ =gUnk_03002920
	adds r2, r2, r1
	mov r3, sb
	ldrh r1, [r3, #0x24]
	movs r3, #8
	subs r1, r3, r1
	lsls r1, r1, #2
	movs r0, #0xf0
	subs r0, r0, r1
	strh r0, [r2]
	movs r0, #0xf0
	strh r0, [r2, #2]
	ldrb r1, [r2, #0xc]
	subs r0, #0xf4
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xc]
	movs r0, #0xc0
	strb r0, [r5, #4]
	ldr r0, _08040374 @ =0x0000FF60
	strh r0, [r5, #2]
	strh r0, [r5]
	movs r0, #1
	ldr r4, _08040360 @ =gUnk_03005400
	strh r0, [r4, #4]
	strb r3, [r4, #0xa]
	movs r0, #0x1a
	strb r0, [r2, #0xf]
	ldr r2, _08040378 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	mov r0, sl
	ldrb r1, [r0, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	mov r1, sl
	ldrb r1, [r1, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _0804037C @ =gUnk_0818B8E0
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r4, [sp, #4]
	adds r0, r4, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r7, _08040380 @ =0x05000200
	adds r0, r0, r7
	str r0, [r2, #4]
	ldr r0, _08040384 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08040352
_0804034A:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0804034A
_08040352:
	mov r0, r8
	movs r1, #6
	bl sub_08025B78
	bl _08040B3E
	.align 2, 0
_08040360: .4byte gUnk_03005400
_08040364: .4byte gUnk_03004C20
_08040368: .4byte gUnk_03003430
_0804036C: .4byte 0x08078728
_08040370: .4byte gUnk_03002920
_08040374: .4byte 0x0000FF60
_08040378: .4byte 0x040000D4
_0804037C: .4byte gUnk_0818B8E0
_08040380: .4byte 0x05000200
_08040384: .4byte 0x80000010
_08040388:
	ldr r3, _08040404 @ =gUnk_03002920
	ldr r0, [sp, #4]
	mov r1, r8
	subs r2, r0, r1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r0, _08040408 @ =gUnk_03003430
	ldrh r0, [r0, #0x24]
	movs r1, #8
	subs r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xf0
	subs r0, r0, r1
	strh r0, [r2]
	ldr r0, _0804040C @ =gUnk_03005220
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _080403B0
	b _08040B3E
_080403B0:
	movs r5, #0
	adds r6, r3, #0
	movs r2, #2
	mov sb, r2
_080403B8:
	adds r0, r5, #0
	adds r0, #0x16
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrb r0, [r1, #0xf]
	cmp r0, #0x1c
	bne _08040486
	ldr r4, _08040410 @ =gUnk_03005400
	ldrb r0, [r4, #0x14]
	asrs r0, r5
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	bne _08040486
	ldrb r0, [r1, #8]
	subs r0, #1
	strb r0, [r1, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _08040414
	ldrh r0, [r6, #2]
	movs r1, #0x91
	lsls r1, r1, #1
	cmp r0, r1
	bls _080403F2
	strh r1, [r6, #2]
_080403F2:
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	bl sub_0803F68C
	ldrb r0, [r4, #0xe]
	mov r3, sb
	orrs r0, r3
	b _08040454
	.align 2, 0
_08040404: .4byte gUnk_03002920
_08040408: .4byte gUnk_03003430
_0804040C: .4byte gUnk_03005220
_08040410: .4byte gUnk_03005400
_08040414:
	cmp r0, #0x28
	bne _08040436
	ldrh r0, [r6, #2]
	movs r1, #0x85
	lsls r1, r1, #1
	cmp r0, r1
	bls _08040424
	strh r1, [r6, #2]
_08040424:
	adds r0, r5, #0
	movs r1, #7
	movs r2, #0
	bl sub_0803F68C
	ldrb r0, [r4, #0xe]
	mov r1, sb
	orrs r0, r1
	b _08040454
_08040436:
	cmp r0, #0x14
	bne _0804045A
	ldrh r0, [r6, #2]
	cmp r0, #0xf2
	bls _08040444
	movs r0, #0xf2
	strh r0, [r6, #2]
_08040444:
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl sub_0803F68C
	ldrb r0, [r4, #0xe]
	mov r2, sb
	orrs r0, r2
_08040454:
	strb r0, [r4, #0xe]
	strb r7, [r4, #0xd]
	b _08040486
_0804045A:
	cmp r0, #0
	bne _08040486
	ldrh r0, [r6, #2]
	cmp r0, #0xda
	bls _08040468
	movs r0, #0xda
	strh r0, [r6, #2]
_08040468:
	adds r0, r5, #0
	movs r1, #9
	movs r2, #0
	bl sub_0803F68C
	ldrb r0, [r4, #0xe]
	mov r3, sb
	orrs r0, r3
	strb r0, [r4, #0xe]
	strb r7, [r4, #0xd]
	adds r0, r7, #0
	lsls r0, r5
	ldrb r1, [r4, #0x14]
	orrs r0, r1
	strb r0, [r4, #0x14]
_08040486:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _080403B8
	ldr r0, _08040590 @ =gUnk_03005400
	ldrb r1, [r0, #0x14]
	cmp r1, #0xff
	beq _0804049A
	b _08040B3E
_0804049A:
	ldr r0, _08040594 @ =gUnk_03002920
	ldr r4, _08040598 @ =0x00000277
	adds r1, r0, r4
	ldrb r1, [r1]
	cmp r1, #0x1c
	beq _080404A8
	b _08040B3E
_080404A8:
	adds r7, r0, #0
	ldr r1, _0804059C @ =0x00000293
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080404B6
	b _08040B3E
_080404B6:
	ldr r2, _080405A0 @ =0x000002AF
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080404C2
	b _08040B3E
_080404C2:
	ldr r3, _080405A4 @ =0x000002CB
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080404CE
	b _08040B3E
_080404CE:
	adds r4, #0x70
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080404DA
	b _08040B3E
_080404DA:
	adds r1, #0x70
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080404E6
	b _08040B3E
_080404E6:
	adds r2, #0x70
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080404F2
	b _08040B3E
_080404F2:
	adds r3, #0x70
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080404FE
	b _08040B3E
_080404FE:
	adds r4, #0x70
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _0804050A
	b _08040B3E
_0804050A:
	adds r1, #0x70
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08040516
	b _08040B3E
_08040516:
	ldr r4, _080405A8 @ =0x040000D4
	ldr r0, _080405AC @ =0x08078728
	str r0, [r4]
	ldr r3, _080405B0 @ =gUnk_0818B8E0
	ldr r2, _080405B4 @ =gUnk_03004C20
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
	ldr r2, [sp, #4]
	adds r0, r2, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r3, _080405B8 @ =0x05000200
	adds r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _080405BC @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0804055C
_08040554:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _08040554
_0804055C:
	movs r2, #0
	ldr r4, _08040590 @ =gUnk_03005400
	strb r2, [r4, #0x15]
	strb r2, [r4, #0x16]
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _08040614
	ldr r7, [sp, #4]
	mov r1, r8
	subs r0, r7, r1
	lsls r0, r0, #2
	ldr r3, _08040594 @ =gUnk_03002920
	adds r1, r0, r3
	strb r2, [r1, #0xf]
	movs r0, #1
	strb r0, [r1, #0x10]
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _080405C0
	ldrh r0, [r1, #2]
	cmp r0, #0x2a
	bls _080405C0
	subs r0, #2
	strh r0, [r1, #2]
	b _08040B3E
	.align 2, 0
_08040590: .4byte gUnk_03005400
_08040594: .4byte gUnk_03002920
_08040598: .4byte 0x00000277
_0804059C: .4byte 0x00000293
_080405A0: .4byte 0x000002AF
_080405A4: .4byte 0x000002CB
_080405A8: .4byte 0x040000D4
_080405AC: .4byte 0x08078728
_080405B0: .4byte gUnk_0818B8E0
_080405B4: .4byte gUnk_03004C20
_080405B8: .4byte 0x05000200
_080405BC: .4byte 0x80000010
_080405C0:
	ldr r4, [sp, #4]
	mov r7, r8
	subs r1, r4, r7
	lsls r1, r1, #2
	ldr r0, _08040608 @ =gUnk_03002920
	adds r1, r1, r0
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r1]
	ldrb r2, [r1, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0xc]
	ldr r0, _0804060C @ =0x03003590
	strh r3, [r0, #2]
	strh r3, [r0]
	movs r1, #0x40
	strb r1, [r0, #4]
	ldr r1, _08040610 @ =gUnk_03005400
	strh r3, [r1, #4]
	strh r3, [r1, #6]
	ldrb r1, [r1, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ldr r2, _08040610 @ =gUnk_03005400
	strb r0, [r2, #8]
	movs r0, #0x42
	bl m4aSongNumStart
	movs r0, #0xd
	ldr r3, _08040610 @ =gUnk_03005400
	strb r0, [r3, #0xa]
	b _08040B3E
	.align 2, 0
_08040608: .4byte gUnk_03002920
_0804060C: .4byte 0x03003590
_08040610: .4byte gUnk_03005400
_08040614:
	ldr r4, _0804061C @ =gUnk_03005400
	strb r0, [r4, #0xa]
	b _08040B3E
	.align 2, 0
_0804061C: .4byte gUnk_03005400
_08040620:
	ldr r0, _0804078C @ =gUnk_03002920
	movs r7, #0xfd
	lsls r7, r7, #1
	adds r1, r0, r7
	ldrh r0, [r1]
	cmp r0, #0x9f
	bls _08040632
	subs r0, #4
	strh r0, [r1]
_08040632:
	ldr r1, _08040790 @ =gUnk_03000830
	ldr r0, _08040794 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r2, r8
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _08040648
	b _08040B3E
_08040648:
	ldr r4, _08040798 @ =0x040000D4
	ldr r0, _0804079C @ =0x08078728
	str r0, [r4]
	ldr r3, _080407A0 @ =gUnk_0818B8E0
	ldr r2, _080407A4 @ =gUnk_03004C20
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
	ldr r3, [sp, #4]
	adds r0, r3, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r7, _080407A8 @ =0x05000200
	adds r0, r0, r7
	str r0, [r4, #4]
	ldr r0, _080407AC @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0804068E
_08040686:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _08040686
_0804068E:
	movs r4, #0
_08040690:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0803F68C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _08040690
	ldr r5, _0804078C @ =gUnk_03002920
	ldrh r0, [r5, #2]
	cmp r0, #0xda
	bls _080406B0
	movs r0, #0xda
	strh r0, [r5, #2]
_080406B0:
	ldr r1, _080407B0 @ =0x00000437
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _080407B4 @ =0x0000041B
	adds r0, r5, r2
	strb r1, [r0]
	ldr r3, _080407B8 @ =0x000003FF
	adds r0, r5, r3
	strb r1, [r0]
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r0, r5, r4
	ldrh r1, [r0]
	movs r7, #0x85
	lsls r7, r7, #3
	adds r0, r5, r7
	movs r4, #0
	strh r1, [r0]
	ldr r2, _080407BC @ =0x0000FFFF
	adds r0, r2, #0
	ands r0, r1
	adds r3, #0xd
	adds r1, r5, r3
	strh r0, [r1]
	ands r0, r2
	subs r7, #0x38
	adds r1, r5, r7
	strh r0, [r1]
	movs r1, #0xfd
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	adds r3, #0x1e
	adds r0, r5, r3
	strh r1, [r0]
	ands r2, r1
	adds r7, #0x1e
	adds r0, r5, r7
	strh r2, [r0]
	ldr r1, _080407C0 @ =0x000003F2
	adds r0, r5, r1
	strh r2, [r0]
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #0x78
	movs r2, #0xfe
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #0x64
	ldr r3, _080407C4 @ =0x00000414
	adds r0, r5, r3
	strb r1, [r0]
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #0x5a
	adds r7, #0x22
	adds r0, r5, r7
	strb r1, [r0]
	ldr r0, _080407C8 @ =0x00000207
	adds r1, r5, r0
	movs r0, #0x1c
	strb r0, [r1]
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r5, r1
	strb r4, [r0]
	ldr r1, _080407CC @ =gUnk_03005400
	movs r0, #0xa
	strb r0, [r1, #0xa]
	movs r0, #0x80
	bl m4aSongNumStart
	b _08040B3E
	.align 2, 0
_0804078C: .4byte gUnk_03002920
_08040790: .4byte gUnk_03000830
_08040794: .4byte gUnk_0300363C
_08040798: .4byte 0x040000D4
_0804079C: .4byte 0x08078728
_080407A0: .4byte gUnk_0818B8E0
_080407A4: .4byte gUnk_03004C20
_080407A8: .4byte 0x05000200
_080407AC: .4byte 0x80000010
_080407B0: .4byte 0x00000437
_080407B4: .4byte 0x0000041B
_080407B8: .4byte 0x000003FF
_080407BC: .4byte 0x0000FFFF
_080407C0: .4byte 0x000003F2
_080407C4: .4byte 0x00000414
_080407C8: .4byte 0x00000207
_080407CC: .4byte gUnk_03005400
_080407D0:
	ldr r0, _08040800 @ =gUnk_03002920
	ldr r2, [sp, #4]
	mov r3, r8
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r3, r1, r0
	ldrh r1, [r3, #2]
	cmp r1, #0xb3
	bhi _08040830
	ldr r0, _08040804 @ =gUnk_03004C20
	mov r1, r8
	subs r1, #0x23
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08040830
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08040808
	ldrh r0, [r3]
	adds r0, #1
	b _0804080C
	.align 2, 0
_08040800: .4byte gUnk_03002920
_08040804: .4byte gUnk_03004C20
_08040808:
	ldrh r0, [r3]
	subs r0, #1
_0804080C:
	strh r0, [r3]
	ldr r4, [sp, #4]
	mov r7, r8
	subs r0, r4, r7
	lsls r0, r0, #2
	ldr r2, _08040854 @ =gUnk_03002920
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0x4f
	bhi _08040824
	movs r0, #0x50
	strh r0, [r1]
_08040824:
	ldrh r0, [r1]
	movs r2, #0xc8
	lsls r2, r2, #1
	cmp r0, r2
	bls _08040830
	strh r2, [r1]
_08040830:
	ldr r3, [sp, #4]
	mov r4, r8
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r7, _08040854 @ =gUnk_03002920
	adds r1, r0, r7
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _08040846
	subs r0, #1
	strb r0, [r1, #8]
_08040846:
	ldrb r0, [r1, #8]
	cmp r0, #0x50
	bls _08040858
	ldrh r0, [r1, #2]
	subs r0, #1
	b _08040868
	.align 2, 0
_08040854: .4byte gUnk_03002920
_08040858:
	cmp r0, #0x3c
	bhi _0804086A
	cmp r0, #0x28
	bhi _0804086A
	ldrh r0, [r1, #2]
	cmp r0, #0xd7
	bhi _0804086A
	adds r0, #1
_08040868:
	strh r0, [r1, #2]
_0804086A:
	ldr r1, _080408C8 @ =gUnk_03002920
	ldr r2, _080408CC @ =0x000003F2
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0xd7
	bhi _08040878
	b _08040B3E
_08040878:
	ldr r3, _080408D0 @ =0x0000040E
	adds r0, r1, r3
	ldrh r0, [r0]
	cmp r0, #0xd7
	bhi _08040884
	b _08040B3E
_08040884:
	ldr r4, _080408D4 @ =0x0000042A
	adds r0, r1, r4
	ldrh r0, [r0]
	cmp r0, #0xd7
	bhi _08040890
	b _08040B3E
_08040890:
	mov r7, r8
	cmp r7, #0x24
	beq _08040898
	b _08040B3E
_08040898:
	ldr r1, _080408D8 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _080408B0
	adds r0, r1, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	bne _080408B0
	b _08040B3E
_080408B0:
	ldr r2, _080408DC @ =gUnk_03005400
	ldrb r0, [r2, #0xe]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0xe]
	ldr r0, _080408C8 @ =gUnk_03002920
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r0, #3
	strb r0, [r1, #0xf]
	b _08040B3E
	.align 2, 0
_080408C8: .4byte gUnk_03002920
_080408CC: .4byte 0x000003F2
_080408D0: .4byte 0x0000040E
_080408D4: .4byte 0x0000042A
_080408D8: .4byte gUnk_03005220
_080408DC: .4byte gUnk_03005400
_080408E0:
	ldr r1, _08040924 @ =gUnk_03002920
	ldr r3, [sp, #4]
	mov r4, r8
	subs r0, r3, r4
	lsls r0, r0, #2
	adds r2, r0, r1
	ldr r0, _08040928 @ =gUnk_03003430
	ldrh r0, [r0, #0x24]
	movs r1, #8
	subs r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xf0
	subs r0, r0, r1
	strh r0, [r2]
	ldr r3, _0804092C @ =0x03003590
	ldrh r4, [r3]
	movs r7, #0
	ldrsh r1, [r3, r7]
	movs r0, #0xa0
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08040916
	subs r0, r4, #2
	strh r0, [r3]
	ldrh r0, [r3, #2]
	subs r0, #2
	strh r0, [r3, #2]
_08040916:
	ldrh r0, [r2, #2]
	cmp r0, #0xdf
	bhi _08040930
	adds r0, #2
	strh r0, [r2, #2]
	b _08040B3E
	.align 2, 0
_08040924: .4byte gUnk_03002920
_08040928: .4byte gUnk_03003430
_0804092C: .4byte 0x03003590
_08040930:
	ldr r1, _08040938 @ =gUnk_03005400
	movs r0, #0xc
	strb r0, [r1, #0xa]
	b _08040B3E
	.align 2, 0
_08040938: .4byte gUnk_03005400
_0804093C:
	movs r2, #0
	ldr r3, _0804098C @ =gUnk_03005400
	ldrb r0, [r3, #0xc]
	subs r0, #1
	lsls r0, r0, #1
	movs r1, #0xa
	subs r1, r1, r0
	cmp r2, r1
	bge _08040974
	ldr r6, _08040990 @ =gUnk_03002920
	movs r5, #0x18
	movs r4, #0xa
_08040954:
	adds r1, r2, #0
	adds r1, #0x16
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	strb r5, [r0, #0xf]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r3, #0xc]
	subs r0, #1
	lsls r0, r0, #1
	subs r0, r4, r0
	cmp r2, r0
	blt _08040954
_08040974:
	movs r0, #8
	ldr r1, _0804098C @ =gUnk_03005400
	strb r0, [r1, #0xa]
	ldr r2, [sp, #4]
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _08040990 @ =gUnk_03002920
	adds r0, r0, r4
	movs r1, #0x1a
	strb r1, [r0, #0xf]
	b _08040B3E
	.align 2, 0
_0804098C: .4byte gUnk_03005400
_08040990: .4byte gUnk_03002920
_08040994:
	ldr r0, _080409F4 @ =gUnk_03005400
	ldrh r0, [r0, #6]
	cmp r0, #0
	bne _08040A26
	ldr r7, _080409F8 @ =gUnk_03002920
	ldr r1, [sp, #4]
	mov r2, r8
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r4, r0, r7
	ldrh r0, [r4, #2]
	adds r0, #4
	strh r0, [r4, #2]
	ldr r3, _080409FC @ =gUnk_03004790
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsrs r1, r1, #0x13
	ldrh r5, [r4, #2]
	adds r2, r5, #0
	subs r2, #8
	asrs r2, r2, #3
	ldr r0, _08040A00 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r0, r2, r0
	ldr r2, [r3, #0x14]
	adds r1, r1, r0
	adds r2, r2, r1
	ldr r0, _08040A04 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	ldrb r2, [r2]
	cmp r0, r2
	bhi _08040A26
	cmp r5, #0x64
	bls _08040A26
	ldrh r7, [r7]
	cmp r6, r7
	bhs _08040A08
	ldrb r0, [r4, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r4, #0xc]
	b _08040A12
	.align 2, 0
_080409F4: .4byte gUnk_03005400
_080409F8: .4byte gUnk_03002920
_080409FC: .4byte gUnk_03004790
_08040A00: .4byte gUnk_03003430
_08040A04: .4byte gUnk_03004654
_08040A08:
	ldrb r1, [r4, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0xc]
_08040A12:
	ldr r4, _08040A48 @ =gUnk_03005400
	movs r0, #1
	strh r0, [r4, #6]
	movs r0, #0x7f
	bl m4aSongNumStart
	ldrb r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #8]
_08040A26:
	ldr r0, _08040A48 @ =gUnk_03005400
	ldrh r1, [r0, #6]
	cmp r1, #1
	bne _08040A98
	ldr r0, _08040A4C @ =0x03003590
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r5, r0, #0
	cmp r1, #0x7f
	bgt _08040A50
	adds r0, r2, #4
	strh r0, [r5]
	ldrh r0, [r5, #2]
	adds r0, #4
	strh r0, [r5, #2]
	b _08040A56
	.align 2, 0
_08040A48: .4byte gUnk_03005400
_08040A4C: .4byte 0x03003590
_08040A50:
	movs r0, #2
	ldr r4, _08040A78 @ =gUnk_03005400
	strh r0, [r4, #6]
_08040A56:
	ldrb r0, [r5, #4]
	adds r0, #4
	strb r0, [r5, #4]
	ldr r1, _08040A7C @ =gUnk_03002920
	ldr r7, [sp, #4]
	mov r2, r8
	subs r0, r7, r2
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08040A80
	ldrh r0, [r3]
	adds r0, #1
	b _08040A84
	.align 2, 0
_08040A78: .4byte gUnk_03005400
_08040A7C: .4byte gUnk_03002920
_08040A80:
	ldrh r0, [r3]
	subs r0, #1
_08040A84:
	strh r0, [r3]
	ldr r3, [sp, #4]
	mov r4, r8
	subs r1, r3, r4
	lsls r1, r1, #2
	ldr r7, _08040AD8 @ =gUnk_03002920
	adds r1, r1, r7
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
_08040A98:
	ldr r1, _08040ADC @ =gUnk_03005400
	ldrh r0, [r1, #6]
	cmp r0, #2
	bne _08040B3E
	ldr r1, _08040AE0 @ =0x03003590
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x9f
	bgt _08040AB6
	adds r0, r2, #4
	strh r0, [r1]
	ldrh r0, [r1, #2]
	adds r0, #4
	strh r0, [r1, #2]
_08040AB6:
	ldrb r0, [r1, #4]
	adds r0, #4
	strb r0, [r1, #4]
	ldr r1, _08040AD8 @ =gUnk_03002920
	ldr r4, [sp, #4]
	mov r7, r8
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08040AE4
	ldrh r0, [r3]
	adds r0, #1
	b _08040AE8
	.align 2, 0
_08040AD8: .4byte gUnk_03002920
_08040ADC: .4byte gUnk_03005400
_08040AE0: .4byte 0x03003590
_08040AE4:
	ldrh r0, [r3]
	subs r0, #1
_08040AE8:
	strh r0, [r3]
	ldr r1, [sp, #4]
	mov r2, r8
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08040B28 @ =gUnk_03002920
	adds r2, r0, r3
	ldrh r0, [r2, #2]
	adds r0, #2
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldr r1, _08040B2C @ =0x017B0000
	cmp r0, r1
	bls _08040B3E
	movs r0, #0
	ldr r4, _08040B30 @ =gUnk_03005400
	strh r0, [r4, #6]
	ldrb r1, [r4, #8]
	subs r0, #2
	ands r0, r1
	strb r0, [r4, #8]
	ldrb r1, [r2, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0xc]
	movs r0, #0
	strb r0, [r4, #0xa]
	b _08040B3E
	.align 2, 0
_08040B28: .4byte gUnk_03002920
_08040B2C: .4byte 0x017B0000
_08040B30: .4byte gUnk_03005400

	thumb_func_start sub_08040B34
sub_08040B34: @ 0x08040B34
	cmp r0, #3
	bne _08040B3E
	mov r0, r8
	bl sub_0803CF08
_08040B3E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08040B50
sub_08040B50: @ 0x08040B50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r3, _08040C7C @ =gUnk_03002920
	ldr r0, _08040C80 @ =0x000002AF
	adds r4, r3, r0
	ldrb r1, [r4]
	ldr r2, [sp, #0x14]
	cmp r1, r2
	bne _08040B7A
	ldr r0, _08040C84 @ =gUnk_03005400
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bls _08040B7A
	b _08040D50
_08040B7A:
	ldr r5, [sp, #0x14]
	cmp r5, #0
	beq _08040B82
	b _08040D04
_08040B82:
	cmp r1, #0
	bne _08040B88
	b _08040D50
_08040B88:
	ldr r0, _08040C88 @ =gUnk_03004C20
	ldr r1, _08040C84 @ =gUnk_03005400
	ldrb r1, [r1, #0xc]
	strb r1, [r0, #0xe]
	movs r1, #0
	mov sb, r1
	ldr r2, _08040C8C @ =0x080E2B64
	mov sl, r2
	adds r7, r0, #0
	ldr r4, _08040C90 @ =0x040000D4
	mov r8, r4
_08040B9E:
	mov r6, sb
	adds r6, #0x18
	mov r1, sb
	adds r1, #0xb
	movs r0, #0x2c
	adds r5, r1, #0
	muls r5, r0, r5
	ldrb r0, [r7, #0xc]
	subs r0, #1
	ldr r1, _08040C94 @ =0x00001130
	adds r3, r0, #0
	muls r3, r1, r3
	adds r1, r5, r3
	ldrb r0, [r7, #0xd]
	subs r0, #1
	ldr r4, _08040C98 @ =0x00008980
	adds r2, r0, #0
	muls r2, r4, r2
	adds r1, r1, r2
	add r1, sl
	adds r1, #0x28
	ldrb r1, [r1]
	ldrb r0, [r7, #0xe]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r3
	adds r0, r0, r2
	add r0, sl
	ldrh r2, [r0]
	ldrh r3, [r0, #2]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrb r4, [r7, #0xe]
	subs r4, #1
	lsls r4, r4, #3
	adds r4, r4, r5
	mov ip, r4
	ldrb r0, [r7, #0xc]
	subs r0, #1
	ldr r4, _08040C94 @ =0x00001130
	muls r0, r4, r0
	add ip, r0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	ldr r4, _08040C98 @ =0x00008980
	muls r0, r4, r0
	add r0, ip
	add r0, sl
	ldrb r0, [r0, #5]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
	ldrb r0, [r7, #0xc]
	subs r0, #1
	ldr r4, _08040C94 @ =0x00001130
	muls r0, r4, r0
	adds r5, r5, r0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	ldr r4, _08040C98 @ =0x00008980
	muls r0, r4, r0
	adds r5, r5, r0
	add r5, sl
	adds r5, #0x29
	ldrb r0, [r5]
	str r0, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08003DC0
	ldr r1, _08040C7C @ =gUnk_03002920
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	lsrs r0, r0, #4
	cmp r0, #3
	beq _08040C42
	cmp r0, #1
	bne _08040CAC
_08040C42:
	ldr r0, _08040C9C @ =0x08064868
	mov r5, r8
	str r0, [r5]
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r7, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08040CA0 @ =gUnk_0818B8E0
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r0, #4]
	mov r4, sb
	lsls r0, r4, #3
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r5, _08040CA4 @ =0x06010000
	adds r0, r0, r5
	mov r1, r8
	str r0, [r1, #4]
	ldr r0, _08040CA8 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08040CE2
	.align 2, 0
_08040C7C: .4byte gUnk_03002920
_08040C80: .4byte 0x000002AF
_08040C84: .4byte gUnk_03005400
_08040C88: .4byte gUnk_03004C20
_08040C8C: .4byte 0x080E2B64
_08040C90: .4byte 0x040000D4
_08040C94: .4byte 0x00001130
_08040C98: .4byte 0x00008980
_08040C9C: .4byte 0x08064868
_08040CA0: .4byte gUnk_0818B8E0
_08040CA4: .4byte 0x06010000
_08040CA8: .4byte 0x80000100
_08040CAC:
	ldr r0, _08040CF4 @ =0x080B9468
	mov r2, r8
	str r0, [r2]
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r4, [r7, #0xc]
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r5, _08040CF8 @ =gUnk_0818B8E0
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r1, [r0, #4]
	mov r2, sb
	lsls r0, r2, #3
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r4, _08040CFC @ =0x06010000
	adds r0, r0, r4
	mov r5, r8
	str r0, [r5, #4]
	ldr r0, _08040D00 @ =0x80000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
_08040CE2:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #5
	bhi _08040CF2
	b _08040B9E
_08040CF2:
	b _08040D50
	.align 2, 0
_08040CF4: .4byte 0x080B9468
_08040CF8: .4byte gUnk_0818B8E0
_08040CFC: .4byte 0x06010000
_08040D00: .4byte 0x80000100
_08040D04:
	ldr r1, _08040D60 @ =0x0000033B
	adds r0, r3, r1
	movs r2, #0
	movs r1, #0x1c
	strb r1, [r0]
	ldr r5, _08040D64 @ =0x0000031F
	adds r0, r3, r5
	strb r1, [r0]
	subs r5, #0x1c
	adds r0, r3, r5
	strb r1, [r0]
	subs r5, #0x1c
	adds r0, r3, r5
	strb r1, [r0]
	subs r5, #0x1c
	adds r0, r3, r5
	strb r1, [r0]
	strb r1, [r4]
	movs r1, #0xcf
	lsls r1, r1, #2
	adds r0, r3, r1
	strb r2, [r0]
	movs r4, #0xc8
	lsls r4, r4, #2
	adds r0, r3, r4
	strb r2, [r0]
	adds r5, #0x39
	adds r0, r3, r5
	strb r2, [r0]
	subs r1, #0x54
	adds r0, r3, r1
	strb r2, [r0]
	subs r4, #0x54
	adds r0, r3, r4
	strb r2, [r0]
	subs r5, #0x54
	adds r0, r3, r5
	strb r2, [r0]
_08040D50:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040D60: .4byte 0x0000033B
_08040D64: .4byte 0x0000031F

	thumb_func_start sub_08040D68
sub_08040D68: @ 0x08040D68
	push {r4, r5, r6, r7, lr}
	ldr r4, _08040DD4 @ =gUnk_03002920
	ldr r1, _08040DD8 @ =0x000002AF
	adds r0, r4, r1
	ldrb r0, [r0]
	adds r7, r4, #0
	cmp r0, #0x1c
	bne _08040D7A
	b _08040F14
_08040D7A:
	ldr r0, _08040DDC @ =gUnk_03004C20
	ldrb r1, [r0, #0xe]
	adds r6, r0, #0
	cmp r1, #1
	bne _08040E4C
	ldr r2, _08040DE0 @ =0x000002E7
	adds r5, r4, r2
	ldrb r0, [r5]
	cmp r0, #0
	bne _08040D92
	movs r0, #0x10
	strb r0, [r5]
_08040D92:
	ldrb r0, [r5]
	cmp r0, #0x10
	bne _08040DF0
	ldr r3, _08040DE4 @ =0x080E2B64
	ldrb r1, [r6, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	ldrb r0, [r6, #0xc]
	subs r0, #1
	ldr r2, _08040DE8 @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r6, #0xd]
	subs r0, #1
	ldr r2, _08040DEC @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r3
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, #0xa0
	adds r2, r4, r0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bhi _08040E08
	movs r0, #0x11
	b _08040E06
	.align 2, 0
_08040DD4: .4byte gUnk_03002920
_08040DD8: .4byte 0x000002AF
_08040DDC: .4byte gUnk_03004C20
_08040DE0: .4byte 0x000002E7
_08040DE4: .4byte 0x080E2B64
_08040DE8: .4byte 0x00001130
_08040DEC: .4byte 0x00008980
_08040DF0:
	movs r2, #0xb8
	lsls r2, r2, #2
	adds r1, r4, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	ldr r3, _08040E40 @ =0x080E2B64
	cmp r0, #0
	bne _08040E08
	movs r0, #0x10
_08040E06:
	strb r0, [r5]
_08040E08:
	ldrb r1, [r6, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	ldrb r0, [r6, #0xc]
	subs r0, #1
	ldr r2, _08040E44 @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r6, #0xd]
	subs r0, #1
	ldr r2, _08040E48 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r3
	movs r0, #0x8f
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, #0xa4
	adds r2, r7, r0
	ldrh r0, [r1]
	ldrb r2, [r2]
	adds r0, r0, r2
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r1, r7, r2
	strh r0, [r1]
	b _08040F14
	.align 2, 0
_08040E40: .4byte 0x080E2B64
_08040E44: .4byte 0x00001130
_08040E48: .4byte 0x00008980
_08040E4C:
	cmp r1, #2
	bne _08040F14
	ldr r0, _08040ECC @ =0x000002CB
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _08040E5E
	movs r0, #0xe
	strb r0, [r1]
_08040E5E:
	ldr r2, _08040ED0 @ =0x0000031F
	adds r1, r4, r2
	ldrb r0, [r1]
	cmp r0, #0
	bne _08040E6C
	movs r0, #0xf
	strb r0, [r1]
_08040E6C:
	movs r5, #0
	ldr r0, _08040ED4 @ =0x080E2B64
	mov ip, r0
	adds r7, r4, #0
_08040E74:
	ldr r0, [r6]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08040F14
	ldrb r2, [r6, #0xe]
	subs r2, #1
	lsls r2, r2, #3
	adds r1, r5, #0
	adds r1, #0xc
	movs r0, #0x2c
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r6, #0xc]
	subs r0, #1
	ldr r1, _08040ED8 @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r6, #0xd]
	subs r0, #1
	ldr r1, _08040EDC @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	add r2, ip
	adds r1, r5, #0
	adds r1, #0x19
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r3, r0, r7
	ldrb r0, [r3, #8]
	adds r0, #1
	strb r0, [r3, #8]
	ldrb r2, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r2, r0
	bhi _08040EF0
	ldrb r0, [r3, #0xf]
	cmp r0, #0xe
	bne _08040EE0
	movs r0, #0xf
	b _08040EE2
	.align 2, 0
_08040ECC: .4byte 0x000002CB
_08040ED0: .4byte 0x0000031F
_08040ED4: .4byte 0x080E2B64
_08040ED8: .4byte 0x00001130
_08040EDC: .4byte 0x00008980
_08040EE0:
	movs r0, #0xe
_08040EE2:
	strb r0, [r3, #0xf]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r1, #0
	strb r1, [r0, #8]
_08040EF0:
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r1, r0, r7
	ldrb r0, [r1, #0xf]
	cmp r0, #0xe
	bne _08040F04
	ldrh r0, [r1, #2]
	subs r0, #1
	b _08040F08
_08040F04:
	ldrh r0, [r1, #2]
	adds r0, #1
_08040F08:
	strh r0, [r1, #2]
	adds r0, r5, #3
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08040E74
_08040F14:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08040F1C
sub_08040F1C: @ 0x08040F1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _0804103C @ =0x03003620
	ldr r1, [r0]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl sub_0803D4AC
	ldr r4, _08041040 @ =gUnk_03002920
	lsls r1, r7, #3
	subs r1, r1, r7
	lsls r1, r1, #2
	adds r1, r1, r4
	ldrb r2, [r1, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #0xc
	orrs r0, r2
	strb r0, [r1, #0xd]
	ldrb r0, [r1, #0xe]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1, #0xe]
	ldr r3, _08041044 @ =0x03003590
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r5, #1
	ands r1, r5
	ldrb r2, [r3, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, _08041048 @ =gUnk_03005400
	ldrh r0, [r1]
	cmp r0, #0
	beq _08040F82
	subs r0, #1
	strh r0, [r1]
_08040F82:
	ldrh r1, [r4, #2]
	ldr r0, _0804104C @ =0x0000014F
	cmp r1, r0
	bls _08040FA4
	ldr r2, _08041050 @ =gUnk_03005220
	ldrb r1, [r2]
	lsls r0, r1, #0x1e
	cmp r0, #0
	beq _08040FA4
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2]
	movs r0, #1
	bl sub_08014624
_08040FA4:
	bl sub_08040D68
	ldr r2, _08041040 @ =gUnk_03002920
	ldr r5, _08041054 @ =0x00000216
	adds r3, r2, r5
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bls _08040FD8
	ldr r0, _08041058 @ =0x00000223
	adds r4, r2, r0
	ldrb r0, [r4]
	cmp r0, #0x1c
	beq _08040FD8
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	movs r2, #2
	movs r3, #0x13
	bl sub_0801E664
	movs r0, #0x1c
	strb r0, [r4]
_08040FD8:
	ldr r2, _08041040 @ =gUnk_03002920
	ldr r5, _0804105C @ =0x00000232
	adds r3, r2, r5
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bls _08041008
	ldr r0, _08041060 @ =0x0000023F
	adds r4, r2, r0
	ldrb r0, [r4]
	cmp r0, #0x1c
	beq _08041008
	movs r1, #0x8c
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	movs r2, #2
	movs r3, #0x14
	bl sub_0801E664
	movs r0, #0x1c
	strb r0, [r4]
_08041008:
	ldr r0, _08041040 @ =gUnk_03002920
	lsls r2, r7, #3
	subs r1, r2, r7
	lsls r1, r1, #2
	adds r5, r1, r0
	ldrb r1, [r5, #0xf]
	adds r6, r0, #0
	mov r8, r2
	cmp r1, #0xe
	beq _0804101E
	b _08041276
_0804101E:
	ldr r0, _08041048 @ =gUnk_03005400
	ldrb r2, [r0, #0xa]
	mov sl, r0
	cmp r2, #2
	bne _0804102A
	b _08041180
_0804102A:
	cmp r2, #2
	bgt _08041064
	cmp r2, #0
	beq _0804107A
	cmp r2, #1
	beq _080410F0
	bl _08041E1E
	.align 2, 0
_0804103C: .4byte 0x03003620
_08041040: .4byte gUnk_03002920
_08041044: .4byte 0x03003590
_08041048: .4byte gUnk_03005400
_0804104C: .4byte 0x0000014F
_08041050: .4byte gUnk_03005220
_08041054: .4byte 0x00000216
_08041058: .4byte 0x00000223
_0804105C: .4byte 0x00000232
_08041060: .4byte 0x0000023F
_08041064:
	cmp r2, #4
	bne _0804106A
	b _08041208
_0804106A:
	cmp r2, #4
	bge _08041070
	b _080411B0
_08041070:
	cmp r2, #0xff
	bne _08041076
	b _08041250
_08041076:
	bl _08041E1E
_0804107A:
	mov r3, sl
	ldrb r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #8]
	strb r2, [r3, #9]
	ldr r1, _080410E4 @ =0x03003590
	movs r4, #0
	ldr r0, _080410E8 @ =0x0000FF30
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r2, [r5, #2]
	ldrb r1, [r5, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r5, #0xc]
	adds r0, r7, #0
	movs r1, #8
	bl sub_08025B78
	movs r0, #0
	bl sub_08040B50
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r6, r5
	strb r4, [r0]
	movs r0, #1
	mov r1, sl
	strb r0, [r1, #0xa]
	ldr r0, _080410EC @ =gUnk_030007E0
	strb r4, [r0, #0xc]
	movs r1, #0x78
	strh r1, [r0, #6]
	strh r1, [r0]
	movs r1, #0x46
	strh r1, [r0, #8]
	strh r1, [r0, #2]
	movs r1, #0x60
	strh r1, [r0, #0xa]
	strh r1, [r0, #4]
	mov r2, sl
	ldrb r0, [r2, #0xe]
	movs r1, #4
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0xe]
	bl _08041E1E
	.align 2, 0
_080410E4: .4byte 0x03003590
_080410E8: .4byte 0x0000FF30
_080410EC: .4byte gUnk_030007E0
_080410F0:
	ldr r3, _08041138 @ =gUnk_080D8E14
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r6, r5
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, #0x10
	adds r0, r0, r3
	ldrh r0, [r0]
	movs r3, #0xfd
	lsls r3, r3, #1
	adds r1, r6, r3
	strh r0, [r1]
	ldr r1, _0804113C @ =0x03003590
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	ldrh r0, [r1, #2]
	adds r0, #2
	strh r0, [r1, #2]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x4f
	bhi _08041140
	adds r5, #4
	adds r2, r6, r5
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	b _08041150
	.align 2, 0
_08041138: .4byte gUnk_080D8E14
_0804113C: .4byte 0x03003590
_08041140:
	movs r0, #0x81
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
_08041150:
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0x5a
	beq _08041164
	bl _08041E1E
_08041164:
	movs r1, #0
	movs r0, #2
	mov r2, sl
	strb r0, [r2, #0xa]
	strb r1, [r2, #0x14]
	ldr r1, _0804117C @ =gUnk_03002910
	movs r0, #1
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2, #0x16]
	bl _08041E1E
	.align 2, 0
_0804117C: .4byte gUnk_03002910
_08041180:
	ldr r3, _080411AC @ =0x03003590
	ldrh r1, [r3]
	adds r1, #8
	movs r4, #0
	strh r1, [r3]
	ldrh r0, [r3, #2]
	adds r0, #8
	strh r0, [r3, #2]
	lsls r1, r1, #0x10
	cmp r1, #0
	ble _0804119A
	bl _08041E1E
_0804119A:
	strh r4, [r3, #2]
	strh r4, [r3]
	movs r0, #3
	mov r3, sl
	strb r0, [r3, #0xa]
	strb r2, [r3, #0x16]
	bl _08041E1E
	.align 2, 0
_080411AC: .4byte 0x03003590
_080411B0:
	ldr r1, _080411F8 @ =0x03003590
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	movs r5, #0
	ldrsh r2, [r1, r5]
	rsbs r2, r2, #0
	ldr r0, _080411FC @ =gUnk_030034AC
	ldrh r1, [r0]
	ldr r3, _08041200 @ =0x081168DC
	ldr r0, _08041204 @ =gUnk_03004C20
	ldrb r0, [r0, #0xd]
	subs r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r1, r1, r0
	subs r1, #0x20
	cmp r2, r1
	bge _080411DA
	bl _08041E1E
_080411DA:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08025B78
	movs r0, #0x17
	movs r1, #0
	bl sub_08025B78
	movs r0, #4
	mov r1, sl
	strb r0, [r1, #0xa]
	strb r0, [r1, #0x16]
	bl _08041E1E
	.align 2, 0
_080411F8: .4byte 0x03003590
_080411FC: .4byte gUnk_030034AC
_08041200: .4byte 0x081168DC
_08041204: .4byte gUnk_03004C20
_08041208:
	ldrh r0, [r5, #2]
	cmp r0, #0xa0
	bls _08041212
	subs r0, #1
	strh r0, [r5, #2]
_08041212:
	ldr r1, _0804124C @ =0x03003590
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0804122E
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0804122E
	bl _08041E1E
_0804122E:
	ldrh r0, [r5, #2]
	cmp r0, #0xb0
	bls _08041238
	bl _08041E1E
_08041238:
	movs r0, #0xff
	mov r5, sl
	strb r0, [r5, #0xa]
	movs r0, #0x40
	strh r0, [r5]
	movs r0, #6
	strb r0, [r5, #0x16]
	bl _08041E1E
	.align 2, 0
_0804124C: .4byte 0x03003590
_08041250:
	mov r0, sl
	ldrh r2, [r0]
	cmp r2, #0
	beq _0804125C
	bl _08041E1E
_0804125C:
	ldrb r1, [r0, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sl
	strb r0, [r1, #8]
	strb r2, [r5, #0xf]
	movs r0, #4
	strb r0, [r1, #0xb]
	movs r0, #6
	strb r0, [r1, #0xa]
	bl _08041E1E
_08041276:
	cmp r1, #0
	beq _0804127E
	bl sub_08041DF0
_0804127E:
	ldr r0, _08041298 @ =gUnk_03005400
	ldrb r2, [r0, #0xa]
	mov sl, r0
	cmp r2, #0xf
	bls _0804128C
	bl _08041E1E
_0804128C:
	lsls r0, r2, #2
	ldr r1, _0804129C @ =_080412A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041298: .4byte gUnk_03005400
_0804129C: .4byte _080412A0
_080412A0: @ jump table
	.4byte _080412E0 @ case 0
	.4byte _08041390 @ case 1
	.4byte _08041D7E @ case 2
	.4byte _08041D9A @ case 3
	.4byte _08041A6C @ case 4
	.4byte _08041440 @ case 5
	.4byte _08041960 @ case 6
	.4byte _080419A0 @ case 7
	.4byte _080419EC @ case 8
	.4byte _08041704 @ case 9
	.4byte _0804188C @ case 10
	.4byte _080417FC @ case 11
	.4byte _080415BC @ case 12
	.4byte _08041BE4 @ case 13
	.4byte _08041908 @ case 14
	.4byte _08041B18 @ case 15
_080412E0:
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	movs r1, #0xf8
	lsls r1, r1, #0x15
	ands r1, r0
	asrs r1, r1, #0x18
	ldr r3, _08041308 @ =0x08116A4E
	ldr r6, _0804130C @ =gUnk_03005400
	ldrb r2, [r6, #0xc]
	movs r0, #8
	cmp r2, #2
	bls _080412FC
	movs r0, #0x10
_080412FC:
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r1, r0
	bge _08041310
	ldrh r0, [r3]
	b _08041368
	.align 2, 0
_08041308: .4byte 0x08116A4E
_0804130C: .4byte gUnk_03005400
_08041310:
	movs r0, #8
	cmp r2, #2
	bls _08041318
	movs r0, #0x10
_08041318:
	adds r0, r0, r3
	ldrh r4, [r0]
	movs r0, #8
	cmp r2, #2
	bls _08041324
	movs r0, #0x10
_08041324:
	adds r5, r3, #2
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, r4, r0
	cmp r1, r0
	bge _08041334
	ldrh r0, [r3, #2]
	b _08041368
_08041334:
	movs r0, #8
	cmp r2, #2
	bls _0804133C
	movs r0, #0x10
_0804133C:
	adds r0, r0, r3
	ldrh r4, [r0]
	movs r0, #8
	cmp r2, #2
	bls _08041348
	movs r0, #0x10
_08041348:
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r5, r4, r0
	movs r4, #8
	cmp r2, #2
	bls _08041356
	movs r4, #0x10
_08041356:
	adds r0, r3, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	adds r0, r5, r0
	cmp r1, r0
	bge _08041366
	ldrh r0, [r3, #4]
	b _08041368
_08041366:
	ldrh r0, [r3, #6]
_08041368:
	strh r0, [r6]
	ldr r0, _08041388 @ =gUnk_03002920
	mov r2, r8
	subs r1, r2, r7
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0xf0
	bne _0804137C
	b _08041598
_0804137C:
	ldr r1, _0804138C @ =gUnk_03005400
	movs r0, #0xe
	strb r0, [r1, #0xa]
	bl _08041E1E
	.align 2, 0
_08041388: .4byte gUnk_03002920
_0804138C: .4byte gUnk_03005400
_08041390:
	ldr r1, _080413D4 @ =0x03003590
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	ldrh r0, [r1, #2]
	subs r0, #2
	strh r0, [r1, #2]
	ldr r1, _080413D8 @ =gUnk_03000830
	ldr r0, _080413DC @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _080413B4
	bl _08041E1E
_080413B4:
	movs r0, #0x1c
	bl sub_08040B50
	ldr r2, _080413E0 @ =gUnk_03005400
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _080413E4
	ldrb r0, [r2, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #8]
	movs r0, #2
	strb r0, [r2, #0xa]
	bl _08041E1E
	.align 2, 0
_080413D4: .4byte 0x03003590
_080413D8: .4byte gUnk_03000830
_080413DC: .4byte gUnk_0300363C
_080413E0: .4byte gUnk_03005400
_080413E4:
	movs r4, #0
	ldr r5, _08041438 @ =gUnk_03002920
_080413E8:
	adds r3, r4, #0
	adds r3, #0x15
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r1, r0, r5
	ldrb r0, [r1, #0xf]
	cmp r0, #0x1c
	beq _08041408
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r2, #2
	bl sub_0801E664
_08041408:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080413E8
	ldr r2, _0804143C @ =gUnk_03005400
	ldrb r0, [r2, #8]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r0
	ldrb r3, [r2, #0xc]
	movs r0, #5
	subs r0, r0, r3
	strb r0, [r2, #0x15]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r2, #8]
	ldrb r0, [r2, #0xe]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0xe]
	bl _08041D78
	.align 2, 0
_08041438: .4byte gUnk_03002920
_0804143C: .4byte gUnk_03005400
_08041440:
	ldr r1, _080414D8 @ =gUnk_03000830
	ldr r0, _080414DC @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804145A
	adds r0, r7, #0
	movs r1, #0
	bl sub_08025B78
_0804145A:
	ldr r6, _080414E0 @ =gUnk_03002920
	mov r3, r8
	subs r4, r3, r7
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r5, _080414E4 @ =0x080E2B64
	adds r1, r7, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r3, _080414E8 @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r1, _080414EC @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r1, _080414F0 @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	adds r2, r2, r5
	ldr r5, _080414F4 @ =gUnk_080D8E14
	ldr r0, [r3]
	lsls r0, r0, #2
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	strh r0, [r4, #2]
	ldr r5, _080414F8 @ =0x0000025B
	adds r0, r6, r5
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _0804150C
	ldr r1, _080414FC @ =0x00000277
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _0804150C
	ldr r2, _08041500 @ =0x00000223
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _0804150C
	ldr r3, _08041504 @ =0x0000023F
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _0804150C
	ldr r0, _08041508 @ =gUnk_03005400
	movs r1, #6
	strb r1, [r0, #0xa]
	movs r1, #4
	strb r1, [r0, #0xb]
	bl _08041E1E
	.align 2, 0
_080414D8: .4byte gUnk_03000830
_080414DC: .4byte gUnk_0300363C
_080414E0: .4byte gUnk_03002920
_080414E4: .4byte 0x080E2B64
_080414E8: .4byte gUnk_03004C20
_080414EC: .4byte 0x00001130
_080414F0: .4byte 0x00008980
_080414F4: .4byte gUnk_080D8E14
_080414F8: .4byte 0x0000025B
_080414FC: .4byte 0x00000277
_08041500: .4byte 0x00000223
_08041504: .4byte 0x0000023F
_08041508: .4byte gUnk_03005400
_0804150C:
	mov r5, r8
	subs r0, r5, r7
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r6]
	cmp r0, r1
	bge _0804154C
	adds r0, #0x30
	cmp r0, r1
	ble _0804154C
	ldr r0, _08041548 @ =gUnk_03005400
	ldrb r1, [r0, #0x13]
	mov sl, r0
	cmp r1, #1
	bne _08041554
	adds r0, r7, #0
	movs r1, #3
	bl sub_08025B78
	movs r1, #0
	movs r0, #0xc
	mov r2, sl
	strb r0, [r2, #0xa]
	strb r1, [r2, #0x13]
	bl _08041E1E
	.align 2, 0
_08041548: .4byte gUnk_03005400
_0804154C:
	ldr r1, _08041594 @ =gUnk_03005400
	movs r0, #1
	strb r0, [r1, #0x13]
	mov sl, r1
_08041554:
	mov r3, sl
	ldrh r0, [r3]
	cmp r0, #0
	beq _08041560
	bl _08041E1E
_08041560:
	ldrb r0, [r3, #0xc]
	cmp r0, #2
	bhi _08041598
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x31
	bhi _08041598
	movs r0, #0x1c
	bl sub_08040B50
	mov r5, sl
	ldrb r0, [r5, #0xc]
	movs r1, #5
	subs r1, r1, r0
	strb r1, [r5, #0x15]
	movs r0, #0xf
	strb r0, [r5, #0xa]
	bl _08041E1E
	.align 2, 0
_08041594: .4byte gUnk_03005400
_08041598:
	ldr r4, _080415B8 @ =gUnk_03005400
	ldrb r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #8]
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strb r1, [r4, #0x13]
	movs r0, #0x6e
	bl m4aSongNumStart
	movs r0, #9
	strb r0, [r4, #0xa]
	bl _08041E1E
	.align 2, 0
_080415B8: .4byte gUnk_03005400
_080415BC:
	mov r0, sl
	ldrb r2, [r0, #8]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _08041602
	ldr r1, _080415E8 @ =gUnk_03000830
	ldr r0, _080415EC @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	bne _080415F0
	movs r0, #0x10
	orrs r0, r2
	mov r1, sl
	strb r0, [r1, #8]
	bl _08041E1E
	.align 2, 0
_080415E8: .4byte gUnk_03000830
_080415EC: .4byte gUnk_0300363C
_080415F0:
	mov r2, r8
	subs r1, r2, r7
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
	bl _08041E1E
_08041602:
	ldr r1, _080416E8 @ =gUnk_03000830
	ldr r2, _080416EC @ =gUnk_0300363C
	ldrb r0, [r2]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	mov sb, r1
	adds r4, r2, #0
	cmp r0, #1
	beq _080416B2
	adds r0, r7, #0
	movs r1, #1
	bl sub_08025B78
	movs r0, #0x6d
	bl m4aSongNumStart
	mov r3, sl
	ldrb r1, [r3, #0xe]
	movs r0, #2
	adds r5, r1, #0
	orrs r5, r0
	strb r5, [r3, #0xe]
	movs r0, #2
	strb r0, [r3, #0xd]
	ldr r6, _080416F0 @ =gUnk_03002920
	mov r1, r8
	subs r0, r1, r7
	lsls r0, r0, #2
	adds r2, r0, r6
	ldrh r1, [r2]
	movs r0, #0x8c
	lsls r0, r0, #1
	cmp r1, r0
	bls _08041658
	ldr r0, _080416F4 @ =gUnk_03002910
	movs r1, #0xe
	strb r1, [r0]
	movs r0, #5
	rsbs r0, r0, #0
	ands r5, r0
	strb r5, [r3, #0xe]
_08041658:
	ldrh r0, [r2]
	cmp r0, #0xc7
	bhi _08041670
	ldr r1, _080416F4 @ =gUnk_03002910
	movs r0, #0xf2
	strb r0, [r1]
	mov r2, sl
	ldrb r1, [r2, #0xe]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xe]
_08041670:
	ldr r0, _080416F8 @ =gUnk_03005220
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _080416B2
	ldrh r1, [r6]
	subs r1, #0xf0
	ldr r3, _080416FC @ =gUnk_080D8E14
	ldr r2, _080416F4 @ =gUnk_03002910
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldrh r1, [r6, #2]
	adds r5, r0, r1
	strh r5, [r6, #2]
	ldrh r1, [r6]
	subs r1, #0xf0
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080416B2
	adds r0, r5, #0
	subs r0, #0x20
	strh r0, [r6, #2]
_080416B2:
	ldrb r0, [r4]
	subs r0, r7, r0
	lsls r0, r0, #2
	add r0, sb
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _080416C2
	b _08041E1E
_080416C2:
	ldr r4, _08041700 @ =gUnk_03005400
	ldrb r1, [r4, #8]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r4, #8]
	movs r0, #0
	strb r0, [r4, #0x13]
	movs r0, #0x6e
	bl m4aSongNumStart
	movs r0, #9
	strb r0, [r4, #0xa]
	movs r0, #0x20
	strh r0, [r4]
	b _08041E1E
	.align 2, 0
_080416E8: .4byte gUnk_03000830
_080416EC: .4byte gUnk_0300363C
_080416F0: .4byte gUnk_03002920
_080416F4: .4byte gUnk_03002910
_080416F8: .4byte gUnk_03005220
_080416FC: .4byte gUnk_080D8E14
_08041700: .4byte gUnk_03005400
_08041704:
	mov r3, sl
	ldrb r0, [r3, #8]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #8]
	ldrh r0, [r3]
	cmp r0, #0
	beq _0804171A
	b _08041E1E
_0804171A:
	ldr r2, _08041790 @ =0x03003590
	ldrh r0, [r2, #2]
	subs r0, #8
	strh r0, [r2, #2]
	ldrh r0, [r2]
	adds r0, #8
	strh r0, [r2]
	movs r5, #0xfc
	lsls r5, r5, #1
	adds r3, r6, r5
	mov r0, sl
	ldrb r4, [r0, #0x13]
	ldr r5, _08041794 @ =gUnk_03004C20
	ldr r0, [r5]
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #1
	subs r1, r1, r0
	adds r0, r4, #0
	muls r0, r1, r0
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	mov r3, sl
	ldrb r0, [r3, #0x13]
	adds r0, #4
	strb r0, [r3, #0x13]
	movs r0, #2
	ldrsh r2, [r2, r0]
	rsbs r2, r2, #0
	ldr r0, _08041798 @ =gUnk_03005420
	ldrh r1, [r0]
	ldr r3, _0804179C @ =0x081168DC
	ldrb r0, [r5, #0xd]
	subs r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r1, r1, r0
	subs r1, #0x20
	cmp r2, r1
	bge _0804176E
	b _08041E1E
_0804176E:
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	movs r1, #0xf8
	lsls r1, r1, #0x15
	ands r1, r0
	lsrs r2, r1, #0x18
	ldrh r0, [r6]
	cmp r0, #0xef
	bhi _080417A0
	mov r1, r8
	subs r0, r1, r7
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r1, #2
	b _080417AA
	.align 2, 0
_08041790: .4byte 0x03003590
_08041794: .4byte gUnk_03004C20
_08041798: .4byte gUnk_03005420
_0804179C: .4byte 0x081168DC
_080417A0:
	mov r3, r8
	subs r0, r3, r7
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r1, #3
_080417AA:
	strh r1, [r0, #8]
	adds r1, r2, #0
	cmp r1, #7
	bgt _080417BC
	ldr r1, _080417B8 @ =gUnk_03005400
	movs r0, #0x78
	b _080417D0
	.align 2, 0
_080417B8: .4byte gUnk_03005400
_080417BC:
	cmp r1, #0x17
	bgt _080417CC
	ldr r1, _080417C8 @ =gUnk_03005400
	movs r0, #0xb4
	b _080417D0
	.align 2, 0
_080417C8: .4byte gUnk_03005400
_080417CC:
	ldr r1, _080417F4 @ =gUnk_03005400
	movs r0, #0xf0
_080417D0:
	strh r0, [r1]
	mov sl, r1
	mov r5, sl
	ldrb r0, [r5, #0xe]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5, #0xe]
	ldr r1, _080417F8 @ =gUnk_03002920
	mov r2, r8
	subs r0, r2, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #2]
	movs r0, #0xb
	strb r0, [r5, #0xa]
	b _08041E1E
	.align 2, 0
_080417F4: .4byte gUnk_03005400
_080417F8: .4byte gUnk_03002920
_080417FC:
	mov r3, sl
	ldrh r0, [r3]
	cmp r0, #0
	beq _08041806
	b _08041E1E
_08041806:
	mov r5, r8
	subs r3, r5, r7
	lsls r3, r3, #2
	adds r3, r3, r6
	ldr r0, _0804187C @ =0x080E2B64
	mov r8, r0
	ldrh r1, [r3, #8]
	subs r1, #1
	lsls r1, r1, #3
	adds r2, r7, #0
	subs r2, #0xd
	movs r0, #0x2c
	adds r6, r2, #0
	muls r6, r0, r6
	adds r1, r1, r6
	ldr r2, _08041880 @ =gUnk_03004C20
	ldrb r0, [r2, #0xc]
	subs r0, #1
	ldr r5, _08041884 @ =0x00001130
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	ldr r4, _08041888 @ =0x00008980
	muls r0, r4, r0
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1, #2]
	strh r0, [r3, #2]
	ldrh r1, [r3, #8]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r0, [r2, #0xc]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	muls r0, r4, r0
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1]
	strh r0, [r3]
	strh r0, [r3, #8]
	movs r0, #0xa
	mov r1, sl
	strb r0, [r1, #0xa]
	adds r0, r7, #0
	movs r1, #0
	bl sub_08025B78
	movs r0, #0
	bl sub_08040B50
	movs r0, #0x6e
	bl m4aSongNumStart
	b _08041E1E
	.align 2, 0
_0804187C: .4byte 0x080E2B64
_08041880: .4byte gUnk_03004C20
_08041884: .4byte 0x00001130
_08041888: .4byte 0x00008980
_0804188C:
	ldr r5, _08041900 @ =0x03003590
	ldrh r0, [r5, #2]
	adds r0, #4
	movs r4, #0
	strh r0, [r5, #2]
	ldrh r0, [r5]
	subs r0, #4
	strh r0, [r5]
	mov r3, r8
	subs r2, r3, r7
	lsls r2, r2, #2
	adds r2, r2, r6
	mov r0, sl
	ldrb r3, [r0, #0x13]
	ldr r0, _08041904 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #1
	subs r1, r1, r0
	adds r0, r3, #0
	muls r0, r1, r0
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r1, r6, r2
	strh r0, [r1]
	mov r3, sl
	ldrb r0, [r3, #0x13]
	cmp r0, #0
	beq _080418D0
	subs r0, #2
	strb r0, [r3, #0x13]
_080418D0:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080418DA
	b _08041E1E
_080418DA:
	strh r0, [r5]
	strh r0, [r5, #2]
	mov r2, sl
	ldrb r0, [r2, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r2, #8]
	adds r0, r7, #0
	movs r1, #2
	bl sub_08025B78
	mov r3, sl
	strb r4, [r3, #0x13]
	strb r4, [r3, #0xa]
	b _08041E1E
	.align 2, 0
_08041900: .4byte 0x03003590
_08041904: .4byte gUnk_03004C20
_08041908:
	mov r5, sl
	ldrb r0, [r5, #0x13]
	cmp r0, #4
	bne _08041916
	movs r0, #5
	strb r0, [r5, #0xa]
	b _08041E1E
_08041916:
	ldr r1, _08041958 @ =gUnk_03000830
	ldr r0, _0804195C @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _0804192A
	b _08041E1E
_0804192A:
	mov r0, r8
	subs r2, r0, r7
	lsls r2, r2, #2
	adds r2, r2, r6
	ldrb r3, [r2, #0xc]
	lsls r1, r3, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #2
	subs r0, #0xe
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xc]
	adds r0, r7, #0
	movs r1, #2
	bl sub_08025B78
	mov r1, sl
	ldrb r0, [r1, #0x13]
	adds r0, #1
	strb r0, [r1, #0x13]
	b _08041E1E
	.align 2, 0
_08041958: .4byte gUnk_03000830
_0804195C: .4byte gUnk_0300363C
_08041960:
	mov r2, r8
	subs r0, r2, r7
	lsls r0, r0, #2
	adds r2, r0, r6
	ldrh r0, [r2]
	ldrh r6, [r6]
	cmp r0, r6
	bhs _0804197C
	ldrb r1, [r2, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xc]
	b _0804198A
_0804197C:
	ldrb r0, [r2, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r2, #0xc]
_0804198A:
	adds r0, r7, #0
	movs r1, #7
	bl sub_08025B78
	ldr r1, _0804199C @ =gUnk_03005400
	movs r0, #7
	strb r0, [r1, #0xa]
	b _08041E1E
	.align 2, 0
_0804199C: .4byte gUnk_03005400
_080419A0:
	ldr r1, _080419C8 @ =gUnk_03000830
	ldr r0, _080419CC @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _080419B4
	b _08041E1E
_080419B4:
	ldr r0, _080419D0 @ =gUnk_03005400
	ldrb r0, [r0, #0xb]
	cmp r0, #4
	bne _080419D4
	adds r0, r7, #0
	movs r1, #5
	bl sub_08025B78
	b _080419E0
	.align 2, 0
_080419C8: .4byte gUnk_03000830
_080419CC: .4byte gUnk_0300363C
_080419D0: .4byte gUnk_03005400
_080419D4:
	cmp r0, #8
	bne _080419E0
	adds r0, r7, #0
	movs r1, #9
	bl sub_08025B78
_080419E0:
	ldr r1, _080419E8 @ =gUnk_03005400
	ldrb r0, [r1, #0xb]
	strb r0, [r1, #0xa]
	b _08041E1E
	.align 2, 0
_080419E8: .4byte gUnk_03005400
_080419EC:
	mov r3, r8
	subs r4, r3, r7
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r5, _08041A50 @ =0x080E2B64
	adds r1, r7, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r3, _08041A54 @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r1, _08041A58 @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r1, _08041A5C @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	adds r2, r2, r5
	ldr r5, _08041A60 @ =gUnk_080D8E14
	ldr r0, [r3]
	lsls r0, r0, #2
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	strh r0, [r4, #2]
	ldr r1, _08041A64 @ =gUnk_03000830
	ldr r0, _08041A68 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _08041A46
	b _08041E1E
_08041A46:
	movs r0, #5
	mov r5, sl
	strb r0, [r5, #0xa]
	b _08041E1E
	.align 2, 0
_08041A50: .4byte 0x080E2B64
_08041A54: .4byte gUnk_03004C20
_08041A58: .4byte 0x00001130
_08041A5C: .4byte 0x00008980
_08041A60: .4byte gUnk_080D8E14
_08041A64: .4byte gUnk_03000830
_08041A68: .4byte gUnk_0300363C
_08041A6C:
	mov r0, r8
	subs r4, r0, r7
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r5, _08041AEC @ =0x080E2B64
	adds r1, r7, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r3, _08041AF0 @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r1, _08041AF4 @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r1, _08041AF8 @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	adds r2, r2, r5
	ldr r5, _08041AFC @ =gUnk_080D8E14
	ldr r0, [r3]
	lsls r0, r0, #2
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	strh r0, [r4, #2]
	ldr r1, _08041B00 @ =gUnk_03000830
	ldr r0, _08041B04 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	beq _08041AC6
	b _08041E1E
_08041AC6:
	ldrb r0, [r1]
	cmp r0, #5
	bne _08041B10
	ldr r1, _08041B08 @ =0x00000277
	adds r0, r6, r1
	movs r1, #0x19
	strb r1, [r0]
	ldr r2, _08041B0C @ =0x0000025B
	adds r0, r6, r2
	strb r1, [r0]
	movs r0, #0x6a
	bl m4aSongNumStart
	adds r0, r7, #0
	movs r1, #6
	bl sub_08025B78
	b _08041E1E
	.align 2, 0
_08041AEC: .4byte 0x080E2B64
_08041AF0: .4byte gUnk_03004C20
_08041AF4: .4byte 0x00001130
_08041AF8: .4byte 0x00008980
_08041AFC: .4byte gUnk_080D8E14
_08041B00: .4byte gUnk_03000830
_08041B04: .4byte gUnk_0300363C
_08041B08: .4byte 0x00000277
_08041B0C: .4byte 0x0000025B
_08041B10:
	movs r0, #0
	mov r3, sl
	strb r0, [r3, #0xa]
	b _08041E1E
_08041B18:
	movs r5, #0xfd
	lsls r5, r5, #1
	adds r2, r6, r5
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08041B38
	subs r0, r3, #1
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	b _08041E1C
_08041B38:
	bl thunk_GetRandomValue
	ldr r5, _08041BD0 @ =gUnk_03005400
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl __umodsi3
	strb r0, [r5, #0x13]
	ldr r4, _08041BD4 @ =0x03003590
	ldr r3, _08041BD8 @ =gUnk_03005420
	ldr r2, _08041BDC @ =0x081168DC
	ldr r1, _08041BE0 @ =gUnk_03004C20
	ldrb r1, [r1, #0xd]
	subs r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	ldrh r2, [r3]
	adds r2, r2, r1
	movs r1, #0x20
	subs r1, r1, r2
	strh r1, [r4, #2]
	strh r1, [r4]
	ldrb r1, [r5, #8]
	movs r2, #1
	orrs r1, r2
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r5, #8]
	ldrb r2, [r5, #0x13]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #4
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r4, r6, r2
	strh r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08041B9E
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
_08041B9E:
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
	movs r1, #0x81
	lsls r1, r1, #2
	adds r2, r6, r1
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	movs r1, #8
	bl sub_08025B78
	movs r0, #0x20
	strh r0, [r5]
	movs r0, #0xd
	strb r0, [r5, #0xa]
	b _08041E1E
	.align 2, 0
_08041BD0: .4byte gUnk_03005400
_08041BD4: .4byte 0x03003590
_08041BD8: .4byte gUnk_03005420
_08041BDC: .4byte 0x081168DC
_08041BE0: .4byte gUnk_03004C20
_08041BE4:
	mov r2, sl
	ldrh r0, [r2]
	cmp r0, #0
	beq _08041BEE
	b _08041E1E
_08041BEE:
	ldr r0, _08041C34 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08041C12
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r2, [r0]
	mov r5, sl
	ldrb r1, [r5, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	cmp r2, r0
	bge _08041C12
	b _08041E1E
_08041C12:
	mov r1, sl
	ldrb r0, [r1, #0x13]
	cmp r0, #0
	bne _08041C48
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0x3f
	bhi _08041C38
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r1, r6, r3
	ldrh r0, [r1]
	adds r0, #4
	b _08041C72
	.align 2, 0
_08041C34: .4byte gUnk_03004C20
_08041C38:
	cmp r0, #0x5f
	bhi _08041C74
	movs r5, #0xfc
	lsls r5, r5, #1
	adds r1, r6, r5
	ldrh r0, [r1]
	adds r0, #3
	b _08041C72
_08041C48:
	cmp r0, #2
	bne _08041C74
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0x3f
	bhi _08041C64
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r1, r6, r2
	ldrh r0, [r1]
	subs r0, #5
	b _08041C72
_08041C64:
	cmp r0, #0x5f
	bhi _08041C74
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r1, r6, r3
	ldrh r0, [r1]
	subs r0, #2
_08041C72:
	strh r0, [r1]
_08041C74:
	ldr r0, _08041C90 @ =gUnk_03002920
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0x1f
	bls _08041D06
	cmp r0, #0x20
	bne _08041C94
	movs r0, #0x6f
	bl m4aSongNumStart
	b _08041D06
	.align 2, 0
_08041C90: .4byte gUnk_03002920
_08041C94:
	cmp r0, #0x3f
	bhi _08041CCC
	ldr r0, _08041CC4 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08041CB4
	mov r1, sl
	ldrb r0, [r1, #0xe]
	movs r1, #2
	orrs r0, r1
	mov r2, sl
	strb r0, [r2, #0xe]
	movs r0, #1
	strb r0, [r2, #0xd]
_08041CB4:
	ldr r0, _08041CC8 @ =0x03003590
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	ldrh r1, [r0, #2]
	adds r1, #1
	strh r1, [r0, #2]
	b _08041D06
	.align 2, 0
_08041CC4: .4byte gUnk_03004C20
_08041CC8: .4byte 0x03003590
_08041CCC:
	ldr r0, _08041D64 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08041CEC
	mov r3, sl
	ldrb r1, [r3, #0xe]
	movs r2, #2
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0xe]
	movs r0, #3
	strb r0, [r3, #0xd]
_08041CEC:
	mov r5, sl
	ldrb r1, [r5, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #8]
	ldr r1, _08041D68 @ =0x03003590
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r1]
	ldrh r0, [r1, #2]
	adds r0, #0xa
	strh r0, [r1, #2]
_08041D06:
	ldr r4, _08041D6C @ =gUnk_03002920
	ldr r3, _08041D70 @ =gUnk_080D8E14
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, #0x10
	adds r0, r0, r3
	ldrh r0, [r0]
	movs r2, #0xfd
	lsls r2, r2, #1
	adds r3, r4, r2
	strh r0, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x70
	bne _08041E1E
	movs r5, #0x81
	lsls r5, r5, #2
	adds r2, r4, r5
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08041D74 @ =gUnk_03005400
	ldrb r0, [r2, #0x15]
	subs r0, #1
	strb r0, [r2, #0x15]
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	bne _08041D78
	movs r0, #9
	strb r0, [r2, #0xa]
	ldr r0, _08041D68 @ =0x03003590
	strh r1, [r0, #2]
	strh r1, [r0]
	b _08041E1E
	.align 2, 0
_08041D64: .4byte gUnk_03004C20
_08041D68: .4byte 0x03003590
_08041D6C: .4byte gUnk_03002920
_08041D70: .4byte gUnk_080D8E14
_08041D74: .4byte gUnk_03005400
_08041D78:
	movs r0, #0xf
	strb r0, [r2, #0xa]
	b _08041E1E
_08041D7E:
	mov r0, sl
	ldrb r1, [r0, #8]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08041E1E
	adds r0, r7, #0
	movs r1, #1
	bl sub_08025B78
	movs r0, #3
	mov r1, sl
	strb r0, [r1, #0xa]
	b _08041E1E
_08041D9A:
	ldr r1, _08041DD4 @ =gUnk_03000830
	ldr r0, _08041DD8 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	bne _08041E1E
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _08041DE0
	ldr r0, _08041DDC @ =gUnk_03005220
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041E1E
	mov r2, sl
	ldrb r0, [r2, #0xe]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0xe]
	mov r3, r8
	subs r0, r3, r7
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r1, #3
	strb r1, [r0, #0xf]
	b _08041E1E
	.align 2, 0
_08041DD4: .4byte gUnk_03000830
_08041DD8: .4byte gUnk_0300363C
_08041DDC: .4byte gUnk_03005220
_08041DE0:
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_08025B78
	movs r0, #0x81
	bl m4aSongNumStart
	b _08041E1E

	thumb_func_start sub_08041DF0
sub_08041DF0: @ 0x08041DF0
	cmp r1, #3
	bne _08041E10
	ldr r2, _08041E08 @ =gNewKeys
	ldr r1, _08041E0C @ =gHeldKeys
	movs r0, #0
	strh r0, [r1]
	strh r0, [r2]
	adds r0, r7, #0
	bl sub_0803CF08
	b _08041E1E
	.align 2, 0
_08041E08: .4byte gNewKeys
_08041E0C: .4byte gHeldKeys
_08041E10:
	cmp r1, #4
	bne _08041E1E
	ldr r2, _08041E38 @ =gNewKeys
	ldr r1, _08041E3C @ =gHeldKeys
	movs r0, #0
	strh r0, [r1]
_08041E1C:
	strh r0, [r2]
_08041E1E:
	ldr r1, _08041E40 @ =0x08117110
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldr r0, _08041E44 @ =gUnk_03005400
	ldrb r0, [r0, #0xa]
	cmp r0, #0xd
	bne _08041E4C
	ldr r0, _08041E48 @ =gUnk_03004C20
	ldr r0, [r0]
	lsrs r1, r0, #1
	b _08041E52
	.align 2, 0
_08041E38: .4byte gNewKeys
_08041E3C: .4byte gHeldKeys
_08041E40: .4byte 0x08117110
_08041E44: .4byte gUnk_03005400
_08041E48: .4byte gUnk_03004C20
_08041E4C:
	ldr r0, _08041E84 @ =gUnk_03004C20
	ldr r0, [r0]
	lsrs r1, r0, #3
_08041E52:
	movs r0, #7
	ands r1, r0
	ldr r2, _08041E88 @ =0x040000D4
	lsls r0, r1, #1
	add r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #6
	ldr r1, _08041E8C @ =gUnk_03001100
	adds r0, r0, r1
	str r0, [r2]
	movs r5, #0x88
	lsls r5, r5, #3
	adds r1, r1, r5
	str r1, [r2, #4]
	ldr r0, _08041E90 @ =0x80000060
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041E84: .4byte gUnk_03004C20
_08041E88: .4byte 0x040000D4
_08041E8C: .4byte gUnk_03001100
_08041E90: .4byte 0x80000060

	thumb_func_start sub_08041E94
sub_08041E94: @ 0x08041E94
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r2, #0xff
	bne _08041EE8
	ldr r0, _08041ED4 @ =0x03003790
	adds r3, r1, r0
	ldr r2, _08041ED8 @ =gUnk_03004790
	ldr r0, _08041EDC @ =gUnk_03003430
	adds r0, #0x48
	ldrh r1, [r0]
	lsls r0, r1, #5
	subs r0, r0, r1
	adds r0, #0x3c
	ldr r1, [r2, #0x14]
	adds r1, r1, r0
	movs r4, #0
	ldr r2, _08041EE0 @ =0x040000D4
	ldr r5, _08041EE4 @ =0x80000003
_08041EBE:
	str r1, [r2]
	str r3, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	adds r3, #0x40
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1d
	bls _08041EBE
	b _08041F1A
	.align 2, 0
_08041ED4: .4byte 0x03003790
_08041ED8: .4byte gUnk_03004790
_08041EDC: .4byte gUnk_03003430
_08041EE0: .4byte 0x040000D4
_08041EE4: .4byte 0x80000003
_08041EE8:
	ldr r0, _08041F20 @ =0x03003790
	adds r3, r1, r0
	ldr r1, _08041F24 @ =gUnk_03004790
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, #0x3c
	ldr r1, [r1, #0x14]
	adds r1, r1, r0
	movs r4, #0
	ldr r2, _08041F28 @ =0x040000D4
	ldr r6, _08041F2C @ =0x80000003
	ldr r0, _08041F30 @ =gUnk_03003478
	ldrh r5, [r0]
_08041F04:
	str r1, [r2]
	str r3, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	adds r1, r1, r5
	adds r3, #0x40
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1d
	bls _08041F04
_08041F1A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08041F20: .4byte 0x03003790
_08041F24: .4byte gUnk_03004790
_08041F28: .4byte 0x040000D4
_08041F2C: .4byte 0x80000003
_08041F30: .4byte gUnk_03003478

	thumb_func_start sub_08041F34
sub_08041F34: @ 0x08041F34
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bne _08041FC4
	ldr r2, _08041F78 @ =gUnk_03005400
	ldrb r0, [r2, #0xe]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0xe]
	ldr r0, _08041F7C @ =gUnk_03002920
	movs r3, #0
	strb r3, [r0, #0xf]
	strb r4, [r0, #0x10]
	ldr r2, _08041F80 @ =0x0000023F
	adds r1, r0, r2
	movs r2, #0x19
	strb r2, [r1]
	ldr r1, _08041F84 @ =0x00000223
	adds r0, r0, r1
	strb r2, [r0]
	ldr r0, _08041F88 @ =gUnk_03005220
	adds r1, r0, #0
	adds r1, #0x3e
	strb r3, [r1]
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #1
	bne _08041F8C
	movs r0, #0
	movs r1, #0
	bl sub_08025B78
	b _08041F94
	.align 2, 0
_08041F78: .4byte gUnk_03005400
_08041F7C: .4byte gUnk_03002920
_08041F80: .4byte 0x0000023F
_08041F84: .4byte 0x00000223
_08041F88: .4byte gUnk_03005220
_08041F8C:
	movs r0, #0
	movs r1, #4
	bl sub_08025B78
_08041F94:
	ldr r4, _08041FB8 @ =gUnk_03002920
	ldr r2, _08041FBC @ =0x0000035E
	adds r5, r4, r2
	ldrb r3, [r5]
	cmp r3, #1
	bne _0804200C
	ldr r0, _08041FC0 @ =0x00000357
	adds r1, r4, r0
	movs r2, #0
	movs r0, #0xe
	strb r0, [r1]
	movs r1, #0xd6
	lsls r1, r1, #2
	adds r0, r4, r1
	strb r3, [r0]
	strb r2, [r5]
	b _0804200C
	.align 2, 0
_08041FB8: .4byte gUnk_03002920
_08041FBC: .4byte 0x0000035E
_08041FC0: .4byte 0x00000357
_08041FC4:
	ldr r2, _08042014 @ =gUnk_03005400
	ldrb r1, [r2, #0xe]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0xe]
	ldr r3, _08042018 @ =gUnk_03002920
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r5, r3, r2
	ldrb r4, [r5]
	cmp r4, #1
	bne _08041FEE
	ldr r0, _0804201C @ =0x00000357
	adds r1, r3, r0
	movs r2, #0
	movs r0, #0x1c
	strb r0, [r1]
	strb r2, [r5]
	ldr r1, _08042020 @ =0x0000035E
	adds r0, r3, r1
	strb r4, [r0]
_08041FEE:
	movs r2, #0
	adds r1, r3, #0
	movs r4, #0
	movs r3, #0x1c
_08041FF6:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r3, [r0, #0xf]
	strb r4, [r0, #0x10]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xc
	bls _08041FF6
_0804200C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08042014: .4byte gUnk_03005400
_08042018: .4byte gUnk_03002920
_0804201C: .4byte 0x00000357
_08042020: .4byte 0x0000035E

	thumb_func_start sub_08042024
sub_08042024: @ 0x08042024
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _08042070 @ =gUnk_03005400
	mov sl, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _08042044
	subs r0, #1
	mov r1, sl
	strh r0, [r1]
_08042044:
	ldr r6, _08042074 @ =gUnk_03002920
	lsls r1, r7, #3
	subs r0, r1, r7
	lsls r0, r0, #2
	adds r0, r0, r6
	mov r8, r0
	ldrb r0, [r0, #0xf]
	mov sb, r1
	cmp r0, #0xe
	beq _0804205A
	b _080421E4
_0804205A:
	mov r2, sl
	ldrb r0, [r2, #0xa]
	cmp r0, #1
	beq _08042154
	cmp r0, #1
	bgt _08042078
	cmp r0, #0
	beq _08042082
	bl _08042BDA
	.align 2, 0
_08042070: .4byte gUnk_03005400
_08042074: .4byte gUnk_03002920
_08042078:
	cmp r0, #0xff
	bne _0804207E
	b _08042180
_0804207E:
	bl _08042BDA
_08042082:
	ldr r1, _08042140 @ =0x03003590
	movs r5, #0
	ldr r0, _08042144 @ =0x0000FF80
	strh r0, [r1, #2]
	strh r0, [r1]
	ldr r1, _08042148 @ =gIntrTable
	ldr r0, _0804214C @ =sub_08000FA0
	str r0, [r1, #4]
	movs r4, #1
	movs r0, #1
	mov r3, sl
	strb r0, [r3, #0xa]
	adds r0, r7, #0
	movs r1, #8
	bl sub_08025B78
	movs r0, #0x15
	movs r1, #0
	bl sub_08025B78
	mov r0, r8
	ldrb r2, [r0, #0xc]
	movs r1, #4
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r4
	mov r2, r8
	strb r0, [r2, #0xc]
	movs r0, #0xce
	lsls r0, r0, #2
	adds r3, r6, r0
	ldrb r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3]
	movs r2, #0xc7
	lsls r2, r2, #2
	adds r3, r6, r2
	ldrb r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r3, r6, r0
	ldrb r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3]
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r3, r6, r2
	ldrb r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3]
	movs r3, #0x96
	lsls r3, r3, #2
	adds r2, r6, r3
	ldrb r0, [r2]
	ands r1, r0
	orrs r1, r4
	strb r1, [r2]
	ldr r1, _08042150 @ =gUnk_030007E0
	strb r5, [r1, #0xc]
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r0, r6, r4
	ldrh r0, [r0]
	subs r0, #0x78
	strh r0, [r1, #6]
	strh r0, [r1]
	movs r5, #0xfd
	lsls r5, r5, #1
	adds r0, r6, r5
	ldrh r0, [r0]
	strh r0, [r1, #8]
	strh r0, [r1, #2]
	movs r0, #0x60
	strh r0, [r1, #0xa]
	strh r0, [r1, #4]
	mov r1, sl
	ldrb r0, [r1, #0xe]
	movs r1, #0x80
	orrs r0, r1
	mov r2, sl
	strb r0, [r2, #0xe]
	bl _08042BDA
	.align 2, 0
_08042140: .4byte 0x03003590
_08042144: .4byte 0x0000FF80
_08042148: .4byte gIntrTable
_0804214C: .4byte sub_08000FA0
_08042150: .4byte gUnk_030007E0
_08042154:
	ldr r2, _0804217C @ =0x03003590
	ldrh r1, [r2]
	adds r1, #4
	strh r1, [r2]
	ldrh r0, [r2, #2]
	adds r0, #4
	strh r0, [r2, #2]
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _0804216C
	bl _08042BDA
_0804216C:
	movs r0, #0xff
	mov r3, sl
	strb r0, [r3, #0xa]
	movs r0, #0x3c
	strh r0, [r3]
	bl _08042BDA
	.align 2, 0
_0804217C: .4byte 0x03003590
_08042180:
	mov r4, sl
	ldrh r0, [r4]
	cmp r0, #0
	beq _0804218C
	bl _08042BDA
_0804218C:
	mov r5, r8
	strb r0, [r5, #0xf]
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _080421CC @ =gUnk_030007E0
	movs r0, #1
	strb r0, [r1, #0xc]
	movs r0, #0x60
	strh r0, [r1, #0xa]
	ldr r1, _080421D0 @ =0x0000023F
	adds r0, r6, r1
	movs r1, #0x19
	strb r1, [r0]
	ldr r2, _080421D4 @ =0x00000223
	adds r0, r6, r2
	strb r1, [r0]
	ldr r1, _080421D8 @ =gUnk_03005498
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080421DC @ =0x04000050
	movs r3, #0xa1
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080421E0 @ =0x04000052
	movs r1, #0x10
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bl _08042BDA
	.align 2, 0
_080421CC: .4byte gUnk_030007E0
_080421D0: .4byte 0x0000023F
_080421D4: .4byte 0x00000223
_080421D8: .4byte gUnk_03005498
_080421DC: .4byte 0x04000050
_080421E0: .4byte 0x04000052
_080421E4:
	cmp r0, #0
	beq _080421F0
	cmp r0, #0x1a
	beq _080421F0
	bl sub_08042BD0
_080421F0:
	ldr r0, _08042214 @ =0x03003620
	ldr r1, [r0]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl sub_0803D4AC
	mov r4, sl
	ldrb r0, [r4, #0xa]
	cmp r0, #0xd
	bls _08042208
	bl _08042BDA
_08042208:
	lsls r0, r0, #2
	ldr r1, _08042218 @ =_0804221C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042214: .4byte 0x03003620
_08042218: .4byte _0804221C
_0804221C: @ jump table
	.4byte _08042254 @ case 0
	.4byte _080422C8 @ case 1
	.4byte _08042468 @ case 2
	.4byte _08042640 @ case 3
	.4byte _08042BDA @ case 4
	.4byte _08042BDA @ case 5
	.4byte _08042BDA @ case 6
	.4byte _0804286C @ case 7
	.4byte _08042810 @ case 8
	.4byte _08042930 @ case 9
	.4byte _080429F4 @ case 10
	.4byte _08042B88 @ case 11
	.4byte _080426C0 @ case 12
	.4byte _0804239C @ case 13
_08042254:
	ldr r0, _080422B0 @ =gUnk_03002920
	mov r5, sb
	subs r3, r5, r7
	lsls r3, r3, #2
	adds r3, r3, r0
	movs r0, #1
	strb r0, [r3, #0x10]
	ldr r0, _080422B4 @ =0x080E2B64
	mov r8, r0
	adds r1, r7, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r4, _080422B8 @ =gUnk_03004C20
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r6, _080422BC @ =0x00001130
	muls r0, r6, r0
	adds r0, r2, r0
	ldrb r1, [r4, #0xd]
	subs r1, #1
	ldr r5, _080422C0 @ =0x00008980
	muls r1, r5, r1
	adds r0, r0, r1
	add r0, r8
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r3]
	ldrb r0, [r4, #0xc]
	subs r0, #1
	muls r0, r6, r0
	adds r2, r2, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	muls r0, r5, r0
	adds r2, r2, r0
	add r2, r8
	ldrh r0, [r2, #2]
	strh r0, [r3, #2]
	strb r1, [r3, #0xf]
	ldr r1, _080422C4 @ =gUnk_03005400
	movs r0, #2
	strb r0, [r1, #0xa]
	bl _08042BDA
	.align 2, 0
_080422B0: .4byte gUnk_03002920
_080422B4: .4byte 0x080E2B64
_080422B8: .4byte gUnk_03004C20
_080422BC: .4byte 0x00001130
_080422C0: .4byte 0x00008980
_080422C4: .4byte gUnk_03005400
_080422C8:
	mov r1, sp
	ldr r0, _08042384 @ =gUnk_03002920
	mov r2, sb
	subs r4, r2, r7
	lsls r4, r4, #2
	adds r4, r4, r0
	ldrh r0, [r4]
	strh r0, [r1]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	mov r2, sp
	ldr r3, _08042388 @ =0x080E2B64
	mov sl, r3
	adds r1, r7, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r5, r1, #0
	muls r5, r0, r5
	mov sb, r5
	ldr r5, _0804238C @ =gUnk_03004C20
	ldrb r0, [r5, #0xc]
	subs r0, #1
	ldr r1, _08042390 @ =0x00001130
	mov r8, r1
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, sb
	ldrb r1, [r5, #0xd]
	subs r1, #1
	ldr r6, _08042394 @ =0x00008980
	muls r1, r6, r1
	adds r0, r0, r1
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r2, #4]
	ldrb r0, [r5, #0xc]
	subs r0, #1
	mov r1, r8
	muls r1, r0, r1
	add r1, sb
	ldrb r0, [r5, #0xd]
	subs r0, #1
	muls r0, r6, r0
	adds r1, r1, r0
	add r1, sl
	ldrh r0, [r1, #2]
	strh r0, [r2, #6]
	mov r1, sp
	movs r0, #2
	strb r0, [r1, #9]
	strb r0, [r2, #8]
	add r0, sp, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_0800BEF0
	ldr r2, [sp, #0xc]
	strh r2, [r4]
	lsrs r3, r2, #0x10
	strh r3, [r4, #2]
	lsls r2, r2, #0x10
	ldrb r1, [r5, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	add r1, sb
	ldrb r0, [r5, #0xc]
	subs r0, #1
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r1, r0
	ldrb r0, [r5, #0xd]
	subs r0, #1
	muls r0, r6, r0
	adds r1, r1, r0
	add r1, sl
	ldrh r0, [r1]
	lsrs r2, r2, #0x13
	lsrs r0, r0, #3
	cmp r2, r0
	bne _08042430
	ldrh r0, [r1, #2]
	lsrs r1, r3, #3
	lsrs r0, r0, #3
	cmp r1, r0
	bne _08042430
	ldr r0, _08042398 @ =gUnk_03005400
	movs r1, #0x1e
	strh r1, [r0]
	movs r1, #0xd
	strb r1, [r0, #0xa]
	b _08042430
	.align 2, 0
_08042384: .4byte gUnk_03002920
_08042388: .4byte 0x080E2B64
_0804238C: .4byte gUnk_03004C20
_08042390: .4byte 0x00001130
_08042394: .4byte 0x00008980
_08042398: .4byte gUnk_03005400
_0804239C:
	ldr r1, _08042414 @ =gUnk_03005400
	ldrh r6, [r1]
	cmp r6, #0
	bne _08042430
	movs r0, #8
	strb r0, [r1, #0xa]
	ldr r0, _08042418 @ =0x03003590
	movs r1, #0
	strh r6, [r0, #2]
	strh r6, [r0]
	ldr r3, _0804241C @ =gUnk_03002920
	mov r5, sb
	subs r2, r5, r7
	lsls r2, r2, #2
	adds r2, r2, r3
	strb r1, [r2, #0x10]
	movs r0, #0x1a
	strb r0, [r2, #0xf]
	movs r0, #0xce
	lsls r0, r0, #2
	adds r5, r3, r0
	ldrb r4, [r5]
	movs r1, #0xd
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r4
	strb r0, [r5]
	movs r5, #0xc7
	lsls r5, r5, #2
	adds r4, r3, r5
	ldrb r0, [r4]
	ands r1, r0
	strb r1, [r4]
	strh r6, [r2, #2]
	strh r6, [r2]
	ldr r1, _08042420 @ =0x0000032E
	adds r0, r3, r1
	strh r6, [r0]
	movs r2, #0xcb
	lsls r2, r2, #2
	adds r0, r3, r2
	strh r6, [r0]
	ldr r4, _08042424 @ =0x00000312
	adds r0, r3, r4
	strh r6, [r0]
	subs r5, #0xc
	adds r3, r3, r5
	strh r6, [r3]
	ldr r2, _08042428 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0804242C @ =0x04000004
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	b _08042BDA
	.align 2, 0
_08042414: .4byte gUnk_03005400
_08042418: .4byte 0x03003590
_0804241C: .4byte gUnk_03002920
_08042420: .4byte 0x0000032E
_08042424: .4byte 0x00000312
_08042428: .4byte 0x04000200
_0804242C: .4byte 0x04000004
_08042430:
	ldr r3, _0804245C @ =0x03003590
	ldr r2, _08042460 @ =gUnk_080D8E14
	ldr r0, _08042464 @ =gUnk_03004C20
	ldr r1, [r0]
	lsls r1, r1, #3
	movs r0, #0xff
	ands r1, r0
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	asrs r0, r0, #2
	strh r0, [r3]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r5, #0
	ldrsh r0, [r1, r5]
	asrs r0, r0, #3
	strh r0, [r3, #2]
	b _08042BDA
	.align 2, 0
_0804245C: .4byte 0x03003590
_08042460: .4byte gUnk_080D8E14
_08042464: .4byte gUnk_03004C20
_08042468:
	ldr r0, _08042548 @ =gUnk_03002920
	mov r2, sb
	subs r1, r2, r7
	lsls r1, r1, #2
	adds r5, r1, r0
	ldrb r1, [r5, #8]
	adds r1, #1
	strb r1, [r5, #8]
	lsls r1, r1, #0x18
	mov sl, r0
	cmp r1, #0
	bne _08042486
	ldrb r0, [r5, #9]
	adds r0, #1
	strb r0, [r5, #9]
_08042486:
	ldrb r3, [r5, #9]
	mov r8, r3
	ldr r1, _0804254C @ =gUnk_03005400
	ldrb r0, [r1, #0xc]
	lsls r0, r0, #1
	adds r0, #1
	cmp r8, r0
	blt _0804256C
	adds r0, r7, #0
	movs r1, #0xc
	bl sub_08025B78
	movs r0, #0
	strb r0, [r5, #9]
	movs r0, #0xc
	ldr r4, _0804254C @ =gUnk_03005400
	strb r0, [r4, #0xa]
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	movs r1, #0xc0
	lsls r1, r1, #0x12
	ands r1, r0
	lsrs r1, r1, #0x18
	ldr r3, _08042550 @ =0x08116A6E
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r0, r3, #3
	adds r0, r2, r0
	ldrb r1, [r0]
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, sl
	strb r1, [r0]
	adds r0, r3, #4
	adds r0, r2, r0
	ldrb r1, [r0]
	movs r0, #0xb1
	lsls r0, r0, #2
	add r0, sl
	strb r1, [r0]
	adds r0, r3, #5
	adds r0, r2, r0
	ldrb r1, [r0]
	movs r0, #0xb8
	lsls r0, r0, #2
	add r0, sl
	strb r1, [r0]
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r1, #0xa8
	lsls r1, r1, #2
	add r1, sl
	strh r0, [r1]
	adds r0, r3, #1
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r1, #0xaf
	lsls r1, r1, #2
	add r1, sl
	strh r0, [r1]
	adds r3, #2
	adds r2, r2, r3
	ldrb r0, [r2]
	lsls r0, r0, #3
	movs r1, #0xb6
	lsls r1, r1, #2
	add r1, sl
	strh r0, [r1]
	ldr r0, _08042554 @ =0x000002E9
	add r0, sl
	movs r1, #0x1a
	strb r1, [r0]
	ldr r0, _08042558 @ =0x000002CD
	add r0, sl
	strb r1, [r0]
	ldr r0, _0804255C @ =0x000002B1
	add r0, sl
	strb r1, [r0]
	ldr r0, _08042560 @ =0x000002E7
	add r0, sl
	movs r1, #0x19
	strb r1, [r0]
	ldr r0, _08042564 @ =0x000002CB
	add r0, sl
	strb r1, [r0]
	ldr r0, _08042568 @ =0x000002AF
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r4, #0xc]
	movs r0, #3
	subs r0, r0, r1
	strb r0, [r4, #0x16]
	b _08042BDA
	.align 2, 0
_08042548: .4byte gUnk_03002920
_0804254C: .4byte gUnk_03005400
_08042550: .4byte 0x08116A6E
_08042554: .4byte 0x000002E9
_08042558: .4byte 0x000002CD
_0804255C: .4byte 0x000002B1
_08042560: .4byte 0x000002E7
_08042564: .4byte 0x000002CB
_08042568: .4byte 0x000002AF
_0804256C:
	ldrh r3, [r5]
	adds r2, r3, #0
	cmp r2, #0x40
	bhi _0804257E
	ldrb r1, [r5, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0xc]
_0804257E:
	ldr r0, _08042600 @ =0x0000019F
	cmp r2, r0
	bls _08042592
	ldrb r0, [r5, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r5, #0xc]
_08042592:
	ldrb r6, [r5, #0xc]
	lsls r0, r6, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #1
	subs r0, #1
	subs r3, r3, r0
	mov ip, r3
	mov r0, ip
	strh r0, [r5]
	ldr r4, _08042604 @ =0x080E2B64
	adds r1, r7, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r3, _08042608 @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r1, _0804260C @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r1, _08042610 @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r1, _08042614 @ =gUnk_080D8E14
	ldrb r0, [r5, #8]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	asrs r1, r1, #5
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	strh r0, [r5, #2]
	movs r0, #1
	mov r4, r8
	ands r4, r0
	cmp r4, #1
	beq _080425E8
	b _08042BDA
_080425E8:
	mov r1, ip
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r2, sl
	ldrh r2, [r2]
	cmp r0, r2
	bhs _08042618
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r6
	b _08042622
	.align 2, 0
_08042600: .4byte 0x0000019F
_08042604: .4byte 0x080E2B64
_08042608: .4byte gUnk_03004C20
_0804260C: .4byte 0x00001130
_08042610: .4byte 0x00008980
_08042614: .4byte gUnk_080D8E14
_08042618:
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r6
	movs r1, #4
	orrs r0, r1
_08042622:
	strb r0, [r5, #0xc]
	movs r0, #3
	ldr r3, _0804263C @ =gUnk_03005400
	strb r0, [r3, #0xa]
	mov r4, sb
	subs r1, r4, r7
	lsls r1, r1, #2
	add r1, sl
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
	b _08042BDA
	.align 2, 0
_0804263C: .4byte gUnk_03005400
_08042640:
	ldr r6, _080426A4 @ =gUnk_03002920
	mov r5, sb
	subs r3, r5, r7
	lsls r3, r3, #2
	adds r3, r3, r6
	ldrb r0, [r3, #8]
	adds r0, #1
	strb r0, [r3, #8]
	ldr r5, _080426A8 @ =0x080E2B64
	adds r1, r7, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r4, _080426AC @ =gUnk_03004C20
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r1, _080426B0 @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r1, _080426B4 @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	adds r2, r2, r5
	ldr r1, _080426B8 @ =gUnk_080D8E14
	ldrb r0, [r3, #8]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	asrs r1, r1, #5
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	strh r0, [r3, #2]
	ldr r5, _080426BC @ =0x000002AF
	adds r6, r6, r5
	ldrb r0, [r6]
	cmp r0, #0x1c
	beq _08042694
	b _08042BDA
_08042694:
	adds r0, r7, #0
	movs r1, #9
	bl sub_08025B78
	movs r0, #0x19
	strb r0, [r6]
	b _08042BDA
	.align 2, 0
_080426A4: .4byte gUnk_03002920
_080426A8: .4byte 0x080E2B64
_080426AC: .4byte gUnk_03004C20
_080426B0: .4byte 0x00001130
_080426B4: .4byte 0x00008980
_080426B8: .4byte gUnk_080D8E14
_080426BC: .4byte 0x000002AF
_080426C0:
	ldr r6, _08042744 @ =gUnk_03002920
	mov r0, sb
	subs r3, r0, r7
	lsls r3, r3, #2
	adds r3, r3, r6
	ldrb r0, [r3, #8]
	adds r0, #1
	strb r0, [r3, #8]
	ldr r5, _08042748 @ =0x080E2B64
	adds r1, r7, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r4, _0804274C @ =gUnk_03004C20
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r1, _08042750 @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r1, _08042754 @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	adds r2, r2, r5
	ldr r1, _08042758 @ =gUnk_080D8E14
	ldrb r0, [r3, #8]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	asrs r1, r1, #5
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	strh r0, [r3, #2]
	ldr r5, _0804275C @ =0x000002B1
	adds r5, r5, r6
	mov sb, r5
	ldrb r0, [r5]
	cmp r0, #0x1a
	bne _08042716
	b _08042BDA
_08042716:
	ldr r0, _08042760 @ =0x000002CD
	adds r0, r0, r6
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _08042724
	b _08042BDA
_08042724:
	ldr r1, _08042764 @ =0x000002E9
	adds r1, r1, r6
	mov sl, r1
	ldrb r0, [r1]
	cmp r0, #0x1a
	bne _08042732
	b _08042BDA
_08042732:
	ldr r4, _08042768 @ =gUnk_03005400
	movs r0, #0x16
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _0804276C
	movs r0, #2
	strb r0, [r4, #0xa]
	b _08042BDA
	.align 2, 0
_08042744: .4byte gUnk_03002920
_08042748: .4byte 0x080E2B64
_0804274C: .4byte gUnk_03004C20
_08042750: .4byte 0x00001130
_08042754: .4byte 0x00008980
_08042758: .4byte gUnk_080D8E14
_0804275C: .4byte 0x000002B1
_08042760: .4byte 0x000002CD
_08042764: .4byte 0x000002E9
_08042768: .4byte gUnk_03005400
_0804276C:
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	movs r1, #0xc0
	lsls r1, r1, #0x12
	ands r1, r0
	lsrs r1, r1, #0x18
	ldr r3, _08042804 @ =0x08116A6E
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r0, r3, #3
	adds r0, r2, r0
	ldrb r1, [r0]
	movs r5, #0xaa
	lsls r5, r5, #2
	adds r0, r6, r5
	strb r1, [r0]
	adds r0, r3, #4
	adds r0, r2, r0
	ldrb r1, [r0]
	adds r5, #0x1c
	adds r0, r6, r5
	strb r1, [r0]
	adds r0, r3, #5
	adds r0, r2, r0
	ldrb r1, [r0]
	adds r5, #0x1c
	adds r0, r6, r5
	strb r1, [r0]
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #3
	subs r5, #0x40
	adds r1, r6, r5
	strh r0, [r1]
	adds r0, r3, #1
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r5, #0x1c
	adds r1, r6, r5
	strh r0, [r1]
	adds r3, #2
	adds r2, r2, r3
	ldrb r0, [r2]
	lsls r0, r0, #3
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	movs r0, #0x1a
	mov r3, sl
	strb r0, [r3]
	mov r5, r8
	strb r0, [r5]
	mov r1, sb
	strb r0, [r1]
	adds r2, #0xf
	adds r0, r6, r2
	movs r1, #0x19
	strb r1, [r0]
	ldr r3, _08042808 @ =0x000002CB
	adds r0, r6, r3
	strb r1, [r0]
	ldr r5, _0804280C @ =0x000002AF
	adds r0, r6, r5
	strb r1, [r0]
	adds r0, r7, #0
	movs r1, #0xc
	bl sub_08025B78
	ldrb r0, [r4, #0x16]
	subs r0, #1
	strb r0, [r4, #0x16]
	b _08042BDA
	.align 2, 0
_08042804: .4byte 0x08116A6E
_08042808: .4byte 0x000002CB
_0804280C: .4byte 0x000002AF
_08042810:
	ldr r0, _08042850 @ =gUnk_03005220
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _0804281C
	b _08042BDA
_0804281C:
	ldr r1, _08042854 @ =0x04000050
	movs r2, #0xa1
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08042858 @ =gUnk_03005498
	ldrb r2, [r3]
	cmp r2, #8
	bhi _08042878
	ldr r1, _0804285C @ =gUnk_03005400
	movs r4, #0
	movs r0, #7
	strb r0, [r1, #0xa]
	strb r4, [r1, #0x13]
	movs r0, #0x15
	movs r1, #5
	bl sub_08025B78
	ldr r0, _08042860 @ =gUnk_03002920
	ldr r3, _08042864 @ =0x0000025B
	adds r0, r0, r3
	movs r1, #0xe
	strb r1, [r0]
	ldr r1, _08042868 @ =gUnk_030007E0
	strb r4, [r1, #0xc]
	b _08042996
	.align 2, 0
_08042850: .4byte gUnk_03005220
_08042854: .4byte 0x04000050
_08042858: .4byte gUnk_03005498
_0804285C: .4byte gUnk_03005400
_08042860: .4byte gUnk_03002920
_08042864: .4byte 0x0000025B
_08042868: .4byte gUnk_030007E0
_0804286C:
	ldr r3, _0804288C @ =gUnk_03005498
	ldrb r2, [r3]
	lsls r5, r2, #0x18
	lsrs r4, r5, #0x18
	cmp r4, #0
	beq _08042894
_08042878:
	ldr r0, _08042890 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08042886
	b _08042BDA
_08042886:
	subs r0, r2, #1
	strb r0, [r3]
	b _08042BDA
	.align 2, 0
_0804288C: .4byte gUnk_03005498
_08042890: .4byte gUnk_03004C20
_08042894:
	ldr r6, _08042904 @ =gUnk_03005400
	movs r0, #5
	strb r0, [r6, #0xa]
	movs r0, #1
	bl sub_08041F34
	ldr r3, _08042908 @ =0x0400000A
	ldrh r1, [r3]
	ldr r2, _0804290C @ =0x0000FFFC
	adds r0, r2, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r3]
	subs r3, #2
	ldrh r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08042910 @ =0x0400000C
	ldrh r0, [r1]
	ands r2, r0
	movs r0, #1
	orrs r2, r0
	strh r2, [r1]
	ldr r0, _08042914 @ =0x04000050
	strh r4, [r0]
	ldr r0, _08042918 @ =gUnk_03003430
	strh r4, [r0, #0x24]
	strh r4, [r0, #8]
	adds r1, #4
	lsrs r0, r5, #0x1c
	strh r0, [r1]
	ldr r0, _0804291C @ =0x04000014
	strh r4, [r0]
	ldr r2, _08042920 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08042924 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08042928 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _0804292C @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0x73
	bl m4aSongNumStop
	ldrb r0, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r6]
	b _08042BDA
	.align 2, 0
_08042904: .4byte gUnk_03005400
_08042908: .4byte 0x0400000A
_0804290C: .4byte 0x0000FFFC
_08042910: .4byte 0x0400000C
_08042914: .4byte 0x04000050
_08042918: .4byte gUnk_03003430
_0804291C: .4byte 0x04000014
_08042920: .4byte 0x04000200
_08042924: .4byte 0x0000FFFD
_08042928: .4byte 0x04000004
_0804292C: .4byte 0x0000FFEF
_08042930:
	ldr r0, _080429C0 @ =gUnk_03005220
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _0804293C
	b _08042BDA
_0804293C:
	ldr r3, _080429C4 @ =0x0400000A
	ldrh r1, [r3]
	ldr r2, _080429C8 @ =0x0000FFFC
	adds r0, r2, #0
	ands r0, r1
	movs r4, #2
	orrs r0, r4
	strh r0, [r3]
	subs r3, #2
	ldrh r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _080429CC @ =0x0400000C
	ldrh r0, [r1]
	ands r2, r0
	movs r0, #1
	orrs r2, r0
	strh r2, [r1]
	adds r1, #0x44
	movs r5, #0xa1
	lsls r5, r5, #1
	adds r0, r5, #0
	strh r0, [r1]
	ldr r1, _080429D0 @ =0x04000200
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	ldr r2, _080429D4 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _080429D8 @ =gUnk_03005498
	ldrb r2, [r3]
	cmp r2, #8
	bls _080429FC
	ldr r1, _080429DC @ =gUnk_03005400
	movs r2, #0
	movs r0, #0xa
	strb r0, [r1, #0xa]
	ldr r1, _080429E0 @ =gUnk_030007E0
	strb r2, [r1, #0xc]
_08042996:
	movs r0, #0x78
	strh r0, [r1, #6]
	movs r0, #0x50
	strh r0, [r1, #8]
	movs r0, #0x40
	strh r0, [r1, #0xa]
	ldr r1, _080429E4 @ =gUnk_030052A0
	ldr r0, _080429E8 @ =gUnk_03002910
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0x73
	bl m4aSongNumStart
	movs r0, #0
	bl sub_08041F34
	ldr r1, _080429EC @ =gUnk_03003510
	ldr r0, _080429F0 @ =sub_080452E8
	str r0, [r1, #8]
	b _08042BDA
	.align 2, 0
_080429C0: .4byte gUnk_03005220
_080429C4: .4byte 0x0400000A
_080429C8: .4byte 0x0000FFFC
_080429CC: .4byte 0x0400000C
_080429D0: .4byte 0x04000200
_080429D4: .4byte 0x04000004
_080429D8: .4byte gUnk_03005498
_080429DC: .4byte gUnk_03005400
_080429E0: .4byte gUnk_030007E0
_080429E4: .4byte gUnk_030052A0
_080429E8: .4byte gUnk_03002910
_080429EC: .4byte gUnk_03003510
_080429F0: .4byte sub_080452E8
_080429F4:
	ldr r3, _08042A10 @ =gUnk_03005498
	ldrb r2, [r3]
	cmp r2, #0xf
	bhi _08042A18
_080429FC:
	ldr r0, _08042A14 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08042A0A
	b _08042BDA
_08042A0A:
	adds r0, r2, #1
	strb r0, [r3]
	b _08042BDA
	.align 2, 0
_08042A10: .4byte gUnk_03005498
_08042A14: .4byte gUnk_03004C20
_08042A18:
	movs r0, #1
	bl sub_08041F34
	ldr r0, _08042B20 @ =gUnk_03003430
	movs r1, #0
	mov sl, r1
	movs r3, #0
	strh r3, [r0, #0x24]
	strh r3, [r0, #8]
	ldr r0, _08042B24 @ =0x04000010
	strh r3, [r0]
	adds r0, #4
	strh r3, [r0]
	ldr r2, _08042B28 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08042B2C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08042B30 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08042B34 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08042B38 @ =0x04000050
	strh r3, [r0]
	ldr r2, _08042B3C @ =gUnk_03002920
	mov r8, r2
	mov r3, sb
	subs r0, r3, r7
	lsls r0, r0, #2
	add r0, r8
	mov sb, r0
	ldr r6, _08042B40 @ =0x080E2B64
	adds r1, r7, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r3, _08042B44 @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r5, _08042B48 @ =0x00001130
	muls r0, r5, r0
	adds r0, r2, r0
	ldrb r1, [r3, #0xd]
	subs r1, #1
	ldr r4, _08042B4C @ =0x00008980
	muls r1, r4, r1
	adds r0, r0, r1
	adds r0, r0, r6
	ldrh r0, [r0]
	mov r1, sb
	strh r0, [r1]
	ldrb r0, [r3, #0xc]
	subs r0, #1
	muls r0, r5, r0
	adds r2, r2, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	muls r0, r4, r0
	adds r2, r2, r0
	adds r2, r2, r6
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	ldr r1, _08042B50 @ =0x0000031F
	add r1, r8
	movs r0, #3
	strb r0, [r1]
	ldr r1, _08042B54 @ =0x0000033B
	add r1, r8
	movs r0, #4
	strb r0, [r1]
	movs r0, #0x15
	movs r1, #5
	bl sub_08025B78
	movs r0, #0x73
	bl m4aSongNumStop
	ldr r5, _08042B58 @ =gUnk_03005400
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08042B70
	ldr r0, _08042B5C @ =0x0000025B
	add r0, r8
	movs r4, #6
	strb r4, [r0]
	movs r0, #0x95
	lsls r0, r0, #2
	add r0, r8
	mov r2, sl
	strb r2, [r0]
	movs r0, #0x85
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	ldr r1, _08042B60 @ =0x00000216
	add r1, r8
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x13
	bl sub_0801E664
	movs r0, #0x8c
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	ldr r1, _08042B64 @ =0x00000232
	add r1, r8
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x14
	bl sub_0801E664
	ldr r0, _08042B68 @ =0x0000023F
	add r0, r8
	movs r1, #0x1c
	strb r1, [r0]
	ldr r0, _08042B6C @ =0x00000223
	add r0, r8
	strb r1, [r0]
	movs r0, #0x15
	movs r1, #5
	bl sub_08025B78
	strb r4, [r5, #0xa]
	movs r0, #0x1a
	mov r3, sb
	strb r0, [r3, #0xf]
	mov r4, sl
	strb r4, [r3, #0x10]
	b _08042BDA
	.align 2, 0
_08042B20: .4byte gUnk_03003430
_08042B24: .4byte 0x04000010
_08042B28: .4byte 0x04000200
_08042B2C: .4byte 0x0000FFFD
_08042B30: .4byte 0x04000004
_08042B34: .4byte 0x0000FFEF
_08042B38: .4byte 0x04000050
_08042B3C: .4byte gUnk_03002920
_08042B40: .4byte 0x080E2B64
_08042B44: .4byte gUnk_03004C20
_08042B48: .4byte 0x00001130
_08042B4C: .4byte 0x00008980
_08042B50: .4byte 0x0000031F
_08042B54: .4byte 0x0000033B
_08042B58: .4byte gUnk_03005400
_08042B5C: .4byte 0x0000025B
_08042B60: .4byte 0x00000216
_08042B64: .4byte 0x00000232
_08042B68: .4byte 0x0000023F
_08042B6C: .4byte 0x00000223
_08042B70:
	mov r0, sl
	strb r0, [r5, #0xa]
	ldr r0, _08042B84 @ =0x0000025B
	add r0, r8
	mov r1, sl
	strb r1, [r0]
	mov r2, sb
	strb r1, [r2, #0xf]
	b _08042BDA
	.align 2, 0
_08042B84: .4byte 0x0000025B
_08042B88:
	ldr r1, _08042BBC @ =0x04000050
	movs r3, #0xd0
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08042BC0 @ =gUnk_03005498
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _08042BC4 @ =gUnk_03005220
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _08042BDA
	ldr r2, _08042BC8 @ =gUnk_03005400
	ldrb r0, [r2, #0xe]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0xe]
	ldr r1, _08042BCC @ =gUnk_03002920
	mov r4, sb
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #3
	strb r1, [r0, #0xf]
	b _08042BDA
	.align 2, 0
_08042BBC: .4byte 0x04000050
_08042BC0: .4byte gUnk_03005498
_08042BC4: .4byte gUnk_03005220
_08042BC8: .4byte gUnk_03005400
_08042BCC: .4byte gUnk_03002920

	thumb_func_start sub_08042BD0
sub_08042BD0: @ 0x08042BD0
	cmp r0, #3
	bne _08042BDA
	adds r0, r7, #0
	bl sub_0803CF08
_08042BDA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08042BEC
sub_08042BEC: @ 0x08042BEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _08042C28 @ =gUnk_03004C20
	ldr r5, [r4]
	movs r7, #0xe1
	lsls r7, r7, #3
	adds r0, r5, #0
	adds r1, r7, #0
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r8, r4
	cmp r6, #0
	bne _08042C34
	ldr r3, _08042C2C @ =gUnk_03005400
	ldrb r2, [r3, #8]
	lsrs r1, r2, #7
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #7
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
	ldr r0, _08042C30 @ =gUnk_03002920
	mov sb, r0
	b _08042D40
	.align 2, 0
_08042C28: .4byte gUnk_03004C20
_08042C2C: .4byte gUnk_03005400
_08042C30: .4byte gUnk_03002920
_08042C34:
	ldr r0, _08042C54 @ =0x0000012B
	cmp r6, r0
	bhi _08042C68
	ldr r1, _08042C58 @ =0x040000D4
	ldr r0, _08042C5C @ =0x0818B9F8
	ldr r0, [r0, #4]
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08042C60 @ =0x80000030
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08042C64 @ =gUnk_03002920
	mov sb, r1
	b _08042D40
	.align 2, 0
_08042C54: .4byte 0x0000012B
_08042C58: .4byte 0x040000D4
_08042C5C: .4byte 0x0818B9F8
_08042C60: .4byte 0x80000030
_08042C64: .4byte gUnk_03002920
_08042C68:
	ldr r2, _08042C90 @ =0xFFFFFED4
	adds r0, r6, r2
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x13
	cmp r0, r1
	bhi _08042C9C
	movs r0, #7
	ands r5, r0
	ldr r0, _08042C94 @ =gUnk_03002920
	mov sb, r0
	cmp r5, #0
	bne _08042CBE
	ldr r1, _08042C98 @ =0x00000201
	add r1, sb
	ldrb r0, [r1]
	cmp r0, #5
	bls _08042CBE
	subs r0, #1
	b _08042CBC
	.align 2, 0
_08042C90: .4byte 0xFFFFFED4
_08042C94: .4byte gUnk_03002920
_08042C98: .4byte 0x00000201
_08042C9C:
	movs r0, #0xd2
	lsls r0, r0, #3
	cmp r6, r0
	bhi _08042D24
	movs r0, #7
	ands r5, r0
	ldr r0, _08042D0C @ =gUnk_03002920
	mov sb, r0
	cmp r5, #0
	bne _08042CBE
	ldr r1, _08042D10 @ =0x00000201
	add r1, sb
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _08042CBE
	adds r0, #1
_08042CBC:
	strb r0, [r1]
_08042CBE:
	ldr r0, _08042D10 @ =0x00000201
	add r0, sb
	ldrb r1, [r0]
	mov r2, r8
	ldr r0, [r2]
	bl __umodsi3
	cmp r0, #0
	bne _08042D40
	ldr r2, _08042D14 @ =0x040000D4
	ldr r4, _08042D18 @ =0x0818B9F8
	ldr r0, _08042D1C @ =gUnk_03005400
	ldrb r0, [r0, #8]
	lsrs r0, r0, #7
	lsls r0, r0, #2
	movs r3, #0x80
	lsls r3, r3, #2
	add r3, sb
	ldrb r1, [r3]
	adds r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r2]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r2, #4]
	ldr r0, _08042D20 @ =0x80000030
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xff
	ands r0, r1
	movs r1, #3
	ands r0, r1
	strb r0, [r3]
	b _08042D40
	.align 2, 0
_08042D0C: .4byte gUnk_03002920
_08042D10: .4byte 0x00000201
_08042D14: .4byte 0x040000D4
_08042D18: .4byte 0x0818B9F8
_08042D1C: .4byte gUnk_03005400
_08042D20: .4byte 0x80000030
_08042D24:
	ldr r0, _08042D84 @ =gUnk_03002920
	mov sb, r0
	cmp r6, r7
	bhi _08042D40
	ldr r1, _08042D88 @ =0x040000D4
	ldr r0, _08042D8C @ =0x0818B9F8
	ldr r0, [r0, #4]
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08042D90 @ =0x80000030
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08042D40:
	ldr r1, _08042D94 @ =0xFFFFFED4
	adds r0, r6, r1
	lsls r0, r0, #0x10
	movs r1, #0xaf
	lsls r1, r1, #0x13
	cmp r0, r1
	bhi _08042DAA
	ldr r0, _08042D98 @ =0x00000201
	add r0, sb
	ldrb r1, [r0]
	subs r1, #4
	mov r2, r8
	ldr r0, [r2]
	bl __umodsi3
	cmp r0, #0
	bne _08042DAA
	ldr r0, _08042D9C @ =gUnk_03005220
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _08042DAA
	mov r0, sb
	ldrh r2, [r0]
	ldr r0, _08042DA0 @ =gUnk_03005400
	ldrb r1, [r0, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08042DA4
	adds r0, r2, #1
	mov r1, sb
	strh r0, [r1]
	b _08042DAA
	.align 2, 0
_08042D84: .4byte gUnk_03002920
_08042D88: .4byte 0x040000D4
_08042D8C: .4byte 0x0818B9F8
_08042D90: .4byte 0x80000030
_08042D94: .4byte 0xFFFFFED4
_08042D98: .4byte 0x00000201
_08042D9C: .4byte gUnk_03005220
_08042DA0: .4byte gUnk_03005400
_08042DA4:
	subs r0, r2, #1
	mov r2, sb
	strh r0, [r2]
_08042DAA:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0x13
	bhi _08042DB6
	movs r0, #0x14
	strh r0, [r1]
_08042DB6:
	mov r2, sb
	ldrh r0, [r2]
	movs r4, #0xe2
	lsls r4, r4, #1
	cmp r0, r4
	bls _08042DC4
	strh r4, [r2]
_08042DC4:
	ldr r0, _08042E5C @ =0x0000023F
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	bne _08042E08
	movs r3, #0x8c
	lsls r3, r3, #2
	add r3, sb
	ldrh r0, [r3]
	cmp r0, #0x13
	bhi _08042DEC
	movs r0, #0x14
	strh r0, [r3]
	movs r2, #0x8f
	lsls r2, r2, #2
	add r2, sb
	ldrb r1, [r2]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2]
_08042DEC:
	ldrh r0, [r3]
	cmp r0, r4
	bls _08042E08
	strh r4, [r3]
	movs r2, #0x8f
	lsls r2, r2, #2
	add r2, sb
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_08042E08:
	mov r2, sb
	ldr r1, _08042E60 @ =0x0000025B
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08042E50
	movs r0, #0x93
	lsls r0, r0, #2
	adds r3, r2, r0
	ldrh r0, [r3]
	cmp r0, #0x13
	bhi _08042E30
	movs r0, #0x14
	strh r0, [r3]
	subs r1, #3
	adds r2, r2, r1
	ldrb r1, [r2]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2]
_08042E30:
	ldrh r0, [r3]
	movs r1, #0xe2
	lsls r1, r1, #1
	cmp r0, r1
	bls _08042E50
	strh r1, [r3]
	movs r2, #0x96
	lsls r2, r2, #2
	add r2, sb
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_08042E50:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042E5C: .4byte 0x0000023F
_08042E60: .4byte 0x0000025B

	thumb_func_start sub_08042E64
sub_08042E64: @ 0x08042E64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r2, _08042F00 @ =gUnk_03002920
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r5, r0, r2
	ldrb r1, [r5, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r5, #0xd]
	ldr r3, _08042F04 @ =0x03003590
	movs r0, #0x81
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r1, [r2]
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
	ldr r0, _08042F08 @ =gUnk_030034E4
	ldrb r0, [r0]
	cmp r0, #1
	bne _08042EB4
	bl _08043AD6
_08042EB4:
	ldr r0, _08042F0C @ =0x03003620
	ldr r1, [r0]
	ldr r2, [r0, #4]
	adds r0, r6, #0
	bl sub_0803D4AC
	bl sub_08042BEC
	ldr r1, _08042F10 @ =gUnk_03005400
	ldrh r0, [r1]
	cmp r0, #0
	beq _08042ED0
	subs r0, #1
	strh r0, [r1]
_08042ED0:
	ldr r1, _08042F14 @ =gUnk_03000830
	ldr r0, _08042F18 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r6, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0x18
	bne _08042F1C
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	bne _08042F38
	adds r0, r6, #0
	movs r1, #0x19
	bl sub_08025B78
	ldrb r0, [r5, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r5, #0xc]
	b _08042F38
	.align 2, 0
_08042F00: .4byte gUnk_03002920
_08042F04: .4byte 0x03003590
_08042F08: .4byte gUnk_030034E4
_08042F0C: .4byte 0x03003620
_08042F10: .4byte gUnk_03005400
_08042F14: .4byte gUnk_03000830
_08042F18: .4byte gUnk_0300363C
_08042F1C:
	cmp r1, #0x19
	bne _08042F38
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	bne _08042F38
	adds r0, r6, #0
	movs r1, #0x18
	bl sub_08025B78
	ldrb r1, [r5, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0xc]
_08042F38:
	ldr r0, _08042F60 @ =gUnk_03002920
	lsls r2, r6, #3
	subs r1, r2, r6
	lsls r1, r1, #2
	adds r5, r1, r0
	ldrb r1, [r5, #0xf]
	mov r8, r0
	adds r7, r2, #0
	cmp r1, #0xe
	beq _08042F4E
	b _0804307C
_08042F4E:
	ldr r1, _08042F64 @ =gUnk_03005400
	mov ip, r1
	ldrb r7, [r1, #0xa]
	cmp r7, #0
	beq _08042F68
	cmp r7, #1
	beq _08042FEC
	bl _08043AB6
	.align 2, 0
_08042F60: .4byte gUnk_03002920
_08042F64: .4byte gUnk_03005400
_08042F68:
	ldr r1, _08042FC8 @ =gUnk_030007E0
	movs r0, #3
	strb r0, [r1, #0xc]
	movs r0, #0x78
	strh r0, [r1, #6]
	movs r0, #0x80
	strh r0, [r1, #8]
	strh r7, [r1, #0xa]
	mov r2, ip
	ldrb r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #8]
	ldr r1, _08042FCC @ =0x03003590
	ldr r0, _08042FD0 @ =gUnk_030034AC
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r0, #0x10
	strh r0, [r1, #2]
	strh r0, [r1]
	strh r0, [r1, #0x22]
	strh r0, [r1, #0x20]
	ldr r1, _08042FD4 @ =gIntrTable
	ldr r0, _08042FD8 @ =sub_08000FA0
	str r0, [r1, #4]
	ldr r2, _08042FDC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08042FE0 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08042FE4 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08042FE8 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0x40
	mov r3, ip
	strh r0, [r3]
	movs r0, #1
	strb r0, [r3, #0xa]
	adds r0, r6, #0
	movs r1, #0x18
	bl sub_08025B78
	bl _08043AB6
	.align 2, 0
_08042FC8: .4byte gUnk_030007E0
_08042FCC: .4byte 0x03003590
_08042FD0: .4byte gUnk_030034AC
_08042FD4: .4byte gIntrTable
_08042FD8: .4byte sub_08000FA0
_08042FDC: .4byte 0x04000200
_08042FE0: .4byte 0x0000FFFD
_08042FE4: .4byte 0x04000004
_08042FE8: .4byte 0x0000FFEF
_08042FEC:
	mov r4, ip
	ldrh r0, [r4]
	cmp r0, #0
	beq _08042FF8
	bl _08043AB6
_08042FF8:
	ldrb r1, [r5, #0xc]
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r4, #2
	orrs r0, r4
	strb r0, [r5, #0xc]
	movs r3, #0xea
	lsls r3, r3, #2
	add r3, r8
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r3]
	movs r3, #0xe3
	lsls r3, r3, #2
	add r3, r8
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r3]
	movs r3, #0xdc
	lsls r3, r3, #2
	add r3, r8
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r3]
	movs r3, #0x88
	lsls r3, r3, #2
	add r3, r8
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	movs r3, #0x96
	lsls r3, r3, #2
	add r3, r8
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	movs r1, #0x8f
	lsls r1, r1, #2
	add r1, r8
	ldrb r0, [r1]
	ands r2, r0
	strb r2, [r1]
	movs r0, #0x1a
	strb r0, [r5, #0xf]
	mov r5, ip
	strb r7, [r5, #0xa]
	ldr r1, _08043078 @ =0x00000223
	add r1, r8
	movs r0, #0x19
	strb r0, [r1]
	bl _08043AB6
	.align 2, 0
_08043078: .4byte 0x00000223
_0804307C:
	cmp r1, #0x1a
	beq _08043082
	b _08043410
_08043082:
	ldr r0, _0804309C @ =gUnk_03005400
	ldrb r1, [r0, #0xa]
	mov sb, r0
	cmp r1, #9
	bls _08043090
	bl _08043AB6
_08043090:
	lsls r0, r1, #2
	ldr r1, _080430A0 @ =_080430A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804309C: .4byte gUnk_03005400
_080430A0: .4byte _080430A4
_080430A4: @ jump table
	.4byte _080430CC @ case 0
	.4byte _080430E8 @ case 1
	.4byte _08043210 @ case 2
	.4byte _080431AC @ case 3
	.4byte _08043268 @ case 4
	.4byte _080432F2 @ case 5
	.4byte _08043AB6 @ case 6
	.4byte _0804334C @ case 7
	.4byte _0804338C @ case 8
	.4byte _080433F4 @ case 9
_080430CC:
	ldr r1, _080430E4 @ =gUnk_030007E0
	movs r2, #0
	movs r0, #0x80
	strh r0, [r1, #8]
	strh r2, [r1, #0xa]
	movs r0, #0x78
	mov r1, sb
	strh r0, [r1]
	movs r0, #1
	strb r0, [r1, #0xa]
	bl _08043AB6
	.align 2, 0
_080430E4: .4byte gUnk_030007E0
_080430E8:
	ldr r1, _0804319C @ =0x03003590
	ldr r0, _080431A0 @ =gUnk_030034AC
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r0, #0x10
	movs r3, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	strh r0, [r1, #0x22]
	strh r0, [r1, #0x20]
	strb r3, [r1, #4]
	adds r1, #0x24
	strb r3, [r1]
	mov r2, sb
	ldrh r0, [r2]
	cmp r0, #0
	beq _0804310E
	bl _08043AB6
_0804310E:
	ldr r5, _080431A4 @ =gUnk_03002920
	subs r1, r7, r6
	lsls r1, r1, #2
	adds r1, r1, r5
	strb r3, [r1, #0xf]
	ldr r4, _080431A8 @ =0x00000223
	adds r2, r5, r4
	movs r0, #0x19
	strb r0, [r2]
	mov r0, sb
	strb r3, [r0, #0xa]
	movs r0, #0x9c
	lsls r0, r0, #1
	strh r0, [r1, #2]
	ldrb r3, [r1, #0xc]
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r3
	movs r4, #2
	orrs r0, r4
	strb r0, [r1, #0xc]
	movs r1, #0xea
	lsls r1, r1, #2
	adds r3, r5, r1
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r3]
	movs r0, #0xe3
	lsls r0, r0, #2
	adds r3, r5, r0
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r3]
	movs r1, #0xdc
	lsls r1, r1, #2
	adds r3, r5, r1
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r3]
	movs r4, #0x88
	lsls r4, r4, #2
	adds r3, r5, r4
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r3, r5, r0
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r1, r5, r3
	ldrb r0, [r1]
	ands r2, r0
	strb r2, [r1]
	bl _08043AB6
	.align 2, 0
_0804319C: .4byte 0x03003590
_080431A0: .4byte gUnk_030034AC
_080431A4: .4byte gUnk_03002920
_080431A8: .4byte 0x00000223
_080431AC:
	mov r4, sb
	ldrb r3, [r4, #0xc]
	cmp r3, #2
	bne _080431E8
	ldr r2, _080431E0 @ =gUnk_030007E0
	ldrb r1, [r2, #0xc]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0xc]
	movs r0, #0
	strh r0, [r2, #0xa]
	movs r0, #0x90
	strh r0, [r2, #8]
	ldr r1, _080431E4 @ =0x08116AA4
	ldrb r0, [r4, #0xc]
	subs r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x13]
	strb r3, [r4, #0xa]
	bl _08043AB6
	.align 2, 0
_080431E0: .4byte gUnk_030007E0
_080431E4: .4byte 0x08116AA4
_080431E8:
	ldr r1, _08043208 @ =gUnk_030007E0
	movs r0, #0x50
	strh r0, [r1, #0xa]
	movs r0, #0xa0
	strh r0, [r1, #8]
	ldr r1, _0804320C @ =0x08116AA7
	mov r5, sb
	ldrb r0, [r5, #0xc]
	subs r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0x13]
	movs r0, #5
	strb r0, [r5, #0xa]
	bl _08043AB6
	.align 2, 0
_08043208: .4byte gUnk_030007E0
_0804320C: .4byte 0x08116AA7
_08043210:
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0
	ldr r2, _0804325C @ =0x08116A86
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, _08043260 @ =gUnk_03002920
	movs r5, #0xaf
	lsls r5, r5, #2
	adds r3, r0, r5
	adds r1, r1, r2
	movs r2, #0xe
_08043238:
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08043246
	lsls r0, r0, #5
	adds r0, #0x20
	strh r0, [r3]
	strb r2, [r3, #0xf]
_08043246:
	adds r3, #0x1c
	adds r1, #1
	adds r4, #1
	cmp r4, #5
	bls _08043238
	ldr r1, _08043264 @ =gUnk_03005400
	movs r0, #4
	strb r0, [r1, #0xa]
	bl _08043AB6
	.align 2, 0
_0804325C: .4byte 0x08116A86
_08043260: .4byte gUnk_03002920
_08043264: .4byte gUnk_03005400
_08043268:
	ldr r1, _080432D4 @ =gUnk_03002920
	ldr r2, _080432D8 @ =0x000002CB
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08043278
	bl _08043AB6
_08043278:
	ldr r3, _080432DC @ =0x000002E7
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08043286
	bl _08043AB6
_08043286:
	ldr r4, _080432E0 @ =0x00000303
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08043294
	bl _08043AB6
_08043294:
	ldr r5, _080432E4 @ =0x0000031F
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080432A2
	bl _08043AB6
_080432A2:
	adds r2, #0x70
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080432B0
	bl _08043AB6
_080432B0:
	adds r3, #0x70
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080432BE
	bl _08043AB6
_080432BE:
	mov r4, sb
	ldrb r0, [r4, #0x13]
	subs r0, #1
	strb r0, [r4, #0x13]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080432E8
	strb r0, [r4, #0xa]
	bl _08043AB6
	.align 2, 0
_080432D4: .4byte gUnk_03002920
_080432D8: .4byte 0x000002CB
_080432DC: .4byte 0x000002E7
_080432E0: .4byte 0x00000303
_080432E4: .4byte 0x0000031F
_080432E8:
	movs r0, #2
	mov r5, sb
	strb r0, [r5, #0xa]
	bl _08043AB6
_080432F2:
	ldr r2, _08043338 @ =gUnk_030007E0
	movs r0, #2
	ldrsh r1, [r2, r0]
	movs r3, #8
	ldrsh r0, [r2, r3]
	cmp r1, r0
	beq _08043302
	b _08043AB6
_08043302:
	ldrh r0, [r2, #4]
	ldrh r2, [r2, #0xa]
	cmp r0, r2
	beq _0804330C
	b _08043AB6
_0804330C:
	ldr r1, _0804333C @ =gUnk_03002920
	movs r4, #0xdb
	lsls r4, r4, #2
	adds r2, r1, r4
	movs r0, #0
	strb r0, [r2]
	ldr r5, _08043340 @ =0x00000373
	adds r2, r1, r5
	movs r0, #7
	strb r0, [r2]
	ldr r0, _08043344 @ =0x0000037A
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x1f
	movs r1, #0xd
	bl sub_08025B78
	ldr r1, _08043348 @ =gUnk_03005400
	movs r0, #6
	strb r0, [r1, #0xa]
	b _08043AB6
	.align 2, 0
_08043338: .4byte gUnk_030007E0
_0804333C: .4byte gUnk_03002920
_08043340: .4byte 0x00000373
_08043344: .4byte 0x0000037A
_08043348: .4byte gUnk_03005400
_0804334C:
	ldr r0, _08043368 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0804335A
	b _08043AB6
_0804335A:
	ldr r1, _0804336C @ =gUnk_03005498
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _08043370
	adds r0, #1
	strb r0, [r1]
	b _08043AB6
	.align 2, 0
_08043368: .4byte gUnk_03004C20
_0804336C: .4byte gUnk_03005498
_08043370:
	movs r0, #8
	mov r1, sb
	strb r0, [r1, #0xa]
	ldr r0, _08043384 @ =gUnk_03002920
	ldr r2, _08043388 @ =0x00000223
	adds r0, r0, r2
	movs r1, #0x10
	strb r1, [r0]
	b _08043AB6
	.align 2, 0
_08043384: .4byte gUnk_03002920
_08043388: .4byte 0x00000223
_0804338C:
	ldr r0, _080433A8 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0804339A
	b _08043AB6
_0804339A:
	ldr r1, _080433AC @ =gUnk_03005498
	ldrb r0, [r1]
	cmp r0, #0
	beq _080433B0
	subs r0, #1
	strb r0, [r1]
	b _08043AB6
	.align 2, 0
_080433A8: .4byte gUnk_03004C20
_080433AC: .4byte gUnk_03005498
_080433B0:
	ldr r0, _080433E0 @ =gUnk_03005220
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _080433BC
	b _08043AB6
_080433BC:
	movs r0, #9
	mov r3, sb
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xe]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #0xe]
	ldr r2, _080433E4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080433E8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _080433EC @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _080433F0 @ =0x0000FFEF
	ands r0, r1
	b _08043AB4
	.align 2, 0
_080433E0: .4byte gUnk_03005220
_080433E4: .4byte 0x04000200
_080433E8: .4byte 0x0000FFFD
_080433EC: .4byte 0x04000004
_080433F0: .4byte 0x0000FFEF
_080433F4:
	ldr r2, _08043408 @ =gNewKeys
	ldr r1, _0804340C @ =gHeldKeys
	movs r0, #0
	strh r0, [r1]
	strh r0, [r2]
	adds r0, r6, #0
	bl sub_0803CF08
	b _08043AB6
	.align 2, 0
_08043408: .4byte gNewKeys
_0804340C: .4byte gHeldKeys
_08043410:
	cmp r1, #0
	beq _08043416
	b _08043AA4
_08043416:
	ldr r0, _0804342C @ =gUnk_03005400
	ldrb r1, [r0, #0xa]
	mov sb, r0
	cmp r1, #9
	bls _08043422
	b _08043AB6
_08043422:
	lsls r0, r1, #2
	ldr r1, _08043430 @ =_08043434
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804342C: .4byte gUnk_03005400
_08043430: .4byte _08043434
_08043434: @ jump table
	.4byte _0804345C @ case 0
	.4byte _080434DA @ case 1
	.4byte _08043534 @ case 2
	.4byte _080436D4 @ case 3
	.4byte _08043A40 @ case 4
	.4byte _0804387C @ case 5
	.4byte _08043924 @ case 6
	.4byte _08043970 @ case 7
	.4byte _08043AB6 @ case 8
	.4byte _08043850 @ case 9
_0804345C:
	ldr r1, _080434C0 @ =gUnk_03002920
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r4, r0, r1
	movs r5, #0x85
	lsls r5, r5, #2
	adds r0, r1, r5
	ldrh r0, [r0]
	movs r5, #0
	strh r0, [r4]
	ldr r0, _080434C4 @ =0x00000373
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xe
	beq _0804347C
	b _08043AB6
_0804347C:
	ldr r0, _080434C8 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	bne _08043490
	ldrh r0, [r4, #2]
	subs r0, #1
	strh r0, [r4, #2]
_08043490:
	ldr r0, _080434CC @ =gUnk_03005498
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080434A4
	movs r0, #0
	mov r1, sb
	strb r0, [r1, #0x16]
	strh r5, [r1, #4]
	movs r0, #3
	strb r0, [r1, #0xa]
_080434A4:
	ldr r1, _080434D0 @ =0x03003590
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080434D4
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r1]
	ldrh r0, [r1, #2]
	adds r0, #8
	strh r0, [r1, #2]
	b _08043AB6
	.align 2, 0
_080434C0: .4byte gUnk_03002920
_080434C4: .4byte 0x00000373
_080434C8: .4byte gUnk_03004C20
_080434CC: .4byte gUnk_03005498
_080434D0: .4byte 0x03003590
_080434D4:
	strh r5, [r1]
	strh r5, [r1, #2]
	b _08043AB6
_080434DA:
	ldr r2, _08043500 @ =gUnk_03005400
	ldrb r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #8]
	adds r0, r6, #0
	movs r1, #0x18
	bl sub_08025B78
	ldr r2, _08043504 @ =gUnk_03002920
	ldr r4, _08043508 @ =0x00000373
	adds r3, r2, r4
	ldrb r0, [r3]
	cmp r0, #0x11
	bne _0804350C
	movs r0, #0x12
	strb r0, [r3]
	b _0804351C
	.align 2, 0
_08043500: .4byte gUnk_03005400
_08043504: .4byte gUnk_03002920
_08043508: .4byte 0x00000373
_0804350C:
	ldr r5, _08043528 @ =0x000003AB
	adds r0, r2, r5
	movs r1, #0x1a
	strb r1, [r0]
	ldr r4, _0804352C @ =0x0000038F
	adds r0, r2, r4
	strb r1, [r0]
	strb r1, [r3]
_0804351C:
	ldr r0, _08043530 @ =gUnk_03005400
	movs r1, #2
	strb r1, [r0, #0xa]
	movs r1, #0x80
	strh r1, [r0]
	b _08043AB6
	.align 2, 0
_08043528: .4byte 0x000003AB
_0804352C: .4byte 0x0000038F
_08043530: .4byte gUnk_03005400
_08043534:
	mov r5, sb
	ldrh r0, [r5]
	cmp r0, #1
	bne _08043624
	ldr r5, _080435DC @ =0x040000D4
	ldr r0, _080435E0 @ =0x080789C8
	str r0, [r5]
	ldr r3, _080435E4 @ =gUnk_0818B8E0
	ldr r2, _080435E8 @ =gUnk_03004C20
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
	adds r0, r7, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r1, _080435EC @ =0x05000200
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _080435F0 @ =0x80000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08043580
_08043578:
	ldr r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	bne _08043578
_08043580:
	ldr r5, _080435F4 @ =gUnk_03002920
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0x1a
	strb r1, [r0, #0xf]
	ldr r2, _080435F8 @ =0x0000023F
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080435AC
	movs r3, #0x8c
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrh r0, [r0]
	ldr r4, _080435FC @ =0x00000232
	adds r1, r5, r4
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x14
	bl sub_0801E664
_080435AC:
	ldr r1, _08043600 @ =0x0000025B
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080435CC
	movs r2, #0x93
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrh r0, [r0]
	ldr r3, _08043604 @ =0x0000024E
	adds r1, r5, r3
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x15
	bl sub_0801E664
_080435CC:
	ldr r3, _08043608 @ =gUnk_03005400
	ldrb r2, [r3, #0xc]
	cmp r2, #0
	beq _0804360C
	movs r0, #3
	strb r0, [r3, #0xa]
	b _08043AB6
	.align 2, 0
_080435DC: .4byte 0x040000D4
_080435E0: .4byte 0x080789C8
_080435E4: .4byte gUnk_0818B8E0
_080435E8: .4byte gUnk_03004C20
_080435EC: .4byte 0x05000200
_080435F0: .4byte 0x80000010
_080435F4: .4byte gUnk_03002920
_080435F8: .4byte 0x0000023F
_080435FC: .4byte 0x00000232
_08043600: .4byte 0x0000025B
_08043604: .4byte 0x0000024E
_08043608: .4byte gUnk_03005400
_0804360C:
	ldr r1, _0804361C @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	ldr r0, _08043620 @ =gUnk_03005498
	strb r2, [r0]
	movs r0, #7
	strb r0, [r3, #0xa]
	b _08043AB6
	.align 2, 0
_0804361C: .4byte 0x04000050
_08043620: .4byte gUnk_03005498
_08043624:
	ldr r4, _080436B8 @ =gUnk_03004C20
	ldr r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	cmp r0, #5
	bne _08043674
	ldr r3, _080436BC @ =0x040000D4
	ldr r0, _080436C0 @ =0x080789C8
	str r0, [r3]
	ldr r2, _080436C4 @ =gUnk_0818B8E0
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r5, [r4, #0xc]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r7, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r1, _080436C8 @ =0x05000200
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _080436CC @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08043674
_0804366C:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0804366C
_08043674:
	ldr r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	cmp r0, #0
	beq _08043682
	b _08043AB6
_08043682:
	mov r1, sp
	movs r0, #0x1f
	strh r0, [r1]
	ldr r2, _080436BC @ =0x040000D4
	str r1, [r2]
	ldr r3, _080436C4 @ =gUnk_0818B8E0
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
	adds r0, r7, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r3, _080436C8 @ =0x05000200
	adds r0, r0, r3
	str r0, [r2, #4]
	ldr r0, _080436D0 @ =0x81000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08043AB6
	.align 2, 0
_080436B8: .4byte gUnk_03004C20
_080436BC: .4byte 0x040000D4
_080436C0: .4byte 0x080789C8
_080436C4: .4byte gUnk_0818B8E0
_080436C8: .4byte 0x05000200
_080436CC: .4byte 0x80000010
_080436D0: .4byte 0x81000010
_080436D4:
	movs r2, #0
	ldr r0, _08043768 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080436E4
	b _08043A40
_080436E4:
	mov r4, sb
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	ldr r0, _0804376C @ =0x0000023F
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _080436F8
	movs r2, #1
_080436F8:
	ldr r0, _08043770 @ =0x0000025B
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _08043704
	movs r2, #2
_08043704:
	cmp r2, #0
	beq _08043734
	ldr r1, _08043774 @ =0x00000293
	add r1, r8
	ldrb r0, [r1]
	cmp r0, #0x1c
	bne _08043734
	ldr r0, _08043778 @ =0x000002AF
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _08043734
	ldr r0, _0804377C @ =0x00000373
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08043734
	ldr r0, _08043780 @ =0x00000223
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _08043734
	movs r0, #0x19
	strb r0, [r1]
_08043734:
	mov r5, sb
	ldrb r0, [r5, #4]
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0804380A
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov r1, sb
	movs r0, #0x16
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08043784
	cmp r5, #0x32
	bls _08043784
	movs r0, #9
	strb r0, [r1, #0xa]
	b _08043AB6
	.align 2, 0
_08043768: .4byte gUnk_03004C20
_0804376C: .4byte 0x0000023F
_08043770: .4byte 0x0000025B
_08043774: .4byte 0x00000293
_08043778: .4byte 0x000002AF
_0804377C: .4byte 0x00000373
_08043780: .4byte 0x00000223
_08043784:
	ldr r0, _08043834 @ =gUnk_03002920
	ldr r2, _08043838 @ =0x00000223
	adds r4, r0, r2
	ldrb r1, [r4]
	mov r8, r0
	ldr r3, _0804383C @ =gUnk_03005400
	mov sb, r3
	cmp r1, #0xf
	bne _0804380A
	ldrb r0, [r3, #0xc]
	subs r0, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0x32
	subs r0, r0, r1
	cmp r5, r0
	bge _0804380A
	movs r0, #0x83
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x13
	movs r1, #3
	bl sub_08025B78
	ldr r2, _08043840 @ =0x0000021D
	add r2, r8
	ldrb r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r3, #2
	ldr r1, _08043844 @ =0x08116A86
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	mov r5, r8
	movs r4, #0xbd
	lsls r4, r4, #2
	adds r2, r5, r4
	adds r0, r0, r1
	adds r1, r0, #2
	movs r4, #0x10
_080437F0:
	ldrb r0, [r1]
	mov r8, r5
	cmp r0, #0xff
	beq _08043800
	lsls r0, r0, #5
	adds r0, #0x20
	strh r0, [r2]
	strb r4, [r2, #0xf]
_08043800:
	adds r2, #0x1c
	adds r1, #1
	adds r3, #1
	cmp r3, #4
	bls _080437F0
_0804380A:
	ldr r0, _08043848 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08043818
	b _08043A40
_08043818:
	subs r1, r7, r6
	lsls r1, r1, #2
	add r1, r8
	ldr r2, _0804384C @ =gUnk_080D8E14
	mov r5, sb
	ldrb r0, [r5, #4]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r0, #0xf0
	strh r0, [r1]
	b _08043A40
	.align 2, 0
_08043834: .4byte gUnk_03002920
_08043838: .4byte 0x00000223
_0804383C: .4byte gUnk_03005400
_08043840: .4byte 0x0000021D
_08043844: .4byte 0x08116A86
_08043848: .4byte gUnk_03004C20
_0804384C: .4byte gUnk_080D8E14
_08043850:
	ldr r0, _08043878 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0804385E
	b _08043A10
_0804385E:
	mov r0, sb
	ldrb r1, [r0, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804386C
	b _08043A04
_0804386C:
	subs r1, r7, r6
	lsls r1, r1, #2
	add r1, r8
	ldrh r0, [r1]
	adds r0, #1
	b _08043A0E
	.align 2, 0
_08043878: .4byte gUnk_03004C20
_0804387C:
	mov r1, sb
	ldrb r0, [r1, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, sb
	strb r1, [r2, #8]
	ldr r3, _080438B4 @ =gUnk_03005498
	ldrb r2, [r3]
	cmp r2, #0xf
	bhi _080438C0
	ldr r1, _080438B8 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	ldr r0, _080438BC @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080438AC
	b _08043AB6
_080438AC:
	adds r0, r2, #1
	strb r0, [r3]
	b _08043AB6
	.align 2, 0
_080438B4: .4byte gUnk_03005498
_080438B8: .4byte 0x04000050
_080438BC: .4byte gUnk_03004C20
_080438C0:
	ldr r3, _08043904 @ =gUnk_03002920
	subs r2, r7, r6
	lsls r2, r2, #2
	adds r2, r2, r3
	ldrb r1, [r2, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0xc]
	ldr r4, _08043908 @ =0x00000373
	adds r1, r3, r4
	movs r0, #0x10
	strb r0, [r1]
	ldr r5, _0804390C @ =0x000003AB
	adds r0, r3, r5
	movs r1, #0x1a
	strb r1, [r0]
	ldr r0, _08043910 @ =0x0000038F
	adds r3, r3, r0
	strb r1, [r3]
	ldr r2, _08043914 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08043918 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0804391C @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08043920 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	movs r0, #6
	b _0804395A
	.align 2, 0
_08043904: .4byte gUnk_03002920
_08043908: .4byte 0x00000373
_0804390C: .4byte 0x000003AB
_08043910: .4byte 0x0000038F
_08043914: .4byte 0x04000200
_08043918: .4byte 0x0000FFFD
_0804391C: .4byte 0x04000004
_08043920: .4byte 0x0000FFEF
_08043924:
	ldr r1, _08043960 @ =gUnk_03005498
	ldrb r0, [r1]
	cmp r0, #0
	beq _08043930
	subs r0, #1
	strb r0, [r1]
_08043930:
	ldr r2, _08043964 @ =gUnk_03002920
	subs r1, r7, r6
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r4, _08043968 @ =0x00000366
	adds r0, r2, r4
	ldrh r0, [r0]
	subs r0, #4
	strh r0, [r1, #2]
	ldr r5, _0804396C @ =0x00000373
	adds r2, r2, r5
	ldrb r0, [r2]
	cmp r0, #0x12
	beq _08043958
	b _08043AB6
_08043958:
	movs r0, #7
_0804395A:
	mov r1, sb
	strb r0, [r1, #0xa]
	b _08043AB6
	.align 2, 0
_08043960: .4byte gUnk_03005498
_08043964: .4byte gUnk_03002920
_08043968: .4byte 0x00000366
_0804396C: .4byte 0x00000373
_08043970:
	ldr r1, _080439E8 @ =0x03003590
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	mov r2, sb
	ldrb r0, [r2, #8]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #8]
	ldr r4, _080439EC @ =gUnk_03002920
	ldr r3, _080439F0 @ =0x00000373
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08043994
	b _08043AB6
_08043994:
	ldr r5, _080439F4 @ =0x0000023F
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080439B4
	movs r1, #0x8c
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r2, _080439F8 @ =0x00000232
	adds r1, r4, r2
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x14
	bl sub_0801E664
_080439B4:
	ldr r3, _080439FC @ =0x0000025B
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080439D4
	movs r5, #0x93
	lsls r5, r5, #2
	adds r0, r4, r5
	ldrh r0, [r0]
	ldr r2, _08043A00 @ =0x0000024E
	adds r1, r4, r2
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x15
	bl sub_0801E664
_080439D4:
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0x1a
	strb r1, [r0, #0xf]
	movs r0, #0
	mov r3, sb
	strb r0, [r3, #0xa]
	b _08043AB6
	.align 2, 0
_080439E8: .4byte 0x03003590
_080439EC: .4byte gUnk_03002920
_080439F0: .4byte 0x00000373
_080439F4: .4byte 0x0000023F
_080439F8: .4byte 0x00000232
_080439FC: .4byte 0x0000025B
_08043A00: .4byte 0x0000024E
_08043A04:
	subs r1, r7, r6
	lsls r1, r1, #2
	add r1, r8
	ldrh r0, [r1]
	subs r0, #1
_08043A0E:
	strh r0, [r1]
_08043A10:
	subs r0, r7, r6
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	subs r0, #0xe0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _08043A40
	movs r0, #1
	mov r4, sb
	strb r0, [r4, #0x16]
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r0, _08043A80 @ =0x000003AB
	add r0, r8
	movs r1, #0xf
	strb r1, [r0]
	ldr r0, _08043A84 @ =0x0000038F
	add r0, r8
	strb r1, [r0]
	ldr r0, _08043A88 @ =0x00000373
	add r0, r8
	strb r1, [r0]
_08043A40:
	ldr r0, _08043A8C @ =gUnk_03002920
	subs r4, r7, r6
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r5, _08043A90 @ =0x080E2B64
	ldr r3, _08043A94 @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r1, _08043A98 @ =0x00001130
	adds r2, r0, #0
	muls r2, r1, r2
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r1, _08043A9C @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	adds r2, r2, r5
	movs r5, #0x85
	lsls r5, r5, #1
	adds r2, r2, r5
	ldr r1, _08043AA0 @ =gUnk_080D8E14
	mov r3, sb
	ldrb r0, [r3, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r5, #0
	ldrsh r1, [r0, r5]
	asrs r1, r1, #5
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r4, #2]
	b _08043AB6
	.align 2, 0
_08043A80: .4byte 0x000003AB
_08043A84: .4byte 0x0000038F
_08043A88: .4byte 0x00000373
_08043A8C: .4byte gUnk_03002920
_08043A90: .4byte 0x080E2B64
_08043A94: .4byte gUnk_03004C20
_08043A98: .4byte 0x00001130
_08043A9C: .4byte 0x00008980
_08043AA0: .4byte gUnk_080D8E14
_08043AA4:
	cmp r1, #3
	beq _08043AAC
	cmp r1, #4
	bne _08043AB6
_08043AAC:
	ldr r2, _08043AE4 @ =gNewKeys
	ldr r1, _08043AE8 @ =gHeldKeys
	movs r0, #0
	strh r0, [r1]
_08043AB4:
	strh r0, [r2]
_08043AB6:
	ldr r3, _08043AEC @ =0x03003590
	ldr r0, _08043AF0 @ =gUnk_03002920
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
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
_08043AD6:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043AE4: .4byte gNewKeys
_08043AE8: .4byte gHeldKeys
_08043AEC: .4byte 0x03003590
_08043AF0: .4byte gUnk_03002920
