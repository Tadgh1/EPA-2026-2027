#!/bin/bash

# Count the number of CPU cores
num_cpu=$(nproc)

# Function to display usage message
usage() {
    echo "Usage: $0 [MAX_NUM_CORES]"
}

# Check if the user supplied a value
if [ -z "$1" ]; then
    usage
    exit 1
fi

# Check that the input is a number
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a numeric value"
    exit 1
fi

# Display the number of CPU cores
echo "Number of CPU cores: $num_cpu"

# Check if there are enough CPU cores
if [ "$num_cpu" -lt "$1" ]; then
    echo "Error: Not enough CPU cores"
    exit 1
else
    echo "OK: There are enough CPU cores"
fi
