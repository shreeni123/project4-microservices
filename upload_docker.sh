#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=shreeni123/microservicesshreeni123

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=shreeni123 
docker image tag fc84f76b85c4 shreeni123/prediction:first

# Step 3:
# Push image to a docker repository
docker push shreeni123/microservicesshreeni123
