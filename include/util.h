#ifndef GUARD_UTIL_H
#define GUARD_UTIL_H

#include "global.h"

/**
 * @brief 43C | Get the absolute value
 * 
 * @param n Original value
 * @return s32 Absolute value
 */
s32 Abs(s32 n);

/**
 * @brief 448 | Check the equivalence of two strings
 * 
 * @param s1 String 1
 * @param s2 String 2
 * @return s32 0 if same, 1 if different
 */
s32 StringCompare(u8 *s1, u8 *s2);

/**
 * @brief 460 | Copy source string into destination
 * 
 * @param dest Destination address
 * @param src Source address
 */
void StringCopy(u8 *dest, u8 *src);

#endif // GUARD_UTIL_H