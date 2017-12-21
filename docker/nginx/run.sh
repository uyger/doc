#!/bin/bash
name=$1;
docker run \
	--name $name \
	-p 80:80 \
	-v /Docker/$name:/data \
	-v /Docker/$name/conf/nginx.conf:/etc/nginx/nginx.conf \
	-d nginx;
docker exec $name \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime;
