#!/bin/bash

# Get random number
target=$(($RANDOM % 100))

guess=

until [[ $guess -eq $target ]]; do
  read -p "Take a guess: " guess
  if [[ $guess -lt $target ]]; then
    echo "Higher"
  elif [[ $guess -gt $target ]]; then
    echo "Lower"
  else
    echo "You found it!"
  fi
done

exit 0
