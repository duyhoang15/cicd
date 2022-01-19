#!/usr/bin/env bash

#install maven
sudo apt-get install -y maven

sudo chmod 666 /var/run/docker.sock

docker rm -f cmccicd || true

#create our working directory if it doesnt exist
DIR="/home/ubuntu/cicd"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
  sudo rm -rf ${DIR}
  sudo mkdir ${DIR}
else
  echo "Creating ${DIR} directory"
  sudo mkdir ${DIR}
fi