docker tag hwxu/ambari_2_agent_node gcr.io/docker-build/ambari_2_agent_node
gcloud docker push gcr.io/docker-build/ambari_2_agent_node
docker tag hwxu/ambari_2_server_node gcr.io/docker-build/ambari_2_server_node
gcloud docker push gcr.io/docker-build/ambari_2_server_node
docker tag hwxu/ambari_2_node gcr.io/docker-build/ambari_2_node
gcloud docker push gcr.io/docker-build/ambari_2_node 
