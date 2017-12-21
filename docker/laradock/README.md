1. 下载laradock
$ git clone https://github.com/laradock/laradock.git

2. 复制.env
$ cp env-example .env

3.修改nginx配置
$ cp nginx/sites/default.conf nginx/sites/wallet.conf
$ vi nginx/sites/wallet.conf
<--------------------------------
server_name wallet.com;
root /var/www/wallet/public;
--------------------------------->

4.创建容器
$ docker-compose up -d nginx mysql


5.创建laravel
$ docker-compose exec --user=laradock workspace bash
workspace> composer config -g repo.packagist composer https://packagist.phpcomposer.com
workspace> composer create-project laravel/laravel wallet
workspace> exit


