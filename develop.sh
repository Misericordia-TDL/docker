#!/usr/bin/env bash

# Set environment variables for dev
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
        export XDEBUG_HOST=$(ifconfig en0  | grep 'inet ' | awk '{print $2}')
else  #assuming the OS is MacOS
        export XDEBUG_HOST=$(ipconfig getifaddr en0) # Specific to host
fi

if [ $# -gt 0 ]; then
    docker-compose "$@"
else
    docker-compose ps
fi
