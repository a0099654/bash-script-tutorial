#!/bin/bash

countdown=10

echo "This works until a certain condition is met"
sleep 2

until [ $countdown -le 0 ]; do
	echo $countdown
	let countdown=$countdown-1
	sleep 1
done

echo "This is done"
