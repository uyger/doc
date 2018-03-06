1. 创建容器
$ docker run --name ss5 -p 41180:1080 -it centos bash

2. 安装编译环境
$ yum -y install gcc gcc-c++ automake make pam-devel openldap-devel cyrus-sasl-devel openssl-devel wget

3. 下载
$ cd /home
$ wget https://nchc.dl.sourceforge.net/project/ss5/ss5/3.8.9-8/ss5-3.8.9-8.tar.gz
$ tar xvf ss5-3.8.9-8.tar.gz
$ cd ss5-3.8.9-8
$ ./configure
报错：config.status: include/config.h is unchanged
$ mv include/config.h include/config.h.bk
$ ./configure
$ make
$ make install

4. 修改配置
$ vi /etc/opt/ss5/ss5.conf
<-----------------------------------
auth 0.0.0.0/0 - u
permit u 0.0.0.0/0 - 0.0.0.0/0 - - - - -
----------------------------------->
$ vi /etc/opt/ss5/ss5.passwd
<-------------------------------------
tly lxk2017
------------------------------------->
$ chmod 700 /etc/rc.d/init.d/ss5

5. 启动
$ /etc/rc.d/init.d/ss5 restart

