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
include crypto/CMakeFiles/uavalon-crypto.dir/depend.make

# Include the progress variables for this target.
include crypto/CMakeFiles/uavalon-crypto.dir/progress.make

# Include the compile flags for this target's objects.
include crypto/CMakeFiles/uavalon-crypto.dir/flags.make

crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o: crypto/CMakeFiles/uavalon-crypto.dir/flags.make
crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o: crypto/crypto_utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/crypto/crypto_utils.cpp

crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/crypto/crypto_utils.cpp > CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.i

crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/crypto/crypto_utils.cpp -o CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.s

crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o.requires:

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o.requires

crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o.provides: crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o.requires
	$(MAKE) -f crypto/CMakeFiles/uavalon-crypto.dir/build.make crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o.provides.build
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o.provides

crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o.provides.build: crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o


crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o: crypto/CMakeFiles/uavalon-crypto.dir/flags.make
crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o: crypto/crypto_utils_encrypt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/crypto/crypto_utils_encrypt.cpp

crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/crypto/crypto_utils_encrypt.cpp > CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.i

crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/crypto/crypto_utils_encrypt.cpp -o CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.s

crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o.requires:

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o.requires

crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o.provides: crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o.requires
	$(MAKE) -f crypto/CMakeFiles/uavalon-crypto.dir/build.make crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o.provides.build
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o.provides

crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o.provides.build: crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o


crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o: crypto/CMakeFiles/uavalon-crypto.dir/flags.make
crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o: crypto/pkenc_private_key.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/crypto/pkenc_private_key.cpp

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/crypto/pkenc_private_key.cpp > CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.i

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/crypto/pkenc_private_key.cpp -o CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.s

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o.requires:

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o.requires

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o.provides: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o.requires
	$(MAKE) -f crypto/CMakeFiles/uavalon-crypto.dir/build.make crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o.provides.build
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o.provides

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o.provides.build: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o


crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o: crypto/CMakeFiles/uavalon-crypto.dir/flags.make
crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o: crypto/pkenc_private_key_common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/crypto/pkenc_private_key_common.cpp

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/crypto/pkenc_private_key_common.cpp > CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.i

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/crypto/pkenc_private_key_common.cpp -o CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.s

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o.requires:

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o.requires

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o.provides: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o.requires
	$(MAKE) -f crypto/CMakeFiles/uavalon-crypto.dir/build.make crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o.provides.build
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o.provides

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o.provides.build: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o


crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o: crypto/CMakeFiles/uavalon-crypto.dir/flags.make
crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o: crypto/pkenc_public_key.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/crypto/pkenc_public_key.cpp

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/crypto/pkenc_public_key.cpp > CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.i

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/crypto/pkenc_public_key.cpp -o CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.s

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o.requires:

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o.requires

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o.provides: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o.requires
	$(MAKE) -f crypto/CMakeFiles/uavalon-crypto.dir/build.make crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o.provides.build
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o.provides

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o.provides.build: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o


crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o: crypto/CMakeFiles/uavalon-crypto.dir/flags.make
crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o: crypto/pkenc_public_key_common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/crypto/pkenc_public_key_common.cpp

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/crypto/pkenc_public_key_common.cpp > CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.i

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/crypto/pkenc_public_key_common.cpp -o CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.s

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o.requires:

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o.requires

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o.provides: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o.requires
	$(MAKE) -f crypto/CMakeFiles/uavalon-crypto.dir/build.make crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o.provides.build
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o.provides

crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o.provides.build: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o


crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o: crypto/CMakeFiles/uavalon-crypto.dir/flags.make
crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o: crypto/sig_private_key.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/crypto/sig_private_key.cpp

crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/crypto/sig_private_key.cpp > CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.i

crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/crypto/sig_private_key.cpp -o CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.s

crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o.requires:

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o.requires

crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o.provides: crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o.requires
	$(MAKE) -f crypto/CMakeFiles/uavalon-crypto.dir/build.make crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o.provides.build
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o.provides

crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o.provides.build: crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o


crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o: crypto/CMakeFiles/uavalon-crypto.dir/flags.make
crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o: crypto/sig_private_key_common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/crypto/sig_private_key_common.cpp

crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/crypto/sig_private_key_common.cpp > CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.i

crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/crypto/sig_private_key_common.cpp -o CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.s

crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o.requires:

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o.requires

crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o.provides: crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o.requires
	$(MAKE) -f crypto/CMakeFiles/uavalon-crypto.dir/build.make crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o.provides.build
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o.provides

crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o.provides.build: crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o


crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o: crypto/CMakeFiles/uavalon-crypto.dir/flags.make
crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o: crypto/sig_public_key.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/crypto/sig_public_key.cpp

crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/crypto/sig_public_key.cpp > CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.i

crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/crypto/sig_public_key.cpp -o CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.s

crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o.requires:

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o.requires

crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o.provides: crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o.requires
	$(MAKE) -f crypto/CMakeFiles/uavalon-crypto.dir/build.make crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o.provides.build
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o.provides

crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o.provides.build: crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o


crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o: crypto/CMakeFiles/uavalon-crypto.dir/flags.make
crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o: crypto/sig_public_key_common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/crypto/sig_public_key_common.cpp

crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/crypto/sig_public_key_common.cpp > CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.i

crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/crypto/sig_public_key_common.cpp -o CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.s

crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o.requires:

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o.requires

crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o.provides: crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o.requires
	$(MAKE) -f crypto/CMakeFiles/uavalon-crypto.dir/build.make crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o.provides.build
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o.provides

crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o.provides.build: crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o


crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.o: crypto/CMakeFiles/uavalon-crypto.dir/flags.make
crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.o: crypto/skenc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uavalon-crypto.dir/skenc.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/crypto/skenc.cpp

crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uavalon-crypto.dir/skenc.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/crypto/skenc.cpp > CMakeFiles/uavalon-crypto.dir/skenc.cpp.i

crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uavalon-crypto.dir/skenc.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/crypto/skenc.cpp -o CMakeFiles/uavalon-crypto.dir/skenc.cpp.s

crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.o.requires:

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.o.requires

crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.o.provides: crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.o.requires
	$(MAKE) -f crypto/CMakeFiles/uavalon-crypto.dir/build.make crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.o.provides.build
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.o.provides

crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.o.provides.build: crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.o


crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o: crypto/CMakeFiles/uavalon-crypto.dir/flags.make
crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o: crypto/skenc_common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/crypto/skenc_common.cpp

crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/crypto/skenc_common.cpp > CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.i

crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/crypto/skenc_common.cpp -o CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.s

crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o.requires:

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o.requires

crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o.provides: crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o.requires
	$(MAKE) -f crypto/CMakeFiles/uavalon-crypto.dir/build.make crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o.provides.build
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o.provides

crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o.provides.build: crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o


crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o: crypto/CMakeFiles/uavalon-crypto.dir/flags.make
crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o: crypto/verify_certificate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/crypto/verify_certificate.cpp

crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/crypto/verify_certificate.cpp > CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.i

crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/crypto/verify_certificate.cpp -o CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.s

crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o.requires:

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o.requires

crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o.provides: crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o.requires
	$(MAKE) -f crypto/CMakeFiles/uavalon-crypto.dir/build.make crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o.provides.build
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o.provides

crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o.provides.build: crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o


crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o: crypto/CMakeFiles/uavalon-crypto.dir/flags.make
crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o: crypto/verify_signature.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o -c /home/guotiezheng/avalon/outTEE_workload/crypto/verify_signature.cpp

crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.i"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guotiezheng/avalon/outTEE_workload/crypto/verify_signature.cpp > CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.i

crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.s"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guotiezheng/avalon/outTEE_workload/crypto/verify_signature.cpp -o CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.s

crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o.requires:

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o.requires

crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o.provides: crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o.requires
	$(MAKE) -f crypto/CMakeFiles/uavalon-crypto.dir/build.make crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o.provides.build
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o.provides

crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o.provides.build: crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o


# Object files for target uavalon-crypto
uavalon__crypto_OBJECTS = \
"CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o" \
"CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o" \
"CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o" \
"CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o" \
"CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o" \
"CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o" \
"CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o" \
"CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o" \
"CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o" \
"CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o" \
"CMakeFiles/uavalon-crypto.dir/skenc.cpp.o" \
"CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o" \
"CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o" \
"CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o"

# External object files for target uavalon-crypto
uavalon__crypto_EXTERNAL_OBJECTS =

libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.o
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/build.make
libuavalon-crypto.a: crypto/CMakeFiles/uavalon-crypto.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/guotiezheng/avalon/outTEE_workload/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX static library ../libuavalon-crypto.a"
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && $(CMAKE_COMMAND) -P CMakeFiles/uavalon-crypto.dir/cmake_clean_target.cmake
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/uavalon-crypto.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
crypto/CMakeFiles/uavalon-crypto.dir/build: libuavalon-crypto.a

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/build

crypto/CMakeFiles/uavalon-crypto.dir/requires: crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils.cpp.o.requires
crypto/CMakeFiles/uavalon-crypto.dir/requires: crypto/CMakeFiles/uavalon-crypto.dir/crypto_utils_encrypt.cpp.o.requires
crypto/CMakeFiles/uavalon-crypto.dir/requires: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key.cpp.o.requires
crypto/CMakeFiles/uavalon-crypto.dir/requires: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_private_key_common.cpp.o.requires
crypto/CMakeFiles/uavalon-crypto.dir/requires: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key.cpp.o.requires
crypto/CMakeFiles/uavalon-crypto.dir/requires: crypto/CMakeFiles/uavalon-crypto.dir/pkenc_public_key_common.cpp.o.requires
crypto/CMakeFiles/uavalon-crypto.dir/requires: crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key.cpp.o.requires
crypto/CMakeFiles/uavalon-crypto.dir/requires: crypto/CMakeFiles/uavalon-crypto.dir/sig_private_key_common.cpp.o.requires
crypto/CMakeFiles/uavalon-crypto.dir/requires: crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key.cpp.o.requires
crypto/CMakeFiles/uavalon-crypto.dir/requires: crypto/CMakeFiles/uavalon-crypto.dir/sig_public_key_common.cpp.o.requires
crypto/CMakeFiles/uavalon-crypto.dir/requires: crypto/CMakeFiles/uavalon-crypto.dir/skenc.cpp.o.requires
crypto/CMakeFiles/uavalon-crypto.dir/requires: crypto/CMakeFiles/uavalon-crypto.dir/skenc_common.cpp.o.requires
crypto/CMakeFiles/uavalon-crypto.dir/requires: crypto/CMakeFiles/uavalon-crypto.dir/verify_certificate.cpp.o.requires
crypto/CMakeFiles/uavalon-crypto.dir/requires: crypto/CMakeFiles/uavalon-crypto.dir/verify_signature.cpp.o.requires

.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/requires

crypto/CMakeFiles/uavalon-crypto.dir/clean:
	cd /home/guotiezheng/avalon/outTEE_workload/crypto && $(CMAKE_COMMAND) -P CMakeFiles/uavalon-crypto.dir/cmake_clean.cmake
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/clean

crypto/CMakeFiles/uavalon-crypto.dir/depend:
	cd /home/guotiezheng/avalon/outTEE_workload && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/guotiezheng/avalon/outTEE_workload /home/guotiezheng/avalon/outTEE_workload/crypto /home/guotiezheng/avalon/outTEE_workload /home/guotiezheng/avalon/outTEE_workload/crypto /home/guotiezheng/avalon/outTEE_workload/crypto/CMakeFiles/uavalon-crypto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : crypto/CMakeFiles/uavalon-crypto.dir/depend

