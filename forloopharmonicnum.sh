#!/bin/bash

if (( $# != 1 )); then
  echo "Usage: $0 <n>"
  exit 1
fi

n=$1
harmonic=0

for (( i=1; i<=$n; i++ )); do
  harmonic=$(echo "scale=4; $harmonic + 1/$i" | bc)
done

echo "The $n-th harmonic number is: $harmonic"
