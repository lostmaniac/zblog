FROM php:8.2.13-fpm-alpine

RUN apk add --no-cache libpq-dev zlib-dev libpng-dev \
    && docker-php-ext-install opcache pdo_pgsql gd \
    && docker-php-ext-enable opcache pdo_pgsql gd
