#!/bin/bash

read -p "Enter starting number: " start
read -p "Enter ending number: " end

if [ $start -lt 2 ]; then
  start=2
fi

for (( num=$start; num<=$end; num++ )); do
  is_prime=true
  for (( i=2; i<=$num/2; i++ )); do
    if [ $((num%i)) -eq 0 ]; then
      is_prime=false
      break
    fi
  done
  if [ "$is_prime" = true ]; then
    echo "$num is a prime number"
  fi
done
