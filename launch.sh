#!/bin/bash

# Check if the bucky command and daemon are supplied
if [ ! -f bucky ]; then
    echo "bucky executable not found. Please copy it in this directory"
    exit 1
fi

if [ ! -f buckyd ]; then
    echo "buckyd executable not found. Please copy it in this directory"
    exit 1
fi

# Launch the actual cluster
docker-compose -d up
