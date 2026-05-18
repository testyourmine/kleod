	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start thunk_HeapInit
thunk_HeapInit: @ 0x08051BA4
	bx pc
	nop

	arm_func_start sub_08051BA8
sub_08051BA8: @ 0x08051BA8
	b HeapInit



	thumb_func_start thunk_HeapAlloc
thunk_HeapAlloc: @ 0x08051BAC
	bx pc
	nop

	arm_func_start sub_08051BB0
sub_08051BB0: @ 0x08051BB0
	b HeapAlloc



	thumb_func_start thunk_UpdateRng
thunk_UpdateRng: @ 0x08051BB4
	bx pc
	nop

	arm_func_start sub_08051BB8
sub_08051BB8: @ 0x08051BB8
	b UpdateRng



	thumb_func_start thunk_HeapFree
thunk_HeapFree: @ 0x08051BBC
	bx pc
	nop

	arm_func_start sub_08051BC0
sub_08051BC0: @ 0x08051BC0
	b HeapFree



	thumb_func_start thunk_GetRandomValue
thunk_GetRandomValue: @ 0x08051BC4
	bx pc
	nop

	arm_func_start sub_08051BC8
sub_08051BC8: @ 0x08051BC8
	b GetRandomValue



	thumb_func_start thunk_GetRandomValueEx
thunk_GetRandomValueEx: @ 0x08051BCC
	bx pc
	nop

	arm_func_start sub_08051BD0
sub_08051BD0: @ 0x08051BD0
	b GetRandomValueEx
