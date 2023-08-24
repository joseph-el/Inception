ARG  OS_VERSION=3.17
FROM alpine:${OS_VERSION}

RUN apk update ; apk add vim nginx openrc php-fpm php-mysqli curl php mysql-client unzip \ 
                        php-curl php-json php-phar php-mbstring php-dom; \
                        openrc 2> /dev/null; touch /run/openrc/softlevel; \
                        mkdir -p /var/www/wordpress

WORKDIR /var/www/wordpress

ADD "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar" .
ADD ./tools/wordpress-setup.sh /etc
ADD ./tools/conf/www.conf /etc/php81/php-fpm.d
ADD ./tools/conf/wp-config.php .
ADD ./tools/conf/object-cache.php /wordpress/wp-content/
RUN chmod +x wp-cli.phar; \
    mv wp-cli.phar /usr/local/bin/wp; \
    wp core download;
    
ENTRYPOINT [ "sh", "/etc/wordpress-setup.sh" ]

CMD [ "php-fpm81", "-F" ]