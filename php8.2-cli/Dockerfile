FROM php:8.2.13-cli-alpine

RUN apk add --no-cache libpq-dev zlib-dev libpng-dev libjpeg-turbo-dev freetype-dev libwebp-dev autoconf \
    && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
    && docker-php-ext-configure mongodb-stable --with-ssl -zstd \
    && docker-php-ext-install opcache pdo_mysql gd mongodb-stable \
    && docker-php-ext-enable opcache pdo_mysql gd redis mongodb-stable