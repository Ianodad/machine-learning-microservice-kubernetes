#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="ianodad/udacity-devops"
tag=latest
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-devops \
    --image="ianodad/udacity-devops" \
    --port=80 \
    --labels app="udacity-devops"
# Sleep for 60s to make sure that the pod is up
sleep 60

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
# export POD_NAME=$(kubectl get pod -l app=udacity-devops -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward udacity-devops 8000:80
