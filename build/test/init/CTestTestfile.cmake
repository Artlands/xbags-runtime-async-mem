# CMake generated Testfile for 
# Source directory: /home/jieli/Desktop/ReplicaXbgasRuntime/test/init
# Build directory: /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/init
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(init_test_1 "mpirun" "-n" "2" "/home/jieli/Desktop/xBGAS/riscv/toolchain/bin/spike" "-x512" "pk" "/home/jieli/Desktop/ReplicaXbgasRuntime/test/init/testBin/init_test_1")
set_tests_properties(init_test_1 PROPERTIES  ENVIRONMENT "export MPICH_ASYNC_PROGRESS=1" PASS_REGULAR_EXPRESSION "" WORKING_DIRECTORY "/home/jieli/Desktop/ReplicaXbgasRuntime/test/init/testBin" _BACKTRACE_TRIPLES "/home/jieli/Desktop/ReplicaXbgasRuntime/test/init/CMakeLists.txt;27;add_test;/home/jieli/Desktop/ReplicaXbgasRuntime/test/init/CMakeLists.txt;0;")
add_test(init_test_2 "mpirun" "-n" "2" "/home/jieli/Desktop/xBGAS/riscv/toolchain/bin/spike" "-x512" "pk" "/home/jieli/Desktop/ReplicaXbgasRuntime/test/init/testBin/init_test_2")
set_tests_properties(init_test_2 PROPERTIES  ENVIRONMENT "export MPICH_ASYNC_PROGRESS=1" PASS_REGULAR_EXPRESSION "" WORKING_DIRECTORY "/home/jieli/Desktop/ReplicaXbgasRuntime/test/init/testBin" _BACKTRACE_TRIPLES "/home/jieli/Desktop/ReplicaXbgasRuntime/test/init/CMakeLists.txt;27;add_test;/home/jieli/Desktop/ReplicaXbgasRuntime/test/init/CMakeLists.txt;0;")
add_test(init_test_3 "mpirun" "-n" "2" "/home/jieli/Desktop/xBGAS/riscv/toolchain/bin/spike" "-x512" "pk" "/home/jieli/Desktop/ReplicaXbgasRuntime/test/init/testBin/init_test_3")
set_tests_properties(init_test_3 PROPERTIES  ENVIRONMENT "export MPICH_ASYNC_PROGRESS=1" PASS_REGULAR_EXPRESSION "" WORKING_DIRECTORY "/home/jieli/Desktop/ReplicaXbgasRuntime/test/init/testBin" _BACKTRACE_TRIPLES "/home/jieli/Desktop/ReplicaXbgasRuntime/test/init/CMakeLists.txt;27;add_test;/home/jieli/Desktop/ReplicaXbgasRuntime/test/init/CMakeLists.txt;0;")
