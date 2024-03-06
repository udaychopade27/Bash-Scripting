#!/bin/bash

# Check if Docker is already installed
check_docker() {
if ! command -v docker &> /dev/null; then
    echo "Installing Docker..."

    # Update the package index
    sudo apt update

    # Install dependencies
    sudo apt install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg \
        lsb-release

    # Add Docker's official GPG key
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

    # Set up the stable repository
    echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    # Install Docker engine
    sudo apt update
    sudo apt install -y docker-ce docker-ce-cli containerd.io

    # Verify Docker installation
    sudo docker --version

    # Add user to the docker group to run docker commands without sudo
    sudo usermod -aG docker $USER

    echo "Docker has been installed successfully."
else
    echo "Docker is already installed."
fi
}


# Function to build Docker image
build_docker_image() {
    echo "Building Docker image..."
    if ! docker build -t bmi_app .; then
        echo "Failed to build Docker image."
        exit 1
    fi
}

# Function to run Docker container
run_docker_container() {
    echo "Running Docker container..."
    if ! docker run -d -p 5000:5000 bmi_app; then
	   echo "Failed to run Docker container."
           exit 1
    fi
}


# Main function
main() {
    check_docker
    build_docker_image
    run_docker_container
}

# Run the main function
main
