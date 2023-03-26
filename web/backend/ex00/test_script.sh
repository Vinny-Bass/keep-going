#!/bin/sh

server_running=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3000)

if [ "$server_running" = "000" ]; then
    echo "Error: No server is running on localhost:3000."
    exit 1
else
    echo "A server is running on localhost:3000."
    exit 0
fi
