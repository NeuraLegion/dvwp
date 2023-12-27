FROM wordpress:php7.1-apache

COPY ./otherz /var/www/html/
COPY ./plugins /var/www/html/wp-content/plugins

# Installing and launching wordpress

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp
