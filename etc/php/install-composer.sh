#!/usr/bin/env sh
apk add zip

wget -O /usr/local/bin/composer https://getcomposer.org/composer-stable.phar
chmod +x /usr/local/bin/composer

cd /scripts/

/usr/local/bin/composer install
