#!/usr/bin/env bash

set -ex

# Check if the argument was provided
if [ $# -eq 0 ]; then
    echo "Error: Argument missing. Please provide the number of minutes you'd like to run as the first argument."
    exit 1  # Exit the script with an error code
fi

duration=$(($1 * 60)) # 20 minutes * 60 seconds/minute
echo "Running for $duration seconds!"

LD_LIBRARY_PATH=/opt/rocm/lib ./HIP-Examples/gpu-burn/build/gpuburn-hip -t $duration
