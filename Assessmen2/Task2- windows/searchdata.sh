#!/bin/bash
# Student Number: S4133806
# Student Name: Benz Seal

# Ask user for file name to search
read -p "Enter file name: " filename

# Check if the file exists
if [ -f "$filename" ]; then
    # Ask user for keyword to search in the file
    read -p "Enter search keyword: " keyword

    # Search keyword in file and save matches to pattern.txt
    grep -i "$keyword" "$filename" > pattern.txt

    echo "Results saved in pattern.txt"
else
    # Show error if file doesn't exist
    echo "File not found"
fi

