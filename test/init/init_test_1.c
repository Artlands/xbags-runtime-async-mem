/*
 * _INIT_TEST_1_C_
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
  printf( "xBGAS is Initialized; Closing xBGAS\n" );
  xbrtime_close();
  printf( "xBGAS is Closed\n" );

  return rtn;
}

/* EOF */