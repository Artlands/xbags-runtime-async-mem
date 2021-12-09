/*
 * _XBRTIME_CTOR_C_
 *
 * A replica of xbgas runtime library
 * 
 */

#include "xbrtime.h"
#define END_ADDR 0xAA00000000000000ull

volatile uint64_t* barrier;

/* ------------------------------------------------------ FUNCTION PROTOTYPES */
void __xbrtime_ctor_reg_reset();

__attribute__((constructor)) void __xbrtime_ctor(){
    /* Initialize the unnecessary registers */
    __xbrtime_ctor_reg_reset();
    barrier = malloc( sizeof(uint64_t) * 2 * 10);
}

__attribute__((destructor)) void __xbrtime_dtor(){
    /* Free barrier */
    uint64_t end = 0;
    *(( uint64_t*) END_ADDR) = end;
    free( (void*) barrier);
}