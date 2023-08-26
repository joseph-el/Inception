FROM alpine:3.17

RUN apk update 2> /dev/null; apk add vim nginx openrc openssl python3 2> /dev/null
RUN openrc 2> /dev/null; touch /run/openrc/softlevel; \
    mkdir /etc/nginx/ssl ; rm -rf /var/cache/apk/*
RUN openssl req -x509 -nodes -newkey rsa:4096 -keyout /etc/nginx/ssl/server.key \
                    -out /etc/nginx/ssl/server.crt -days 365 -subj "/CN=localhost" 2> /dev/null
ADD ./tools/conf/virtual-server.conf /etc/nginx/http.d
ADD ./tools/nginx-setup.py  /run/nginx
WORKDIR  /run/nginx

ENTRYPOINT ["python3" , "nginx-setup.py"]