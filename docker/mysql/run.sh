#!/bin/bash
name=$1;
docker run \
	--name $name \
	-p 3306:3306 \
	-v /Docker/$name/data:/var/lib/mysql \
	-v /Docker/$name/logs:/data/logs \
	-v /Docker/$name/conf:/data/conf \
	-d mysql;
docker exec $name \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime;
docker exec $name \
	cp /data/conf/my.cnf /etc/mysql/my.cnf;
docker restart $name;
