#! /bin/bash

echo "This is a conditional statement"

if [ "$#" -eq 0 ]; then
	echo -e "\nThere is no arguments passed in the terminal"
	echo -e "Usage: $(basename $0) <filename>\n"
	exit 1
fi

echo "If you typed something it will display here"
		
