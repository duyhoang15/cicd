#!/usr/bin/env bash

set -e

cd home/ubuntu/cicd/

mvn clean install -Dmaven.test.skip=true

docker build -t cicd:latest .

docker run -d --name cmccicd cicd:latest