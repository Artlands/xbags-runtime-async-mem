# CMake generated Testfile for 
# Source directory: /home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc
# Build directory: /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/alloc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(alloc_test_1 "mpirun" "-n" "2" "/home/jieli/Desktop/xBGAS/riscv/toolchain/bin/spike" "-x512" "pk" "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/testBin/alloc_test_1")
set_tests_properties(alloc_test_1 PROPERTIES  ENVIRONMENT "export MPICH_ASYNC_PROGRESS=1" PASS_REGULAR_EXPRESSION "" WORKING_DIRECTORY "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/testBin" _BACKTRACE_TRIPLES "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/CMakeLists.txt;27;add_test;/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/CMakeLists.txt;0;")
add_test(alloc_test_2 "mpirun" "-n" "2" "/home/jieli/Desktop/xBGAS/riscv/toolchain/bin/spike" "-x512" "pk" "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/testBin/alloc_test_2")
set_tests_properties(alloc_test_2 PROPERTIES  ENVIRONMENT "export MPICH_ASYNC_PROGRESS=1" PASS_REGULAR_EXPRESSION "" WORKING_DIRECTORY "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/testBin" _BACKTRACE_TRIPLES "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/CMakeLists.txt;27;add_test;/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/CMakeLists.txt;0;")
add_test(alloc_test_3 "mpirun" "-n" "2" "/home/jieli/Desktop/xBGAS/riscv/toolchain/bin/spike" "-x512" "pk" "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/testBin/alloc_test_3")
set_tests_properties(alloc_test_3 PROPERTIES  ENVIRONMENT "export MPICH_ASYNC_PROGRESS=1" PASS_REGULAR_EXPRESSION "" WORKING_DIRECTORY "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/testBin" _BACKTRACE_TRIPLES "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/CMakeLists.txt;27;add_test;/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/CMakeLists.txt;0;")
add_test(alloc_test_4 "mpirun" "-n" "2" "/home/jieli/Desktop/xBGAS/riscv/toolchain/bin/spike" "-x512" "pk" "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/testBin/alloc_test_4")
set_tests_properties(alloc_test_4 PROPERTIES  ENVIRONMENT "export MPICH_ASYNC_PROGRESS=1" PASS_REGULAR_EXPRESSION "" WORKING_DIRECTORY "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/testBin" _BACKTRACE_TRIPLES "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/CMakeLists.txt;27;add_test;/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/CMakeLists.txt;0;")
add_test(alloc_test_KF_1 "mpirun" "-n" "2" "/home/jieli/Desktop/xBGAS/riscv/toolchain/bin/spike" "-x512" "pk" "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/testBin/alloc_test_KF_1")
set_tests_properties(alloc_test_KF_1 PROPERTIES  ENVIRONMENT "export MPICH_ASYNC_PROGRESS=1" PASS_REGULAR_EXPRESSION "" WORKING_DIRECTORY "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/testBin" _BACKTRACE_TRIPLES "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/CMakeLists.txt;27;add_test;/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/CMakeLists.txt;0;")
add_test(alloc_test_KF_2 "mpirun" "-n" "2" "/home/jieli/Desktop/xBGAS/riscv/toolchain/bin/spike" "-x512" "pk" "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/testBin/alloc_test_KF_2")
set_tests_properties(alloc_test_KF_2 PROPERTIES  ENVIRONMENT "export MPICH_ASYNC_PROGRESS=1" PASS_REGULAR_EXPRESSION "" WORKING_DIRECTORY "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/testBin" _BACKTRACE_TRIPLES "/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/CMakeLists.txt;27;add_test;/home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/CMakeLists.txt;0;")