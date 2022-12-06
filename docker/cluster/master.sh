#!/bin/bash
sudo apt-get install nfs-server -y

docker volume create app
cd /var/lib/docker/volumes/app/_data/

wget https://raw.githubusercontent.com/edubarr/aws-devops-impulso/main/docker/cluster/index.html
echo '/var/lib/docker/volumes/app/_data/ *(rw,sync,subtree_check)' >> /etc/exports

sudo exportfs -ar

sudo docker swarm init --advertise-addr=10.10.10.100
sudo docker swarm join-token worker | grep docker > /vagrant/worker_join.sh

