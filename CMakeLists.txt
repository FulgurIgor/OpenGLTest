cmake_minimum_required(VERSION 3.0)

project(hello LANGUAGES C CXX)

find_package(glfw3 3.3 REQUIRED)
set(OpenGL_GL_PREFERENCE LEGACY)
find_package(OpenGL 3.3 REQUIRED)
find_package(GLEW REQUIRED)
#find_package(glm REQUIRED )
find_package(glm)

set(SOURCES
src/main.cpp
src/glad/glad.c)

add_executable(hello ${SOURCES})

target_link_libraries(hello glfw OpenGL::GL GLEW::GLEW ${CMAKE_DL_LIBS})

file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/src/shaders/alphaFragmentShader.glsl DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/shaders/)
file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/src/shaders/alphaVertexShader.glsl DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/shaders/)