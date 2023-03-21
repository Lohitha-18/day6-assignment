#!/bin/bash

goal=200
cash=100
bets=0
wins=0

while [ $cash -gt 0 ] && [ $cash -lt $goal ]; do
  bet=1
  ((bets++))
  result=$((RANDOM % 2))
  if [ $result -eq 0 ]; then
    ((cash++))
    ((wins++))
    echo "You won! Your current cash is Rs $cash."
  else
    ((cash--))
    echo "You lost. Your current cash is Rs $cash."
  fi
done

if [ $cash -eq 0 ]; then
  echo "You are broke. Better luck next time!"
else
  echo "Congratulations! You have reached your goal of Rs $goal."
fi

echo "Number of bets made: $bets"
echo "Number of times won: $wins"
