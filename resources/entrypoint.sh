#!/usr/bin/env sh

mv -f /resources/vhost.conf /etc/nginx/conf.d/default.conf

sed -i -e "s/PHPFPM_HOST/$PHPFPM_HOST/g" /etc/nginx/conf.d/default.conf
sed -i -e "s/PHPFPM_PORT/$PHPFPM_PORT/g" /etc/nginx/conf.d/default.conf
sed -i -e "s/SERVER_NAME/$VIRTUAL_HOST/" /etc/nginx/conf.d/default.conf
sed -i -e "s/FASTCGI_APP_ENV/$FASTCGI_APP_ENV/g" /etc/nginx/conf.d/default.conf
sed -i -e "s/CLIENT_MAX_BODY_SIZE/$CLIENT_MAX_BODY_SIZE/g" /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
