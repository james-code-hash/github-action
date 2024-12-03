#!/bin/sh

echo "Post entrypoint - Stopping Redpanda service"

redpanda_container=$(docker ps | grep "vectorized/redpanda" | awk '{print $1}')
if [ ! -z "$redpanda_container" ]; then
    echo "Stopping Redpanda container: $redpanda_container"
    docker stop $redpanda_container
    docker rm $redpanda_container
else
    echo "No running Redpanda container found"
fi
