FROM debian:buster


# UTILS
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install nginx
RUN apt-get -y install wget
RUN apt-get -y install default-mysql-server
RUN apt-get -y install php php-mysql php-fpm php-cli php-mbstring php-zip php-gd

# COPY
COPY srcs/ ./root/

# PHPMyAdmin
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz
RUN tar xvf phpMyAdmin-5.0.2-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.2-all-languages /usr/share/phpmyadmin
RUN mv /root/config.inc.php /usr/share/phpmyadmin
RUN rm -rf phpMyAdmin-5.0.2-all-languages.tar.gz

# WP Conf
RUN wget https://wordpress.org/latest.tar.gz
RUN tar xzvf latest.tar.gz
RUN mv wordpress/ /var/www
RUN cp /root/wp-config.php /var/www/wordpress/
RUN rm -rf latest.tar.gz


# NGINX
RUN cp /root/nginx.conf /etc/nginx/sites-available/
RUN ln -s /usr/share/phpmyadmin /var/www
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/
RUN rm /etc/nginx/sites-enabled/default


# SSL conf
RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=Moscow/O=hwindom/OU=hwindom/CN=hwindom" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

# init SQL
RUN bash root/database.sh

RUN chown -R www-data /var/www/*
RUN chmod -R 755 /var/www/*

RUN mv /root/run.sh /
RUN mv /root/autoindex.sh /

# PORTS
EXPOSE 80 443

# RUN SERVER
CMD ["/bin/bash", "run.sh"]
