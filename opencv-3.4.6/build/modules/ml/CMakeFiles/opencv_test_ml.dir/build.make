# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.14.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.14.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build

# Include any dependencies generated for this target.
include modules/ml/CMakeFiles/opencv_test_ml.dir/depend.make

# Include the progress variables for this target.
include modules/ml/CMakeFiles/opencv_test_ml.dir/progress.make

# Include the compile flags for this target's objects.
include modules/ml/CMakeFiles/opencv_test_ml.dir/flags.make

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_emknearestkmeans.cpp.o: modules/ml/CMakeFiles/opencv_test_ml.dir/flags.make
modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_emknearestkmeans.cpp.o: ../modules/ml/test/test_emknearestkmeans.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_emknearestkmeans.cpp.o"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_ml.dir/test/test_emknearestkmeans.cpp.o -c /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_emknearestkmeans.cpp

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_emknearestkmeans.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_ml.dir/test/test_emknearestkmeans.cpp.i"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_emknearestkmeans.cpp > CMakeFiles/opencv_test_ml.dir/test/test_emknearestkmeans.cpp.i

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_emknearestkmeans.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_ml.dir/test/test_emknearestkmeans.cpp.s"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_emknearestkmeans.cpp -o CMakeFiles/opencv_test_ml.dir/test/test_emknearestkmeans.cpp.s

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_gbttest.cpp.o: modules/ml/CMakeFiles/opencv_test_ml.dir/flags.make
modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_gbttest.cpp.o: ../modules/ml/test/test_gbttest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_gbttest.cpp.o"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_ml.dir/test/test_gbttest.cpp.o -c /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_gbttest.cpp

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_gbttest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_ml.dir/test/test_gbttest.cpp.i"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_gbttest.cpp > CMakeFiles/opencv_test_ml.dir/test/test_gbttest.cpp.i

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_gbttest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_ml.dir/test/test_gbttest.cpp.s"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_gbttest.cpp -o CMakeFiles/opencv_test_ml.dir/test/test_gbttest.cpp.s

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_lr.cpp.o: modules/ml/CMakeFiles/opencv_test_ml.dir/flags.make
modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_lr.cpp.o: ../modules/ml/test/test_lr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_lr.cpp.o"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_ml.dir/test/test_lr.cpp.o -c /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_lr.cpp

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_lr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_ml.dir/test/test_lr.cpp.i"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_lr.cpp > CMakeFiles/opencv_test_ml.dir/test/test_lr.cpp.i

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_lr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_ml.dir/test/test_lr.cpp.s"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_lr.cpp -o CMakeFiles/opencv_test_ml.dir/test/test_lr.cpp.s

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_main.cpp.o: modules/ml/CMakeFiles/opencv_test_ml.dir/flags.make
modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_main.cpp.o: ../modules/ml/test/test_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_main.cpp.o"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_ml.dir/test/test_main.cpp.o -c /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_main.cpp

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_ml.dir/test/test_main.cpp.i"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_main.cpp > CMakeFiles/opencv_test_ml.dir/test/test_main.cpp.i

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_ml.dir/test/test_main.cpp.s"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_main.cpp -o CMakeFiles/opencv_test_ml.dir/test/test_main.cpp.s

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_mltests.cpp.o: modules/ml/CMakeFiles/opencv_test_ml.dir/flags.make
modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_mltests.cpp.o: ../modules/ml/test/test_mltests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_mltests.cpp.o"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_ml.dir/test/test_mltests.cpp.o -c /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_mltests.cpp

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_mltests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_ml.dir/test/test_mltests.cpp.i"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_mltests.cpp > CMakeFiles/opencv_test_ml.dir/test/test_mltests.cpp.i

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_mltests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_ml.dir/test/test_mltests.cpp.s"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_mltests.cpp -o CMakeFiles/opencv_test_ml.dir/test/test_mltests.cpp.s

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_mltests2.cpp.o: modules/ml/CMakeFiles/opencv_test_ml.dir/flags.make
modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_mltests2.cpp.o: ../modules/ml/test/test_mltests2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_mltests2.cpp.o"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_ml.dir/test/test_mltests2.cpp.o -c /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_mltests2.cpp

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_mltests2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_ml.dir/test/test_mltests2.cpp.i"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_mltests2.cpp > CMakeFiles/opencv_test_ml.dir/test/test_mltests2.cpp.i

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_mltests2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_ml.dir/test/test_mltests2.cpp.s"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_mltests2.cpp -o CMakeFiles/opencv_test_ml.dir/test/test_mltests2.cpp.s

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_save_load.cpp.o: modules/ml/CMakeFiles/opencv_test_ml.dir/flags.make
modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_save_load.cpp.o: ../modules/ml/test/test_save_load.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_save_load.cpp.o"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_ml.dir/test/test_save_load.cpp.o -c /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_save_load.cpp

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_save_load.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_ml.dir/test/test_save_load.cpp.i"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_save_load.cpp > CMakeFiles/opencv_test_ml.dir/test/test_save_load.cpp.i

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_save_load.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_ml.dir/test/test_save_load.cpp.s"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_save_load.cpp -o CMakeFiles/opencv_test_ml.dir/test/test_save_load.cpp.s

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_svmsgd.cpp.o: modules/ml/CMakeFiles/opencv_test_ml.dir/flags.make
modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_svmsgd.cpp.o: ../modules/ml/test/test_svmsgd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_svmsgd.cpp.o"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_ml.dir/test/test_svmsgd.cpp.o -c /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_svmsgd.cpp

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_svmsgd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_ml.dir/test/test_svmsgd.cpp.i"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_svmsgd.cpp > CMakeFiles/opencv_test_ml.dir/test/test_svmsgd.cpp.i

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_svmsgd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_ml.dir/test/test_svmsgd.cpp.s"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_svmsgd.cpp -o CMakeFiles/opencv_test_ml.dir/test/test_svmsgd.cpp.s

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_svmtrainauto.cpp.o: modules/ml/CMakeFiles/opencv_test_ml.dir/flags.make
modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_svmtrainauto.cpp.o: ../modules/ml/test/test_svmtrainauto.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_svmtrainauto.cpp.o"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_ml.dir/test/test_svmtrainauto.cpp.o -c /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_svmtrainauto.cpp

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_svmtrainauto.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_ml.dir/test/test_svmtrainauto.cpp.i"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_svmtrainauto.cpp > CMakeFiles/opencv_test_ml.dir/test/test_svmtrainauto.cpp.i

modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_svmtrainauto.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_ml.dir/test/test_svmtrainauto.cpp.s"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml/test/test_svmtrainauto.cpp -o CMakeFiles/opencv_test_ml.dir/test/test_svmtrainauto.cpp.s

# Object files for target opencv_test_ml
opencv_test_ml_OBJECTS = \
"CMakeFiles/opencv_test_ml.dir/test/test_emknearestkmeans.cpp.o" \
"CMakeFiles/opencv_test_ml.dir/test/test_gbttest.cpp.o" \
"CMakeFiles/opencv_test_ml.dir/test/test_lr.cpp.o" \
"CMakeFiles/opencv_test_ml.dir/test/test_main.cpp.o" \
"CMakeFiles/opencv_test_ml.dir/test/test_mltests.cpp.o" \
"CMakeFiles/opencv_test_ml.dir/test/test_mltests2.cpp.o" \
"CMakeFiles/opencv_test_ml.dir/test/test_save_load.cpp.o" \
"CMakeFiles/opencv_test_ml.dir/test/test_svmsgd.cpp.o" \
"CMakeFiles/opencv_test_ml.dir/test/test_svmtrainauto.cpp.o"

# External object files for target opencv_test_ml
opencv_test_ml_EXTERNAL_OBJECTS =

bin/opencv_test_ml: modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_emknearestkmeans.cpp.o
bin/opencv_test_ml: modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_gbttest.cpp.o
bin/opencv_test_ml: modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_lr.cpp.o
bin/opencv_test_ml: modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_main.cpp.o
bin/opencv_test_ml: modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_mltests.cpp.o
bin/opencv_test_ml: modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_mltests2.cpp.o
bin/opencv_test_ml: modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_save_load.cpp.o
bin/opencv_test_ml: modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_svmsgd.cpp.o
bin/opencv_test_ml: modules/ml/CMakeFiles/opencv_test_ml.dir/test/test_svmtrainauto.cpp.o
bin/opencv_test_ml: modules/ml/CMakeFiles/opencv_test_ml.dir/build.make
bin/opencv_test_ml: lib/libopencv_ts.a
bin/opencv_test_ml: lib/libopencv_ml.3.4.6.dylib
bin/opencv_test_ml: lib/libopencv_highgui.3.4.6.dylib
bin/opencv_test_ml: 3rdparty/lib/libippiw.a
bin/opencv_test_ml: 3rdparty/ippicv/ippicv_mac/icv/lib/intel64/libippicv.a
bin/opencv_test_ml: lib/libopencv_videoio.3.4.6.dylib
bin/opencv_test_ml: lib/libopencv_imgcodecs.3.4.6.dylib
bin/opencv_test_ml: lib/libopencv_imgproc.3.4.6.dylib
bin/opencv_test_ml: lib/libopencv_core.3.4.6.dylib
bin/opencv_test_ml: modules/ml/CMakeFiles/opencv_test_ml.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable ../../bin/opencv_test_ml"
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_test_ml.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/ml/CMakeFiles/opencv_test_ml.dir/build: bin/opencv_test_ml

.PHONY : modules/ml/CMakeFiles/opencv_test_ml.dir/build

modules/ml/CMakeFiles/opencv_test_ml.dir/clean:
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_ml.dir/cmake_clean.cmake
.PHONY : modules/ml/CMakeFiles/opencv_test_ml.dir/clean

modules/ml/CMakeFiles/opencv_test_ml.dir/depend:
	cd /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6 /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/ml /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/ml/CMakeFiles/opencv_test_ml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/ml/CMakeFiles/opencv_test_ml.dir/depend

