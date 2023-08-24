FROM alpine:3.17

RUN apk update; apk add openrc redis 
RUN openrc ; touch /run/openrc/softlevel;

ADD     tools/redis-setup.sh /

ENTRYPOINT [ "sh", "/redis-setup.sh" ]

CMD [ "redis-server", "/etc/redis.conf"]
