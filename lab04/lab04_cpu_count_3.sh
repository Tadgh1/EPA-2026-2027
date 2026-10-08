#!/bin/bash

# Count the number of CPU cores
num_cpu=$(nproc)

# Get the server name and current date/time
server_name=$(hostname)
check_time=$(date)

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
else
    echo "OK: There are enough CPU cores"
fi

echo "Server name: $server_name"
echo "Check performed at: $check_time"

echo "The hostname command shows which server the script is running on."
echo "The date command shows when the CPU check was performed."
echo "These commands improve the script by giving more information about the CPU check."
