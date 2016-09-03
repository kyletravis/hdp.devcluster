#!/bin/bash

cd ../ambari_2_node
docker build -t hwxu/ambari_2_node .

cd ../ambari_2_server_node
docker build -t hwxu/ambari_2_server_node .

cd ../ambari_2_agent_node
docker build -t hwxu/ambari_2_agent_node .

cd ..
