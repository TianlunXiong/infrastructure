#!/usr/bin/env bash

docker pull jenkinsci/blueocean

docker run -d  \
--rm \
--name jk -u root \
-p 9090:8080  \
-v /var/jenkins_home:/var/jenkins_home  \
-v /var/run/docker.sock:/var/run/docker.sock \
jenkinsci/blueocean

docker ps