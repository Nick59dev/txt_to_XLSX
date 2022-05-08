cmake_minimum_required(VERSION 3.15)
project(proj)

set(CMAKE_CXX_STANDARD 17)


set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -pthread")


add_subdirectory(OpenXLSX)

add_executable(proj main.cpp)
target_link_libraries(proj OpenXLSX::OpenXLSX)
target_link_libraries(proj pthread)
