#ifndef GUARD_DATA_TRIG_H
#define GUARD_DATA_TRIG_H

#include "global.h"

extern const s16 gSineTable[];

/**
 * @brief PI is half a rotation on the unit circle, a full rotation is Q_8_8(1.f)
 * 
 */
#define PI Q_8_8(.5f)

/**
 * @brief Shorthand for PI / 2
 * 
 */
#define PI_2 (PI / 2)

/**
 * @brief Shorthand for PI / 4
 * 
 */
#define PI_4 (PI / 4)

/**
 * @brief Shorthand for PI * 3 / 4
 * 
 */
#define PI_3_4 (PI * 3 / 4)

/**
 * @brief Computes the sine of a value
 * 
 * @param value Q8.8 Value
 * @return Q8.8 sin value
 */
#define SIN(value) (gSineTable[(value)])

/**
 * @brief Computes the cosine of a value
 * 
 * @param value Q8.8 Value
 * @return Q8.8 cos value
 */
#define COS(value) (gSineTable[(value) + PI_2])

#endif // GUARD_DATA_TRIG_H