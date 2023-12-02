FROM php:8.2.13-fpm-bookworm

RUN apt update \
    && apt install -y libpq-dev \
    && docker-php-ext-install opcache pdo_pgsql \
    && docker-php-ext-enable opcache pdo_pgsql \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*
