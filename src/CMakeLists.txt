cmake_minimum_required(VERSION 3.10)

#enable_language(CXX)

#set(CMAKE_C_COMPILER /modules/cs325/llvm-10.0.1/bin/clang)
#set(CMAKE_CXX_COMPILER /modules/cs325/llvm-10.0.1/bin/clang++)
#set(CMAKE_CXX_COMPILER_ID Clang)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)
#set(CXXFLAGS -ggdb3)
#set(CMAKE_MAKE_PROGRAM D:/Programs/msys64/mingw64/bin/mingw32-make.exe)
#include_directories(D:/Programs/msys64/usr/include)
#include_directories(D:/Programs/msys64/mingw64/include)
#include_directories(D:/Programs/msys64/mingw64/x86_64-w64-mingw32/include)

add_executable(tetris main.cpp)
project(GraphicsCW VERSION 1.0)

if (WIN32)
    target_link_libraries(tetris freeglut opengl32 glu32 glew32)
endif (WIN32)
if (UNIX)
    target_link_libraries(tetris glut GL GLU GLEW)
endif (UNIX)
