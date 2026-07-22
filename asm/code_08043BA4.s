	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08043BA4
sub_08043BA4: @ 0x08043BA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r2, _08043F10 @ =gBlendValue
	ldr r1, _08043F14 @ =gMosaicSize
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	bl VBlankIntrWait
	ldr r2, _08043F18 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08043F1C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08043F20 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08043F24 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	bl m4aMPlayAllStop
	bl sub_08003D58
	bl sub_0800A468
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _08043F28 @ =0x00002F41
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08043F2C @ =gUnk_03005488
	movs r0, #0
	str r0, [r1]
	ldr r1, _08043F30 @ =0x04000048
	ldr r7, _08043F34 @ =0x00002701
	adds r0, r7, #0
	strh r0, [r1]
	subs r1, #6
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08043F38 @ =0x0000018F
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08043F3C @ =gIntrTable
	ldr r0, _08043F40 @ =sub_08001028
	str r0, [r1, #4]
	ldr r1, _08043F44 @ =gUnk_030051DC
	ldr r0, _08043F48 @ =0x0807D248
	str r0, [r1]
	ldr r1, _08043F4C @ =gUnk_03005428
	movs r0, #0xd
	strb r0, [r1]
	ldr r1, _08043F50 @ =gObjPalRamPtr
	ldr r0, _08043F54 @ =gUnk_030034F4
	ldr r2, [r0]
	str r2, [r1]
	ldr r1, _08043F58 @ =gObjVramPtr
	ldr r0, _08043F5C @ =gUnk_030052AC
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08043F60 @ =0x040000D4
	ldr r0, _08043F64 @ =0x08078A88
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _08043F68 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08043C4A
_08043C42:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08043C42
_08043C4A:
	ldr r3, _08043F60 @ =0x040000D4
	ldr r0, _08043F6C @ =0x080657C8
	str r0, [r3]
	ldr r1, _08043F58 @ =gObjVramPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _08043F70 @ =0x80000200
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	ldr r4, _08043F50 @ =gObjPalRamPtr
	ldr r5, _08043F74 @ =0x08065BC8
	ldr r6, _08043F78 @ =0x08078AA8
	ldr r7, _08043F7C @ =0x08078AC8
	mov ip, r7
	ldr r7, _08043F80 @ =0x080663C8
	mov r8, r7
	ldr r7, _08043F84 @ =0x08066448
	mov sb, r7
	ldr r7, _08043F88 @ =0x08066488
	mov sl, r7
	cmp r0, #0
	bge _08043C84
_08043C7C:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _08043C7C
_08043C84:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08043F60 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08043F70 @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043CB4
_08043CAC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043CAC
_08043CB4:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #3
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08043F60 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08043F68 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043CDE
_08043CD6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043CD6
_08043CDE:
	ldr r2, _08043F60 @ =0x040000D4
	ldr r0, _08043F8C @ =0x08065FC8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08043F70 @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043D00
_08043CF8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043CF8
_08043D00:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08043F60 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08043F68 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043D32
_08043D2A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043D2A
_08043D32:
	ldr r2, _08043F60 @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08043F90 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043D54
_08043D4C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043D4C
_08043D54:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08043F60 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08043F94 @ =0x80000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043D82
_08043D7A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043D7A
_08043D82:
	ldr r0, [r1]
	adds r0, #0x40
	str r0, [r1]
	ldr r2, _08043F60 @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08043F90 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043DAA
_08043DA2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043DA2
_08043DAA:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08043F60 @ =0x040000D4
	ldr r7, _08043F98 @ =0x08066508
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08043F90 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043DD2
_08043DCA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043DCA
_08043DD2:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08043F60 @ =0x040000D4
	ldr r0, _08043F9C @ =0x08066588
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08043F90 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043DFA
_08043DF2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043DF2
_08043DFA:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08043F60 @ =0x040000D4
	ldr r7, _08043FA0 @ =0x08066608
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08043F90 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043E22
_08043E1A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043E1A
_08043E22:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08043F60 @ =0x040000D4
	ldr r0, _08043FA4 @ =0x08066688
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08043F90 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043E4A
_08043E42:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043E42
_08043E4A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08043F60 @ =0x040000D4
	ldr r7, _08043FA8 @ =0x08078AE8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08043F68 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043E72
_08043E6A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043E6A
_08043E72:
	ldr r2, _08043F60 @ =0x040000D4
	ldr r0, _08043FAC @ =0x08066708
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08043F90 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043E94
_08043E8C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043E8C
_08043E94:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08043F60 @ =0x040000D4
	ldr r7, _08043FB0 @ =0x08066788
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08043F90 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043EC2
_08043EBA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043EBA
_08043EC2:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08043F60 @ =0x040000D4
	ldr r0, _08043FB4 @ =0x08066808
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08043F90 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043EEA
_08043EE2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043EE2
_08043EEA:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08043F60 @ =0x040000D4
	ldr r7, _08043FB8 @ =0x08066888
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08043F90 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043FC2
_08043F0A:
	ldr r0, [r2, #8]
	b _08043FBC
	.align 2, 0
_08043F10: .4byte gBlendValue
_08043F14: .4byte gMosaicSize
_08043F18: .4byte 0x04000200
_08043F1C: .4byte 0x0000FFFE
_08043F20: .4byte 0x04000004
_08043F24: .4byte 0x0000FFF7
_08043F28: .4byte 0x00002F41
_08043F2C: .4byte gUnk_03005488
_08043F30: .4byte 0x04000048
_08043F34: .4byte 0x00002701
_08043F38: .4byte 0x0000018F
_08043F3C: .4byte gIntrTable
_08043F40: .4byte sub_08001028
_08043F44: .4byte gUnk_030051DC
_08043F48: .4byte 0x0807D248
_08043F4C: .4byte gUnk_03005428
_08043F50: .4byte gObjPalRamPtr
_08043F54: .4byte gUnk_030034F4
_08043F58: .4byte gObjVramPtr
_08043F5C: .4byte gUnk_030052AC
_08043F60: .4byte 0x040000D4
_08043F64: .4byte 0x08078A88
_08043F68: .4byte 0x80000010
_08043F6C: .4byte 0x080657C8
_08043F70: .4byte 0x80000200
_08043F74: .4byte 0x08065BC8
_08043F78: .4byte 0x08078AA8
_08043F7C: .4byte 0x08078AC8
_08043F80: .4byte 0x080663C8
_08043F84: .4byte 0x08066448
_08043F88: .4byte 0x08066488
_08043F8C: .4byte 0x08065FC8
_08043F90: .4byte 0x80000040
_08043F94: .4byte 0x80000020
_08043F98: .4byte 0x08066508
_08043F9C: .4byte 0x08066588
_08043FA0: .4byte 0x08066608
_08043FA4: .4byte 0x08066688
_08043FA8: .4byte 0x08078AE8
_08043FAC: .4byte 0x08066708
_08043FB0: .4byte 0x08066788
_08043FB4: .4byte 0x08066808
_08043FB8: .4byte 0x08066888
_08043FBC:
	ands r0, r3
	cmp r0, #0
	bne _08043F0A
_08043FC2:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08044190 @ =0x040000D4
	ldr r0, _08044194 @ =0x08066908
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08044198 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08043FEA
_08043FE2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08043FE2
_08043FEA:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08044190 @ =0x040000D4
	ldr r7, _0804419C @ =0x08066988
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08044198 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08044012
_0804400A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0804400A
_08044012:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08044190 @ =0x040000D4
	ldr r0, _080441A0 @ =0x08066A08
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08044198 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0804403A
_08044032:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08044032
_0804403A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08044190 @ =0x040000D4
	ldr r7, _080441A4 @ =0x08066A88
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08044198 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08044062
_0804405A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0804405A
_08044062:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r1, _080441A8 @ =0x08116464
	ldrh r0, [r1]
	ldr r1, _080441AC @ =0x0000FFFF
	cmp r0, r1
	beq _080440A8
	adds r7, r1, #0
	ldr r5, _080441A8 @ =0x08116464
	ldr r6, _080441B0 @ =gUnk_03005428
_08044078:
	ldrb r0, [r6]
	adds r1, r0, #1
	strb r1, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #7]
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	ldrb r4, [r5, #4]
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	ldrb r4, [r5, #5]
	str r4, [sp, #8]
	ldrb r4, [r5, #6]
	str r4, [sp, #0xc]
	ldrb r4, [r5, #8]
	str r4, [sp, #0x10]
	bl sub_08003DC0
	adds r5, #0xc
	ldrh r0, [r5]
	cmp r0, r7
	bne _08044078
_080440A8:
	ldr r1, _080441B0 @ =gUnk_03005428
	ldrb r0, [r1]
	adds r0, #0xc
	strb r0, [r1]
	movs r3, #0xd
	ldr r4, _080441B4 @ =gEntityInfo
	ldr r2, _080441B8 @ =gBgInfo
	mov ip, r2
	movs r5, #0
	movs r6, #4
	rsbs r6, r6, #0
	movs r7, #0xba
	lsls r7, r7, #1
	adds r2, r4, r7
	movs r7, #0x1c
_080440C6:
	strb r5, [r2]
	strb r5, [r2, #8]
	strb r7, [r2, #7]
	ldrb r1, [r2, #5]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r2, #4]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2, #4]
	adds r2, #0x1c
	adds r3, #1
	cmp r3, #0x24
	bls _080440C6
	movs r3, #0
	ldr r0, _080441B4 @ =gEntityInfo
	movs r2, #0
	movs r1, #0x1c
	adds r0, #0xf
_080440EE:
	strb r2, [r0, #1]
	strb r1, [r0]
	adds r0, #0x1c
	adds r3, #1
	cmp r3, #0xd
	bls _080440EE
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0xc]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0xc]
	mov r0, ip
	adds r0, #0x40
	ldrh r0, [r0]
	adds r0, #0x78
	movs r2, #0
	strh r0, [r4]
	mov r0, ip
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0x78
	strh r0, [r4, #2]
	movs r0, #0x78
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	ldrb r1, [r4, #0xe]
	subs r0, #0x7a
	ands r0, r1
	strb r0, [r4, #0xe]
	strb r2, [r4, #0x11]
	movs r3, #0
	movs r2, #0xff
	ldr r1, _080441BC @ =gEntityAnimationInfo
_08044136:
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r1, #1]
	orrs r0, r2
	strb r0, [r1, #1]
	adds r1, #4
	adds r3, #1
	cmp r3, #0x2c
	bls _08044136
	movs r0, #0
	movs r1, #0x15
	bl sub_08025B78
	ldr r3, _080441C0 @ =0x04000200
	ldrh r0, [r3]
	movs r1, #1
	orrs r0, r1
	strh r0, [r3]
	ldr r2, _080441C4 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r3]
	movs r1, #2
	orrs r0, r1
	strh r0, [r3]
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	movs r0, #0x30
	bl m4aSongNumStart
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08044190: .4byte 0x040000D4
_08044194: .4byte 0x08066908
_08044198: .4byte 0x80000040
_0804419C: .4byte 0x08066988
_080441A0: .4byte 0x08066A08
_080441A4: .4byte 0x08066A88
_080441A8: .4byte 0x08116464
_080441AC: .4byte 0x0000FFFF
_080441B0: .4byte gUnk_03005428
_080441B4: .4byte gEntityInfo
_080441B8: .4byte gBgInfo
_080441BC: .4byte gEntityAnimationInfo
_080441C0: .4byte 0x04000200
_080441C4: .4byte 0x04000004

	thumb_func_start sub_080441C8
sub_080441C8: @ 0x080441C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080441E8 @ =gUnk_03005494
	ldrb r0, [r0]
	cmp r0, #4
	bls _080441DC
	b _080446B2
_080441DC:
	lsls r0, r0, #2
	ldr r1, _080441EC @ =_080441F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080441E8: .4byte gUnk_03005494
_080441EC: .4byte _080441F0
_080441F0: @ jump table
	.4byte _08044204 @ case 0
	.4byte _0804437C @ case 1
	.4byte _08044388 @ case 2
	.4byte _08044474 @ case 3
	.4byte _08044628 @ case 4
_08044204:
	ldr r5, _08044368 @ =gEntityInfo
	ldr r2, _0804436C @ =gBgInfo
	adds r3, r2, #0
	adds r3, #0x40
	ldrh r4, [r3]
	adds r1, r4, #0
	adds r1, #0x40
	movs r6, #0xe0
	lsls r6, r6, #1
	adds r0, r5, r6
	strh r1, [r0]
	adds r1, #0xc
	movs r7, #0xee
	lsls r7, r7, #1
	adds r0, r5, r7
	strh r1, [r0]
	adds r1, #0xa
	adds r6, #0x38
	adds r0, r5, r6
	strh r1, [r0]
	adds r1, #0xa
	adds r7, #0x38
	adds r0, r5, r7
	strh r1, [r0]
	adds r1, #0xb
	adds r6, #0x38
	adds r0, r5, r6
	strh r1, [r0]
	adds r1, #0xd
	adds r7, #0x38
	adds r0, r5, r7
	strh r1, [r0]
	adds r1, #0x16
	adds r6, #0x38
	adds r0, r5, r6
	strh r1, [r0]
	adds r1, #0xd
	adds r7, #0x38
	adds r0, r5, r7
	strh r1, [r0]
	adds r1, #0xe
	adds r6, #0x38
	adds r0, r5, r6
	strh r1, [r0]
	adds r1, #0xd
	adds r7, #0x38
	adds r0, r5, r7
	strh r1, [r0]
	movs r6, #0x10
	mov sl, r5
	adds r5, r2, #0
	adds r5, #0x42
	movs r0, #0
	mov sb, r0
	movs r1, #2
	rsbs r1, r1, #0
	mov ip, r1
	movs r4, #4
	rsbs r4, r4, #0
	mov r8, r3
_0804427C:
	lsls r2, r6, #3
	subs r2, r2, r6
	lsls r2, r2, #2
	add r2, sl
	ldrh r3, [r5]
	adds r3, #0x3a
	strh r3, [r2, #2]
	ldrb r1, [r2, #0xe]
	mov r0, ip
	ands r0, r1
	strb r0, [r2, #0xe]
	ldrb r1, [r2, #0xd]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #0xd]
	movs r0, #1
	strb r0, [r2, #0x10]
	mov r7, sb
	strb r7, [r2, #0xf]
	ldrb r1, [r2, #0xc]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #0xc]
	ldrh r0, [r2]
	mov r7, r8
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	subs r3, r3, r0
	strh r3, [r2, #6]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x19
	bls _0804427C
	ldr r0, _08044370 @ =gUnk_03004658
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #0xc]
	movs r6, #0xd
	movs r5, #0
	movs r1, #4
	rsbs r1, r1, #0
	mov sb, r1
	ldr r7, _08044374 @ =gBgInfo+0x40
	adds r2, r7, #2
	mov r8, r2
	movs r3, #0x3d
	rsbs r3, r3, #0
	mov sl, r3
	movs r4, #0xc0
	lsls r4, r4, #3
	mov ip, r4
_080442E8:
	lsls r3, r6, #3
	subs r3, r3, r6
	lsls r3, r3, #2
	ldr r0, _08044368 @ =gEntityInfo
	adds r3, r3, r0
	movs r0, #1
	strb r0, [r3, #0x10]
	strb r5, [r3, #0xf]
	ldrb r0, [r3, #0xd]
	mov r4, sb
	ands r4, r0
	strb r4, [r3, #0xd]
	ldrb r1, [r3, #0xc]
	mov r0, sb
	ands r0, r1
	strb r0, [r3, #0xc]
	adds r1, r6, #0
	subs r1, #0xd
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x3c
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r3]
	mov r1, r8
	ldrh r2, [r1]
	adds r2, #0x91
	strh r2, [r3, #2]
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r3, #4]
	mov r1, r8
	ldrh r0, [r1]
	subs r2, r2, r0
	strh r2, [r3, #6]
	ldrb r0, [r3, #0xe]
	movs r2, #1
	orrs r0, r2
	strb r0, [r3, #0xe]
	adds r1, r6, #0
	subs r1, #0xc
	movs r2, #0xf
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	mov r2, sl
	ands r4, r2
	orrs r4, r0
	strb r4, [r3, #0xd]
	lsls r1, r1, #3
	ldr r3, _08044378 @ =gOamAffineBuffer
	adds r1, r1, r3
	mov r4, ip
	strh r4, [r1]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strh r4, [r1, #6]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xe
	bls _080442E8
	b _080446B2
	.align 2, 0
_08044368: .4byte gEntityInfo
_0804436C: .4byte gBgInfo
_08044370: .4byte gUnk_03004658
_08044374: .4byte gBgInfo+0x40
_08044378: .4byte gOamAffineBuffer
_0804437C:
	ldr r1, _08044384 @ =gUnk_03005488
	movs r0, #0
	str r0, [r1]
	b _080446B2
	.align 2, 0
_08044384: .4byte gUnk_03005488
_08044388:
	ldr r0, _08044430 @ =0x04000044
	movs r4, #0
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08044434 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08044438 @ =0x0000EFFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0804443C @ =gMosaicSize
	movs r0, #0xf
	strb r0, [r1]
	ldr r1, _08044440 @ =gBlendValue
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08044444 @ =0x04000054
	movs r0, #0x10
	strh r0, [r1]
	bl sub_08003D58
	ldr r2, _08044448 @ =gUnk_03003410
	movs r5, #0
	strb r4, [r2, #9]
	strb r4, [r2, #0xa]
	ldr r1, _0804444C @ =gCallbackQueue
	ldr r0, _08044450 @ =sub_08001158
	str r0, [r1, #0x28]
	movs r3, #1
	strb r3, [r2, #8]
	ldr r0, _08044454 @ =sub_08003904
	str r0, [r1, #0x2c]
	str r3, [r1, #0x30]
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
	ldr r1, _08044458 @ =gUnk_03004C20
	subs r0, #4
	str r0, [r1]
	strb r4, [r1, #0xe]
	ldr r5, _0804445C @ =0x04000200
	ldrh r1, [r5]
	ldr r0, _08044460 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5]
	ldr r4, _08044464 @ =0x04000004
	ldrh r1, [r4]
	ldr r0, _08044468 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r4]
	bl m4aSoundVSyncOff
	ldr r0, _0804446C @ =gUnk_03005284
	ldr r1, [r0]
	ldr r0, _08044470 @ =gUnk_03005220
	ldrb r2, [r1, #0x1e]
	adds r0, #0x4c
	strb r2, [r0]
	ldrb r0, [r1, #0x1e]
	strb r0, [r1]
	movs r0, #0
	movs r1, #1
	bl sub_08046DB8
	ldrh r0, [r5]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5]
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4]
	b _080446B2
	.align 2, 0
_08044430: .4byte 0x04000044
_08044434: .4byte 0x04000050
_08044438: .4byte 0x0000EFFF
_0804443C: .4byte gMosaicSize
_08044440: .4byte gBlendValue
_08044444: .4byte 0x04000054
_08044448: .4byte gUnk_03003410
_0804444C: .4byte gCallbackQueue
_08044450: .4byte sub_08001158
_08044454: .4byte sub_08003904
_08044458: .4byte gUnk_03004C20
_0804445C: .4byte 0x04000200
_08044460: .4byte 0x0000FFFE
_08044464: .4byte 0x04000004
_08044468: .4byte 0x0000FFF7
_0804446C: .4byte gUnk_03005284
_08044470: .4byte gUnk_03005220
_08044474:
	ldr r0, _080445F0 @ =gUnk_03004C20
	movs r1, #0
	str r1, [r0]
	ldr r0, _080445F4 @ =gUnk_03005488
	str r1, [r0]
	ldr r0, _080445F8 @ =0x04000044
	movs r2, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r6, _080445FC @ =0x00001041
	adds r0, r6, #0
	strh r0, [r1]
	ldr r0, _08044600 @ =gBlendValue
	strb r2, [r0]
	movs r6, #0
	ldr r7, _08044604 @ =gEntityInfo
	adds r1, r7, #0
	movs r3, #0
	movs r2, #0x1c
_080444A0:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r3, [r0, #0x10]
	strb r2, [r0, #0xf]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x19
	bls _080444A0
	movs r6, #0x1a
	movs r0, #1
	mov r8, r0
	ldr r5, _08044608 @ =gBgInfo+0x40
	movs r1, #0
	mov ip, r1
	movs r2, #0x3d
	rsbs r2, r2, #0
	mov sl, r2
	ldr r0, _0804460C @ =0x0811713A
	ldrh r0, [r0]
	mov sb, r0
_080444CE:
	lsls r2, r6, #3
	subs r2, r2, r6
	lsls r2, r2, #2
	ldr r3, _08044604 @ =gEntityInfo
	adds r2, r2, r3
	ldrb r1, [r2, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	mov r4, r8
	orrs r0, r4
	strb r0, [r2, #0xc]
	ldrb r0, [r2, #0xe]
	orrs r0, r4
	strb r0, [r2, #0xe]
	adds r4, r6, #0
	subs r4, #0x1a
	movs r0, #0xf
	adds r1, r4, #0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r3, [r2, #0xd]
	mov r0, sl
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldr r1, _08044610 @ =0x08117120
	adds r0, r4, r1
	ldrb r0, [r0]
	ldrh r1, [r5]
	adds r1, r1, r0
	strh r1, [r2]
	ldr r3, _08044614 @ =gBgInfo+0x42
	ldrh r0, [r3]
	adds r0, #0x58
	strh r0, [r2, #2]
	ldrh r0, [r5]
	subs r1, r1, r0
	strh r1, [r2, #4]
	movs r0, #0x58
	strh r0, [r2, #6]
	lsls r4, r4, #3
	ldr r0, _08044618 @ =gOamAffineBuffer
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4]
	mov r1, ip
	strh r1, [r4, #2]
	strh r1, [r4, #4]
	mov r3, sb
	strh r3, [r4, #6]
	movs r4, #0
	strb r4, [r2, #0x10]
	movs r0, #0x1c
	strb r0, [r2, #0xf]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x24
	bls _080444CE
	ldr r6, _0804461C @ =gUnk_03004658
	ldr r1, [r6]
	movs r0, #0xd
	strb r0, [r1, #0xc]
	movs r6, #0x23
	ldr r0, _08044604 @ =gEntityInfo
	mov ip, r0
	movs r1, #0
	mov r8, r1
	movs r2, #4
	rsbs r2, r2, #0
	mov sb, r2
	ldr r5, _08044618 @ =gOamAffineBuffer
	movs r4, #1
	movs r3, #0x58
_08044566:
	lsls r1, r6, #3
	subs r1, r1, r6
	lsls r1, r1, #2
	add r1, ip
	strb r4, [r1, #0x10]
	mov r0, r8
	strb r0, [r1, #0xf]
	ldrb r2, [r1, #0xc]
	mov r0, sb
	ands r0, r2
	strb r0, [r1, #0xc]
	strh r3, [r1, #6]
	adds r0, r6, #0
	subs r0, #0x1a
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #6]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x24
	bls _08044566
	ldr r0, _08044620 @ =gBgInfo
	adds r0, #0x40
	ldrh r2, [r0]
	subs r0, r2, #4
	movs r3, #0xf5
	lsls r3, r3, #2
	adds r1, r7, r3
	strh r0, [r1]
	subs r0, r0, r2
	movs r4, #0xf6
	lsls r4, r4, #2
	adds r1, r7, r4
	strh r0, [r1]
	subs r0, r2, #6
	movs r6, #0xfc
	lsls r6, r6, #2
	adds r1, r7, r6
	strh r0, [r1]
	subs r0, r0, r2
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r1, r7, r2
	strh r0, [r1]
	ldr r1, _08044624 @ =0x04000050
	movs r3, #0xc1
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r4, #0x25
	adds r2, r7, r4
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #9
	ldr r6, _08044600 @ =gBlendValue
	strb r0, [r6]
	movs r0, #1
	bl m4aSongNumStart
	b _080446B2
	.align 2, 0
_080445F0: .4byte gUnk_03004C20
_080445F4: .4byte gUnk_03005488
_080445F8: .4byte 0x04000044
_080445FC: .4byte 0x00001041
_08044600: .4byte gBlendValue
_08044604: .4byte gEntityInfo
_08044608: .4byte gBgInfo+0x40
_0804460C: .4byte 0x0811713A
_08044610: .4byte 0x08117120
_08044614: .4byte gBgInfo+0x42
_08044618: .4byte gOamAffineBuffer
_0804461C: .4byte gUnk_03004658
_08044620: .4byte gBgInfo
_08044624: .4byte 0x04000050
_08044628:
	ldr r1, _080446C0 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _080446C4 @ =gBlendValue
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080446C8 @ =gUnk_03004D9C
	movs r0, #0
	strb r0, [r1]
	ldr r2, _080446CC @ =gCallbackQueue
	ldr r0, _080446D0 @ =InputHandler_Normal
	str r0, [r2, #0x28]
	ldr r0, _080446D4 @ =sub_080487B4
	str r0, [r2, #0x2c]
	ldr r0, _080446D8 @ =sub_0800BFF4
	str r0, [r2, #0x30]
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
	adds r2, #0x79
	movs r0, #4
	strb r0, [r2]
	bl sub_08003D58
	ldr r1, _080446DC @ =gUnk_03004C20
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r5, _080446E0 @ =0x04000200
	ldrh r1, [r5]
	ldr r0, _080446E4 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5]
	ldr r4, _080446E8 @ =0x04000004
	ldrh r1, [r4]
	ldr r0, _080446EC @ =0x0000FFF7
	ands r0, r1
	strh r0, [r4]
	bl m4aSoundVSyncOff
	ldr r0, _080446F0 @ =gUnk_03005284
	ldr r1, [r0]
	ldr r0, _080446F4 @ =gUnk_03005220
	ldrb r2, [r1, #0x1e]
	adds r0, #0x4c
	strb r2, [r0]
	ldrb r0, [r1, #0x1e]
	strb r0, [r1]
	movs r0, #0
	movs r1, #1
	bl sub_08046DB8
	ldrh r0, [r5]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5]
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4]
	bl sub_08046B6C
_080446B2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080446C0: .4byte 0x04000050
_080446C4: .4byte gBlendValue
_080446C8: .4byte gUnk_03004D9C
_080446CC: .4byte gCallbackQueue
_080446D0: .4byte InputHandler_Normal
_080446D4: .4byte sub_080487B4
_080446D8: .4byte sub_0800BFF4
_080446DC: .4byte gUnk_03004C20
_080446E0: .4byte 0x04000200
_080446E4: .4byte 0x0000FFFE
_080446E8: .4byte 0x04000004
_080446EC: .4byte 0x0000FFF7
_080446F0: .4byte gUnk_03005284
_080446F4: .4byte gUnk_03005220

	thumb_func_start sub_080446F8
sub_080446F8: @ 0x080446F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r5, _08044790 @ =gUnk_03004C20
	ldr r4, [r5]
	cmp r4, #0
	bne _08044718
	bl sub_08043BA4
	ldr r0, _08044794 @ =gUnk_03005494
	strb r4, [r0]
	movs r0, #0
	bl sub_080441C8
_08044718:
	ldr r0, [r5]
	cmp r0, #1
	bne _0804472E
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _08044798 @ =0x00007F41
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x4a
	movs r0, #0x10
	strh r0, [r1]
_0804472E:
	bl sub_08025BA4
	movs r3, #0
	ldr r5, _0804479C @ =gEntityInfo
	ldr r4, _080447A0 @ =gBgInfo+0x42
	ldr r6, _080447A4 @ =gSineTable
_0804473A:
	adds r0, r3, #0
	adds r0, #0x10
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r5
	ldr r0, _08044790 @ =gUnk_03004C20
	ldr r1, [r0]
	lsrs r1, r1, #3
	adds r1, r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	adds r0, #0x3a
	ldrh r7, [r4]
	adds r0, r0, r7
	strh r0, [r2, #2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2, #6]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #9
	bls _0804473A
	ldr r0, _08044794 @ =gUnk_03005494
	ldrb r4, [r0]
	mov sl, r0
	cmp r4, #1
	beq _08044858
	cmp r4, #1
	bgt _080447A8
	cmp r4, #0
	beq _080447B0
	b _08044BA0
	.align 2, 0
_08044790: .4byte gUnk_03004C20
_08044794: .4byte gUnk_03005494
_08044798: .4byte 0x00007F41
_0804479C: .4byte gEntityInfo
_080447A0: .4byte gBgInfo+0x42
_080447A4: .4byte gSineTable
_080447A8:
	cmp r4, #3
	bne _080447AE
	b _08044A00
_080447AE:
	b _08044BA0
_080447B0:
	ldr r3, _080447DC @ =gUnk_03005488
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #8
	str r1, [r3]
	cmp r1, #0xf0
	bne _080447F4
	ldr r0, _080447E0 @ =0x04000046
	strh r4, [r0]
	ldr r2, _080447E4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080447E8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _080447EC @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _080447F0 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xf8
	str r0, [r3]
	b _08044BA0
	.align 2, 0
_080447DC: .4byte gUnk_03005488
_080447E0: .4byte 0x04000046
_080447E4: .4byte 0x04000200
_080447E8: .4byte 0x0000FFFD
_080447EC: .4byte 0x04000004
_080447F0: .4byte 0x0000FFEF
_080447F4:
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r1, r0
	bne _08044814
	ldr r0, _08044810 @ =gUnk_03005220
	adds r0, #0x4c
	strb r4, [r0]
	bl sub_08025F94
	movs r0, #0x78
	bl m4aSongNumStart
	b _08044BA0
	.align 2, 0
_08044810: .4byte gUnk_03005220
_08044814:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bne _0804482A
	movs r0, #1
	mov r1, sl
	strb r0, [r1]
	movs r0, #1
	bl sub_080441C8
	b _08044BA0
_0804482A:
	ldr r2, _08044850 @ =gOamAffineBuffer
	ldrh r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08044838
	b _08044BA0
_08044838:
	ldrh r0, [r2, #0x16]
	subs r0, #0x40
	strh r0, [r2, #0x16]
	ldr r3, _08044854 @ =0x0000FFFF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0x10]
	ands r0, r1
	strh r0, [r2, #0xe]
	ands r0, r1
	strh r0, [r2, #8]
	b _08044BA0
	.align 2, 0
_08044850: .4byte gOamAffineBuffer
_08044854: .4byte 0x0000FFFF
_08044858:
	ldr r0, _08044890 @ =gNewKeys
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0804486C
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080448B4
_0804486C:
	ldr r0, _08044894 @ =gUnk_03004658
	ldr r0, [r0]
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _080448A0
	ldr r1, _08044898 @ =gBlendValue
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #3
	mov r4, sl
	strb r0, [r4]
	ldr r1, _0804489C @ =gUnk_03005488
	movs r0, #0
	str r0, [r1]
	movs r0, #3
	bl sub_080441C8
	b _080448B4
	.align 2, 0
_08044890: .4byte gNewKeys
_08044894: .4byte gUnk_03004658
_08044898: .4byte gBlendValue
_0804489C: .4byte gUnk_03005488
_080448A0:
	ldr r0, _080448F8 @ =gUnk_03005488
	ldr r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _080448BE
	movs r0, #0x52
	bl m4aSongNumStart
	mov r7, sb
	str r4, [r7]
_080448B4:
	ldr r0, _080448F8 @ =gUnk_03005488
	ldr r1, [r0]
	mov sb, r0
	cmp r1, #0
	beq _080448D6
_080448BE:
	mov r1, sb
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x1e
	bne _080448D6
	ldr r1, _080448FC @ =gUnk_03005494
	movs r0, #2
	strb r0, [r1]
	movs r0, #2
	bl sub_080441C8
_080448D6:
	ldr r0, _08044900 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08044908
	ldr r4, _08044904 @ =gUnk_03004658
	ldr r0, [r4]
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _080448F2
	movs r0, #0x51
	bl m4aSongNumStart
_080448F2:
	ldr r1, [r4]
	movs r0, #0
	b _08044924
	.align 2, 0
_080448F8: .4byte gUnk_03005488
_080448FC: .4byte gUnk_03005494
_08044900: .4byte gNewKeys
_08044904: .4byte gUnk_03004658
_08044908:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08044926
	ldr r4, _080449EC @ =gUnk_03004658
	ldr r0, [r4]
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	bne _08044920
	movs r0, #0x51
	bl m4aSongNumStart
_08044920:
	ldr r1, [r4]
	movs r0, #1
_08044924:
	strb r0, [r1, #0xc]
_08044926:
	ldr r7, _080449F0 @ =gOamAffineBuffer
	ldr r0, _080449EC @ =gUnk_03004658
	ldr r6, [r0]
	ldrb r1, [r6, #0xc]
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r7
	mov sb, r1
	ldr r5, _080449F4 @ =gSineTable
	ldr r4, _080449F8 @ =0x0811712A
	ldr r3, _080449FC @ =gUnk_03004C20
	ldr r0, [r3]
	lsrs r0, r0, #1
	movs r2, #0xf
	ands r0, r2
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	movs r1, #0
	mov r8, r1
	mov r1, sb
	strh r0, [r1]
	ldrb r1, [r6, #0xc]
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r7
	mov sb, r1
	ldr r0, [r3]
	lsrs r0, r0, #1
	ands r0, r2
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	mov r1, sb
	strh r0, [r1, #2]
	ldrb r1, [r6, #0xc]
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r0, [r3]
	lsrs r0, r0, #1
	ands r0, r2
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1, #4]
	ldrb r1, [r6, #0xc]
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r0, [r3]
	lsrs r0, r0, #1
	ands r0, r2
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1, #6]
	ldrb r0, [r6, #0xc]
	movs r1, #8
	cmp r0, #0
	bne _080449BA
	movs r1, #0x10
_080449BA:
	adds r2, r1, r7
	movs r1, #8
	cmp r0, #0
	bne _080449C4
	movs r1, #0x10
_080449C4:
	adds r1, r1, r7
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #6]
	strh r0, [r2]
	ldrb r0, [r6, #0xc]
	movs r1, #8
	cmp r0, #0
	bne _080449D8
	movs r1, #0x10
_080449D8:
	adds r2, r1, r7
	movs r1, #8
	cmp r0, #0
	bne _080449E2
	movs r1, #0x10
_080449E2:
	adds r0, r1, r7
	mov r3, r8
	strh r3, [r0, #4]
	strh r3, [r2, #2]
	b _08044BA0
	.align 2, 0
_080449EC: .4byte gUnk_03004658
_080449F0: .4byte gOamAffineBuffer
_080449F4: .4byte gSineTable
_080449F8: .4byte 0x0811712A
_080449FC: .4byte gUnk_03004C20
_08044A00:
	movs r3, #0x1a
	ldr r4, _08044B20 @ =gUnk_03005488
	mov sb, r4
	ldr r6, _08044B24 @ =gEntityInfo+0x3D8
	movs r7, #0x8a
	lsls r7, r7, #1
	mov ip, r7
	ldr r0, _08044B28 @ =0x08117120
	mov r8, r0
	movs r7, #0
_08044A14:
	ldrh r1, [r6]
	adds r1, #6
	movs r0, #0xff
	ands r1, r0
	adds r2, r3, #0
	subs r2, #0x1a
	mov r4, r8
	adds r0, r2, r4
	ldrb r4, [r0]
	adds r0, r4, #6
	cmp r1, r0
	blt _08044A68
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _08044B2C @ =gEntityInfo
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0x10]
	strb r7, [r0, #0xf]
	ldr r1, _08044B30 @ =gOamAffineBuffer
	lsls r0, r2, #3
	adds r2, r0, r1
	ldrh r0, [r2, #6]
	cmp r0, ip
	beq _08044A66
	ldr r5, _08044B34 @ =0x0811713A
	ldrh r0, [r6]
	subs r0, r0, r4
	asrs r1, r0, #1
	adds r0, r1, #0
	cmp r1, #0
	bge _08044A58
	adds r0, #0x1f
_08044A58:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #0x14
_08044A66:
	strh r0, [r2, #6]
_08044A68:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x22
	bls _08044A14
	mov r2, sb
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	movs r3, #0x23
	ldr r6, _08044B2C @ =gEntityInfo
	ldr r5, _08044B38 @ =gBgInfo+0x42
	movs r4, #4
	rsbs r4, r4, #0
	movs r7, #0xff
	lsls r7, r7, #2
	adds r7, r7, r6
	mov r8, r7
	movs r0, #0xf8
	lsls r0, r0, #2
	adds r0, r0, r6
	mov ip, r0
_08044A94:
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r2, r0, r6
	adds r0, r3, #0
	adds r0, #9
	lsls r0, r0, #2
	mov r7, sb
	ldr r1, [r7]
	subs r1, r1, r0
	lsrs r1, r1, #2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _08044B3C @ =gSineTable
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, #0x58
	ldrh r7, [r5]
	adds r0, r0, r7
	strh r0, [r2, #2]
	ldrh r1, [r5]
	subs r0, r0, r1
	strh r0, [r2, #6]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r7, _08044B40 @ =gBgInfo+0x40
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfa
	bne _08044AEC
	movs r0, #0
	strb r0, [r2, #0x10]
	movs r0, #0x1c
	strb r0, [r2, #0xf]
_08044AEC:
	ldr r1, _08044B44 @ =gEntityInfo+0x3DA
	ldrh r0, [r1]
	cmp r0, #0x48
	bhi _08044B48
	mov r7, r8
	ldrb r1, [r7]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r7]
	mov r0, ip
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r2, #0xc]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #0xc]
	adds r0, r3, #0
	subs r0, #0x1a
	lsls r0, r0, #3
	ldr r2, _08044B30 @ =gOamAffineBuffer
	adds r0, r0, r2
	movs r1, #0xf0
	b _08044B66
	.align 2, 0
_08044B20: .4byte gUnk_03005488
_08044B24: .4byte gEntityInfo+0x3D8
_08044B28: .4byte 0x08117120
_08044B2C: .4byte gEntityInfo
_08044B30: .4byte gOamAffineBuffer
_08044B34: .4byte 0x0811713A
_08044B38: .4byte gBgInfo+0x42
_08044B3C: .4byte gSineTable
_08044B40: .4byte gBgInfo+0x40
_08044B44: .4byte gEntityInfo+0x3DA
_08044B48:
	cmp r0, #0x66
	bls _08044B6A
	ldrb r1, [r2, #0xc]
	adds r0, r4, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0xc]
	adds r0, r3, #0
	subs r0, #0x1a
	lsls r0, r0, #3
	ldr r7, _08044BB0 @ =gOamAffineBuffer
	adds r0, r0, r7
	movs r1, #0x90
	lsls r1, r1, #1
_08044B66:
	strh r1, [r0, #6]
	strh r1, [r0]
_08044B6A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x24
	bls _08044A94
	mov r0, sb
	ldr r1, [r0]
	movs r0, #0xbf
	lsls r0, r0, #2
	cmp r1, r0
	bhi _08044B94
	ldr r0, _08044BB4 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08044B94
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08044BA0
_08044B94:
	movs r0, #4
	mov r1, sl
	strb r0, [r1]
	movs r0, #4
	bl sub_080441C8
_08044BA0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08044BB0: .4byte gOamAffineBuffer
_08044BB4: .4byte gNewKeys

	thumb_func_start sub_08044BB8
sub_08044BB8: @ 0x08044BB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r5, #0
	ldr r0, _08044BEC @ =gUnk_030052A0
	ldrb r0, [r0]
	cmp r0, #0x41
	bne _08044C54
	movs r2, #0
	ldr r1, _08044BF0 @ =gBgInfo
	adds r0, r1, #0
	adds r0, #0x40
	ldrh r0, [r0]
	adds r4, r0, #0
	adds r4, #0x78
	ldr r0, _08044BF4 @ =gUnk_030051CC
	ldrh r3, [r0]
	adds r6, r0, #0
	cmp r4, r3
	bge _08044BF8
	movs r5, #0x10
	movs r2, #1
	b _08044C02
	.align 2, 0
_08044BEC: .4byte gUnk_030052A0
_08044BF0: .4byte gBgInfo
_08044BF4: .4byte gUnk_030051CC
_08044BF8:
	cmp r4, r3
	ble _08044C02
	movs r5, #0x20
	ldr r0, _08044C20 @ =0x0000FFFF
	orrs r2, r0
_08044C02:
	adds r0, r1, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r0, #0
	adds r1, #0x50
	ldrh r0, [r6, #2]
	cmp r1, r0
	bge _08044C24
	movs r0, #0x80
	orrs r5, r0
	ldr r0, _08044C20 @ =0x0000FFFF
	ands r2, r0
	adds r0, #1
	b _08044C32
	.align 2, 0
_08044C20: .4byte 0x0000FFFF
_08044C24:
	cmp r1, r0
	ble _08044C34
	movs r0, #0x40
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _08044C44 @ =0xFFFF0000
_08044C32:
	orrs r2, r0
_08044C34:
	cmp r5, #0
	beq _08044C48
	adds r0, r5, #0
	adds r1, r2, #0
	bl ScrollBg2LevelData
	b _08044F36
	.align 2, 0
_08044C44: .4byte 0xFFFF0000
_08044C48:
	movs r0, #6
	bl sub_0800343C
	ldr r1, _08044CE4 @ =gUnk_030052A0
	movs r0, #0x40
	strb r0, [r1]
_08044C54:
	ldr r0, _08044CE4 @ =gUnk_030052A0
	ldrb r0, [r0]
	movs r7, #1
	cmp r0, #0x40
	beq _08044C78
	movs r7, #4
	cmp r0, #0x35
	bhi _08044C78
	movs r7, #0
	cmp r0, #0xc
	bhi _08044C78
	subs r7, #3
	cmp r0, #0xc
	beq _08044C78
	adds r7, #2
	cmp r0, #2
	bls _08044C78
	subs r7, #3
_08044C78:
	ldr r2, _08044CE8 @ =gBg2XMag
	ldr r1, _08044CEC @ =gBg2YMag
	ldrh r0, [r1]
	adds r0, r0, r7
	strh r0, [r1]
	strh r0, [r2]
	ldr r0, _08044CE4 @ =gUnk_030052A0
	ldrb r0, [r0]
	cmp r0, #0x40
	bne _08044D16
	ldr r5, _08044CF0 @ =gUnk_030034D4
	ldr r4, _08044CF4 @ =gUnk_03005428
	ldrb r0, [r4]
	movs r1, #2
	bl thunk_HeapAlloc
	str r0, [r5]
	movs r7, #0
	ldrb r0, [r4]
	cmp r7, r0
	bhs _08044D16
	ldr r2, _08044CF8 @ =gEntityInfo
	movs r3, #0
_08044CA6:
	ldrb r0, [r2, #0xf]
	cmp r0, #0x1a
	bhi _08044D0A
	ldr r0, [r5]
	adds r1, r3, r0
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	cmp r7, #0
	beq _08044CCA
	ldrb r0, [r2, #0x11]
	cmp r0, #0x34
	beq _08044CCA
	cmp r0, #0x6f
	beq _08044CCA
	cmp r0, #0x75
	bls _08044CFC
_08044CCA:
	ldr r0, [r5]
	adds r1, r3, r0
	ldrh r0, [r2, #2]
	subs r0, #0xe
	strh r0, [r1, #2]
	ldrb r0, [r2, #0x11]
	cmp r0, #0x6f
	bne _08044D0A
	ldrh r0, [r2]
	subs r0, #4
	strh r0, [r1]
	b _08044D0A
	.align 2, 0
_08044CE4: .4byte gUnk_030052A0
_08044CE8: .4byte gBg2XMag
_08044CEC: .4byte gBg2YMag
_08044CF0: .4byte gUnk_030034D4
_08044CF4: .4byte gUnk_03005428
_08044CF8: .4byte gEntityInfo
_08044CFC:
	cmp r0, #0x73
	beq _08044D04
	cmp r0, #1
	bne _08044D0A
_08044D04:
	ldrh r0, [r2, #2]
	subs r0, #8
	strh r0, [r1, #2]
_08044D0A:
	adds r2, #0x1c
	adds r3, #4
	adds r7, #1
	ldrb r1, [r4]
	cmp r7, r1
	blo _08044CA6
_08044D16:
	movs r7, #0
	ldr r2, _08044DE0 @ =gUnk_03005428
	ldrb r2, [r2]
	cmp r7, r2
	blo _08044D22
	b _08044E1E
_08044D22:
	ldr r3, _08044DE4 @ =gUnk_030051CC
	mov r8, r3
	ldr r5, _08044DE8 @ =gSineTable
	mov ip, r5
	movs r0, #0x80
	mov sl, r0
	movs r1, #0x40
	mov sb, r1
	ldr r6, _08044DEC @ =gEntityInfo
_08044D34:
	ldrb r0, [r6, #0xf]
	cmp r0, #0x1a
	bhi _08044E12
	ldr r2, _08044DF0 @ =gUnk_030034D4
	ldr r0, [r2]
	lsls r5, r7, #2
	adds r5, r5, r0
	ldrh r2, [r5]
	mov r3, r8
	ldrh r4, [r3]
	subs r2, r2, r4
	ldr r0, _08044DF4 @ =gUnk_030052A0
	ldrb r1, [r0]
	mov r3, sl
	subs r0, r3, r1
	lsls r0, r0, #1
	add r0, ip
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r3, r2, #0
	muls r3, r0, r3
	str r3, [sp]
	ldrh r2, [r5, #2]
	mov r3, r8
	ldrh r0, [r3, #2]
	subs r2, r2, r0
	mov r0, sb
	subs r1, r0, r1
	lsls r1, r1, #1
	add r1, ip
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	ldr r1, [sp]
	subs r3, r1, r0
	asrs r3, r3, #8
	adds r4, r4, r3
	strh r4, [r6]
	ldrh r2, [r5]
	mov r3, r8
	ldrh r0, [r3]
	subs r2, r2, r0
	ldr r0, _08044DF4 @ =gUnk_030052A0
	ldrb r1, [r0]
	mov r3, sb
	subs r0, r3, r1
	lsls r0, r0, #1
	add r0, ip
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r3, r2, #0
	muls r3, r0, r3
	ldrh r2, [r5, #2]
	mov r5, r8
	ldrh r4, [r5, #2]
	subs r2, r2, r4
	mov r0, sl
	subs r1, r0, r1
	lsls r1, r1, #1
	add r1, ip
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r2, r0
	adds r3, r3, r0
	asrs r3, r3, #8
	adds r0, r4, r3
	strh r0, [r6, #2]
	cmp r7, #0
	beq _08044DCC
	ldrb r1, [r6, #0x11]
	cmp r1, #0x34
	beq _08044DCC
	cmp r1, #0x6f
	beq _08044DCC
	cmp r1, #0x75
	bls _08044DF8
_08044DCC:
	ldrh r0, [r6, #2]
	adds r0, #0xe
	strh r0, [r6, #2]
	ldrb r0, [r6, #0x11]
	cmp r0, #0x6f
	bne _08044E04
	ldrh r0, [r6]
	adds r0, #4
	strh r0, [r6]
	b _08044E04
	.align 2, 0
_08044DE0: .4byte gUnk_03005428
_08044DE4: .4byte gUnk_030051CC
_08044DE8: .4byte gSineTable
_08044DEC: .4byte gEntityInfo
_08044DF0: .4byte gUnk_030034D4
_08044DF4: .4byte gUnk_030052A0
_08044DF8:
	cmp r1, #0x73
	beq _08044E00
	cmp r1, #1
	bne _08044E04
_08044E00:
	adds r0, #8
	strh r0, [r6, #2]
_08044E04:
	cmp r7, #8
	bne _08044E12
	ldr r0, _08044E9C @ =gEntityInfo
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r6, r0, r1
	movs r7, #0xd
_08044E12:
	adds r6, #0x1c
	adds r7, #1
	ldr r2, _08044EA0 @ =gUnk_03005428
	ldrb r2, [r2]
	cmp r7, r2
	blo _08044D34
_08044E1E:
	ldr r3, _08044EA4 @ =gUnk_030052A0
	ldrb r1, [r3]
	subs r1, #2
	strb r1, [r3]
	ldr r5, _08044EA8 @ =gBg2Alpha
	ldrb r0, [r5]
	adds r0, #2
	strb r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xfe
	beq _08044E38
	b _08044F36
_08044E38:
	ldr r2, _08044EAC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08044EB0 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08044EB4 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08044EB8 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	movs r0, #1
	bl sub_0804517C
	movs r0, #0
	strb r0, [r5]
	movs r0, #6
	bl sub_0800343C
	ldr r0, _08044EBC @ =gUnk_03005220
	adds r0, #0x3c
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08044EC0 @ =gUnk_030034D4
	ldr r0, [r0]
	bl thunk_HeapFree
	ldr r2, _08044EC4 @ =gUnk_03004C20
	ldrb r0, [r2, #0xe]
	subs r0, #1
	lsls r0, r0, #0x19
	lsrs r5, r0, #0x18
	ldrh r1, [r2, #8]
	adds r0, r1, #0
	asrs r0, r5
	adds r7, r0, #1
	movs r0, #3
	ands r7, r0
	lsls r0, r5
	bics r1, r0
	adds r0, r7, #0
	lsls r0, r5
	orrs r1, r0
	strh r1, [r2, #8]
	cmp r7, #0
	bne _08044ED0
	ldr r1, _08044EC8 @ =0x040000D4
	ldr r0, _08044ECC @ =gUnk_080627C8
	b _08044EFC
	.align 2, 0
_08044E9C: .4byte gEntityInfo
_08044EA0: .4byte gUnk_03005428
_08044EA4: .4byte gUnk_030052A0
_08044EA8: .4byte gBg2Alpha
_08044EAC: .4byte 0x04000200
_08044EB0: .4byte 0x0000FFFE
_08044EB4: .4byte 0x04000004
_08044EB8: .4byte 0x0000FFF7
_08044EBC: .4byte gUnk_03005220
_08044EC0: .4byte gUnk_030034D4
_08044EC4: .4byte gUnk_03004C20
_08044EC8: .4byte 0x040000D4
_08044ECC: .4byte gUnk_080627C8
_08044ED0:
	cmp r7, #1
	bne _08044EE4
	ldr r1, _08044EDC @ =0x040000D4
	ldr r0, _08044EE0 @ =gUnk_080B90E8
	b _08044EFC
	.align 2, 0
_08044EDC: .4byte 0x040000D4
_08044EE0: .4byte gUnk_080B90E8
_08044EE4:
	cmp r7, #2
	bne _08044EF8
	ldr r1, _08044EF0 @ =0x040000D4
	ldr r0, _08044EF4 @ =gUnk_080B9168
	b _08044EFC
	.align 2, 0
_08044EF0: .4byte 0x040000D4
_08044EF4: .4byte gUnk_080B9168
_08044EF8:
	ldr r1, _08044F48 @ =0x040000D4
	ldr r0, _08044F4C @ =gUnk_080B91E8
_08044EFC:
	str r0, [r1]
	ldr r0, _08044F50 @ =gUnk_03004C10
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _08044F54 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08044F58 @ =gCallbackQueue
	ldr r1, _08044F5C @ =sub_0800A804
	str r1, [r0, #4]
	ldr r1, _08044F60 @ =0x04000006
_08044F12:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08044F12
	ldr r2, _08044F64 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08044F68 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	movs r0, #0x61
	bl m4aSongNumStart
_08044F36:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08044F48: .4byte 0x040000D4
_08044F4C: .4byte gUnk_080B91E8
_08044F50: .4byte gUnk_03004C10
_08044F54: .4byte 0x80000040
_08044F58: .4byte gCallbackQueue
_08044F5C: .4byte sub_0800A804
_08044F60: .4byte 0x04000006
_08044F64: .4byte 0x04000200
_08044F68: .4byte 0x04000004

	thumb_func_start sub_08044F6C
sub_08044F6C: @ 0x08044F6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	bne _08045020
	ldr r0, _0804500C @ =gUnk_080D48C8
	mov sb, r0
	ldr r6, _08045010 @ =gUnk_030051C8
	ldrb r1, [r6]
	adds r1, #1
	ldr r0, _08045014 @ =gUnk_03004654
	ldr r5, [r0]
	ldrb r0, [r5, #1]
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r3, _08045018 @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	subs r0, #1
	movs r4, #0xa8
	muls r0, r4, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	movs r2, #0x93
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1]
	ldr r1, _0804501C @ =gEntityInfo
	strh r0, [r1]
	ldrb r1, [r6]
	adds r1, #1
	ldrb r0, [r5, #1]
	subs r1, r1, r0
	lsls r1, r1, #3
	ldrb r0, [r3, #0xc]
	subs r0, #1
	muls r0, r4, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1, #2]
	ldr r1, _0804501C @ =gEntityInfo
	strh r0, [r1, #2]
	ldrb r1, [r6]
	adds r1, #1
	ldrb r0, [r5, #1]
	subs r1, r1, r0
	lsls r1, r1, #3
	ldrb r0, [r3, #0xc]
	subs r0, #1
	muls r0, r4, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, sb
	ldrb r1, [r1, #4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1c
	ldr r4, _0804501C @ =gEntityInfo
	ldrb r2, [r4, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	b _08045080
	.align 2, 0
_0804500C: .4byte gUnk_080D48C8
_08045010: .4byte gUnk_030051C8
_08045014: .4byte gUnk_03004654
_08045018: .4byte gUnk_03004C20
_0804501C: .4byte gEntityInfo
_08045020:
	ldr r0, _080450CC @ =gEntityInfo
	mov sb, r0
	lsls r3, r7, #3
	subs r3, r3, r7
	lsls r3, r3, #2
	add r3, sb
	ldr r1, _080450D0 @ =gUnk_080E2B64
	mov sl, r1
	ldr r4, _080450D4 @ =gUnk_03004C20
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r2, r7, #0
	subs r2, #0xd
	movs r0, #0x2c
	adds r6, r2, #0
	muls r6, r0, r6
	adds r1, r1, r6
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r5, _080450D8 @ =0x00001130
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r2, _080450DC @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, sl
	ldrh r0, [r1]
	strh r0, [r3]
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r0, [r4, #0xc]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, sl
	ldrh r0, [r1, #2]
	strh r0, [r3, #2]
	mov r2, sb
	adds r3, r4, #0
_08045080:
	ldrh r0, [r3, #8]
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #1
	asrs r0, r1
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #6
	mov sb, r0
	cmp r0, #0
	beq _08045160
	lsls r1, r7, #3
	subs r0, r1, r7
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r3, [r0]
	mov r8, r3
	movs r4, #0
	mov sl, r4
	mov ip, r4
	cmp r7, #0
	beq _080450B6
	ldrb r0, [r0, #0x11]
	cmp r0, #0x6f
	beq _080450B6
	cmp r0, #0x75
	bls _080450E8
_080450B6:
	ldr r0, _080450E0 @ =0x0000FFF2
	mov ip, r0
	subs r0, r1, r7
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x11]
	cmp r0, #0x6f
	bne _080450F4
	ldr r3, _080450E4 @ =0x0000FFFC
	mov sl, r3
	b _080450F4
	.align 2, 0
_080450CC: .4byte gEntityInfo
_080450D0: .4byte gUnk_080E2B64
_080450D4: .4byte gUnk_03004C20
_080450D8: .4byte 0x00001130
_080450DC: .4byte 0x00008980
_080450E0: .4byte 0x0000FFF2
_080450E4: .4byte 0x0000FFFC
_080450E8:
	cmp r0, #0x73
	beq _080450F0
	cmp r0, #1
	bne _080450F4
_080450F0:
	ldr r4, _08045170 @ =0x0000FFF8
	mov ip, r4
_080450F4:
	subs r3, r1, r7
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r5, _08045174 @ =gUnk_030051CC
	ldrh r4, [r5]
	mov r7, r8
	subs r1, r7, r4
	add r1, sl
	ldr r6, _08045178 @ =gSineTable
	mov r0, sb
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r7, #0
	ldrsh r2, [r0, r7]
	str r2, [sp]
	adds r0, r2, #0
	adds r2, r1, #0
	muls r2, r0, r2
	ldrh r1, [r3, #2]
	ldrh r0, [r5, #2]
	subs r1, r1, r0
	add r1, ip
	mov r7, sb
	lsls r0, r7, #1
	adds r0, r0, r6
	movs r7, #0
	ldrsh r6, [r0, r7]
	adds r0, r1, #0
	muls r0, r6, r0
	subs r2, r2, r0
	asrs r2, r2, #8
	adds r4, r4, r2
	mov r0, sl
	subs r4, r4, r0
	strh r4, [r3]
	ldrh r0, [r5]
	mov r1, r8
	subs r0, r1, r0
	add r0, sl
	adds r2, r0, #0
	muls r2, r6, r2
	ldrh r0, [r3, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	add r0, ip
	ldr r4, [sp]
	muls r0, r4, r0
	adds r2, r2, r0
	asrs r2, r2, #8
	adds r1, r1, r2
	mov r7, ip
	subs r1, r1, r7
	strh r1, [r3, #2]
_08045160:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045170: .4byte 0x0000FFF8
_08045174: .4byte gUnk_030051CC
_08045178: .4byte gSineTable

	thumb_func_start sub_0804517C
sub_0804517C: @ 0x0804517C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r1, #0
	cmp r1, r0
	blo _08045196
	b _080452D6
_08045196:
	ldr r2, _080452C0 @ =gCurrentRoomBg2Bounds
	ldrh r0, [r2]
	adds r0, #0x18
	asrs r7, r0, #3
	ldrh r0, [r2, #2]
	adds r0, #0x18
	asrs r0, r0, #3
	mov sb, r0
	ldrh r0, [r2, #4]
	subs r0, #0x18
	asrs r0, r0, #3
	subs r0, r0, r7
	subs r5, r0, #1
	ldrh r0, [r2, #6]
	subs r0, #0x18
	asrs r0, r0, #3
	subs r0, #1
	str r0, [sp, #4]
	adds r1, #1
	str r1, [sp, #0x10]
_080451BE:
	ldr r1, _080452C4 @ =gBgInfo+0x48
	ldrh r0, [r1]
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r7
	mov ip, r0
	adds r6, r0, r5
	movs r3, #0
	adds r0, r7, #1
	str r0, [sp, #8]
	mov r1, sb
	adds r1, #1
	str r1, [sp, #0xc]
	cmp r3, r5
	bhs _0804521C
	ldr r2, _080452C8 @ =gBgDataPtrs
	mov sl, r2
	ldr r0, _080452C4 @ =gBgInfo+0x48
	mov r8, r0
_080451E6:
	mov r2, sl
	ldr r1, [r2, #0x14]
	mov r0, ip
	adds r2, r0, r3
	adds r2, r1, r2
	str r2, [sp, #0x18]
	ldrb r4, [r2]
	mov r2, r8
	ldrh r2, [r2]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r2, r0, r6
	adds r1, r1, r2
	ldrb r0, [r1]
	ldr r1, [sp, #0x18]
	strb r0, [r1]
	mov r2, r8
	ldrh r0, [r2]
	muls r0, r3, r0
	mov r2, sl
	ldr r1, [r2, #0x14]
	adds r0, r0, r6
	adds r1, r1, r0
	strb r4, [r1]
	adds r3, #1
	cmp r3, r5
	blo _080451E6
_0804521C:
	ldr r0, _080452C4 @ =gBgInfo+0x48
	ldrh r1, [r0]
	mov r0, sb
	muls r0, r1, r0
	adds r0, r0, r7
	mov ip, r0
	ldr r2, [sp, #4]
	adds r0, r1, #0
	muls r0, r2, r0
	adds r0, r0, r7
	adds r6, r0, r5
	movs r3, #0
	cmp r3, r5
	bhs _0804525E
	ldr r0, _080452C8 @ =gBgDataPtrs
	mov r8, r0
_0804523C:
	mov r1, r8
	ldr r0, [r1, #0x14]
	mov r2, ip
	adds r1, r2, r3
	adds r1, r0, r1
	ldrb r4, [r1]
	subs r2, r6, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0x14]
	adds r0, r0, r2
	strb r4, [r0]
	adds r3, #1
	cmp r3, r5
	blo _0804523C
_0804525E:
	ldr r2, _080452C4 @ =gBgInfo+0x48
	ldrh r0, [r2]
	mov r1, sb
	muls r1, r0, r1
	adds r1, r1, r7
	mov ip, r1
	ldr r1, [sp, #4]
	muls r0, r1, r0
	adds r6, r0, r7
	movs r3, #0
	cmp r3, r5
	bhs _080452AA
	ldr r2, _080452C8 @ =gBgDataPtrs
	mov r8, r2
	ldr r7, _080452C4 @ =gBgInfo+0x48
_0804527C:
	mov r0, r8
	ldr r1, [r0, #0x14]
	mov r0, ip
	adds r2, r0, r3
	adds r2, r1, r2
	ldrb r4, [r2]
	ldrh r0, [r7]
	muls r0, r3, r0
	subs r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	ldrh r0, [r7]
	adds r1, r3, #0
	muls r1, r0, r1
	subs r1, r6, r1
	mov r2, r8
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	strb r4, [r0]
	adds r3, #1
	cmp r3, r5
	blo _0804527C
_080452AA:
	ldr r7, [sp, #8]
	ldr r0, [sp, #0xc]
	mov sb, r0
	cmp r5, #1
	bls _080452CC
	subs r5, #2
	ldr r1, [sp, #4]
	subs r1, #1
	str r1, [sp, #4]
	b _080451BE
	.align 2, 0
_080452C0: .4byte gCurrentRoomBg2Bounds
_080452C4: .4byte gBgInfo+0x48
_080452C8: .4byte gBgDataPtrs
_080452CC:
	ldr r1, [sp, #0x10]
	ldr r2, [sp]
	cmp r1, r2
	bhs _080452D6
	b _08045196
_080452D6:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080452E8
sub_080452E8: @ 0x080452E8
	push {r4, lr}
	ldr r4, _08045330 @ =gUnk_030007E0
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r2, #6
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _0804538C
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r2, #8
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _0804538C
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #0xa]
	cmp r0, r1
	bne _0804538C
	ldr r1, _08045334 @ =gBg2Alpha
	ldr r2, _08045338 @ =gUnk_030052A0
	ldrb r0, [r2]
	adds r3, r0, #1
	strb r3, [r2]
	strb r3, [r1]
	ldrb r0, [r2]
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08045354
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bne _0804533C
	movs r0, #0x7e
	b _0804534C
	.align 2, 0
_08045330: .4byte gUnk_030007E0
_08045334: .4byte gBg2Alpha
_08045338: .4byte gUnk_030052A0
_0804533C:
	ldrb r1, [r4, #0xc]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0xc]
	movs r0, #0x60
_0804534C:
	strh r0, [r4, #0xa]
	ldr r1, _08045370 @ =gCallbackQueue
	ldr r0, _08045374 @ =sub_0800AC34
	str r0, [r1, #8]
_08045354:
	ldr r0, _08045378 @ =gUnk_03003590
	ldrb r1, [r2]
	rsbs r2, r1, #0
	strb r2, [r0, #4]
	lsls r1, r1, #0x18
	cmp r1, #0
	blt _08045380
	ldr r1, _0804537C @ =gUnk_030007CC
	ldrb r0, [r1]
	cmp r0, #0x4f
	bhi _0804538C
	adds r0, #1
	b _0804538A
	.align 2, 0
_08045370: .4byte gCallbackQueue
_08045374: .4byte sub_0800AC34
_08045378: .4byte gUnk_03003590
_0804537C: .4byte gUnk_030007CC
_08045380:
	ldr r1, _08045394 @ =gUnk_030007CC
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804538C
	subs r0, #1
_0804538A:
	strb r0, [r1]
_0804538C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08045394: .4byte gUnk_030007CC

	thumb_func_start sub_08045398
sub_08045398: @ 0x08045398
	push {r4, r5, lr}
	ldr r5, _080453C0 @ =gUnk_030034B0
	ldrb r2, [r5]
	movs r0, #0x10
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080453C8
	movs r0, #0x26
	bl m4aSongNumStart
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	ldr r0, _080453C4 @ =gUnk_03004C20
	str r4, [r0]
	b _080453DE
	.align 2, 0
_080453C0: .4byte gUnk_030034B0
_080453C4: .4byte gUnk_03004C20
_080453C8:
	ldr r0, _080453E4 @ =gUnk_03004C20
	ldr r0, [r0]
	cmp r0, #0x1e
	bls _080453DE
	ldr r1, _080453E8 @ =gCallbackQueue
	ldr r0, _080453EC @ =sub_08024C34
	str r0, [r1, #4]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r5]
_080453DE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080453E4: .4byte gUnk_03004C20
_080453E8: .4byte gCallbackQueue
_080453EC: .4byte sub_08024C34

	thumb_func_start sub_080453F0
sub_080453F0: @ 0x080453F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08045430 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08045434 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08045438 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _0804543C @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	bl m4aMPlayAllStop
	ldr r0, _08045440 @ =gUnk_03004C20
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	bne _08045448
	ldr r2, _08045444 @ =gUnk_030034B0
	ldrb r1, [r2]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	b _08045452
	.align 2, 0
_08045430: .4byte 0x04000200
_08045434: .4byte 0x0000FFFE
_08045438: .4byte 0x04000004
_0804543C: .4byte 0x0000FFF7
_08045440: .4byte gUnk_03004C20
_08045444: .4byte gUnk_030034B0
_08045448:
	ldr r2, _080456E0 @ =gUnk_030034B0
	ldrb r1, [r2]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
_08045452:
	strb r0, [r2]
	ldr r2, _080456E4 @ =gUnk_03005284
	ldr r1, [r2]
	ldr r5, _080456E8 @ =gUnk_03004C20
	ldrb r0, [r5, #0xd]
	strb r0, [r1, #1]
	ldr r1, [r2]
	ldr r4, _080456E0 @ =gUnk_030034B0
	ldrb r0, [r4, #6]
	lsrs r0, r0, #4
	strb r0, [r1, #2]
	movs r0, #0
	movs r1, #0
	bl sub_08046DB8
	movs r0, #1
	movs r1, #0
	bl sub_08046DB8
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	movs r6, #0
	ldr r2, _080456EC @ =gUnk_03004670
	ldr r1, [r2]
	ldrb r0, [r5, #0xd]
	subs r0, #1
	lsls r7, r0, #3
	adds r3, r1, #0
	adds r3, #8
	mov sl, r5
	mov r8, r2
	movs r2, #0x80
	movs r5, #2
	rsbs r5, r5, #0
_0804549A:
	adds r0, r6, r7
	adds r0, r3, r0
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	ldr r1, _080456E0 @ =gUnk_030034B0
	mov ip, r1
	cmp r0, #0
	bne _080454B4
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4]
_080454B4:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #7
	bls _0804549A
	mov r2, sl
	ldrb r0, [r2, #0xd]
	cmp r0, #5
	bne _080454E2
	mov r3, r8
	ldr r0, [r3]
	adds r0, #0x37
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080454E2
	mov r7, ip
	ldrb r1, [r7]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7]
_080454E2:
	ldr r4, _080456F0 @ =0x0400000C
	ldr r3, _080456F4 @ =gUnk_08051BD4
	mov r1, sl
	ldrb r0, [r1, #0xc]
	lsls r2, r0, #1
	adds r2, r2, r0
	ldrb r1, [r1, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r2, r0
	adds r3, #2
	adds r2, r2, r3
	ldrb r0, [r2]
	ldr r2, _080456F8 @ =0x00005E49
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r2, _080456FC @ =gBgInfo
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0
	strh r0, [r1]
	adds r3, r2, #0
	adds r3, #0x42
	strh r0, [r3]
	movs r6, #0
	ldr r3, _08045700 @ =gBgDataPtrs
	mov sb, r3
	adds r5, r2, #0
	mov r8, r1
_08045524:
	ldr r7, _08045704 @ =gUnk_03004DB0
	adds r4, r6, r7
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r1, [r0]
	lsrs r1, r1, #3
	lsrs r0, r6, #5
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x48
	ldrh r0, [r0]
	adds r3, r1, #0
	muls r3, r0, r3
	movs r2, #0x1f
	ands r2, r6
	mov r1, r8
	ldrh r0, [r1]
	lsrs r0, r0, #3
	mov r7, sb
	ldr r1, [r7, #0x14]
	adds r3, r3, r2
	adds r3, r3, r0
	adds r1, r1, r3
	ldrb r0, [r1]
	strb r0, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _08045708 @ =0x000003FF
	cmp r6, r0
	bls _08045524
	movs r6, #1
	ldr r2, _0804570C @ =gEntityInfo
	movs r1, #0
_08045568:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r2
	strb r1, [r0, #0x10]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xc
	bls _08045568
	mov r2, ip
	ldrb r1, [r2, #6]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _08045592
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #6]
_08045592:
	mov r1, ip
	ldrb r5, [r1, #6]
	lsls r3, r5, #0x18
	lsrs r1, r3, #0x1c
	mov r7, sl
	ldrb r2, [r7, #0xd]
	subs r2, #1
	lsls r0, r2, #3
	subs r0, #1
	adds r1, r1, r0
	ldr r0, _08045710 @ =0x0811762C
	adds r1, r1, r0
	ldrb r1, [r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	movs r4, #0xc8
	adds r1, r2, #0
	muls r1, r4, r1
	adds r0, r0, r1
	ldr r1, _08045714 @ =0x0811717C
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r2, ip
	strb r0, [r2, #2]
	movs r0, #0x40
	strb r0, [r2, #1]
	lsrs r3, r3, #0x1c
	ldrb r2, [r7, #0xd]
	subs r2, #1
	lsls r0, r2, #3
	subs r0, #1
	adds r3, r3, r0
	ldr r7, _08045710 @ =0x0811762C
	adds r3, r3, r7
	ldrb r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r1, r2, #0
	muls r1, r4, r1
	adds r0, r0, r1
	ldr r1, _08045714 @ =0x0811717C
	adds r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	rsbs r0, r0, #0
	ldr r1, _08045718 @ =gBg2Alpha
	strb r0, [r1]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r5
	mov r2, ip
	strb r0, [r2, #6]
	ldrb r0, [r2, #7]
	ands r1, r0
	strb r1, [r2, #7]
	movs r6, #0
	mov r4, ip
	movs r5, #0xf
_08045608:
	ldr r0, _080456EC @ =gUnk_03004670
	ldr r1, [r0]
	ldr r0, _080456E8 @ =gUnk_03004C20
	ldrb r0, [r0, #0xd]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r6, r0
	adds r1, #8
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804564C
	lsls r2, r6, #4
	ldrb r1, [r4, #7]
	adds r0, r5, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #7]
	bl sub_080469FC
	adds r2, r5, #0
	ands r2, r0
	ldrb r0, [r4, #7]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #7]
	ands r0, r5
	cmp r0, #0
	bne _08045656
_0804564C:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #6
	bls _08045608
_08045656:
	ldr r1, _080456FC @ =gBgInfo
	ldr r0, _08045718 @ =gBg2Alpha
	ldrb r0, [r0]
	strh r0, [r1, #0x24]
	movs r6, #0x10
	movs r0, #0x10
	strh r0, [r1, #0x26]
	ldr r1, _0804571C @ =gCallbackQueue
	ldr r0, _08045720 @ =sub_08045734
	str r0, [r1, #4]
	ldr r0, _080456EC @ =gUnk_03004670
	ldr r1, [r0]
	ldr r0, _080456E8 @ =gUnk_03004C20
	ldrb r0, [r0, #0xd]
	subs r0, #1
	lsls r0, r0, #3
	adds r1, #8
	adds r2, r1, r0
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x7f
	bne _08045688
	movs r0, #0
	strb r0, [r2]
_08045688:
	ldr r0, _080456E0 @ =gUnk_030034B0
	strb r6, [r0, #4]
	bl sub_08046288
	movs r0, #0
	movs r1, #0x22
	bl sub_08025B78
	bl sub_08045F68
	bl sub_080467F4
	bl sub_08025BA4
	ldr r5, _08045724 @ =0x04000200
	ldrh r0, [r5]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5]
	ldr r4, _08045728 @ =0x04000004
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4]
	bl m4aSoundVSyncOn
	ldrh r0, [r5]
	movs r1, #2
	orrs r0, r1
	strh r0, [r5]
	ldrh r0, [r4]
	orrs r0, r6
	strh r0, [r4]
	ldr r1, _0804572C @ =gIntrTable
	ldr r0, _08045730 @ =sub_08000FCC
	str r0, [r1, #4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080456E0: .4byte gUnk_030034B0
_080456E4: .4byte gUnk_03005284
_080456E8: .4byte gUnk_03004C20
_080456EC: .4byte gUnk_03004670
_080456F0: .4byte 0x0400000C
_080456F4: .4byte gUnk_08051BD4
_080456F8: .4byte 0x00005E49
_080456FC: .4byte gBgInfo
_08045700: .4byte gBgDataPtrs
_08045704: .4byte gUnk_03004DB0
_08045708: .4byte 0x000003FF
_0804570C: .4byte gEntityInfo
_08045710: .4byte 0x0811762C
_08045714: .4byte 0x0811717C
_08045718: .4byte gBg2Alpha
_0804571C: .4byte gCallbackQueue
_08045720: .4byte sub_08045734
_08045724: .4byte 0x04000200
_08045728: .4byte 0x04000004
_0804572C: .4byte gIntrTable
_08045730: .4byte sub_08000FCC

	thumb_func_start sub_08045734
sub_08045734: @ 0x08045734
	push {lr}
	ldr r0, _08045758 @ =gUnk_030034E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804574E
	bl sub_080468B0
	bl sub_08045874
	bl sub_08045F68
	bl sub_08046288
_0804574E:
	bl sub_08025BA4
	pop {r0}
	bx r0
	.align 2, 0
_08045758: .4byte gUnk_030034E4

	thumb_func_start sub_0804575C
sub_0804575C: @ 0x0804575C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r3, _08045860 @ =gUnk_03005428
	movs r0, #0xd
	strb r0, [r3]
	movs r0, #0
	mov sb, r0
	ldr r4, _08045864 @ =0x0811717C
	ldr r2, _08045868 @ =gUnk_03004C20
	ldrb r0, [r2, #0xd]
	subs r0, #1
	movs r1, #0xc8
	muls r0, r1, r0
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0804584E
	adds r7, r4, #0
	mov sl, r2
	mov r8, r1
_0804578C:
	ldr r1, _08045860 @ =gUnk_03005428
	ldrb r0, [r1]
	mov r2, sb
	lsls r6, r2, #2
	add r6, sb
	mov r4, sl
	ldrb r1, [r4, #0xd]
	subs r1, #1
	mov r5, r8
	muls r5, r1, r5
	adds r5, r6, r5
	adds r1, r7, #3
	adds r1, r5, r1
	ldrb r1, [r1]
	adds r2, r5, r7
	ldrb r2, [r2]
	ldr r4, _0804586C @ =0x0811717D
	adds r3, r5, r4
	ldrb r3, [r3]
	adds r4, r7, #2
	adds r5, r5, r4
	ldrb r4, [r5]
	str r4, [sp]
	movs r4, #1
	str r4, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r4, #0x1c
	str r4, [sp, #0xc]
	mov r5, sl
	ldrb r4, [r5, #0xd]
	subs r4, #1
	mov r5, r8
	muls r5, r4, r5
	adds r4, r5, #0
	adds r4, r6, r4
	adds r5, r7, #4
	adds r4, r4, r5
	ldrb r4, [r4]
	str r4, [sp, #0x10]
	bl sub_08003DC0
	ldr r1, _08045860 @ =gUnk_03005428
	ldrb r0, [r1]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _08045870 @ =gEntityInfo
	adds r1, r1, r2
	mov r4, sl
	ldrb r0, [r4, #0xd]
	subs r0, #1
	mov r5, r8
	muls r5, r0, r5
	adds r0, r5, #0
	adds r0, r6, r0
	adds r0, r0, r7
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r1, _08045860 @ =gUnk_03005428
	ldrb r0, [r1]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r4, #0xd]
	subs r0, #1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r6, r6, r0
	ldr r4, _0804586C @ =0x0811717D
	adds r6, r6, r4
	ldrb r0, [r6]
	strh r0, [r1, #2]
	ldr r5, _08045860 @ =gUnk_03005428
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r1, r0, #2
	add r1, sb
	mov r2, sl
	ldrb r0, [r2, #0xd]
	subs r0, #1
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r1, r0
	adds r1, r1, r7
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0804578C
_0804584E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045860: .4byte gUnk_03005428
_08045864: .4byte 0x0811717C
_08045868: .4byte gUnk_03004C20
_0804586C: .4byte 0x0811717D
_08045870: .4byte gEntityInfo

	thumb_func_start sub_08045874
sub_08045874: @ 0x08045874
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080458D0 @ =gCallbackQueue
	ldr r2, [r0, #0xc]
	ldr r1, _080458D4 @ =sub_08048028
	adds r7, r0, #0
	cmp r2, r1
	bne _0804588E
	b _08045F48
_0804588E:
	ldr r1, _080458D8 @ =gUnk_030034B0
	ldrb r5, [r1, #6]
	movs r0, #0xf
	ands r0, r5
	mov sl, r1
	cmp r0, #0
	beq _0804589E
	b _08045D04
_0804589E:
	ldr r1, _080458DC @ =gHeldKeys
	ldrh r4, [r1]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	bne _08045926
	mov r0, sl
	ldrb r2, [r0, #1]
	cmp r2, #0x40
	beq _0804596C
	adds r0, r2, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7e
	bhi _080458E4
	ldr r0, _080458E0 @ =gBg2Alpha
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	subs r1, r2, #1
	mov r2, sl
	strb r1, [r2, #1]
	b _080458F2
	.align 2, 0
_080458D0: .4byte gCallbackQueue
_080458D4: .4byte sub_08048028
_080458D8: .4byte gUnk_030034B0
_080458DC: .4byte gHeldKeys
_080458E0: .4byte gBg2Alpha
_080458E4:
	ldr r0, _08045914 @ =gBg2Alpha
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r1, r2, #1
	mov r3, sl
	strb r1, [r3, #1]
_080458F2:
	adds r2, r0, #0
	mov r4, sl
	ldrb r1, [r4, #1]
	cmp r1, #0x40
	beq _0804595A
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7e
	bhi _08045918
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	subs r0, r1, #1
	b _08045958
	.align 2, 0
_08045914: .4byte gBg2Alpha
_08045918:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r1, #1
	mov r5, sl
	strb r0, [r5, #1]
	b _0804595A
_08045926:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	ldr r2, _08045964 @ =gBg2Alpha
	cmp r0, #0
	beq _08045940
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	mov r3, sl
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
_08045940:
	ldrh r1, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804595A
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	mov r4, sl
	ldrb r0, [r4, #1]
	subs r0, #1
_08045958:
	strb r0, [r4, #1]
_0804595A:
	ldr r1, _08045968 @ =gBgInfo
	ldrb r0, [r2]
	strh r0, [r1, #0x24]
	b _08045F48
	.align 2, 0
_08045964: .4byte gBg2Alpha
_08045968: .4byte gBgInfo
_0804596C:
	ldr r0, _080459C0 @ =gNewKeys
	ldrh r3, [r0]
	movs r0, #8
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080459D4
	movs r2, #0
	ldr r6, _080459C4 @ =gUnk_030034BC
	ldr r4, _080459C8 @ =gUnk_03003410
	ldr r5, _080459CC @ =sub_08039D8C
	ldr r0, _080459D0 @ =sub_0800C45C
	mov r8, r0
	adds r1, r7, #0
_0804598A:
	ldr r0, [r1]
	str r0, [r1, #0x50]
	adds r1, #4
	adds r2, #1
	cmp r2, #9
	bls _0804598A
	adds r1, r7, #0
	adds r1, #0x78
	ldrb r0, [r1]
	adds r3, r7, #0
	adds r3, #0x7a
	movs r2, #0
	strb r0, [r3]
	strb r2, [r6]
	movs r0, #1
	strb r0, [r4, #4]
	str r5, [r7, #0x28]
	mov r3, r8
	str r3, [r7, #0x2c]
	str r0, [r7, #0x30]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r7
	str r2, [r0]
	adds r1, #1
	b _08045B28
	.align 2, 0
_080459C0: .4byte gNewKeys
_080459C4: .4byte gUnk_030034BC
_080459C8: .4byte gUnk_03003410
_080459CC: .4byte sub_08039D8C
_080459D0: .4byte sub_0800C45C
_080459D4:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _080459DE
	b _08045B68
_080459DE:
	ldr r0, _08045A40 @ =gBlendValue
	strb r2, [r0]
	ldr r4, _08045A44 @ =gUnk_03004C20
	strb r2, [r4, #0xe]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x1c
	strb r0, [r4, #0xc]
	movs r0, #0
	movs r1, #0x22
	bl sub_08025B78
	ldr r0, _08045A48 @ =sub_08045398
	str r0, [r7, #4]
	ldr r0, _08045A4C @ =gUnk_03005284
	ldr r2, [r0]
	ldr r0, _08045A50 @ =gUnk_03005220
	adds r0, #0x4c
	ldrb r1, [r0]
	strb r1, [r2]
	ldrb r0, [r0]
	strb r0, [r2, #0x1e]
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _08045A10
	b _08045F40
_08045A10:
	movs r2, #0
	ldr r4, _08045A44 @ =gUnk_03004C20
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _08045A5C
	ldr r0, _08045A54 @ =gUnk_03004670
	ldr r1, [r0]
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #3
	subs r0, #9
	ldrb r5, [r4, #0xc]
	adds r0, r0, r5
	adds r1, #8
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08045A5C
	ldr r1, _08045A58 @ =gUnk_03004D90
	movs r0, #1
	strb r0, [r1, #9]
	b _08045AAC
	.align 2, 0
_08045A40: .4byte gBlendValue
_08045A44: .4byte gUnk_03004C20
_08045A48: .4byte sub_08045398
_08045A4C: .4byte gUnk_03005284
_08045A50: .4byte gUnk_03005220
_08045A54: .4byte gUnk_03004670
_08045A58: .4byte gUnk_03004D90
_08045A5C:
	ldr r0, _08045A7C @ =gUnk_03004C20
	ldrb r1, [r0, #0xc]
	cmp r1, #4
	bne _08045A88
	ldr r0, _08045A80 @ =gUnk_03004670
	ldr r0, [r0]
	ldrb r1, [r0, #0xb]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08045A88
	ldr r1, _08045A84 @ =gUnk_03004D90
	movs r0, #2
	strb r0, [r1, #9]
	b _08045AAC
	.align 2, 0
_08045A7C: .4byte gUnk_03004C20
_08045A80: .4byte gUnk_03004670
_08045A84: .4byte gUnk_03004D90
_08045A88:
	ldr r1, _08045B30 @ =gUnk_03004C20
	ldrb r0, [r1, #0xc]
	cmp r0, #6
	bne _08045AA6
	ldr r0, _08045B34 @ =gUnk_03004670
	ldr r0, [r0]
	ldrb r1, [r0, #0xd]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08045AA6
	ldr r1, _08045B38 @ =gUnk_03004D90
	movs r0, #5
	strb r0, [r1, #9]
	movs r2, #1
_08045AA6:
	cmp r2, #0
	bne _08045AAC
	b _08045F40
_08045AAC:
	movs r2, #0
	ldr r7, _08045B3C @ =gCallbackQueue
	ldr r6, _08045B40 @ =gUnk_030034BC
	ldr r3, _08045B44 @ =sub_0800C45C
	mov r8, r3
	ldr r5, _08045B48 @ =gBlendValue
	ldr r4, _08045B38 @ =gUnk_03004D90
	mov sl, r4
	ldr r4, _08045B4C @ =gUnk_030051F0
	ldr r0, _08045B50 @ =sub_08047B1C
	mov sb, r0
	adds r1, r7, #0
_08045AC4:
	ldr r0, [r1]
	str r0, [r1, #0x50]
	adds r1, #4
	adds r2, #1
	cmp r2, #9
	bls _08045AC4
	adds r2, r7, #0
	adds r2, #0x78
	ldrb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x7a
	movs r3, #0
	strb r0, [r1]
	ldrb r0, [r5]
	strb r0, [r4, #0xe]
	ldr r0, _08045B54 @ =0x04000050
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r4, #4]
	ldr r0, _08045B58 @ =0x04000008
	ldrh r0, [r0]
	strh r0, [r4, #6]
	ldr r0, _08045B5C @ =0x0400000A
	ldrh r0, [r0]
	strh r0, [r4, #8]
	ldr r0, _08045B60 @ =0x0400000C
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	ldr r0, _08045B64 @ =0x0400000E
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r5, _08045B30 @ =gUnk_03004C20
	ldr r0, [r5]
	str r0, [r4]
	strb r1, [r6]
	movs r0, #1
	mov r1, sl
	strb r0, [r1, #8]
	mov r4, sb
	str r4, [r7, #0x28]
	mov r5, r8
	str r5, [r7, #0x2c]
	str r0, [r7, #0x30]
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r7
	str r3, [r0]
	adds r1, r7, #0
	adds r1, #0x79
_08045B28:
	movs r0, #3
	strb r0, [r1]
	b _08045F48
	.align 2, 0
_08045B30: .4byte gUnk_03004C20
_08045B34: .4byte gUnk_03004670
_08045B38: .4byte gUnk_03004D90
_08045B3C: .4byte gCallbackQueue
_08045B40: .4byte gUnk_030034BC
_08045B44: .4byte sub_0800C45C
_08045B48: .4byte gBlendValue
_08045B4C: .4byte gUnk_030051F0
_08045B50: .4byte sub_08047B1C
_08045B54: .4byte 0x04000050
_08045B58: .4byte 0x04000008
_08045B5C: .4byte 0x0400000A
_08045B60: .4byte 0x0400000C
_08045B64: .4byte 0x0400000E
_08045B68:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08045C30
	mov r2, sl
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _08045C30
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x1c
	subs r0, #1
	cmp r0, #7
	bhi _08045BCC
	lsls r0, r0, #2
	ldr r1, _08045B8C @ =_08045B90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045B8C: .4byte _08045B90
_08045B90: @ jump table
	.4byte _08045BB0 @ case 0
	.4byte _08045BB4 @ case 1
	.4byte _08045BB8 @ case 2
	.4byte _08045BBC @ case 3
	.4byte _08045BC0 @ case 4
	.4byte _08045BC4 @ case 5
	.4byte _08045BC8 @ case 6
	.4byte _08045BCC @ case 7
_08045BB0:
	movs r4, #2
	b _08045BCE
_08045BB4:
	movs r4, #3
	b _08045BCE
_08045BB8:
	movs r4, #4
	b _08045BCE
_08045BBC:
	movs r4, #5
	b _08045BCE
_08045BC0:
	movs r4, #6
	b _08045BCE
_08045BC4:
	movs r4, #7
	b _08045BCE
_08045BC8:
	movs r4, #8
	b _08045BCE
_08045BCC:
	movs r4, #1
_08045BCE:
	ldr r0, _08045C20 @ =gUnk_03004670
	ldr r1, [r0]
	ldr r5, _08045C24 @ =gUnk_03004C20
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #3
	subs r0, #9
	adds r0, r4, r0
	adds r1, #8
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0x7f
	beq _08045C12
	movs r0, #0x51
	bl m4aSongNumStart
	movs r0, #0
	str r0, [r5]
	ldr r2, _08045C28 @ =gUnk_030034B0
	ldrb r1, [r2, #6]
	subs r0, #0x10
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #6]
	lsls r1, r4, #4
	lsrs r0, r0, #4
	orrs r0, r1
	strb r0, [r2, #8]
	movs r0, #0x20
	strb r0, [r2, #4]
	movs r0, #0
	movs r1, #1
	bl sub_08025B78
_08045C12:
	ldr r2, _08045C2C @ =gEntityInfo
	ldrb r1, [r2, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xc]
	b _08045F40
	.align 2, 0
_08045C20: .4byte gUnk_03004670
_08045C24: .4byte gUnk_03004C20
_08045C28: .4byte gUnk_030034B0
_08045C2C: .4byte gEntityInfo
_08045C30:
	ldrh r1, [r1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08045C3C
	b _08045F40
_08045C3C:
	mov r3, sl
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _08045C46
	b _08045F40
_08045C46:
	ldrb r0, [r3, #6]
	lsrs r0, r0, #4
	subs r0, #1
	cmp r0, #7
	bhi _08045C9C
	lsls r0, r0, #2
	ldr r1, _08045C5C @ =_08045C60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045C5C: .4byte _08045C60
_08045C60: @ jump table
	.4byte _08045C80 @ case 0
	.4byte _08045C9C @ case 1
	.4byte _08045C84 @ case 2
	.4byte _08045C88 @ case 3
	.4byte _08045C8C @ case 4
	.4byte _08045C90 @ case 5
	.4byte _08045C94 @ case 6
	.4byte _08045C98 @ case 7
_08045C80:
	movs r4, #8
	b _08045C9E
_08045C84:
	movs r4, #2
	b _08045C9E
_08045C88:
	movs r4, #3
	b _08045C9E
_08045C8C:
	movs r4, #4
	b _08045C9E
_08045C90:
	movs r4, #5
	b _08045C9E
_08045C94:
	movs r4, #6
	b _08045C9E
_08045C98:
	movs r4, #7
	b _08045C9E
_08045C9C:
	movs r4, #1
_08045C9E:
	ldr r0, _08045CF4 @ =gUnk_03004670
	ldr r1, [r0]
	ldr r5, _08045CF8 @ =gUnk_03004C20
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #3
	subs r0, #9
	adds r0, r4, r0
	adds r1, #8
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0x7f
	beq _08045CE2
	movs r0, #0x51
	bl m4aSongNumStart
	movs r0, #0
	str r0, [r5]
	ldr r2, _08045CFC @ =gUnk_030034B0
	ldrb r1, [r2, #6]
	subs r0, #0x10
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #6]
	lsls r1, r4, #4
	lsrs r0, r0, #4
	orrs r0, r1
	strb r0, [r2, #8]
	movs r0, #0x20
	strb r0, [r2, #4]
	movs r0, #0
	movs r1, #1
	bl sub_08025B78
_08045CE2:
	ldr r2, _08045D00 @ =gEntityInfo
	ldrb r1, [r2, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0xc]
	b _08045F40
	.align 2, 0
_08045CF4: .4byte gUnk_03004670
_08045CF8: .4byte gUnk_03004C20
_08045CFC: .4byte gUnk_030034B0
_08045D00: .4byte gEntityInfo
_08045D04:
	mov r4, sl
	ldrb r7, [r4, #8]
	adds r0, r7, #0
	cmp r0, #0x81
	bne _08045D54
	ldr r3, _08045D44 @ =0x0811717C
	ldr r1, _08045D48 @ =0x0811762C
	ldr r0, _08045D4C @ =gUnk_03004C20
	ldrb r2, [r0, #0xd]
	subs r2, #1
	lsls r0, r2, #3
	adds r1, #7
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	movs r1, #0xc8
	muls r1, r2, r1
	adds r0, r0, r1
	adds r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	str r0, [sp]
	ldr r0, _08045D50 @ =gBg2Alpha
	ldrb r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl Abs
	adds r0, #1
	b _08045E3A
	.align 2, 0
_08045D44: .4byte 0x0811717C
_08045D48: .4byte 0x0811762C
_08045D4C: .4byte gUnk_03004C20
_08045D50: .4byte gBg2Alpha
_08045D54:
	cmp r0, #0x18
	bne _08045DB4
	ldr r4, _08045DA4 @ =0x0811717C
	ldr r5, _08045DA8 @ =0x0811762C
	mov r8, r5
	ldr r0, _08045DAC @ =gUnk_03004C20
	ldrb r2, [r0, #0xd]
	subs r2, #1
	lsls r3, r2, #3
	mov r0, r8
	adds r0, #7
	adds r0, r3, r0
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	movs r1, #0xc8
	adds r5, r2, #0
	muls r5, r1, r5
	adds r0, r0, r5
	adds r4, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp]
	ldr r0, _08045DB0 @ =gBg2Alpha
	ldrb r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r7, #0x1c
	lsrs r1, r1, #0x1c
	subs r3, #1
	adds r1, r1, r3
	add r1, r8
	ldrb r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r5
	adds r1, r1, r4
	b _08045E32
	.align 2, 0
_08045DA4: .4byte 0x0811717C
_08045DA8: .4byte 0x0811762C
_08045DAC: .4byte gUnk_03004C20
_08045DB0: .4byte gBg2Alpha
_08045DB4:
	ldr r5, _08045ECC @ =0x0811717C
	ldr r0, _08045ED0 @ =0x0811762C
	mov r8, r0
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x1c
	ldr r1, _08045ED4 @ =gUnk_03004C20
	mov sb, r1
	ldrb r2, [r1, #0xd]
	subs r2, #1
	lsls r3, r2, #3
	subs r3, #1
	adds r0, r0, r3
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	movs r1, #0xc8
	adds r4, r2, #0
	muls r4, r1, r4
	adds r0, r0, r4
	adds r5, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r1, r7, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, r1, r3
	add r1, r8
	ldrb r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r4
	adds r1, r1, r5
	ldrb r1, [r1]
	subs r0, r0, r1
	bl Abs
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, _08045ED8 @ =gBg2Alpha
	ldrb r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r3, sl
	ldrb r2, [r3, #8]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1c
	mov r4, sb
	ldrb r3, [r4, #0xd]
	subs r3, #1
	lsls r1, r3, #3
	subs r1, #1
	adds r2, r2, r1
	add r2, r8
	ldrb r2, [r2]
	lsls r1, r2, #2
	adds r1, r1, r2
	movs r4, #0xc8
	adds r2, r3, #0
	muls r2, r4, r2
	adds r1, r1, r2
	adds r1, r1, r5
_08045E32:
	ldrb r1, [r1]
	subs r0, r0, r1
	bl Abs
_08045E3A:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r3, _08045ECC @ =0x0811717C
	ldr r4, _08045ED0 @ =0x0811762C
	ldr r5, _08045EDC @ =gUnk_030034B0
	mov sl, r5
	ldrb r5, [r5, #8]
	lsrs r1, r5, #4
	ldr r0, _08045ED4 @ =gUnk_03004C20
	ldrb r2, [r0, #0xd]
	subs r2, #1
	lsls r0, r2, #3
	subs r6, r0, #1
	adds r1, r1, r6
	adds r1, r1, r4
	ldrb r0, [r1]
	lsls r1, r0, #2
	adds r1, r1, r0
	movs r0, #0xc8
	adds r7, r2, #0
	muls r7, r0, r7
	adds r1, r1, r7
	adds r1, r1, r3
	lsls r5, r5, #0x1c
	lsrs r0, r5, #0x1c
	adds r0, r0, r6
	adds r0, r0, r4
	ldrb r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r7
	adds r0, r0, r3
	ldrb r1, [r1]
	ldrb r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r8, r4
	cmp r1, #0
	beq _08045EB4
	mov r2, sb
	cmp r2, #0
	beq _08045EB4
	lsrs r0, r5, #0x1c
	adds r0, r0, r6
	add r0, r8
	ldrb r0, [r0]
	lsls r4, r0, #2
	adds r4, r4, r0
	adds r4, r4, r7
	adds r4, r4, r3
	mov r0, sb
	muls r0, r1, r0
	ldr r1, [sp]
	bl __divsi3
	ldrb r1, [r4]
	adds r1, r1, r0
	mov r4, sl
	strb r1, [r4, #2]
_08045EB4:
	mov r5, sl
	ldrb r1, [r5, #6]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08045EE0
	ldr r1, _08045ED8 @ =gBg2Alpha
	ldrb r0, [r1]
	subs r0, #1
	b _08045EE6
	.align 2, 0
_08045ECC: .4byte 0x0811717C
_08045ED0: .4byte 0x0811762C
_08045ED4: .4byte gUnk_03004C20
_08045ED8: .4byte gBg2Alpha
_08045EDC: .4byte gUnk_030034B0
_08045EE0:
	ldr r1, _08045F58 @ =gBg2Alpha
	ldrb r0, [r1]
	adds r0, #1
_08045EE6:
	strb r0, [r1]
	ldr r1, [sp]
	mov r2, sb
	subs r0, r1, r2
	cmp r0, #0xa
	bne _08045EF8
	movs r0, #0x30
	mov r3, sl
	strb r0, [r3, #4]
_08045EF8:
	ldr r0, _08045F58 @ =gBg2Alpha
	ldrb r2, [r0]
	rsbs r2, r2, #0
	mov r4, sl
	ldrb r0, [r4, #8]
	lsls r4, r0, #0x18
	lsrs r1, r4, #0x1c
	ldr r5, _08045F5C @ =gUnk_03004C20
	ldrb r3, [r5, #0xd]
	subs r3, #1
	lsls r0, r3, #3
	subs r0, #1
	adds r1, r1, r0
	add r1, r8
	ldrb r1, [r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	movs r1, #0xc8
	muls r1, r3, r1
	adds r0, r0, r1
	ldr r1, _08045F60 @ =0x0811717C
	adds r1, #1
	adds r0, r0, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r0, [r0]
	cmp r2, r0
	bne _08045F40
	lsrs r0, r4, #0x1c
	lsls r0, r0, #4
	mov r1, sl
	strb r0, [r1, #6]
	movs r0, #0
	movs r1, #0
	bl sub_08025B78
_08045F40:
	ldr r0, _08045F64 @ =gBgInfo
	ldr r1, _08045F58 @ =gBg2Alpha
	ldrb r1, [r1]
	strh r1, [r0, #0x24]
_08045F48:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045F58: .4byte gBg2Alpha
_08045F5C: .4byte gUnk_03004C20
_08045F60: .4byte 0x0811717C
_08045F64: .4byte gBgInfo

	thumb_func_start sub_08045F68
sub_08045F68: @ 0x08045F68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _08046008 @ =gEntityInfo
	ldrb r0, [r6, #0xe]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #0xe]
	ldrb r1, [r6, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6, #0xd]
	ldr r5, _0804600C @ =gSineTable
	adds r0, r5, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	movs r0, #0xa0
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r3, #0
	ldrsh r4, [r5, r3]
	movs r0, #0
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrh r4, [r5]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0xa0
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl MultiplyQ8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r0, [r6, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08046014
	ldr r0, _08046010 @ =gOamAffineBuffer
	strh r7, [r0]
	b _08046020
	.align 2, 0
_08046008: .4byte gEntityInfo
_0804600C: .4byte gSineTable
_08046010: .4byte gOamAffineBuffer
_08046014:
	ldr r1, _08046220 @ =gOamAffineBuffer
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r0, r1, #0
_08046020:
	mov r7, sb
	strh r7, [r0, #2]
	strh r4, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, _08046224 @ =gSineTable
	mov sl, r0
	ldr r1, _08046228 @ =gBg2Alpha
	ldrb r0, [r1]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r4, [r0, r2]
	ldr r5, _0804622C @ =gBg2XMag
	movs r3, #0
	ldrsh r0, [r5, r3]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r7, _08046230 @ =gBg2PA
	mov sb, r7
	mov r1, sb
	strh r0, [r1]
	ldr r2, _08046228 @ =gBg2Alpha
	ldrb r0, [r2]
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0
	ldrsh r4, [r0, r3]
	movs r7, #0
	ldrsh r0, [r5, r7]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _08046234 @ =gBg2PB
	mov r8, r1
	strh r0, [r1]
	ldr r2, _08046228 @ =gBg2Alpha
	ldrb r0, [r2]
	lsls r0, r0, #1
	add r0, sl
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r5, _08046238 @ =gBg2YMag
	movs r3, #0
	ldrsh r0, [r5, r3]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r6, _0804623C @ =gBg2PC
	strh r0, [r6]
	ldr r7, _08046228 @ =gBg2Alpha
	ldrb r0, [r7]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r2, #0
	ldrsh r0, [r5, r2]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r4, _08046240 @ =gBg2PD
	strh r0, [r4]
	ldr r5, _08046244 @ =gBg2X
	mov r3, r8
	movs r7, #0
	ldrsh r0, [r3, r7]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	movs r3, #0xf0
	lsls r3, r3, #7
	subs r1, r3, r1
	mov r0, sb
	movs r7, #0
	ldrsh r2, [r0, r7]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	str r1, [r5]
	ldr r2, _08046248 @ =gBg2Y
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	subs r3, r3, r0
	movs r7, #0
	ldrsh r1, [r6, r7]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	subs r3, r3, r0
	str r3, [r2]
	ldr r7, _0804624C @ =gEntityInfo
	ldr r4, _08046250 @ =gUnk_030034B0
	ldrb r0, [r4, #1]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #2
	ldrsb r0, [r4, r0]
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r7, #4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #2
	ldrsb r0, [r4, r0]
	muls r0, r1, r0
	asrs r0, r0, #8
	movs r1, #3
	bl __divsi3
	adds r0, #0x6e
	strh r0, [r7, #6]
	ldrb r1, [r7, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r7, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	adds r5, r0, #0
	adds r5, #0xd
	ldr r0, _08046254 @ =gUnk_03005428
	ldrb r0, [r0]
	cmp r5, r0
	bhs _080461BC
	ldr r0, _08046228 @ =gBg2Alpha
	mov r8, r0
	mov r6, sl
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r4, r0, r7
_08046174:
	ldrb r1, [r4, #2]
	adds r1, #0x40
	mov r2, r8
	ldrb r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldrh r0, [r4]
	muls r0, r2, r0
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r4, #4]
	lsls r1, r1, #1
	adds r1, r1, r6
	movs r7, #0
	ldrsh r1, [r1, r7]
	ldrh r0, [r4]
	muls r0, r1, r0
	asrs r0, r0, #8
	movs r1, #3
	bl __divsi3
	adds r0, #0x66
	strh r0, [r4, #6]
	adds r4, #0x1c
	adds r5, #1
	ldr r0, _08046254 @ =gUnk_03005428
	ldrb r0, [r0]
	cmp r5, r0
	blo _08046174
_080461BC:
	ldr r6, _08046254 @ =gUnk_03005428
	ldrb r0, [r6]
	subs r0, #0xd
	ldr r4, _08046250 @ =gUnk_030034B0
	ldrb r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1d
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08046A64
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	adds r5, r0, #0
	adds r5, #0xd
	ldrb r0, [r6]
	cmp r5, r0
	bhs _0804626E
	ldr r1, _0804624C @ =gEntityInfo
	movs r7, #0
	movs r2, #1
	mov r8, r2
	mov sb, r4
	adds r4, r6, #0
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, #6
	adds r2, r0, r1
_080461FA:
	ldrb r3, [r2, #0xb]
	adds r0, r3, #0
	subs r0, #0x51
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0804621C
	mov r0, sb
	ldrb r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08046258
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x53
	bne _08046258
_0804621C:
	strb r7, [r2, #0xa]
	b _08046264
	.align 2, 0
_08046220: .4byte gOamAffineBuffer
_08046224: .4byte gSineTable
_08046228: .4byte gBg2Alpha
_0804622C: .4byte gBg2XMag
_08046230: .4byte gBg2PA
_08046234: .4byte gBg2PB
_08046238: .4byte gBg2YMag
_0804623C: .4byte gBg2PC
_08046240: .4byte gBg2PD
_08046244: .4byte gBg2X
_08046248: .4byte gBg2Y
_0804624C: .4byte gEntityInfo
_08046250: .4byte gUnk_030034B0
_08046254: .4byte gUnk_03005428
_08046258:
	mov r1, r8
	strb r1, [r2, #0xa]
	ldrb r1, [r2, #2]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
_08046264:
	adds r2, #0x1c
	adds r5, #1
	ldrb r3, [r4]
	cmp r5, r3
	blo _080461FA
_0804626E:
	ldr r1, _08046284 @ =gEntityInfo
	ldrh r0, [r1, #6]
	subs r0, #0xa
	strh r0, [r1, #6]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046284: .4byte gEntityInfo

	thumb_func_start sub_08046288
sub_08046288: @ 0x08046288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r7, _080462C4 @ =gBgTilemapBufs
	ldr r2, _080462C8 @ =gUnk_030034B0
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _080462A0
	b _080467E4
_080462A0:
	ldrb r0, [r2, #3]
	cmp r0, #0
	beq _080462AA
	subs r0, #1
	strb r0, [r2, #3]
_080462AA:
	ldrb r1, [r2, #4]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x20
	bne _080462B6
	b _080463C0
_080462B6:
	cmp r0, #0x20
	bgt _080462CC
	cmp r0, #0x10
	bne _080462C0
	b _0804650C
_080462C0:
	b _080467E4
	.align 2, 0
_080462C4: .4byte gBgTilemapBufs
_080462C8: .4byte gUnk_030034B0
_080462CC:
	cmp r0, #0x30
	beq _080462D2
	b _080467E4
_080462D2:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	beq _08046348
	cmp r0, #1
	bgt _080462E4
	cmp r0, #0
	beq _080462EA
	b _080467E4
_080462E4:
	cmp r0, #2
	beq _080463B4
	b _080467E4
_080462EA:
	ldr r1, _08046340 @ =0x040000D4
	movs r2, #0xb0
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1]
	subs r2, #0xfa
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _08046344 @ =0x80000012
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08046312
_0804630A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0804630A
_08046312:
	ldr r1, _08046340 @ =0x040000D4
	movs r2, #0xb8
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1]
	subs r2, #0xfa
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _08046344 @ =0x80000012
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0804633A
_08046332:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08046332
_0804633A:
	movs r0, #5
	b _080467CC
	.align 2, 0
_08046340: .4byte 0x040000D4
_08046344: .4byte 0x80000012
_08046348:
	ldrb r0, [r2, #3]
	cmp r0, #0
	beq _08046350
	b _080467E4
_08046350:
	ldr r1, _080463A4 @ =0x040000D4
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1]
	ldr r2, _080463A8 @ =0x00000486
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _080463AC @ =0x80000012
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08046378
_08046370:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08046370
_08046378:
	ldr r1, _080463A4 @ =0x040000D4
	movs r2, #0xc8
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1]
	ldr r2, _080463B0 @ =0x000004C6
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _080463AC @ =0x80000012
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080463A0
_08046398:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08046398
_080463A0:
	movs r0, #5
	b _080467CC
	.align 2, 0
_080463A4: .4byte 0x040000D4
_080463A8: .4byte 0x00000486
_080463AC: .4byte 0x80000012
_080463B0: .4byte 0x000004C6
_080463B4:
	ldrb r0, [r2, #3]
	cmp r0, #0
	beq _080463BC
	b _080467E4
_080463BC:
	movs r0, #0x10
	b _080467E2
_080463C0:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	beq _0804643C
	cmp r0, #1
	bgt _080463D2
	cmp r0, #0
	beq _080463D8
	b _080467E4
_080463D2:
	cmp r0, #2
	beq _080464A0
	b _080467E4
_080463D8:
	ldr r1, _0804642C @ =0x040000D4
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1]
	ldr r2, _08046430 @ =0x00000486
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _08046434 @ =0x80000012
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08046400
_080463F8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080463F8
_08046400:
	ldr r1, _0804642C @ =0x040000D4
	movs r2, #0xc8
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1]
	ldr r2, _08046438 @ =0x000004C6
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _08046434 @ =0x80000012
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08046428
_08046420:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08046420
_08046428:
	movs r0, #5
	b _080467CC
	.align 2, 0
_0804642C: .4byte 0x040000D4
_08046430: .4byte 0x00000486
_08046434: .4byte 0x80000012
_08046438: .4byte 0x000004C6
_0804643C:
	ldrb r0, [r2, #3]
	cmp r0, #0
	beq _08046444
	b _080467E4
_08046444:
	ldr r1, _08046498 @ =0x040000D4
	movs r2, #0xb0
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1]
	subs r2, #0xfa
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _0804649C @ =0x80000012
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0804646C
_08046464:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08046464
_0804646C:
	ldr r1, _08046498 @ =0x040000D4
	movs r2, #0xb8
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1]
	subs r2, #0xfa
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _0804649C @ =0x80000012
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08046494
_0804648C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0804648C
_08046494:
	movs r0, #5
	b _080467CC
	.align 2, 0
_08046498: .4byte 0x040000D4
_0804649C: .4byte 0x80000012
_080464A0:
	ldrb r0, [r2, #3]
	cmp r0, #0
	beq _080464A8
	b _080467E4
_080464A8:
	ldr r1, _08046500 @ =0x040000D4
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1]
	subs r2, #0x7a
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _08046504 @ =0x80000012
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080464D0
_080464C8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080464C8
_080464D0:
	ldr r1, _08046500 @ =0x040000D4
	movs r2, #0xa8
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1]
	subs r2, #0x7a
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _08046504 @ =0x80000012
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080464F8
_080464F0:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080464F0
_080464F8:
	movs r0, #0
	ldr r1, _08046508 @ =gUnk_030034B0
	strb r0, [r1, #4]
	b _080467E4
	.align 2, 0
_08046500: .4byte 0x040000D4
_08046504: .4byte 0x80000012
_08046508: .4byte gUnk_030034B0
_0804650C:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0804651C
	cmp r0, #1
	bne _0804651A
	b _080467DC
_0804651A:
	b _080467E4
_0804651C:
	ldr r1, _080465CC @ =0x040000D4
	movs r2, #0xd0
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1]
	ldr r2, _080465D0 @ =0x00000486
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _080465D4 @ =0x80000012
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08046544
_0804653C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0804653C
_08046544:
	ldr r1, _080465CC @ =0x040000D4
	movs r2, #0xd8
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1]
	ldr r2, _080465D8 @ =0x000004C6
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _080465D4 @ =0x80000012
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0804656C
_08046564:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08046564
_0804656C:
	ldr r0, _080465DC @ =gUnk_030034B0
	ldrb r1, [r0, #6]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x80
	bne _080465EC
	ldr r1, _080465CC @ =0x040000D4
	ldr r2, _080465E0 @ =0x00000716
	adds r0, r7, r2
	str r0, [r1]
	movs r2, #0x92
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _080465E4 @ =0x80000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080465A0
_08046598:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08046598
_080465A0:
	ldr r1, _080465CC @ =0x040000D4
	ldr r2, _080465E8 @ =0x00000756
	adds r0, r7, r2
	str r0, [r1]
	movs r2, #0x9a
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _080465E4 @ =0x80000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	blt _080465C2
	b _080467CA
_080465C2:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080465C2
	b _080467CA
	.align 2, 0
_080465CC: .4byte 0x040000D4
_080465D0: .4byte 0x00000486
_080465D4: .4byte 0x80000012
_080465D8: .4byte 0x000004C6
_080465DC: .4byte gUnk_030034B0
_080465E0: .4byte 0x00000716
_080465E4: .4byte 0x80000008
_080465E8: .4byte 0x00000756
_080465EC:
	ldr r0, _080466F8 @ =gUnk_03004670
	ldr r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	ldr r3, _080466FC @ =gUnk_03004C20
	ldrb r0, [r3, #0xd]
	lsls r0, r0, #3
	subs r0, #9
	adds r1, r1, r0
	adds r2, #8
	adds r2, r2, r1
	ldrb r0, [r2]
	movs r1, #0x7f
	mov sb, r1
	mov r2, sb
	ands r2, r0
	mov sb, r2
	cmp r2, #0x7f
	bne _08046616
	movs r0, #0
	mov sb, r0
_08046616:
	ldr r1, _08046700 @ =0x040000D4
	ldr r2, _08046704 @ =0x0000070A
	adds r0, r7, r2
	str r0, [r1]
	movs r2, #0x91
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _08046708 @ =0x80000006
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0804663E
_08046636:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08046636
_0804663E:
	ldr r1, _08046700 @ =0x040000D4
	ldr r2, _0804670C @ =0x0000074A
	adds r0, r7, r2
	str r0, [r1]
	movs r2, #0x99
	lsls r2, r2, #3
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _08046708 @ =0x80000006
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08046666
_0804665E:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0804665E
_08046666:
	movs r0, #0
	str r0, [sp]
	ldr r1, _08046710 @ =0x000005A6
	mov sl, r1
	mov r0, sb
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r5, r7, r2
	ldr r1, _08046714 @ =0x000005BC
	adds r1, r1, r7
	mov r8, r1
	ldr r2, _08046718 @ =0x00000494
	adds r4, r7, r2
	movs r6, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r7
	str r0, [sp, #4]
_0804669A:
	ldr r1, _080466FC @ =gUnk_03004C20
	ldrb r0, [r1, #0xd]
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r0, r0, r6
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r4]
	mov r2, r8
	ldrh r0, [r2]
	strh r0, [r4, #2]
	ldr r1, _0804671C @ =gUnk_030034B0
	ldrb r0, [r1, #6]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r0, r0, r6
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r4, #4]
	ldrh r0, [r2, #2]
	strh r0, [r4, #6]
	ldrb r0, [r1, #6]
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0x40
	beq _080466D4
	cmp r1, #0x60
	bne _08046770
_080466D4:
	mov r0, sb
	movs r1, #0x64
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08046720
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r0, r0, r6
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r4, #8]
	ldr r2, [sp, #4]
	adds r0, r2, r6
	b _08046740
	.align 2, 0
_080466F8: .4byte gUnk_03004670
_080466FC: .4byte gUnk_03004C20
_08046700: .4byte 0x040000D4
_08046704: .4byte 0x0000070A
_08046708: .4byte 0x80000006
_0804670C: .4byte 0x0000074A
_08046710: .4byte 0x000005A6
_08046714: .4byte 0x000005BC
_08046718: .4byte 0x00000494
_0804671C: .4byte gUnk_030034B0
_08046720:
	mov r0, sb
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08046746
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r0, r0, r6
_08046740:
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
_08046746:
	mov r0, sb
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r7
	adds r0, r0, r6
	ldr r1, _0804676C @ =0x000005A6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrh r0, [r5, #4]
	strh r0, [r4, #0xe]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x12]
	b _080467B4
	.align 2, 0
_0804676C: .4byte 0x000005A6
_08046770:
	mov r0, sb
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08046796
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r0, r0, r6
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
_08046796:
	mov r0, sb
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r7
	adds r0, r0, r6
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrh r0, [r5]
	strh r0, [r4, #0xe]
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x10]
_080467B4:
	adds r5, #0x40
	movs r2, #0x40
	add r8, r2
	adds r4, #0x40
	adds r6, #0x40
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	cmp r0, #1
	bhi _080467CA
	b _0804669A
_080467CA:
	movs r0, #4
_080467CC:
	ldr r1, _080467D8 @ =gUnk_030034B0
	strb r0, [r1, #3]
	ldrb r0, [r1, #4]
	adds r0, #1
	strb r0, [r1, #4]
	b _080467E4
	.align 2, 0
_080467D8: .4byte gUnk_030034B0
_080467DC:
	ldrb r0, [r2, #3]
	cmp r0, #0
	bne _080467E4
_080467E2:
	strb r0, [r2, #4]
_080467E4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080467F4
sub_080467F4: @ 0x080467F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r4, #0
	ldr r0, _08046824 @ =gUnk_03004670
	mov sb, r0
	ldr r7, _08046828 @ =gUnk_03004C20
	ldr r0, _0804682C @ =0x0811762C
	mov r8, r0
_08046808:
	ldr r0, _08046824 @ =gUnk_03004670
	ldr r1, [r0]
	ldr r0, _08046828 @ =gUnk_03004C20
	ldrb r0, [r0, #0xd]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r1, #8
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0x7f
	bne _08046830
	movs r2, #0
	b _08046886
	.align 2, 0
_08046824: .4byte gUnk_03004670
_08046828: .4byte gUnk_03004C20
_0804682C: .4byte 0x0811762C
_08046830:
	cmp r4, #7
	bne _08046838
	movs r2, #5
	b _08046846
_08046838:
	cmp r4, #3
	beq _08046840
	cmp r4, #5
	bne _08046844
_08046840:
	movs r2, #3
	b _08046846
_08046844:
	movs r2, #1
_08046846:
	mov r0, sb
	ldr r5, [r0]
	ldrb r3, [r7, #0xd]
	subs r1, r3, #1
	lsls r1, r1, #3
	adds r1, r4, r1
	adds r0, r5, #0
	adds r0, #8
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08046886
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r4, #7
	bne _08046886
	cmp r3, #5
	bne _08046886
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08046886
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08046886:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r4, r0
	add r0, r8
	ldrb r0, [r0]
	adds r0, #0xd
	adds r1, r2, #0
	bl sub_08025B78
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08046808
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080468B0
sub_080468B0: @ 0x080468B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r7, _0804697C @ =gUnk_030034B0
	ldrb r1, [r7, #7]
	movs r0, #0xf
	mov sl, r0
	ands r0, r1
	cmp r0, #0
	bne _080468CA
	b _080469EA
_080468CA:
	ldrb r0, [r7, #5]
	cmp r0, #0
	beq _080468D4
	subs r0, #1
	strb r0, [r7, #5]
_080468D4:
	ldr r1, _08046980 @ =gBg2Alpha
	mov r8, r1
	ldr r3, _08046984 @ =0x0811717C
	ldr r2, _08046988 @ =0x0811762C
	mov ip, r2
	ldrb r0, [r7, #7]
	lsls r4, r0, #0x1c
	lsrs r1, r4, #0x1c
	ldr r0, _0804698C @ =gUnk_03004C20
	mov sb, r0
	ldrb r2, [r0, #0xd]
	subs r2, #1
	lsls r0, r2, #3
	subs r6, r0, #1
	adds r1, r1, r6
	add r1, ip
	ldrb r1, [r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	movs r1, #0xc8
	adds r5, r2, #0
	muls r5, r1, r5
	adds r0, r0, r5
	adds r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	rsbs r0, r0, #0
	mov r1, r8
	ldrb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r2, r0
	bne _08046998
	ldr r0, _08046990 @ =gHeldKeys
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	ldrb r0, [r7, #5]
	cmp r0, #0
	bne _0804692A
	movs r0, #0x80
	strb r0, [r7, #5]
_0804692A:
	ldrb r0, [r7, #5]
	cmp r0, #0x40
	bne _08046960
	movs r0, #0x8b
	bl m4aSongNumStart
	ldr r0, _08046994 @ =gUnk_03004670
	ldr r2, [r0]
	ldrb r0, [r7, #7]
	lsls r0, r0, #0x1c
	lsrs r3, r0, #0x1c
	mov r4, sb
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #3
	subs r1, #9
	adds r3, r3, r1
	adds r2, #8
	adds r3, r2, r3
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	strb r0, [r3]
	bl sub_080467F4
_08046960:
	ldrb r0, [r7, #5]
	cmp r0, #1
	bne _080469EA
	bl sub_080469FC
	mov r1, sl
	ands r1, r0
	ldrb r2, [r7, #7]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #7]
	b _080469EA
	.align 2, 0
_0804697C: .4byte gUnk_030034B0
_08046980: .4byte gBg2Alpha
_08046984: .4byte 0x0811717C
_08046988: .4byte 0x0811762C
_0804698C: .4byte gUnk_03004C20
_08046990: .4byte gHeldKeys
_08046994: .4byte gUnk_03004670
_08046998:
	lsrs r0, r4, #0x1c
	adds r0, r0, r6
	add r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r5
	adds r0, r0, r3
	ldrb r0, [r0]
	rsbs r0, r0, #0
	subs r0, r0, r2
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080469C4
	ldr r1, _080469C0 @ =gHeldKeys
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	b _080469E8
	.align 2, 0
_080469C0: .4byte gHeldKeys
_080469C4:
	lsrs r0, r4, #0x1c
	adds r0, r0, r6
	add r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r5
	adds r0, r0, r3
	ldrb r0, [r0]
	rsbs r0, r0, #0
	subs r0, r0, r2
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080469EA
	ldr r1, _080469F8 @ =gHeldKeys
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
_080469E8:
	strh r0, [r1]
_080469EA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080469F8: .4byte gHeldKeys

	thumb_func_start sub_080469FC
sub_080469FC: @ 0x080469FC
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r6, _08046A40 @ =0x0811765C
	ldr r0, _08046A44 @ =gUnk_030034B0
	ldrb r0, [r0, #7]
	lsls r5, r0, #0x18
	ldr r0, _08046A48 @ =gUnk_03004C20
	ldrb r0, [r0, #0xd]
	subs r1, r0, #1
	lsls r4, r1, #3
	lsls r1, r0, #3
	subs r3, r1, r0
_08046A14:
	lsrs r0, r5, #0x1c
	adds r0, r0, r3
	adds r0, r0, r6
	ldrb r0, [r0]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08046A50
	ldr r0, _08046A4C @ =gUnk_03004670
	ldr r0, [r0]
	adds r1, r2, r4
	adds r0, #8
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x7f
	bne _08046A50
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08046A5C
	.align 2, 0
_08046A40: .4byte 0x0811765C
_08046A44: .4byte gUnk_030034B0
_08046A48: .4byte gUnk_03004C20
_08046A4C: .4byte gUnk_03004670
_08046A50:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08046A14
	movs r0, #0
_08046A5C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08046A64
sub_08046A64: @ 0x08046A64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _08046AAC @ =gUnk_030034B0
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08046AB0 @ =gEntityInfo+0x16C
	adds r1, r1, r0
	mov sl, r1
	movs r4, #1
	mov r0, sb
	movs r1, #9
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r4, r1
	bhs _08046B56
_08046A9C:
	lsls r0, r4, #1
	adds r0, r0, r4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r1
	blo _08046A9C
	b _08046B56
	.align 2, 0
_08046AAC: .4byte gUnk_030034B0
_08046AB0: .4byte gEntityInfo+0x16C
_08046AB4:
	adds r1, r4, #0
	cmp r4, sb
	bhs _08046B4A
	lsls r0, r4, #3
	str r0, [sp, #0x20]
	subs r0, r0, r4
	lsls r0, r0, #2
	mov r8, r0
_08046AC4:
	adds r3, r1, #0
	adds r2, r1, #1
	mov ip, r2
	cmp r1, r4
	blo _08046B40
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	mov r5, r8
	subs r1, r0, r5
	ldrh r1, [r1, #6]
	ldrh r0, [r0, #6]
	cmp r1, r0
	bhs _08046B40
	ldr r6, [sp, #0x20]
	subs r0, r6, r4
	lsls r0, r0, #2
	str r0, [sp, #0x1c]
_08046AEA:
	lsls r2, r3, #3
	subs r2, r2, r3
	lsls r2, r2, #2
	add r2, sl
	mov r1, sp
	adds r0, r2, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0]
	str r0, [r1]
	ldr r7, [sp, #0x1c]
	subs r1, r2, r7
	adds r0, r1, #0
	ldm r0!, {r5, r6, r7}
	stm r2!, {r5, r6, r7}
	ldm r0!, {r5, r6, r7}
	stm r2!, {r5, r6, r7}
	ldr r0, [r0]
	str r0, [r2]
	mov r0, sp
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	subs r0, r3, r4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r4
	blo _08046B40
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	add r0, sl
	ldr r6, [sp, #0x1c]
	subs r1, r0, r6
	ldrh r1, [r1, #6]
	ldrh r0, [r0, #6]
	cmp r1, r0
	blo _08046AEA
_08046B40:
	mov r7, ip
	lsls r0, r7, #0x18
	lsrs r1, r0, #0x18
	cmp r1, sb
	blo _08046AC4
_08046B4A:
	adds r0, r4, #0
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08046B56:
	cmp r4, #0
	bne _08046AB4
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
