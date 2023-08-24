FROM alpine:3.18

RUN apk --update add redis

RUN apk update; apk add openrc redis 
RUN openrc ; touch /run/openrc/softlevel;

ADD     tools/redis-setup.sh /
RUN     chmod +x /redis-setup.sh

ENTRYPOINT [ "sh", "/redis-setup.sh" ]

CMD [ "redis-server", "/etc/redis.conf"]