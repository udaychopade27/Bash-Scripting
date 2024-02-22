#!/bin/bash

create_directory() {
	mkdir demo
}

if ! create_directory; then
	echo "The code is being exited as directory is already exists"
	exit 1
fi

echo "The demo folder is created using create_directory function"

