1.复制文件
$ cp -R ./* /Docker/nginx/
$ cd /Docker/nginx/

2.创建容器
$ sh run.sh nginx

3.查看php容器ip
$ docker inspect --format '{{.NetworkSettings.IPAddress}}' php7.1

4.连接php
$ vi conf/enable-php.conf
<-------
fastcgi_pass 172.17.0.3:9000;
------->
