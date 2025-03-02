#!/bin/bash

mkdir -p bin
clang++-18 -std=c++23 --precompile myabc.ccm -o bin/myabc.pcm
clang++-18 -std=c++23 -c -fprebuilt-module-path=bin myabc.cc -o bin/myabc.o
clang++-18 -std=c++23 -c -fprebuilt-module-path=bin main.cc -o bin/main.o
clang++-18 -std=c++23 -c -fprebuilt-module-path=bin bin/myabc.pcm -o bin/myabc_m.o
clang++-18 -o bin/main bin/main.o bin/myabc.o bin/myabc_m.o
