#!/usr/bin/env bash

#来源: https://blog.csdn.net/yetyrain/article/details/105642488
docker pull nginx

docker container run \
  --name nginx \
  -v ~/nginx:/etc/nginx \
  -p 8080:80 \
  -d \
  nginx

docker ps