cmake_minimum_required(VERSION 3.28)

project(MyProject LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_SCAN_FOR_MODULES ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_library(myabc)

target_sources(myabc
  PUBLIC FILE_SET CXX_MODULES FILES
    src/myabc.cc
)

target_sources(myabc
  PRIVATE
    src/myabc_impl.cc
)

add_executable(main src/main.cc)

target_link_libraries(main PRIVATE myabc)

