#!/bin/bash

date=$(date)

topic="$1"

filename="${HOME}/${topic}notes.txt"

read -p "Write your input: " note

if [[ $note ]]; then
	echo "$date : $note" >> "$filename"
	echo "Note $note saved to $filename"
else
	echo "No input note wasnt saved" > /dev/stderr
fi
