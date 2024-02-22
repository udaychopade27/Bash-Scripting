#!/bin/bash

<< task 
Calculate the factorial of a number given  by user
task

echo "Enter a number"
read num
fact=1

for (( i=1; i<=5; i++));
do
	fact=$((fact * i))
done

echo "Factorial of $num is $fact"
