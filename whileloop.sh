#! /bin/bash

countdown=10

echo "Wait, we are counting to new year celebration.."
sleep 2

while [ $countdown -gt 0 ]; do
	echo $countdown
	let countdown=$countdown-1
	sleep 1
done

echo "Engaged....."
