# Set the base image to

FROM php:7-apache

RUN touch /tmp/xdebug.log
RUN chmod 777 /tmp/xdebug.log

# Xdebug stuff
RUN apt-get update && apt-get upgrade -y && apt-get autoremove -y \
    && apt-get install -y git libpq-dev curl vim telnet phpunit \
    && pecl install xdebug \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-enable xdebug
RUN pecl install mongodb && docker-php-ext-enable mongodb
COPY config/xdebug.ini /tmp
RUN cat /tmp/xdebug.ini >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN rm /tmp/xdebug.ini

# Install composer
RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/bin/composer

WORKDIR /var/www/html/