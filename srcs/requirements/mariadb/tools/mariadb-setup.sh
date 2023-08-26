#!/bin/sh

/etc/init.d/mariadb setup
/etc/init.d/mariadb start

mariadb -u root << EOF
    CREATE DATABASE ${DATABASE_NAME};
    CREATE USER '${DATABASE_USER}'@'%' IDENTIFIED BY '${DATABASE_PASSWORD}';
    CREATE USER '${DATABASE_USER}'@'localhost' IDENTIFIED BY '${DATABASE_PASSWORD}';
    GRANT ALL PRIVILEGES ON ${DATABASE_NAME}.* TO '${DATABASE_USER}'@'%';
    FLUSH PRIVILEGES;
    ALTER USER 'root'@'localhost' IDENTIFIED BY '${ROOT_PASSWORD}';
EOF

sleep 2

/etc/init.d/mariadb stop

exec $@