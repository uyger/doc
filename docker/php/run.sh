#!/bin/bash
name=$1
#$3=7.1-fpm
version=$2
docker run \
	--name $name \
	-v /Docker/$name/conf/php-fpm.d/www.conf:/usr/local/etc/php-fpm.d/www.conf \
	-v /Docker/$name/conf/php:/usr/local/etc/php \
	-v /Docker/$name/logs:/data/logs \
	-v /Docker/nginx/www:/data/www \
	-d php:$version;
docker exec $name \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime;
