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
ENV APP_DEBUG false
ENV DB_CONNECTION mysql
ENV DB_HOST aws.connect.psdb.cloud
ENV DB_PORT 3306
ENV DB_DATABASE school
ENV DB_USERNAME o9u0hvyh7u8mei7iweb8
ENV DB_PASSWORD pscale_pw_eqSRJoAC89WtKBBkvF5c5bR5JNJE0VWSbvP0jJwH7c9
ENV MYSQL_ATTR_SSL_CA cacert-2023-08-22.pem

# Allow composer to run as root
ENV COMPOSER_ALLOW_SUPERUSER 1

CMD ["/start.sh"]