FROM alpine:3.17

RUN apk update && apk add openrc 2> /dev/null && openrc && touch /run/openrc/softlevel && \
    apk add mariadb mariadb-client && /etc/init.d/mariadb setup 

COPY ./tools/setup.sh setup.sh

RUN chmod +x setup.sh && cd /etc/my.cnf.d && sed -i 's/#bind/bind/g' mariadb-server.cnf
RUN  cd /etc/my.cnf.d && sed -i 's/skip-networking/skip-networking=0/g' mariadb-server.cnf

ENTRYPOINT [ "sh", "setup.sh" ]

CMD ["mysqld", "--user=root"]

