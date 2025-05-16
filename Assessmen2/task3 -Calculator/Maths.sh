#!/bin/bash
# Student Number: S4133806
# Student Name: Benz Seal

# Ask for two numbers
read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Repeat menu until user chooses to exit
while true; do
  echo -e "\n1. Calculate\n2. Exit"
  read -p "Choose option (1 or 2): " choice

  if [ "$choice" == "1" ]; then
    echo "Add: $((num1 + num2))"
    echo "Subtract: $((num1 - num2))"
    echo "Multiply: $((num1 * num2))"
    if [ "$num2" -ne 0 ]; then
      echo "Divide: $((num1 / num2))"
    else
      echo "Divide: cannot divide by zero"
    fi
  elif [ "$choice" == "2" ]; then
    echo "Goodbye!"
    break
  else
    echo "Invalid. Choose 1 or 2."
  fi
done

