FROM alpine:3.17

RUN apk update && apk add openrc 2> /dev/null && apk add nginx && openrc &&          \
    touch /run/openrc/softlevel && apk add vim && apk add openssl &&    \
    mkdir /etc/nginx/ssl

COPY ./tools/cert.crt /etc/nginx/ssl/
COPY ./tools/cert.key /etc/nginx/ssl/
COPY ./tools/nginx.conf /etc/nginx/http.d/default.conf

CMD [  "nginx", "-g", "daemon off;"]
