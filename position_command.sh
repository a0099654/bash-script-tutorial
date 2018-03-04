#! /bin/bash

#This file will shows how to work with position paramer
echo "$# number of arguments have been passed. They were $@"
exit

echo -e "\n The first argument is $1, followed by $2, and $3"
shift
sleep 1
echo -e "\n The first argument is $1, followed by $2, and $3"
