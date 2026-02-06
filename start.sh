#!/bin/bash
if [ "$1" == "hub" ]; then
    docker-compose -f docker-compose.hub.yml up -d
elif [ "$1" == "local" ]; then
    docker-compose -f docker-compose.local.yml up -d --build
else
    echo "Usage: ./start.sh [hub|local]"
    exit 1
fi
