# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/guotiezheng/avalon/outTEE_workload

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/guotiezheng/avalon/outTEE_workload

# Include any dependencies generated for this target.
include packages/base64/CMakeFiles/tavalon-base64.dir/depend.make

# Include the progress variables for this target.
include packages/base64/CMakeFiles/tavalon-base64.dir/progress.make

# Include the compile flags for this target's objects.
include packages/base64/CMakeFiles/tavalon-base64.dir/flags.make

packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.o: packages/base64/CMakeFiles/tavalon-base64.dir/flags.make
packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.o: packages/base64/base64.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/packages/base64 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tavalon-base64.dir/base64.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/packages/base64/base64.cpp

packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tavalon-base64.dir/base64.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/packages/base64 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/packages/base64/base64.cpp > CMakeFiles/tavalon-base64.dir/base64.cpp.i

packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tavalon-base64.dir/base64.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/packages/base64 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/packages/base64/base64.cpp -o CMakeFiles/tavalon-base64.dir/base64.cpp.s

packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.o.requires:

.PHONY : packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.o.requires

packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.o.provides: packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.o.requires
	$(MAKE) -f packages/base64/CMakeFiles/tavalon-base64.dir/build.make packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.o.provides.build
.PHONY : packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.o.provides

packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.o.provides.build: packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.o


# Object files for target tavalon-base64
tavalon__base64_OBJECTS = \
"CMakeFiles/tavalon-base64.dir/base64.cpp.o"

# External object files for target tavalon-base64
tavalon__base64_EXTERNAL_OBJECTS =

libtavalon-base64.a: packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.o
libtavalon-base64.a: packages/base64/CMakeFiles/tavalon-base64.dir/build.make
libtavalon-base64.a: packages/base64/CMakeFiles/tavalon-base64.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../libtavalon-base64.a"
	cd /home/guotiezheng/avalon/outTEE_workload/packages/base64 && $(CMAKE_COMMAND) -P CMakeFiles/tavalon-base64.dir/cmake_clean_target.cmake
	cd /home/guotiezheng/avalon/outTEE_workload/packages/base64 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tavalon-base64.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
packages/base64/CMakeFiles/tavalon-base64.dir/build: libtavalon-base64.a

.PHONY : packages/base64/CMakeFiles/tavalon-base64.dir/build

packages/base64/CMakeFiles/tavalon-base64.dir/requires: packages/base64/CMakeFiles/tavalon-base64.dir/base64.cpp.o.requires

.PHONY : packages/base64/CMakeFiles/tavalon-base64.dir/requires

packages/base64/CMakeFiles/tavalon-base64.dir/clean:
	cd /home/guotiezheng/avalon/outTEE_workload/packages/base64 && $(CMAKE_COMMAND) -P CMakeFiles/tavalon-base64.dir/cmake_clean.cmake
.PHONY : packages/base64/CMakeFiles/tavalon-base64.dir/clean

packages/base64/CMakeFiles/tavalon-base64.dir/depend:
	cd /home/guotiezheng/avalon/outTEE_workload && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/guotiezheng/avalon/outTEE_workload /home/guotiezheng/avalon/outTEE_workload/packages/base64 /home/guotiezheng/avalon/outTEE_workload /home/guotiezheng/avalon/outTEE_workload/packages/base64 /home/guotiezheng/avalon/outTEE_workload/packages/base64/CMakeFiles/tavalon-base64.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : packages/base64/CMakeFiles/tavalon-base64.dir/depend

