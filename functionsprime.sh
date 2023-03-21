#!/bin/bash

# Function to check if a number is prime
is_prime() {
  num=$1

  if [ $num -lt 2 ]; then
    return 1
  fi

  for ((i=2; i<=num/2; i++)); do
    if [ $((num%i)) -eq 0 ]; then
      return 1
    fi
  done

  return 0
}

# Function to get the palindrome of a number
get_palindrome() {
  num=$1
  reversed=0

  while [ $num -ne 0 ]; do
    digit=$((num%10))
    reversed=$((reversed*10+digit))
    num=$((num/10))
  done

  echo $reversed
}

# Main script
read -p "Enter a number: " num

if is_prime $num; then
  echo "$num is a prime number."

  palindrome=$(get_palindrome $num)
  echo "The palindrome of $num is $palindrome."

  if is_prime $palindrome; then
    echo "$palindrome is also a prime number."
  else
    echo "$palindrome is not a prime number."
  fi
else
  echo "$num is not a prime number."
fi
