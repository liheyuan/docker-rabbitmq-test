#!/bin/bash
NODE_NAME="node-rabbitmq"
VOLUME_DATA='$HOME/docker_data/rabbitmq'
docker-machine create -d virtualbox $NODE_NAME
docker-machine ssh $NODE_NAME "mkdir -p $VOLUME_DATA"
#docker-machine ssh $NODE_NAME "echo -e '{\n\"registry-mirrors\": [\t\"https://docker.mirrors.ustc.edu.cn\"]\n}' > ./daemon.json"
#docker-machine ssh $NODE_NAME "sudo cp ./daemon.json /etc/docker/"
#docker-machine restart $NODE_NAME
#docker-machine regenerate-certs -f $NODE_NAME
