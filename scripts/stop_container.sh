#!/bin/bash

if [ "$(docker ps -q -f name=webapp)" ]; then
    echo "Stopping existing container..."
    docker stop webapp
    docker rm webapp
else
    echo "No existing container found."
fi