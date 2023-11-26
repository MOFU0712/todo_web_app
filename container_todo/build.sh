#!/bin/bash

IMAGE_NAME="todo_app"

cd ..
docker build -t $IMAGE_NAME -f container_todo/Dockerfile .

if [ $? -eq 0 ]; then
    echo "Docker image $IMAGE_NAME built successfully."
else
    echo "Failed to build Docker image $IMAGE_NAME."
    exit 1
fi
