#!/bin/sh
 
mkdir -p /run/openrc ; touch /run/openrc/softlevel ; openrc

/etc/init.d/mariadb setup
/etc/init.d/mariadb start

while ! mysqladmin ping -hlocalhost --silent; do
    sleep 1
done
 
mariadb -e << EOF

CREATE DATABASE $DB_NAME;
CREATE USER '${DB_USER}'@localhost IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '${ROOT_PASS}';

EOF

/etc/init.d/mariadb stop

exec $@