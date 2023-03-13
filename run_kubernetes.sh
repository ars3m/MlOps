#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
TAG=udacity-mlops-project
DOCKERUSER=arsmits
LOCAL_PORT=8000
DOCKER_PORT=80
dockerpath=$DOCKERUSER/$TAG
# dockerpath=<>

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $TAG\
	--image=$dockerpath\
	--port=$DOCKER_PORT --labels app=$TAG

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $TAG ${LOCAL_PORT}:${DOCKER_PORT}
