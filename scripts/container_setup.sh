#!/bin/bash

apt-get update -y
apt-get install -y vim

echo "alias ll='ls -la'" >> /root/.bashrc
echo "alias www='cd /var/www'" >> /root/.bashrc
echo "alias html='cd /var/www/html'" >> /root/.bashrc
#alias log_php_errors='echo "PHP-FPM ERROR LOG >>" > /path/to/phpfpm/error.log; clear; tail -f /path/to/phpfpm/error.log' >> /root/.bashrc
