ARG OS_VERSION=3.18
FROM alpine:${OS_VERSION}

RUN apk update ; apk add vim nginx openrc php-fpm php-mysqli curl php python3 \ 
                        php-curl php-json php-phar php-mbstring php-dom; \
                        mkdir -p /run/openrc ; openrc; touch /run/openrc/softlevel;\
                        mkdir -p /var/www/wordpress 

WORKDIR /var/www/wordpress

ADD "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar" .
ADD "https://wordpress.org/latest.tar.gz" .
ADD ./tools/wp-config.php .
COPY ./tools/word.py .

RUN tar -xzf latest.tar.gz --strip-components=1; \
    rm -f latest.tar.gz; \
    chmod +x wp-cli.phar; \
    mv wp-cli.phar /usr/local/bin/wp; \
    chmod +x word.py;

ENTRYPOINT [ "python3", "word.py" ]

CMD [ "php-fpm81" , "-F"]