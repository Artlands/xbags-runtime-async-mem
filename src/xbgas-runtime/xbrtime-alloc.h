/*
 * _XBRTIME_ALLOC_H_
 *
 * A replica of xbgas runtime library
 * 
 */
#ifndef _XBRTIME_ALLOC_H_
#define _XBRTIME_ALLOC_H_

#ifdef __cplusplus
    extern "C" {
#endif

#include <stdlib.h>

typedef struct _XBRTIME_MEM_T{
    uint64_t start_addr;
    size_t size;
}XBRTIME_MEM_T;

#ifdef __cplusplus
    }
#endif /* extern "C" */

#endif /* _XBRTIME_ALLOC_H_ */

/* EOF */