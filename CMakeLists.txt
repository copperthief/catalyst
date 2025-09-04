cmake_minimum_required(VERSION 3.31)
project(catalyst)

aux_source_directory(src/ SRC)

add_executable(${PROJECT_NAME} ${SRC})


add_subdirectory(lib/glew/build/cmake)
