#!/bin/bash

# this script is used to know how for loop works
:' comment the argument 
1 is for the folder name 
2 is for the start number od folder
3 is for emd number of folder
'

for (( i=$2; i<=$3; i++))
do
	mkdir "$1$i"
done

