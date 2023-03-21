#!/bin/bash

heads=0
tails=0

while [ $heads -lt 11 ] && [ $tails -lt 11 ]; do
  coin=$((RANDOM % 2))
  if [ $coin -eq 0 ]; then
    echo "Heads"
    heads=$((heads + 1))
  else
    echo "Tails"
    tails=$((tails + 1))
  fi
done

if [ $heads -eq 11 ]; then
  echo "Heads won!"
elif [ $tails -eq 11 ]; then
  echo "Tails won!"
fi
