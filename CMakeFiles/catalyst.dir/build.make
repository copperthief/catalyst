# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_SOURCE_DIR = /home/copperthief/catalyst

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/copperthief/catalyst

# Include any dependencies generated for this target.
include CMakeFiles/catalyst.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/catalyst.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/catalyst.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/catalyst.dir/flags.make

CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.o: CMakeFiles/catalyst.dir/flags.make
CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.o: src/AttributeOrder.cpp
CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.o: CMakeFiles/catalyst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/copperthief/catalyst/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.o -MF CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.o.d -o CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.o -c /home/copperthief/catalyst/src/AttributeOrder.cpp

CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/copperthief/catalyst/src/AttributeOrder.cpp > CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.i

CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/copperthief/catalyst/src/AttributeOrder.cpp -o CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.s

CMakeFiles/catalyst.dir/src/Catalyst.cpp.o: CMakeFiles/catalyst.dir/flags.make
CMakeFiles/catalyst.dir/src/Catalyst.cpp.o: src/Catalyst.cpp
CMakeFiles/catalyst.dir/src/Catalyst.cpp.o: CMakeFiles/catalyst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/copperthief/catalyst/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/catalyst.dir/src/Catalyst.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/catalyst.dir/src/Catalyst.cpp.o -MF CMakeFiles/catalyst.dir/src/Catalyst.cpp.o.d -o CMakeFiles/catalyst.dir/src/Catalyst.cpp.o -c /home/copperthief/catalyst/src/Catalyst.cpp

CMakeFiles/catalyst.dir/src/Catalyst.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/catalyst.dir/src/Catalyst.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/copperthief/catalyst/src/Catalyst.cpp > CMakeFiles/catalyst.dir/src/Catalyst.cpp.i

CMakeFiles/catalyst.dir/src/Catalyst.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/catalyst.dir/src/Catalyst.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/copperthief/catalyst/src/Catalyst.cpp -o CMakeFiles/catalyst.dir/src/Catalyst.cpp.s

CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.o: CMakeFiles/catalyst.dir/flags.make
CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.o: src/IndexBuffer.cpp
CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.o: CMakeFiles/catalyst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/copperthief/catalyst/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.o -MF CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.o.d -o CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.o -c /home/copperthief/catalyst/src/IndexBuffer.cpp

CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/copperthief/catalyst/src/IndexBuffer.cpp > CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.i

CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/copperthief/catalyst/src/IndexBuffer.cpp -o CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.s

CMakeFiles/catalyst.dir/src/InputHandler.cpp.o: CMakeFiles/catalyst.dir/flags.make
CMakeFiles/catalyst.dir/src/InputHandler.cpp.o: src/InputHandler.cpp
CMakeFiles/catalyst.dir/src/InputHandler.cpp.o: CMakeFiles/catalyst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/copperthief/catalyst/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/catalyst.dir/src/InputHandler.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/catalyst.dir/src/InputHandler.cpp.o -MF CMakeFiles/catalyst.dir/src/InputHandler.cpp.o.d -o CMakeFiles/catalyst.dir/src/InputHandler.cpp.o -c /home/copperthief/catalyst/src/InputHandler.cpp

CMakeFiles/catalyst.dir/src/InputHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/catalyst.dir/src/InputHandler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/copperthief/catalyst/src/InputHandler.cpp > CMakeFiles/catalyst.dir/src/InputHandler.cpp.i

CMakeFiles/catalyst.dir/src/InputHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/catalyst.dir/src/InputHandler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/copperthief/catalyst/src/InputHandler.cpp -o CMakeFiles/catalyst.dir/src/InputHandler.cpp.s

CMakeFiles/catalyst.dir/src/Shader.cpp.o: CMakeFiles/catalyst.dir/flags.make
CMakeFiles/catalyst.dir/src/Shader.cpp.o: src/Shader.cpp
CMakeFiles/catalyst.dir/src/Shader.cpp.o: CMakeFiles/catalyst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/copperthief/catalyst/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/catalyst.dir/src/Shader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/catalyst.dir/src/Shader.cpp.o -MF CMakeFiles/catalyst.dir/src/Shader.cpp.o.d -o CMakeFiles/catalyst.dir/src/Shader.cpp.o -c /home/copperthief/catalyst/src/Shader.cpp

CMakeFiles/catalyst.dir/src/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/catalyst.dir/src/Shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/copperthief/catalyst/src/Shader.cpp > CMakeFiles/catalyst.dir/src/Shader.cpp.i

CMakeFiles/catalyst.dir/src/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/catalyst.dir/src/Shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/copperthief/catalyst/src/Shader.cpp -o CMakeFiles/catalyst.dir/src/Shader.cpp.s

