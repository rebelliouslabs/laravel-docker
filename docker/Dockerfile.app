FROM php:7.1-fpm 

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

RUN apt-get update && apt-get install -y \
    libmcrypt-dev \
    mysql-client \
    && docker-php-ext-install -j$(nproc) mcrypt pdo_mysql

WORKDIR /var/www
