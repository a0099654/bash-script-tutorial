#! /bin/bash

echo "This file will show how we retrieve user input from command line"
echo 
echo "Multiplication between the two inputs"

read -p "Enter the first number:" value1
echo
read -p "Enter the second number:" value2
echo

read -sn1 -p "Please enter any key to reveal the answer...."

let answer=value1*value2
echo $answer
echo "This is the result $answer\n"

echo "This is the answer from $REPLY "


