
import os

start_sh_content = """#!/bin/bash
if [ "$1" == "hub" ]; then
    docker-compose -f docker-compose.hub.yml up -d
elif [ "$1" == "local" ]; then
    docker-compose -f docker-compose.local.yml up -d --build
else
    echo "Usage: ./start.sh [hub|local]"
    exit 1
fi
"""

stop_sh_content = """#!/bin/bash
if [ "$1" == "hub" ]; then
    docker-compose -f docker-compose.hub.yml down
elif [ "$1" == "local" ]; then
    docker-compose -f docker-compose.local.yml down
else
    echo "Usage: ./stop.sh [hub|local]"
    exit 1
fi
"""

with open('start.sh', 'w', newline='\n') as f:
    f.write(start_sh_content)

with open('stop.sh', 'w', newline='\n') as f:
    f.write(stop_sh_content)

print("Created start.sh and stop.sh with LF line endings.")
