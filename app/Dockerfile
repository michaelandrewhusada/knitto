FROM php:8.1-fpm
WORKDIR /var/www/html
COPY public/ /var/www/html/
RUN chown -R www-data:www-data /var/www/html
EXPOSE 9000
CMD ["php-fpm"]