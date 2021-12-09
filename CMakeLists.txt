cmake_minimum_required (VERSION 2.6)
project(replica-xbgas-runtime C CXX ASM)

#----------------------------------------------------------
#-- COMPILER OPTIONS
#----------------------------------------------------------

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3 -Wall")
# set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS} -O0 -Wall")
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS} -O0 -Wall -DXBGAS_DEBUG")
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS} -O3 -Wall")

#----------------------------------------------------------
#-- TOP LEVEL PATHS
#----------------------------------------------------------
if(NOT XBGAS_PATH)
    set(XBGAS_PATH "${CMAKE_CURRENT_SOURCE_DIR}/src/xbgas-runtime")
    message(STATUS "XBGAS_PATH set to ${XBGAS_PATH}.")
endif()

#----------------------------------------------------------
#-- FIND PACKAGES
#----------------------------------------------------------
set(RISCV_ENV "$ENV{RISCV}")
if(RISCV_ENV)
    message(STATUS "RISCV environment set to ${RISCV_ENV}.")
else()
    message(FATAL_ERROR "RISCV environment variable is not set.")
endif()

#----------------------------------------------------------
#-- TESTING
#----------------------------------------------------------
# Enable testing
enable_testing()

#----------------------------------------------------------
#-- SUBDIRECTORIES
#----------------------------------------------------------
add_subdirectory( src )
add_subdirectory( test)