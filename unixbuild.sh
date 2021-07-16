#!/bin/bash
CMAKE=/usr/bin/cmake3
mkdir -p build
cd build
$CMAKE -G "Unix Makefiles" -S ../src .
$CMAKE --build .
