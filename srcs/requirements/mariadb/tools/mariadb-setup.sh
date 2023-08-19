#!/bin/sh

RUN mkdir -p /run/openrc ; openrc ; touch /run/openrc/softlevel 

# /etc/init.d/mariadb setup 
# /etc/init.d/mariadb start

# while ! mysqladmin ping -hlocalhost --silent; do
#     sleep 1
# done

# mariadb -u root -e "CREATE DATABASE ${DB_NAME}"
# mariadb -u root -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}'";
# mariadb -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}'";
# mariadb -u root -e "FLUSH PRIVILEGES";
# mariadb -u root -e "ALTER USER bill@localhost IDENTIFIED BY '${ROOT_PASS}'";

# sleep 2

# /etc/init.d/mariadb stop

# exec $@

/etc/init.d/mariadb restart

mariadb -u root -e "CREATE DATABASE ${DB_NAME};"
mariadb -u root -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';"
mariadb -u root -e "FLUSH PRIVILEGES;"
mariadb -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED  BY '${ROOT_PASS}';"

sleep 2

/etc/init.d/mariadb stop

exec $@