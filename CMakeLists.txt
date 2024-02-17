# TODO: Get libraries in order: how much do I
# need to include of each, am I doing it
# properly in the first place, do I need to
# register all of them with CMake, etc

cmake_minimum_required(VERSION 3.22.3)

project(catalyst)

# TODO: Make sure this actually makes it use clang
set(CMAKE_CXX_COMPILER_ID "CLANG")
set(CMAKE_CXX_COMPILER_VERSION "13.0.1")

set(CMAKE_BUILD_TYPE "DEBUG")
set(CMAKE_C_FLAGS_DEBUG "-g -O0")
set(CMAKE_CXX_FLAGS_DEBUG "-g -O0")

#will need to rerun CMake each time a new file is added
aux_source_directory(src/ SRCFILEZ)


add_compile_definitions(${CMAKE_CXX_COMPILER_ID})
add_compile_definitions(DEBUG)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)



add_executable(${PROJECT_NAME} ${SRCFILEZ})



# TODO: Organize includes so that it's clear what comes from where when #including
include_directories(./lib/glfw-3.3.6/include ./lib/glew-2.1.0/include ./lib/stb_image ./lib/glm ./lib/imgui)
# TODO: Is it actually necessary to link glew?
# Do I need to compile the libraries each time,
# or can I just compile the binaries once and
# be done with it?
add_subdirectory(./lib/glfw/glfw-3.3.7)
target_link_libraries(${PROJECT_NAME} glfw)

add_subdirectory(./lib/glew/glew-2.2.0/build/cmake)
target_link_libraries(${PROJECT_NAME} glew_s)



install(TARGETS catalyst DESTINATION build)