#!/bin/sh

sleep 5

echo 'rc_provide="loopback net"' >> /etc/rc.conf

WEB_USER="nginx"    
WEB_GROUP="nginx"    
WP_PATH="/var/www/wordpress"  

WEB_UID=$(id -u $WEB_USER)
WEB_GID=$(id -g $WEB_GROUP)

chown -R nginx:nginx $WP_PATH
chown -R $WEB_UID:$WEB_GID $WP_PATH

/etc/init.d/php-fpm81 start 

wp core install --url=$DOMAIN_NAME --title=$DATABASE_USER --admin_user=$ADMIN_USER --admin_password=$DATABASE_PASSWORD --admin_email=$USER_MAIL

wp user create  dexter dexter@gmail.com --role=subscriber
wp user update dexter --user_pass=dexter

wp plugin install wp-mail-smtp
wp plugin install redis-cache 
wp plugin activate redis-cache

/etc/init.d/php-fpm81 restart
/etc/init.d/php-fpm81 stop

exec $@
