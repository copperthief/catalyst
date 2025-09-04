cmake_minimum_required(VERSION 3.31)
project(catalyst)

aux_source_directory(src/ SRC)

add_executable(${PROJECT_NAME} ${SRC})

add_compile_definitions(DEBUG)


add_subdirectory(lib/glew/build/cmake)
target_link_libraries(${PROJECT_NAME} glew_s)

add_subdirectory(lib/glfw)
target_link_libraries(${PROJECT_NAME} glfw)

set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

add_subdirectory(lib/glm)
target_link_libraries(${PROJECT_NAME} glm)
