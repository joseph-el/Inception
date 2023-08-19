#!/bin/sh

echo 'rc_provide="loopback net"' >> /etc/rc.conf

nginx  -g  'daemon off;'

exec $@
