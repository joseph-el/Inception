# FROM alpine:3.18

# RUN apk --update add redis

# RUN apk update; apk add openrc redis 
# RUN openrc ; touch /run/openrc/softlevel;

# RUN     mkdir -p /var/www/wordpress
# ADD     tools/redis-setup.sh /
# RUN     chmod +x /redis-setup.sh

# ENTRYPOINT [ "sh", "/redis-setup.sh" ]

# CMD [ "redis-server", "/etc/redis.conf"]
FROM alpine:3.17

RUN apk update && mkdir /var/run/redis && \
    apk add redis && mkdir -p /var/www/wordpress && \
    cd /var/www/wordpress && cd /etc/ && \
    sed -i 's/bind 127.0.0.1 -::1/bind 0.0.0.0/g' redis.conf
ADD     tools/redis-setup.sh /

ENTRYPOINT [ "sh", "/redis-setup.sh" ]

CMD [ "redis-server" ]