#!/bin/bash -x

while read -r ; do
	printf "%s\n" "$REPLY"
done <"$1"
