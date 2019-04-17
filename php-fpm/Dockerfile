FROM php:7.3-fpm-alpine3.9

MAINTAINER @afirth

# support grav in fpm
# includes git for gitsync plugin
RUN apk update \
  && apk add --no-cache --update --virtual buildDeps \
    autoconf \
    g++ \
    make \
    freetype-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    libzip-dev \
    yaml-dev \
  && apk add --no-cache \
    freetype \
    libjpeg-turbo \
    libpng \
    libzip \
    yaml \
  && docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install \
    -j$(nproc) \
    gd \
    zip \
  && pecl channel-update pecl.php.net \
  && pecl install yaml \
  && docker-php-ext-enable yaml \
  && apk del buildDeps \
  && apk add --no-cache git
