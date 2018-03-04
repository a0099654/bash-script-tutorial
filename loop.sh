#! /bin/bash

echo "Self-destruct command upon initialisaton..."
sleep 2

for i in 10 9 8 7 6 5 4 3 2 1 "denoting the core"; do
	echo $i
	sleep 1
done 
