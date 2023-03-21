#!/bin/bash

read -p "Enter the temperature value: " temp
read -p "Enter the conversion selection (F for Fahrenheit, C for Celsius): " choice

case $choice in
  [Ff])
    if (( $temp >= 32 && $temp <= 212 )); then
      degC=$((($temp - 32) * 5/9))
      echo "$temp °F is $degC °C"
    else
      echo "Invalid input. Temperature must be within the freezing point (32 °F) and the boiling point of water (212 °F)."
    fi
    ;;
  [Cc])
    if (( $temp >= 0 && $temp <= 100 )); then
      degF=$((($temp * 9/5) + 32))
      echo "$temp °C is $degF °F"
    else
      echo "Invalid input. Temperature must be within the freezing point (0 °C) and the boiling point of water (100 °C)."
    fi
    ;;
  *)
    echo "Invalid selection. Please enter F or C."
    ;;
esac
