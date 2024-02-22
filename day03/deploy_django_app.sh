#!/bin/bash

<< task 
Deploy Django app 
and handle the code for errors
task

code_clone() {
	echo "Cloning the Django app code from github"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements(){
	echo "installing dependencies"
	sudo apt-get install docker.io nginx -y
}

required_restarts(){
	sudo chown $USER /var/run/docker.sock
	sudo systemctl restart docker
	sudo systemctl enable docker
	sudo systemctl enable nginx
}

deploy(){
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

echo "******DEPLOYMENT STARTED******"
if ! code_clone; then
	echo "The code directory already exists"
	cd django-notes-app
fi

if ! install_requirements; then
	echo "Installation failed"
fi

if ! required_restarts; then
	echo "system fault identified"
	exit 1
fi

deploy
echo "******DEPLOYMENT DONE******"

