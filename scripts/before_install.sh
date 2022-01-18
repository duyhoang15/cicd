#!/usr/bin/env bash

#create our working directory if it doesnt exist
DIR="/home/ec2-user/cicd"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
  rm -rf ${DIR}
  mkdir ${DIR}
  cd ${DIR}
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
  cd ${DIR}
fi

mvn clean install -Dmaven.test.skip=true

docker build -t cicd:latest .