FROM php:8.2.13-fpm-alpine

RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install opcache \
    && docker-php-ext-enable opcache \
    && apk del $PHPIZE_DEPS
