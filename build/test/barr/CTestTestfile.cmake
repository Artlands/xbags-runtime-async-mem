# CMake generated Testfile for 
# Source directory: /home/jieli/Desktop/ReplicaXbgasRuntime/test/barr
# Build directory: /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/barr
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(barr_test_1 "mpirun" "-n" "2" "/home/jieli/Desktop/xBGAS/riscv/toolchain/bin/spike" "-x512" "pk" "/home/jieli/Desktop/ReplicaXbgasRuntime/test/barr/testBin/barr_test_1")
set_tests_properties(barr_test_1 PROPERTIES  ENVIRONMENT "export MPICH_ASYNC_PROGRESS=1" PASS_REGULAR_EXPRESSION "" WORKING_DIRECTORY "/home/jieli/Desktop/ReplicaXbgasRuntime/test/barr/testBin" _BACKTRACE_TRIPLES "/home/jieli/Desktop/ReplicaXbgasRuntime/test/barr/CMakeLists.txt;27;add_test;/home/jieli/Desktop/ReplicaXbgasRuntime/test/barr/CMakeLists.txt;0;")
