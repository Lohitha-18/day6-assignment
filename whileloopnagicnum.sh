#!/bin/bash

echo "Think of a number between 1 to 100"
min=1
max=100
found=false

while [ "$found" = false ]; do
  guess=$((min + (max - min) / 2))
  read -p "Is your number less than $guess? (y/n): " ans
  if [ "$ans" = "y" ]; then
    max=$((guess - 1))
  else
    min=$((guess + 1))
  fi
  if [ $min -eq $max ]; then
    found=true
  fi
done

echo "The magic number is $min"
