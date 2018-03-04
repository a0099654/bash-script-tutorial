#!/bin/bash

set -e

if [[ ! $1 ]]; then
  echo "Need First Argument" >&2
  exit 1
fi

while read -r; do
  if [[ $REPLY =~ $1 ]]; then
    echo "$REPLY"
    break
  fi
done

while read -r; do
  echo "$REPLY"
done

set +e

exit 0
