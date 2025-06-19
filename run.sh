#!/bin/bash

CONTAINER_NAME=dev-sol

echo "🛠️ Building Docker image..."
docker build -t $CONTAINER_NAME .

echo "🚀 Starting development server at http://localhost:8080"
docker run --rm -p 8080:80 \
  -v $(pwd)/index.html:/usr/share/nginx/html/index.html \
  -v $(pwd)/images:/usr/share/nginx/html/images \
  dev-sol

