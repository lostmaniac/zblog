FROM php:8.2.13-fpm-alpine

RUN apk add --no-cache libpq-dev zlib-dev libpng-dev libjpeg-turbo-dev freetype-dev libwebp-dev \
    && pecl install redis \
    && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
    && docker-php-ext-install opcache pdo_pgsql gd \
    && docker-php-ext-enable opcache pdo_pgsql gd redis
