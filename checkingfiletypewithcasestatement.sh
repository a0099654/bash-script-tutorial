#! /bin/bash

if [ "$#" -eq 0 ]; then
	echo -e "\nError! No filename specified."
	echo -e "\nUsage: $(basename $0) <filename> \n"
	exit 1
fi

check=$(file $1 | cut -d " " -f2)

case $check in
	"ASCII")
		echo -e "\nFile $filename is a plain text file"
	;;
	"Bourne-Again")
		echo -e "\nFile $filename is an executable"
	;;
	*)
		echo -e "\nGuess I don't know the file type"
	;;
esac

