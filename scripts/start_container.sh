#!/usr/bin/env bash

sudo chmod -R 777 /home/ubuntu/cicd

cd /home/ubuntu/cicd

mvn clean install -Dmaven.test.skip=true

docker build -t cicd:latest .

docker run -d --name cmccicd cicd:latest