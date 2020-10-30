#!/bin/sh
service php7.3-fpm start
service mysql start
service nginx start
bash 

while true 
do
    sleep 1
done 