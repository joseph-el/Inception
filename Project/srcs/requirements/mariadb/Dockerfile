ARG OS_VERSION=3.18
FROM alpine:${OS_VERSION}

ADD ./tools/mariadb-setup.py /
RUN apk update ; apk add vim openrc mysql mysql-client php-mysqli python3
RUN mkdir -p /run/openrc ; openrc ; touch /run/openrc/softlevel

ENTRYPOINT [ "python3", "mariadb-setup.py" ]

CMD ["mysqld", "--user=root"]