#!/bin/bash

# Deploying the container using docker-compose
docker-compose up -d

# Set the Docker repository based on the branch
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    DOCKER_REPO="gopalakrishnaal/dev:project"
elif [[ $GIT_BRANCH == "origin/master" ]]; then
    DOCKER_REPO="gopalakrishnaal/prod:project"
else
    echo "Unsupported branch: $GIT_BRANCH"
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
