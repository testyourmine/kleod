	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	arm_func_start UpdateRng
UpdateRng: @ 0x08000278
	@ gRngCount += 1
	ldr r1, _0800041C @ =gRngCount
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	@ gRngState = gRngState * 5 + 0x11
	ldr r1, _08000420 @ =gRngState
	ldrb r0, [r1]
	add r2, r0, r0, lsl #2
	add r2, r2, #0x11
	strb r2, [r1]
	bx lr

	arm_func_start GetRandomValue
GetRandomValue: @ 0x080002A0
	@ r0 = gRngTable[gRngState] & 0xFF
	ldr r0, _08000424 @ =gRngTable
	ldr r3, _08000428 @ =gRngState
	ldrb r2, [r3]
	add ip, r2, r0
	ldr r0, [ip]
	and r0, r0, #0xff
	@ gRngState += gRngCount | 1
	ldr r1, _0800042C @ =gRngCount
	ldrb ip, [r1]
	orr ip, ip, #1
	add r2, r2, ip
	strb r2, [r3]
	bx lr @ return r0

    arm_func_start GetRandomValueEx
GetRandomValueEx: @ 0x080002D0
	@ r0 = gRngTable[gRngState] & 0xFF
	ldr r0, _08000430 @ =gRngTable
	ldr r3, _08000434 @ =gRngState
	ldrb r2, [r3]
	add ip, r2, r0
	ldr r0, [ip]
	and r0, r0, #0xff
	@ gRngState = gRngState + (gRngCount | 1)
	ldr r1, _08000438 @ =gRngCount
	ldrb ip, [r1]
	orr ip, ip, #1
	add r2, r2, ip
	strb r2, [r3]
	@ gRngCount += 1
	ldrb ip, [r1]
	add ip, ip, #1
	strb ip, [r1]
	@ gRngState = gRngState * 5 + 0x11
	add r1, r2, r2, lsl #2
	add r1, r1, #0x11
	strb r1, [r3]
	bx lr @ return r0

	.global gRngTable
gRngTable: @ 0x08000318
	.4byte 0xCCDB7E27, 0x9C4F1430, 0x7290D288, 0x7A3EC129, 0x52442C82, 0x0589C960, 0xB20A6713, 0xDD68C7E2
	.4byte 0x66C26D65, 0x54539783, 0xE0F0A732, 0x7608C8D1, 0xB7A3F624, 0xFB756257, 0x07B6815C, 0xA9DAB5D6
	.4byte 0x7139DCCE, 0xAC5977CD, 0x91498780, 0x22E45A84, 0xC34D1DD3, 0x9BF80112, 0x518DEB8E, 0xE1BBA061
	.4byte 0xC564CB1A, 0x5B5F6BD8, 0x1802A5CA, 0x9A92FD1F, 0x743F2DC0, 0xAF3A262A, 0x4CF4790C, 0x177F4700
	.4byte 0x5DB4F7EF, 0x4A9F25B9, 0x986EBC0F, 0xEC3656ED, 0xE8BA2341, 0x9DEEEA2B, 0x9E0E1E0D, 0xC6784EFE
	.4byte 0x2E31AD8F, 0xF5F22F1B, 0x378A86F1, 0x0B944B06, 0x7073DEE6, 0x3810A1FF, 0x553596E9, 0x7CFC636A
	.4byte 0x8C20E5A8, 0x58BDB0FA, 0x45A24811, 0x1540D928, 0xE319A4B3, 0xBE43E75E, 0xF3D78504, 0x163B6C8B
	.4byte 0x3CCFD5A6, 0x9333AB21, 0xB846037B, 0xB142C434, 0xF950AE1C, 0xD03D6FAA, 0xD4BF9969, 0x0995DF7D
	.4byte 0x00000000

_0800041C: .4byte gRngCount
_08000420: .4byte gRngState
_08000424: .4byte gRngTable
_08000428: .4byte gRngState
_0800042C: .4byte gRngCount
_08000430: .4byte gRngTable
_08000434: .4byte gRngState
_08000438: .4byte gRngCount
