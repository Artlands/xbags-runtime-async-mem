/*
 * _INIT_TEST_3_C_
 *
 * A replica of xbgas runtime library
 * 
 */

#include <stdio.h>
#include "xbrtime.h"

int main( int argc, char **argv ){
    int rtn = 0;

    printf( "Querying mype prior to initializaton\n" );
    if( xbrtime_mype() != -1 ){
        printf( "failed to catch error with xbrtime_mype() prior to init\n" );
        return -1;
    }
    printf( "Success; caught the error\n" );

    printf( "Querying num_pes prior to initializaton\n" );
    if( xbrtime_num_pes() != -1 ){
        printf( "failed to catch error with xbrtime_num_pes() prior to init\n" );
        return -1;
    }
    printf( "Success; caught the error\n" );

    return rtn;

}