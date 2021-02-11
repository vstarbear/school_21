FROM alpine:3.11

RUN apk update
RUN apk upgrade
RUN apk add nginx
RUN apk add openssl
RUN apk add openssh
RUN apk add supervisor
RUN apk add openrc

COPY ./nginx.conf /etc/nginx/conf.d/deafult.conf
COPY ./supervisor.conf /etc/supervisord.conf
RUN chmod +rw /etc/supervisord.conf
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=AB/ST=CD/L=EF/O=21/CN=hwindom' -keyout /etc/ssl/certs/nginx.key -out /etc/ssl/certs/nginx.crt
RUN printf "hwindom\nhwindom\n" | adduser hwindom

RUN mkdir -p /run/nginx 
COPY ./nginx-start.sh /tmp/nginx-start.sh
RUN chmod u+x /tmp/nginx-start.sh

EXPOSE 80 443 22
ENTRYPOINT [ "sh", "/tmp/nginx-start.sh" ]