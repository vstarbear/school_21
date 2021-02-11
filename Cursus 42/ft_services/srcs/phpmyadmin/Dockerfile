FROM alpine:3.11

RUN apk update
RUN apk upgrade
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli \
 openssh php7-zlib php7-curl php7-mbstring php7-json php7-session \
 openrc nginx php-fpm openssl wget supervisor

WORKDIR /www/
RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
RUN tar -xf phpMyAdmin-5.0.2-all-languages.tar.gz
RUN rm -rf phpMyAdmin-5.0.2-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.2-all-languages phpmyadmin

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=AB/ST=CD/L=EF/O=21/CN=hwindom' -keyout /etc/ssl/certs/nginx.key -out /etc/ssl/certs/nginx.crt
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY config.inc.php phpmyadmin/config.inc.php
RUN chmod 660 phpmyadmin/config.inc.php
COPY ./start.sh .
RUN chmod u+x start.sh

EXPOSE 5000
CMD [ "sh", "/www/start.sh" ]