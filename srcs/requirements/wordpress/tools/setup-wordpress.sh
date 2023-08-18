#!/bin/sh

mkdir -p /run/openrc ; touch /run/openrc/softlevel ; openrc &

echo 'rc_provide="loopback net"' >> /etc/rc.conf

/etc/init.d/php-fpm81 start

/etc/init.d/php-fpm81 stop

exec $@