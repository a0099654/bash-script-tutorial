#!/bin/bash

binweek=$[ $(date +%V) % 2] #Determine ISO week number
#only even week then the bins will be out

if [ $binweek -eq 0 ]; then
	echo "Recycling bin..." | mail -s "Recycling bin" stella.widyasari@gmail.com
else
	echo "Normal bin.." | mail -s "Normal bin" stella.widyasari@gmail.com
fi
