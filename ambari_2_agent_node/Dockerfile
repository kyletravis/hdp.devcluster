FROM hwxu/ambari_2_node

MAINTAINER Rich Raposa, rich@hortonworks.com

# Install and configure Ambari agent
RUN yum -y install ambari-agent

RUN sed -i '/^hostname=.*$/c\hostname=node1' /etc/ambari-agent/conf/ambari-agent.ini

ADD start-scripts/ /root/start-scripts

