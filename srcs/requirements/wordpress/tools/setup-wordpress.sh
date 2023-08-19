#!/bin/sh

mkdir -p /run/openrc ; touch /run/openrc/softlevel ; openrc

echo 'rc_provide="loopback net"' >> /etc/rc.conf

/etc/init.d/php-fpm81 setup
/etc/init.d/php-fpm81 start

wp core install --url=${URL_NAME} --title=${DB_USER} --admin_user=${ADMIN_USER} --admin_password=${DB_PASS} --admin_email=${USER_EMAIL}
wp user create  dexter dexter@gmail.com --role=subscriber
wp plugin install redis-cache --activate

sleep 2 
/etc/init.d/php-fpm81 stop

exec $@