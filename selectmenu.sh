#!/bin/bash

options="Stella Widyasari"
PS3="Select choice "
select choice in $options; do
	#echo "REPLY variable is $REPLY"
	#echo "The choice is $choice"
	case $choice in
		"Stella")
		echo -e  "You have chosen the most awesome name in the world\n"
		break
		;;
		"Widyasari")
		echo -e "This is the second best name of the world\n"
		break
		;;
		*)
		echo -e "You didn't choose anything\n"
		;;
	esac
done
