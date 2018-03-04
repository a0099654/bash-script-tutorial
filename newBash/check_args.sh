#!/bin/bash

# check number of arguments
if [[ $# -ne 2 ]]; then
	echo "Need exactly to be 2 arguments"
	exit 1
fi

# check if both arguments are directories
if [[ ! -d $1 ]]; then
	echo "'$1' is not a directory"
fi

if [[ ! -d $2 ]]; then
	echo "'$2' is not a directory"
fi

dir1="$1"
dir2="$2"

count_1=$(ls -A1 "$dir1" | wc -l)
count_2=$(ls -A1 "$dir2" | wc -l)

# which directory has more files
if [[ $count_1 -gt $count_2 ]]; then
	echo "${dir1} has more files"
elif [[ $count_1 -eq $count_2 ]]; then
	echo "${dir1} and ${dir2} are equal"
else
	echo "${dir2} has more files"
fi

exit 0

