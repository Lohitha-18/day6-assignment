#!/bin/bash

if (( $# != 1 )); then
  echo "Usage: $0 <n>"
  exit 1
fi

n=$1

for (( i=0; i<=$n; i++ )); do
  power=$(( 2 ** i ))
  echo "2^$i = $power"
done
