#!/bin/bash

n=$1
power=1

if [ $n -lt 0 ]; then
  echo "n should be a non-negative integer"
  exit 1
fi

echo "Powers of 2 till 256 that are less than or equal to 2^n where n=$n:"

while [ $power -le 256 ] && [ $power -le $((2**n)) ]; do
  echo $power
  power=$((power * 2))
done
