#!/bin/bash

#This script is used to create a new user

echo "Enter the name of new User"

read -p "Enter username to create a new user" username

sudo useradd -m $username

echo "new user with a name $username added"


