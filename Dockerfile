FROM php:8.2.13-fpm-alpine

RUN docker-php-ext-install opcache pdo_pgsql \
    && docker-php-ext-enable opcache pdo_pgsql
