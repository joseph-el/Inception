#!/bin/sh

sleep 5

echo 'rc_provide="loopback net"' >> /etc/rc.conf

/etc/init.d/php-fpm81 start 

wp core install --url=$DOMAIN_NAME --title=$DATABASE_USER --admin_user=$ADMIN_USER --admin_password=$DATABASE_PASSWORD --admin_email=$USER_MAIL

wp user create  dexter dexter@gmail.com --role=subscriber
wp user update dexter --user_pass=dexter

wp plugin install redis-cache 
wp plugin activate redis-cache
wp redis enable 

chown -R www-data:www-data /var/www/wordpress && \
chmod -R 775 /var/www/wordpress

/etc/init.d/php-fpm81 restart
/etc/init.d/php-fpm81 stop

exec $@
