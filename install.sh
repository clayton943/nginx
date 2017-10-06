#!/bin/bash
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root..." 
    exit 1
fi

apt -y dist-upgrade --auto-remove --purge
apt -y install nginx
wget -O /etc/nginx/nginx.conf https://raw.githubusercontent.com/clayton943/nginx/master/nginx.conf
wget -O /etc/nginx/conf.d/proxy.conf https://raw.githubusercontent.com/clayton943/nginx/master/proxy.conf
fuser -k 80/tcp
service nginx restart
