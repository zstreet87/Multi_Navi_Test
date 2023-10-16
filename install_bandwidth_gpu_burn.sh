#!/usr/bin/env bash

ROOT_DIR="$PWD"

git clone https://github.com/ROCm-Developer-Tools/HIP-Examples.git
pushd HIP-Examples/gpu-burn
make
popd

git clone https://github.com/RadeonOpenCompute/rocm_bandwidth_test.git
mkdir -p rocm_bandwidth_test/build
pushd ./rocm_bandwidth_test/build
cmake -DCMAKE_MODULE_PATH="$ROOT_DIR/rocm_bandwidth_test/cmake_modules"  \
               ..
make
