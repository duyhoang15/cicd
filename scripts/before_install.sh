#!/usr/bin/env bash

#create our working directory if it doesnt exist
DIR="/home/ec2-user/cicd"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
  sudo rm -rf ${DIR}
  mkdir ${DIR}
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi