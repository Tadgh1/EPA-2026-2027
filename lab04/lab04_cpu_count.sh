#!/bin/bash

# Count the number of CPU cores
num_cpu=$(nproc)

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
