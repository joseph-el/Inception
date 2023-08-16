
#!/bin/bash

/etc/init.d/mariadb restart

mariadb -u root -e "CREATE DATABASE ${MYSQL_DATABASE};"
mariadb -u root -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
mariadb -u root -e "FLUSH PRIVILEGES;"
mariadb -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED  BY '${MYSQL_ROOT_PASSWORD}';"

sleep 2

/etc/init.d/mariadb stop

exec $@