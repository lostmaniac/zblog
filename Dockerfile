FROM php:8.2.13-fpm-alpine

RUN apk add --no-cache libpq-dev zlib-dev libpng-dev libjpeg-turbo-dev freetype-dev \
    && docker-php-ext-install opcache pdo_pgsql gd \
    && docker-php-ext-enable opcache pdo_pgsql gd
