/*
 * _XBRTIME_MACROS_H_
 *
 * A replica of xbgas runtime library
 * 
 */

/*! \file xbrtime-macros.h
    \brief XBGAS Runtime Macro Header File

    The XBGAS Runtime provides C/CXX level function interfaces
    for applications to conveniently utilize the shared memory
    capabilities present in the xBGAS extension to the RISV-V
    specification

*/


#ifndef _XBRTIME_MACROS_H_
#define _XBRTIME_MACROS_H_

#ifdef __cplusplus
    extern "C" {
#endif

#ifndef _XBRTIME_MIN_UNR_THRESHOLD_
/** @brief Minimum transfer unrolling (to hide latency) */
#define _XBRTIME_MIN_UNR_THRESHOLD_ 8
#endif

/** @brief Defines the number of memory allocation slots */
#define _XBRTIME_MEM_SLOTS_ 2048


#ifdef __cplusplus
    }
#endif /* extern "C" */

#endif /* _XBRTIME_MACROS_H_ */

/* EOF */