#!/bin/bash

is_palindrome() {
  num1=$1
  num2=$2

  # Reverse num1 and compare with num2
  if [ $(echo $num1 | rev) -eq $num2 ]; then
    echo "$num1 and $num2 are palindromes."
  else
    echo "$num1 and $num2 are not palindromes."
  fi
}
