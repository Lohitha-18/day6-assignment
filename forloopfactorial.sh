#!/bin/bash

read -p "Enter a number: " num

fact=1

if [ $num -lt 0 ]; then
  echo "Factorial is not defined for negative numbers"
  exit 0
fi

for (( i=2; i<=$num; i++ )); do
  fact=$((fact * i))
done

echo "Factorial of $num is $fact"
