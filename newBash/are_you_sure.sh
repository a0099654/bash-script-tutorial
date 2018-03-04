#!/bin/bash

echo -n "Are you sure(Y/N)?"

#set -x

answered=
while [[ ! $answered ]]; do
	read -r -n 1 -s answer
	if [[ $answer = [Yy] ]]; then
		answered="yes"
	elif [[ $answer = [Nn] ]]; then
		answered="no"
	fi
done

#set +x
printf "\n%s\n" $answered
