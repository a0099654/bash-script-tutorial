#!/bin/bash

case $1 in
	cat)
		echo "meow";;
	dog)
		echo "woof";;
	cow)
		echo "moo";;
	*)
		echo "unknown animal"
esac
