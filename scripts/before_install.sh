#!/usr/bin/env bash

#install maven
sudo apt-get install -y maven

sudo chmod 666 /var/run/docker.sock

#create our working directory if it doesnt exist
DIR="/home/ubuntu/cicd"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
  rm -rf ${DIR}
  mkdir ${DIR}
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi