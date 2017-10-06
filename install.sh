#!/bin/bash
apt -y dist-upgrade --auto-remove --purge
apt -y install nginx
wget https://raw.githubusercontent.com/clayton943/nginx/master/nginx.conf > /etc/nginx/nginx.conf
wget https://raw.githubusercontent.com/clayton943/nginx/master/proxy.conf > /etc/nginx/conf.d/proxy.conf
fuser -k 80/tcp
service nginx restart
