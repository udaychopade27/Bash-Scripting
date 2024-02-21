#!/bin/bash

# Define a function to check if a number is even
is_even() {
    local num=$1
    if [ $((num % 2)) -eq 0 ]; then
        echo "true"
    else
        echo "false"
    fi
}

# Main script
read -p "Enter a number: " number

# Call the function and store the result in a variable
result=$(is_even $number)

# Print the result
echo "Is the number even? $result"

