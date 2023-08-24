FROM alpine:3.18

RUN apk --update add redis

RUN apk update; apk add openrc redis 
RUN openrc ; touch /run/openrc/softlevel;
ADD     ./config/run.sh /
RUN     chmod +x /run.sh

ENTRYPOINT [ "sh", "/run.sh" ]

CMD [ "redis-server", "/etc/redis.conf"]