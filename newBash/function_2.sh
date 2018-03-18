#!/bin/bash

starts_with_a () {
	[[ $1 == [aA]* ]];
}

if starts_with_a be; then
	echo "This letter starts with an a"
else
	echo "This letter doesn't starts with an a"
fi

