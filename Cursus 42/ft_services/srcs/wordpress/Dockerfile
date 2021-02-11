FROM alpine:3.11

RUN apk update
RUN apk upgrade
RUN apk add wget
RUN apk add openssl
RUN apk add php7 php7-fpm php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session
RUN apk add openssh

RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN mv wordpress /www/
RUN rm latest.zip

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY wp-config.php /www
COPY ./start.sh .
RUN chmod u+x start.sh

EXPOSE 5050
ENTRYPOINT [ "sh", "start.sh" ]