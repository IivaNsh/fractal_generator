# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ivanush/develop/fractal_generator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ivanush/develop/fractal_generator/build

# Include any dependencies generated for this target.
include CMakeFiles/app.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/app.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/app.dir/flags.make

CMakeFiles/app.dir/src/compute_shader.cpp.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/src/compute_shader.cpp.o: /home/ivanush/develop/fractal_generator/src/compute_shader.cpp
CMakeFiles/app.dir/src/compute_shader.cpp.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivanush/develop/fractal_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/app.dir/src/compute_shader.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/app.dir/src/compute_shader.cpp.o -MF CMakeFiles/app.dir/src/compute_shader.cpp.o.d -o CMakeFiles/app.dir/src/compute_shader.cpp.o -c /home/ivanush/develop/fractal_generator/src/compute_shader.cpp

CMakeFiles/app.dir/src/compute_shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/src/compute_shader.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ivanush/develop/fractal_generator/src/compute_shader.cpp > CMakeFiles/app.dir/src/compute_shader.cpp.i

CMakeFiles/app.dir/src/compute_shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/src/compute_shader.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ivanush/develop/fractal_generator/src/compute_shader.cpp -o CMakeFiles/app.dir/src/compute_shader.cpp.s

CMakeFiles/app.dir/src/main.cpp.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/src/main.cpp.o: /home/ivanush/develop/fractal_generator/src/main.cpp
CMakeFiles/app.dir/src/main.cpp.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivanush/develop/fractal_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/app.dir/src/main.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/app.dir/src/main.cpp.o -MF CMakeFiles/app.dir/src/main.cpp.o.d -o CMakeFiles/app.dir/src/main.cpp.o -c /home/ivanush/develop/fractal_generator/src/main.cpp

CMakeFiles/app.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/src/main.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ivanush/develop/fractal_generator/src/main.cpp > CMakeFiles/app.dir/src/main.cpp.i

CMakeFiles/app.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/src/main.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ivanush/develop/fractal_generator/src/main.cpp -o CMakeFiles/app.dir/src/main.cpp.s

CMakeFiles/app.dir/src/read_file.cpp.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/src/read_file.cpp.o: /home/ivanush/develop/fractal_generator/src/read_file.cpp
CMakeFiles/app.dir/src/read_file.cpp.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivanush/develop/fractal_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/app.dir/src/read_file.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/app.dir/src/read_file.cpp.o -MF CMakeFiles/app.dir/src/read_file.cpp.o.d -o CMakeFiles/app.dir/src/read_file.cpp.o -c /home/ivanush/develop/fractal_generator/src/read_file.cpp

CMakeFiles/app.dir/src/read_file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/src/read_file.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ivanush/develop/fractal_generator/src/read_file.cpp > CMakeFiles/app.dir/src/read_file.cpp.i

CMakeFiles/app.dir/src/read_file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/src/read_file.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ivanush/develop/fractal_generator/src/read_file.cpp -o CMakeFiles/app.dir/src/read_file.cpp.s

CMakeFiles/app.dir/src/shader.cpp.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/src/shader.cpp.o: /home/ivanush/develop/fractal_generator/src/shader.cpp
CMakeFiles/app.dir/src/shader.cpp.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivanush/develop/fractal_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/app.dir/src/shader.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/app.dir/src/shader.cpp.o -MF CMakeFiles/app.dir/src/shader.cpp.o.d -o CMakeFiles/app.dir/src/shader.cpp.o -c /home/ivanush/develop/fractal_generator/src/shader.cpp

CMakeFiles/app.dir/src/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/src/shader.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ivanush/develop/fractal_generator/src/shader.cpp > CMakeFiles/app.dir/src/shader.cpp.i

CMakeFiles/app.dir/src/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/src/shader.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ivanush/develop/fractal_generator/src/shader.cpp -o CMakeFiles/app.dir/src/shader.cpp.s

CMakeFiles/app.dir/src/texture.cpp.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/src/texture.cpp.o: /home/ivanush/develop/fractal_generator/src/texture.cpp
CMakeFiles/app.dir/src/texture.cpp.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivanush/develop/fractal_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/app.dir/src/texture.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/app.dir/src/texture.cpp.o -MF CMakeFiles/app.dir/src/texture.cpp.o.d -o CMakeFiles/app.dir/src/texture.cpp.o -c /home/ivanush/develop/fractal_generator/src/texture.cpp

