#!/bin/bash

declare -ir target=$(( ($RANDOM % 100 ) + 1 ))

declare -i guess=0

until (( guess == target )); do
	read -p "Take a guess: " guess
	(( guess )) || continue
	if (( guess < target )); then
		echo "Higher"
	elif (( guess > targer )); then
		echo "Lower"
	else
		echo "you found it"
	fi
done

exit 0 

