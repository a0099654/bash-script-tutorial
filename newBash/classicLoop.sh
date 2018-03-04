#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Need exactly 2 arguments"
fi

for f in *"$1"; do
  base=$(basename "$f" "$1")
  echo mv "$f" "${base}$2"
done
