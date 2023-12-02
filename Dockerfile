FROM php:8.2.13-fpm-alpine

RUN docker-php-ext-install opcache \
    && docker-php-ext-enable opcache
