#!/bin/bash

echo "Enter the number of terms in Fibonacci sequence:"
read n

# Initialize the first two Fibonacci numbers
a=0
b=1

echo "Fibonacci sequence up to $n terms:"
count=0

# Print the Fibonacci sequence using a while loop
while [ $count -lt $n ]
do
    echo -n "$a "

    # Calculate the next Fibonacci number
    next=$((a + b))
    a=$b
    b=$next

    count=$((count + 1))
done

echo # Print a newline at the end

