#!/usr/bin/env bash

set -ex

if [ $# -eq 0 ]; then
    echo "Error: Argument missing. Please provide the number of minutes you'd like to run as the first argument."
    exit 1
fi

duration=$(($1 * 60))
echo "Running for $duration seconds!"

LD_LIBRARY_PATH=/opt/rocm/lib ./HIP-Examples/gpu-burn/build/gpuburn-hip -t $duration
