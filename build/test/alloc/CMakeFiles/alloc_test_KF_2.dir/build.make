# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jieli/Desktop/ReplicaXbgasRuntime

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jieli/Desktop/ReplicaXbgasRuntime/build

# Include any dependencies generated for this target.
include test/alloc/CMakeFiles/alloc_test_KF_2.dir/depend.make

# Include the progress variables for this target.
include test/alloc/CMakeFiles/alloc_test_KF_2.dir/progress.make

# Include the compile flags for this target's objects.
include test/alloc/CMakeFiles/alloc_test_KF_2.dir/flags.make

test/alloc/CMakeFiles/alloc_test_KF_2.dir/alloc_test_KF_2.c.o: test/alloc/CMakeFiles/alloc_test_KF_2.dir/flags.make
test/alloc/CMakeFiles/alloc_test_KF_2.dir/alloc_test_KF_2.c.o: ../test/alloc/alloc_test_KF_2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jieli/Desktop/ReplicaXbgasRuntime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/alloc/CMakeFiles/alloc_test_KF_2.dir/alloc_test_KF_2.c.o"
	cd /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/alloc && /home/jieli/Desktop/xBGAS/riscv/toolchain/bin/riscv64-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/alloc_test_KF_2.dir/alloc_test_KF_2.c.o   -c /home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/alloc_test_KF_2.c

test/alloc/CMakeFiles/alloc_test_KF_2.dir/alloc_test_KF_2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/alloc_test_KF_2.dir/alloc_test_KF_2.c.i"
	cd /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/alloc && /home/jieli/Desktop/xBGAS/riscv/toolchain/bin/riscv64-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/alloc_test_KF_2.c > CMakeFiles/alloc_test_KF_2.dir/alloc_test_KF_2.c.i

test/alloc/CMakeFiles/alloc_test_KF_2.dir/alloc_test_KF_2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/alloc_test_KF_2.dir/alloc_test_KF_2.c.s"
	cd /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/alloc && /home/jieli/Desktop/xBGAS/riscv/toolchain/bin/riscv64-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc/alloc_test_KF_2.c -o CMakeFiles/alloc_test_KF_2.dir/alloc_test_KF_2.c.s

# Object files for target alloc_test_KF_2
alloc_test_KF_2_OBJECTS = \
"CMakeFiles/alloc_test_KF_2.dir/alloc_test_KF_2.c.o"

# External object files for target alloc_test_KF_2
alloc_test_KF_2_EXTERNAL_OBJECTS =

../test/alloc/testBin/alloc_test_KF_2: test/alloc/CMakeFiles/alloc_test_KF_2.dir/alloc_test_KF_2.c.o
../test/alloc/testBin/alloc_test_KF_2: test/alloc/CMakeFiles/alloc_test_KF_2.dir/build.make
../test/alloc/testBin/alloc_test_KF_2: src/xbgas-runtime/libxbrtime.a
../test/alloc/testBin/alloc_test_KF_2: test/alloc/CMakeFiles/alloc_test_KF_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jieli/Desktop/ReplicaXbgasRuntime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../../test/alloc/testBin/alloc_test_KF_2"
	cd /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/alloc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/alloc_test_KF_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/alloc/CMakeFiles/alloc_test_KF_2.dir/build: ../test/alloc/testBin/alloc_test_KF_2

.PHONY : test/alloc/CMakeFiles/alloc_test_KF_2.dir/build

test/alloc/CMakeFiles/alloc_test_KF_2.dir/clean:
	cd /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/alloc && $(CMAKE_COMMAND) -P CMakeFiles/alloc_test_KF_2.dir/cmake_clean.cmake
.PHONY : test/alloc/CMakeFiles/alloc_test_KF_2.dir/clean

test/alloc/CMakeFiles/alloc_test_KF_2.dir/depend:
	cd /home/jieli/Desktop/ReplicaXbgasRuntime/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jieli/Desktop/ReplicaXbgasRuntime /home/jieli/Desktop/ReplicaXbgasRuntime/test/alloc /home/jieli/Desktop/ReplicaXbgasRuntime/build /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/alloc /home/jieli/Desktop/ReplicaXbgasRuntime/build/test/alloc/CMakeFiles/alloc_test_KF_2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/alloc/CMakeFiles/alloc_test_KF_2.dir/depend

