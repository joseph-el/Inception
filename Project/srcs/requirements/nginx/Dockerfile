ARG OS_VERSION=3.18
FROM alpine:${OS_VERSION}

RUN apk update ; apk add vim nginx openrc openssl python3
RUN mkdir -p /run/openrc ; touch /run/openrc/softlevel ; openrc ; \
    mkdir /etc/nginx/ssl ; rm -rf /var/cache/apk/*
RUN openssl req -x509 -nodes -newkey rsa:4096 -keyout /etc/nginx/ssl/server.key \
                    -out /etc/nginx/ssl/server.crt -days 365 -subj "/CN=localhost"
ADD ./tools/nginx.conf /etc/nginx/http.d
ADD ./tools/nginx-setup.py  /run/nginx
WORKDIR  /run/nginx

ENTRYPOINT ["python3" , "nginx-setup.py"]