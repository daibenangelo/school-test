FROM richarvey/nginx-php-fpm:3.1.4

COPY . .

# Image config
ENV SKIP_COMPOSER 1
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1

# Laravel config
ENV APP_ENV production
ENV APP_KEY base64:Lzc2kXf8bQidRpjtuzC7VcJF/nhVlVZxiCa3X/LhDIc=
ENV APP_DEBUG false
ENV DB_CONNECTION pgsql
ENV DB_HOST dpg-clm1hfkjtl8s73er8a3g-a
ENV DB_PORT 5432
ENV DB_DATABASE school_otpp
ENV DB_USERNAME root
ENV DB_PASSWORD 6P7ZfHwLDsC7gVLruaZDmjHMQZ7HtORH
ENV MYSQL_ATTR_SSL_CA cacert-2023-08-22.pem

# Allow composer to run as root
ENV COMPOSER_ALLOW_SUPERUSER 1

CMD ["/start.sh"]