#!/bin/bash
apt -y dist-upgrade --auto-remove --purge
apt -y install nginx
wget -P /etc/nginx/nginx.conf https://raw.githubusercontent.com/clayton943/nginx/master/nginx.conf
wget -P /etc/nginx/conf.d/proxy.conf https://raw.githubusercontent.com/clayton943/nginx/master/proxy.conf
fuser -k 80/tcp
service nginx restart
