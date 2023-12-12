#!/bin/bash

# Deploying the container using docker-compose
docker-compose up -d

# Set the Docker repository based on the branch
if [ "$BRANCH_NAME" == "origin/dev" ]; then
    DOCKER_REPO="gopalakrishnaal/project:dev"
elif [ "$BRANCH_NAME" == "origin/master" ]; then
    DOCKER_REPO="gopalakrishnaal/project:prod"
else
    echo "Unsupported branch: $BRANCH_NAME"
    exit 1
fi

# Tagging the image
docker tag project $DOCKER_REPO

# Pushing the image to Docker Hub
docker push $DOCKER_REPO

# Check if the push was successful
if [ $? -eq 0 ]; then
    echo "The image has been successfully pushed to Docker Hub."
else
    echo "Failed to push the image to Docker Hub."
fi
