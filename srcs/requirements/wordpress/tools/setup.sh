#!/bin/sh
 
sed -i 's/;daemonize = yes/daemonize = no/' /etc/php7/php-fpm.conf
sed -i 's/user = nobody/user = nobody/' /etc/php7/php-fpm.d/www.conf
sed -i 's/group = nobody/group = nobody/' /etc/php7/php-fpm.d/www.conf
sed -i 's/;listen.owner = nobody/listen.owner = nobody/' /etc/php7/php-fpm.d/www.conf
sed -i 's/;listen.group = nobody/listen.group = nobody/' /etc/php7/php-fpm.d/www.conf
sed -i 's/listen = 127.0.0.1:9000/listen = 0.0.0.0:9000/' /etc/php7/php-fpm.d/www.conf

exec $@