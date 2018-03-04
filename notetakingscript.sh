#! /bin/bash 

# get the date
date=$(date)

topic="$1"
filename="${HOME}/${topic}notes.txt"

read -p "Your notes:" note

set -x
if [[ $note ]]; then
	echo "$date: $note" >> "$filename"
	echo "Note '$note' saved to $filename"
else 
	echo "No input, notes is not saved"
fi
set +x
