#!/bin/sh

docker_run="docker run"

run_redpanda="$docker_run -d -p ${INPUT_BROKER_PORT}:${INPUT_BROKER_PORT} -p ${INPUT_SCHEMA_REGISTRY_PORT}:${INPUT_SCHEMA_REGISTRY_PORT} -p 9644:9644 vectorized/redpanda:${INPUT_VERSION} redpanda start --overprovisioned --smp 1 --memory 1G --reserve-memory 0M --node-id 0 --check=false"
sh -c "$run_redpanda"
