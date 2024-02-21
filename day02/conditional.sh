#!/bin/bash

<< comment this script is used to find out which grade do you get according to your %
comment

echo "Enter the percentage you get in your exam"
 
read grade

if [[ $grade -ge 90 && $grade -le 100 ]]; then
echo "A"

elif [[ $grade -ge 80 && $grade -lt 90 ]];
then    
echo "B"

elif [[ $grade -ge 70 && $grade -lt 80 ]];
then
echo "C"

elif [[ $grade -ge 60 && $grade -lt 70 ]];
then
echo "D"

elif [[ $grade -lt 0 && $grade -gt 100 ]];
then
echo "Invalid Grade"

else
	echo "Fail"
fi

