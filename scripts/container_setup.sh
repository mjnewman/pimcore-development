#!/bin/bash

apt-get update -y
apt-get install -y vim

echo "php_admin_value[error_log] = /var/www/html/var/log/php-error.log" >> /usr/local/etc/php-fpm.d/www.conf

echo "alias ll='ls -la'" >> /root/.bashrc
echo "alias www='cd /var/www'" >> /root/.bashrc
echo "alias html='cd /var/www/html'" >> /root/.bashrc
echo "alias log_php_errors='echo \"PHP-FPM ERROR LOG >>\" > /var/www/html/var/log/php-error.log; clear; tail -f /var/www/html/var/log/php-error.log'" >> /root/.bashrc
echo "alias log_pimcore_errors='echo \"PIMCORE ERROR LOG >>\" > /var/www/html/var/log/dev.log; clear; tail -f /var/www/html/var/log/dev.log'" >> /root/.bashrc