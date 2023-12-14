FROM php:8.2.13-fpm-alpine

RUN apk add --no-cache zlib-dev libpng-dev libjpeg-turbo-dev freetype-dev libwebp-dev autoconf libssl-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
    && pecl install redis mongodb \
    docker-php-ext-configure mongodb --with-mongodb-ssl \
    && docker-php-ext-install opcache pdo_mysql gd \
    && docker-php-ext-enable opcache pdo_mysql gd redis mongodb
