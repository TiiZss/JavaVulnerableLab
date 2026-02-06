#!/bin/bash
if [ "$1" == "hub" ]; then
    docker-compose -f docker-compose.hub.yml down
elif [ "$1" == "local" ]; then
    docker-compose -f docker-compose.local.yml down
else
    echo "Usage: ./stop.sh [hub|local]"
    exit 1
fi
