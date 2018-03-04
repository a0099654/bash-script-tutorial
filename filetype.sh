#! /bin/bash

if [ "$#" -eq 0 ]; then
	echo -e "\nError! No filename specified."
	echo -e "\nUsage: $(basename $0) <filename> \n"
	exit 1
fi

filename="$1"

if [ -e "$filename" ]; then
	echo -e "\n$filename exists\n"
	
	if [ -b "$filename" ]; then
		echo -e "\n$filename is a block file\n"
	elif [ -c "$filename" ]; then
		echo -e "\n$filename is a char device file\n"
	elif [ -d "$filename" ]; then
		echo -e "\n$filename is a directory\n"
	else
		echo -e "\nSorry,I don't know the file type\n"
	fi
else
	echo -e "\n$filename doesnot exist"
fi	
