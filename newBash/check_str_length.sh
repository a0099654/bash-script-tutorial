#!/bin/bash

# check number of arguments
if [[ $# -ne 2 ]]; then
	echo "Need exactly to be 2 arguments"
	exit 1
fi

len_1=${#1}
len_2=${#2}

# which directory has more files
if [[ $len_1 -gt $len_2 ]]; then
	echo "First argument is the longest"
elif [[ $len_1 -eq $len_2 ]]; then
	echo "Both arguments have equal length"
else
	echo "Second argument is the longest"
fi

exit 0

