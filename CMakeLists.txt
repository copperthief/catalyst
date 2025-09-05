cmake_minimum_required(VERSION 3.31)
project(catalyst)

aux_source_directory(src/ SRC)

add_executable(${PROJECT_NAME} ${SRC})

set(CMAKE_CXX_COMPILER_ID "CLANG")

add_compile_definitions(${CMAKE_CXX_COMPILER_ID})
add_compile_definitions(DEBUG)


find_package(GLEW REQUIRED)
find_package(glfw3 3.3 REQUIRED)
find_package(glm REQUIRED)
find_package(OpenGL REQUIRED)

target_link_libraries(${PROJECT_NAME} glfw)
target_link_libraries(${PROJECT_NAME} GLEW)
target_link_libraries(${PROJECT_NAME} glm)
target_link_libraries(${PROJECT_NAME} OpenGL)

#add_subdirectory(lib/glew/build/cmake)
#target_link_libraries(${PROJECT_NAME} glew_s)

#add_subdirectory(lib/glfw)
#target_link_libraries(${PROJECT_NAME} glfw)

set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

#add_subdirectory(lib/glm)
#target_link_libraries(${PROJECT_NAME} glm)
