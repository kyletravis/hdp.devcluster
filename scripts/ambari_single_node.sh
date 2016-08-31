#!/bin/bash

BLUEPRINT_BASE=$1
: ${BLUEPRINT_BASE:="singlenode"}

#Start the Ambari Server 
echo "Starting Namenode/Ambari Server..."
docker run --privileged=true -d --dns 8.8.8.8 -p 8080:8080 -p 8440:8440 -p 8441:8441 -p 50070:50070 -p 8020:8020 -e AMBARI_SERVER=node1 -e BLUEPRINT_BASE=${BLUEPRINT_BASE} --name node1 -h node1 -i -t hwxu/ambari_2_server_node
IP_namenode=$(docker inspect --format "{{ .NetworkSettings.Networks.exam_bridge.IPAddress }}" node1)
echo "Namenode/Ambari Server started at $IP_namenode"