CMakeFiles/app.dir/src/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/src/texture.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ivanush/develop/fractal_generator/src/texture.cpp > CMakeFiles/app.dir/src/texture.cpp.i

CMakeFiles/app.dir/src/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/src/texture.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ivanush/develop/fractal_generator/src/texture.cpp -o CMakeFiles/app.dir/src/texture.cpp.s

CMakeFiles/app.dir/lib/glad/src/glad.c.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/lib/glad/src/glad.c.o: /home/ivanush/develop/fractal_generator/lib/glad/src/glad.c
CMakeFiles/app.dir/lib/glad/src/glad.c.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivanush/develop/fractal_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/app.dir/lib/glad/src/glad.c.o"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/app.dir/lib/glad/src/glad.c.o -MF CMakeFiles/app.dir/lib/glad/src/glad.c.o.d -o CMakeFiles/app.dir/lib/glad/src/glad.c.o -c /home/ivanush/develop/fractal_generator/lib/glad/src/glad.c

CMakeFiles/app.dir/lib/glad/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/app.dir/lib/glad/src/glad.c.i"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ivanush/develop/fractal_generator/lib/glad/src/glad.c > CMakeFiles/app.dir/lib/glad/src/glad.c.i

CMakeFiles/app.dir/lib/glad/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/app.dir/lib/glad/src/glad.c.s"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ivanush/develop/fractal_generator/lib/glad/src/glad.c -o CMakeFiles/app.dir/lib/glad/src/glad.c.s

CMakeFiles/app.dir/lib/imgui/imgui.cpp.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/lib/imgui/imgui.cpp.o: /home/ivanush/develop/fractal_generator/lib/imgui/imgui.cpp
CMakeFiles/app.dir/lib/imgui/imgui.cpp.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivanush/develop/fractal_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/app.dir/lib/imgui/imgui.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/app.dir/lib/imgui/imgui.cpp.o -MF CMakeFiles/app.dir/lib/imgui/imgui.cpp.o.d -o CMakeFiles/app.dir/lib/imgui/imgui.cpp.o -c /home/ivanush/develop/fractal_generator/lib/imgui/imgui.cpp

CMakeFiles/app.dir/lib/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/lib/imgui/imgui.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ivanush/develop/fractal_generator/lib/imgui/imgui.cpp > CMakeFiles/app.dir/lib/imgui/imgui.cpp.i

CMakeFiles/app.dir/lib/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/lib/imgui/imgui.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ivanush/develop/fractal_generator/lib/imgui/imgui.cpp -o CMakeFiles/app.dir/lib/imgui/imgui.cpp.s

CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.o: /home/ivanush/develop/fractal_generator/lib/imgui/imgui_demo.cpp
CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivanush/develop/fractal_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.o -MF CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.o.d -o CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.o -c /home/ivanush/develop/fractal_generator/lib/imgui/imgui_demo.cpp

CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ivanush/develop/fractal_generator/lib/imgui/imgui_demo.cpp > CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.i

CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ivanush/develop/fractal_generator/lib/imgui/imgui_demo.cpp -o CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.s

CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.o: /home/ivanush/develop/fractal_generator/lib/imgui/imgui_draw.cpp
CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivanush/develop/fractal_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.o -MF CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.o.d -o CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.o -c /home/ivanush/develop/fractal_generator/lib/imgui/imgui_draw.cpp

CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ivanush/develop/fractal_generator/lib/imgui/imgui_draw.cpp > CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.i

CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ivanush/develop/fractal_generator/lib/imgui/imgui_draw.cpp -o CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.s

CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.o: /home/ivanush/develop/fractal_generator/lib/imgui/imgui_impl_glfw.cpp
CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivanush/develop/fractal_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.o -MF CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.o.d -o CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.o -c /home/ivanush/develop/fractal_generator/lib/imgui/imgui_impl_glfw.cpp

CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ivanush/develop/fractal_generator/lib/imgui/imgui_impl_glfw.cpp > CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.i

CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ivanush/develop/fractal_generator/lib/imgui/imgui_impl_glfw.cpp -o CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.s

CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.o: /home/ivanush/develop/fractal_generator/lib/imgui/imgui_impl_opengl3.cpp
CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivanush/develop/fractal_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.o -MF CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.o -c /home/ivanush/develop/fractal_generator/lib/imgui/imgui_impl_opengl3.cpp

CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ivanush/develop/fractal_generator/lib/imgui/imgui_impl_opengl3.cpp > CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.i

CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ivanush/develop/fractal_generator/lib/imgui/imgui_impl_opengl3.cpp -o CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.s

CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.o: /home/ivanush/develop/fractal_generator/lib/imgui/imgui_tables.cpp
CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivanush/develop/fractal_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.o -MF CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.o.d -o CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.o -c /home/ivanush/develop/fractal_generator/lib/imgui/imgui_tables.cpp

CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ivanush/develop/fractal_generator/lib/imgui/imgui_tables.cpp > CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.i

CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ivanush/develop/fractal_generator/lib/imgui/imgui_tables.cpp -o CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.s

CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.o: /home/ivanush/develop/fractal_generator/lib/imgui/imgui_widgets.cpp
CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivanush/develop/fractal_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.o -MF CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.o -c /home/ivanush/develop/fractal_generator/lib/imgui/imgui_widgets.cpp

CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ivanush/develop/fractal_generator/lib/imgui/imgui_widgets.cpp > CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.i

CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ivanush/develop/fractal_generator/lib/imgui/imgui_widgets.cpp -o CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.s

# Object files for target app
app_OBJECTS = \
"CMakeFiles/app.dir/src/compute_shader.cpp.o" \
"CMakeFiles/app.dir/src/main.cpp.o" \
"CMakeFiles/app.dir/src/read_file.cpp.o" \
"CMakeFiles/app.dir/src/shader.cpp.o" \
"CMakeFiles/app.dir/src/texture.cpp.o" \
"CMakeFiles/app.dir/lib/glad/src/glad.c.o" \
"CMakeFiles/app.dir/lib/imgui/imgui.cpp.o" \
"CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.o" \
"CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.o" \
"CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.o" \
"CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.o" \
"CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.o" \
"CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.o"

# External object files for target app
app_EXTERNAL_OBJECTS =

app: CMakeFiles/app.dir/src/compute_shader.cpp.o
app: CMakeFiles/app.dir/src/main.cpp.o
app: CMakeFiles/app.dir/src/read_file.cpp.o
app: CMakeFiles/app.dir/src/shader.cpp.o
app: CMakeFiles/app.dir/src/texture.cpp.o
app: CMakeFiles/app.dir/lib/glad/src/glad.c.o
app: CMakeFiles/app.dir/lib/imgui/imgui.cpp.o
app: CMakeFiles/app.dir/lib/imgui/imgui_demo.cpp.o
app: CMakeFiles/app.dir/lib/imgui/imgui_draw.cpp.o
app: CMakeFiles/app.dir/lib/imgui/imgui_impl_glfw.cpp.o
app: CMakeFiles/app.dir/lib/imgui/imgui_impl_opengl3.cpp.o
app: CMakeFiles/app.dir/lib/imgui/imgui_tables.cpp.o
app: CMakeFiles/app.dir/lib/imgui/imgui_widgets.cpp.o
app: CMakeFiles/app.dir/build.make
app: lib/glfw/glfw-3.3.8/src/libglfw3.a
app: /usr/lib/librt.a
app: /usr/lib/libm.so
app: /usr/lib/libX11.so
app: CMakeFiles/app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ivanush/develop/fractal_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/app.dir/build: app
.PHONY : CMakeFiles/app.dir/build

CMakeFiles/app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/app.dir/clean

CMakeFiles/app.dir/depend:
	cd /home/ivanush/develop/fractal_generator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ivanush/develop/fractal_generator /home/ivanush/develop/fractal_generator /home/ivanush/develop/fractal_generator/build /home/ivanush/develop/fractal_generator/build /home/ivanush/develop/fractal_generator/build/CMakeFiles/app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/app.dir/depend