CMakeFiles/catalyst.dir/src/VertexArray.cpp.o: CMakeFiles/catalyst.dir/flags.make
CMakeFiles/catalyst.dir/src/VertexArray.cpp.o: src/VertexArray.cpp
CMakeFiles/catalyst.dir/src/VertexArray.cpp.o: CMakeFiles/catalyst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/copperthief/catalyst/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/catalyst.dir/src/VertexArray.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/catalyst.dir/src/VertexArray.cpp.o -MF CMakeFiles/catalyst.dir/src/VertexArray.cpp.o.d -o CMakeFiles/catalyst.dir/src/VertexArray.cpp.o -c /home/copperthief/catalyst/src/VertexArray.cpp

CMakeFiles/catalyst.dir/src/VertexArray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/catalyst.dir/src/VertexArray.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/copperthief/catalyst/src/VertexArray.cpp > CMakeFiles/catalyst.dir/src/VertexArray.cpp.i

CMakeFiles/catalyst.dir/src/VertexArray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/catalyst.dir/src/VertexArray.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/copperthief/catalyst/src/VertexArray.cpp -o CMakeFiles/catalyst.dir/src/VertexArray.cpp.s

CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.o: CMakeFiles/catalyst.dir/flags.make
CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.o: src/VertexBuffer.cpp
CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.o: CMakeFiles/catalyst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/copperthief/catalyst/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.o -MF CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.o.d -o CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.o -c /home/copperthief/catalyst/src/VertexBuffer.cpp

CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/copperthief/catalyst/src/VertexBuffer.cpp > CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.i

CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/copperthief/catalyst/src/VertexBuffer.cpp -o CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.s

CMakeFiles/catalyst.dir/src/Window.cpp.o: CMakeFiles/catalyst.dir/flags.make
CMakeFiles/catalyst.dir/src/Window.cpp.o: src/Window.cpp
CMakeFiles/catalyst.dir/src/Window.cpp.o: CMakeFiles/catalyst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/copperthief/catalyst/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/catalyst.dir/src/Window.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/catalyst.dir/src/Window.cpp.o -MF CMakeFiles/catalyst.dir/src/Window.cpp.o.d -o CMakeFiles/catalyst.dir/src/Window.cpp.o -c /home/copperthief/catalyst/src/Window.cpp

CMakeFiles/catalyst.dir/src/Window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/catalyst.dir/src/Window.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/copperthief/catalyst/src/Window.cpp > CMakeFiles/catalyst.dir/src/Window.cpp.i

CMakeFiles/catalyst.dir/src/Window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/catalyst.dir/src/Window.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/copperthief/catalyst/src/Window.cpp -o CMakeFiles/catalyst.dir/src/Window.cpp.s

# Object files for target catalyst
catalyst_OBJECTS = \
"CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.o" \
"CMakeFiles/catalyst.dir/src/Catalyst.cpp.o" \
"CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.o" \
"CMakeFiles/catalyst.dir/src/InputHandler.cpp.o" \
"CMakeFiles/catalyst.dir/src/Shader.cpp.o" \
"CMakeFiles/catalyst.dir/src/VertexArray.cpp.o" \
"CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.o" \
"CMakeFiles/catalyst.dir/src/Window.cpp.o"

# External object files for target catalyst
catalyst_EXTERNAL_OBJECTS =

catalyst: CMakeFiles/catalyst.dir/src/AttributeOrder.cpp.o
catalyst: CMakeFiles/catalyst.dir/src/Catalyst.cpp.o
catalyst: CMakeFiles/catalyst.dir/src/IndexBuffer.cpp.o
catalyst: CMakeFiles/catalyst.dir/src/InputHandler.cpp.o
catalyst: CMakeFiles/catalyst.dir/src/Shader.cpp.o
catalyst: CMakeFiles/catalyst.dir/src/VertexArray.cpp.o
catalyst: CMakeFiles/catalyst.dir/src/VertexBuffer.cpp.o
catalyst: CMakeFiles/catalyst.dir/src/Window.cpp.o
catalyst: CMakeFiles/catalyst.dir/build.make
catalyst: lib/glfw/glfw-3.3.7/src/libglfw3.a
catalyst: lib/libGLEWd.a
catalyst: /usr/lib/librt.a
catalyst: /usr/lib/libm.so
catalyst: /usr/lib/libGL.so
catalyst: /usr/lib/libGLU.so
catalyst: /usr/lib/libSM.so
catalyst: /usr/lib/libICE.so
catalyst: /usr/lib/libX11.so
catalyst: /usr/lib/libXext.so
catalyst: CMakeFiles/catalyst.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/copperthief/catalyst/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable catalyst"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/catalyst.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/catalyst.dir/build: catalyst
.PHONY : CMakeFiles/catalyst.dir/build

CMakeFiles/catalyst.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/catalyst.dir/cmake_clean.cmake
.PHONY : CMakeFiles/catalyst.dir/clean

CMakeFiles/catalyst.dir/depend:
	cd /home/copperthief/catalyst && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/copperthief/catalyst /home/copperthief/catalyst /home/copperthief/catalyst /home/copperthief/catalyst /home/copperthief/catalyst/CMakeFiles/catalyst.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/catalyst.dir/depend

