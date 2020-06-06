#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=shreeni123/microservicesshreeni123

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microservicesshreeni123 --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get po

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/microservicesshreeni123 8000:80

kubectl logs `kubectl get po -o=name`

