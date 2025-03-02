#!/bin/bash

mkdir -p bin
g++ -std=c++23 -fmodules-ts -c myabc.cc -o bin/myabc.o
g++ -std=c++23 -fmodules-ts -c myabc_impl.cc -o bin/myabc_impl.o
g++ -std=c++23 -fmodules-ts -c main.cc -o bin/main.o
g++ -o bin/main bin/main.o bin/myabc.o bin/myabc_impl.o
