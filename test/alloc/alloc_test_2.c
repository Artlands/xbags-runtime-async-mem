/*
 * _ALLOC_TEST_1_C_
 *
 * A replica of xbgas runtime library
 * 
 */

#include <stdio.h>
#include "xbrtime.h"

#define _XBGAS_ALLOC_SIZE_ 16

int main( int argc, char **argv ){
    int rtn = 0;
    void *ptr = NULL;
    size_t sz = _XBGAS_ALLOC_SIZE_;

    printf( "Initializing xBGAS Runtime\n" );
    rtn = xbrtime_init();
    printf( "xBGAS is Initialized\n" );

    printf( "Allocating %d bytes\n", (int)(sz) );
    ptr = xbrtime_malloc( sz );

    printf( "PTR = %p\n", ptr );
    
    xbrtime_free( ptr );

    printf( "xBGAS is Closing\n" );
    xbrtime_close();
    printf( "xBGAS is Closed\n" );

    return rtn;
}