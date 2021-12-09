/*
 * _INIT_TEST_2_C_
 *
 * A replica of xbgas runtime library
 * 
 */

#include <stdio.h>
#include "xbrtime.h"

int main( int argc, char **argv ){
    int rtn = 0;

    printf( "Initializing xBGAS Runtime\n" );
    rtn = xbrtime_init();
    printf( "xBGAS is initialized; Closing xBGAS\n" );

    printf( "I AM PE = %d of %d TOTAL PEs\n", xbrtime_mype(), xbrtime_num_pes() );

    xbrtime_close();
    printf( "xBGAS is Closed\n" );

    return rtn;
}