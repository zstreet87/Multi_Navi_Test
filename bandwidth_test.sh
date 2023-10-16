#!/usr/bin/env bash

set -ex

# Check if the argument was provided
if [ $# -eq 0 ]; then
    echo "Error: Argument missing. Please provide the number of minutes you'd like to run as the first argument."
    exit 1  # Exit the script with an error code
fi

# Set the start time
start_time=$(date +%s)

# Set the duration for running the command (in seconds)
duration=$(($1 * 60)) # 20 minutes * 60 seconds/minute

# Run the command repeatedly in a loop
while true; do
	current_time=$(date +%s)
	elapsed_time=$((current_time - start_time))

	if [ $elapsed_time -ge $duration ]; then
		break # Exit the loop after 20 minutes
	fi

	LD_LIBRARY_PATH=/opt/rocm/lib ./rocm_bandwidth_test/build/rocm-bandwidth-test 
done
