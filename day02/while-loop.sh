#!/bin/bash

#this script uses while loop to find out even numbers between a range of numbers give

# Initialize a counter
num=0

# Set the maximum limit of numbers
max=20

echo "Even numbers up to $max:"

# Loop while the counter is less than or equal to the maximum limit
while [ $num -le $max ]
do
    # Check if the number is even using the modulus operator
    if [ $((num % 2)) -eq 0 ]; then
        echo $num
    fi
    # Increment the counter
    num=$((num + 1))
done


