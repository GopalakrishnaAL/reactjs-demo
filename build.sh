#!/bin/bash

DOCKER_USER="gopalakrishnaal"
DOCKER_PASS="dckr_pat_GILwsnl_saNzWC33nM-WSLFDsPc"

# Login into Docker Hub
docker login -u $DOCKER_USER -p $DOCKER_PASS

# Check if the login was successful
if [ $? -ne 0 ]; then
  echo "Docker login failed. Exiting."
  exit 1
fi

# Build the Docker image
docker build -t project:web .

# Display the list of Docker images
docker images

# Stop the already running container (if exists)
if docker ps | grep -q project; then
  docker stop project
  docker rm project
  echo "Stopped and removed the 'project' container."
else
  echo "No running 'project' container found."
fi
