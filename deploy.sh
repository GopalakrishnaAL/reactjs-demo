#!/bin/bash

# Deploying the container using docker-compose
docker-compose up -d

# Tagging the image
docker tag project:web gopalakrishnaal/project:cicd

# Pushing the image to Docker Hub
docker push gopalakrishnaal/project:cicd

# Check if the push was successful
if [ $? -eq 0 ]; then
  echo "The image has been successfully pushed to Docker Hub."
else
  echo "Failed to push the image to Docker Hub."
fi
