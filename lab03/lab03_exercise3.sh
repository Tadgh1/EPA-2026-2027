#!/bin/bash

# this is a comment

# for loop to count to 10
for c in {1..5}; do
	echo "Count: $c"

	# if does not use == it uses -eq
	# note the spaces around if [ ]
	if [ $c -eq 3 ]; then
		echo "found the third item"
	fi
done

# how do we pass parameters from the command line
# into this bash script.
# we use the notation $1, $2 etc to represent
# the first, second etc parameter into this script
if [ -z "$1" ]; then
	echo "You didn't pass any parameters to $0"
	exit 1
fi

# count the number of running processes
ct=$(ps -ef | wc -l)

# choose whether to write to the screen or to a file
if [ "$2" = "screen" ]; then
	if [ "$ct" -gt "$1" ]; then
		echo "Maximum number of processes exceeded"
	else
		echo "The maximum number of processes NOT exceeded"
	fi

elif [ "$2" = "file" ]; then
	if [ "$ct" -gt "$1" ]; then
		echo "$(date): Maximum number of processes exceeded" >> process_log.txt
	else
		echo "$(date): The maximum number of processes NOT exceeded" >> process_log.txt
	fi

else
	echo "Please choose screen or file"
fi
