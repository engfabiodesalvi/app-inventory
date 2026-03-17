FROM php:8.3-fpm

# instalar dependências necessárias
RUN apt-get update && apt-get install -y \
    git \
    curl \
    unzip \
    libzip-dev \
    zip

# instalar extensões PHP necessárias para Laravel
RUN docker-php-ext-install pdo pdo_mysql zip

# instalar Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www