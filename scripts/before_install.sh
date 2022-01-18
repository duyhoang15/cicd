#!/usr/bin/env bash

#install maven
sudo apt-get install -y maven

#create our working directory if it doesnt exist
DIR="/home/ec2-user/cicd"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
  sudo rm -rf ${DIR}
  sudo mkdir ${DIR}
else
  echo "Creating ${DIR} directory"
  sudo mkdir ${DIR}
fi