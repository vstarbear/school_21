FROM alpine:3.11

RUN apk update
RUN apk upgrade
RUN apk add mysql mysql-client
RUN apk add openrc
VOLUME [ "/var/lib/mysql" ]

COPY ./sql_config.sql /etc/
COPY ./my.cnf /etc/
COPY ./wordpress.sql /etc/
COPY ./start.sh .

RUN chmod u+x start.sh

EXPOSE 3306
ENTRYPOINT [ "sh", "start.sh" ]