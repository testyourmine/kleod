#include "global.h"

// 948
s16 MultiplyQ8(s16 num1, s16 num2)
{
    s32 result;

    result = num1 * num2;
    result /= 0x100;
    return result;
}

// 960
s16 DivideQ8(s16 num1, s16 num2)
{
    s32 result;

    result = num1 * 0x100;
    result /= num2;
    return result;
}

// 978
s16 ReciprocalQ8(s16 num1)
{
    s32 result;

    result = 0x10000;
    result /= num1;
    return result;
}

// 990
s16 MultiplyQ4(s16 num1, s16 num2)
{
    s32 result;

    result = num1 * num2;
    result /= 0x10;
    return result;
}

// 9A8
s16 DivideQ4(s16 num1, s16 num2)
{
    s32 result;

    result = num1 * 0x10;
    result /= num2;
    return result;
}

// 9C0
s16 ReciprocalQ4(s16 num1)
{
    s32 result;

    result = 0x100;
    result /= num1;
    return result;
}
