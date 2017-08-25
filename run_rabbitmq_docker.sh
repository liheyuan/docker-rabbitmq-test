#!/bin/bash
NODE_NAME="node-rabbitmq"
DOCKER_NAME="sbmvt-rabbit"
VOLUME_DATA="$HOME/docker_data/rabbitmq"
eval $(docker-machine env $NODE_NAME)
last_id=$(docker ps -l -q)
docker rm -f $last_id
docker run --rm --name $DOCKER_NAME -v "$VOLUME_DATA":/var/lib/rabbitmq -e RABBITMQ_DEFAULT_USER=sbmvt -e RABBITMQ_DEFAULT_PASS=hehehe -p15672:15672 -d rabbitmq:3-management-alpine 
