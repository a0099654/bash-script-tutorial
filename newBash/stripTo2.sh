#!/bin/bash

if [[ ! $1 ]]; then
  echo "Need First Argument" >&2
  exit 1
fi

found=""
while read -r; do
  if [[ ! $found ]]; then
    if [[ $REPLY =~ $1 ]]; then
      found="Yey"
    else
      continue
    fi
  fi
  echo "$REPLY"
done

exit 0
