#!/usr/bin/env bash

pwd

mvn clean install -Dmaven.test.skip=true

docker build -t cicd:latest .

docker run -d --name cmccicd cicd:latest