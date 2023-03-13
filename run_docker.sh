#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
TAG=udacity-mlops-project
LOCAL_PORT=8000
DOCKER_PORT=80
DOCKERUSER=arsmits
# Step 1:
# Build image and add a descriptive tag
docker build --tag=$DOCKERUSER/$TAG .
# Step 2: 
# List docker images
docker image ls
# Step 3: 
# Run flask app
docker run -p ${LOCAL_PORT}:${DOCKER_PORT} $DOCKERUSER/$TAG