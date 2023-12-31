#!/bin/sh

rc-service redis start

sed -i 's/bind 127.0.0.1 -::1/bind 0.0.0.0 -::1/g' /etc/redis.conf
sed -i "s|maxmemory <bytes>|maxmemory 256mb|g" /etc/redis.conf
sed -i "s|maxmemory-policy noeviction|maxmemory-policy allkeys-lfu|g" /etc/redis.conf
sed -i "s|protected-mode yes|protected-mode no|g" /etc/redis.conf

exec $@