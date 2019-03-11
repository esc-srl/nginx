#!/usr/bin/env sh

mv -f /resources/vhost.conf /etc/nginx/conf.d/default.conf

sed -i -e "s/PHPFPM_HOST/$PHPFPM_HOST/g" /etc/nginx/conf.d/default.conf
sed -i -e "s/PHPFPM_PORT/$PHPFPM_PORT/g" /etc/nginx/conf.d/default.conf
sed -i -e "s/CLIENT_MAX_BODY_SIZE/$CLIENT_MAX_BODY_SIZE/g" /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'