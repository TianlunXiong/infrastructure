#!/usr/bin/env bash

#来源: https://blog.csdn.net/yetyrain/article/details/105642488
docker pull postgres

docker run -it --name postgres --restart always -e POSTGRES_PASSWORD='1313567' -v /home/postgres/data:/var/lib/postgresql -p 55433:5432 -d postgres

docker ps