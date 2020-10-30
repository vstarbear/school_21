#!/bin/sh/

if grep -q "autoindex on" /etc/nginx/sites-available/nginx.conf
then sed -i 's/autoindex on/autoindex off/' /etc/nginx/sites-available/nginx.conf
echo "Autoindex off!"
elif grep -q "autoindex off" /etc/nginx/sites-available/nginx.conf
then sed -i 's/autoindex off/autoindex on/' /etc/nginx/sites-available/nginx.conf
echo "Autoindex on!"
fi

nginx -s reload