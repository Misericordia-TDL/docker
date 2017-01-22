#!/usr/bin/env bash

# Set environment variables for dev
export XDEBUG_HOST=$(ipconfig getifaddr en0) # Specific to host

if [ $# -gt 0 ]; then
    docker-compose "$@"
else
    docker-compose ps
fi
