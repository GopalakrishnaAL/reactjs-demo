#!/bin/bash

# Deploying the container using docker-compose
docker-compose up -d

# Set the Docker repository based on the branch
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Tagging the image
    docker tag project gopalakrishnaal/dev:project
    # Pushing the image to Docker Hub
    docker push gopalakrishnaal/dev:project
elif [[ $GIT_BRANCH == "origin/master" ]]; then
    # Tagging the image
    docker tag project gopalakrishnaal/prod:project
    # Pushing the image to Docker Hub
    docker push gopalakrishnaal/prod:project
else
    echo "Unsupported branch: $GIT_BRANCH"
fi

# Check if the push was successful
if [ $? -eq 0 ]; then
    echo "The image has been successfully pushed to Docker Hub."
else
    echo "Failed to push the image to Docker Hub."
fi
