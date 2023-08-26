FROM alpine:3.17

RUN apk update ; apk add vim nginx openrc
RUN openrc ; touch /run/openrc/softlevel;
RUN echo 'rc_provide="loopback net"' >> /etc/rc.conf; \
    mkdir -p /var/www/pages;

ADD pages/ /var/www/pages/
ADD tools/website.conf /etc/nginx/http.d/

CMD ["nginx" , "-g" , "daemon off;"]