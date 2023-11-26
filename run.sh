#!/bin/bash

IMAGE_NAME="todo_app"
CONTAINER_NAME="todo_app_container"

# コンテナが既に存在する場合は削除
docker rm -f $CONTAINER_NAME

# Docker コンテナを起動
docker run -d \
  --name $CONTAINER_NAME \
  -p 8000:8000 \
  -v $(pwd)/app:/app \
  $IMAGE_NAME\
  gunicorn -b 0.0.0.0:8000 app:app

