#include "global.h"

// 948
s16 MultiplyQ8(s16 num1, s16 num2)
{
    s32 product;
    s32 rounded;

    product = num1 * num2;
    rounded = product;
    if (rounded < 0)
    {
        rounded += 0xFF;
    }
    product = rounded >> 8;
    return product;
}

// 960
s16 DivideQ8(s16 num1, s16 num2)
{
    return (num1 << 8) / num2;
}

// 978
s16 ReciprocalQ8(s16 num1)
{
    s32 numerator = 0x10000;
    return (numerator / num1);
}

// 990
s16 MultiplyQ4(s16 num1, s16 num2)
{
    s32 product;
    s32 rounded;

    product = num1 * num2;
    rounded = product;
    if (rounded < 0)
    {
        rounded += 0xF;
    }
    product = rounded >> 4;
    return product;
}

// 9A8
s16 DivideQ4(s16 num1, s16 num2)
{
    return ((num1 << 4) / num2);
}

// 9C0
s16 ReciprocalQ4(s16 num1)
{
    s32 numerator = 0x100;
    return (numerator / num1);
}
