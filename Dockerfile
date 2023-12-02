FROM php:8.2.13-fpm-alpine

RUN apk add --no-cache --virtual .build-deps libpq-dev \
    && docker-php-ext-install opcache pdo_pgsql \
    && docker-php-ext-enable opcache pdo_pgsql \
    && apk del .build-deps
