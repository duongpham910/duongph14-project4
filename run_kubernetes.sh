#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=duongpham910/ml-microservice-api:v1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy ml-microservice-api --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/ml-microservice-api-b5994c9f5-dzpfg --address 0.0.0.0 8000:80
