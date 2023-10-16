#!/usr/bin/env bash

set -ex

if [ $# -eq 0 ]; then
    echo "Error: Argument missing. Please provide the number of minutes you'd like to run as the first argument."
    exit 1
fi

start_time=$(date +%s)

duration=$(($1 * 60))
echo "Running for $duration seconds!"

while true; do
	current_time=$(date +%s)
	elapsed_time=$((current_time - start_time))

	if [ $elapsed_time -ge $duration ]; then
		break
	fi

	LD_LIBRARY_PATH=/opt/rocm/lib ./rocm_bandwidth_test/build/rocm-bandwidth-test 
done
