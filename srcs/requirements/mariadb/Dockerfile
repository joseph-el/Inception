ARG  OS_VERSION=3.18
FROM alpine:${OS_VERSION}

RUN apk update ; apk add vim openrc mysql mysql-client php-mysqli 2> /dev/null
RUN openrc 2> /dev/null ; touch /run/openrc/softlevel 2> /dev/null

ADD tools/mariadb-setup.sh /
ADD tools/conf/mariadb-server.cnf /etc/my.cnf.d

ENTRYPOINT [ "sh", "mariadb-setup.sh" ]

CMD ["mysqld", "--user=root"]