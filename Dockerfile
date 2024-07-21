FROM php:8.1-fpm

# Установка необходимых пакетов
RUN apt-get update && apt-get install -y \
    libzip-dev \
    unzip \
    zip \
    && docker-php-ext-install zip

# Установка Xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

# Копирование конфигурационных файлов
COPY php.ini /usr/local/etc/php/php.ini
COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

# Установка Nginx
RUN apt-get update && apt-get install -y nginx

# Копирование конфигурационного файла Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Настройка рабочего каталога
WORKDIR /var/www/html

# Команда для запуска
CMD ["php-fpm"]
