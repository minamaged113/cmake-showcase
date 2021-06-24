#!/usr/bin/env bash

printf "+ Build started\n"
mkdir -p build
pushd build/
cmake ..
cmake --build .
popd
printf "+ Build ended\n"
