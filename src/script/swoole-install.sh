#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive

PHP_EXTENSION_NAME="swoole"
PHP_EXTENSION_VERSION="4.4.3"
PHP_EXTENSION_FILE_TYPE=".tgz"

SYSTEM="linux"

# PHP Version: PHP 7.1.0 or newer
# PEAR Package: PEAR 1.4.0 or newer

if [ ! -e swoole-4.4.3.tgz ]; then
    wget https://pecl.php.net/get/swoole-4.4.3.tgz
    tar -zxf swoole-4.4.3.tgz
fi;

cd swoole-4.4.3

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install php7.1-dev
phpize7.1
./configure --with-php-config=/usr/bin/php-config7.1 --enable-openssl > /dev/null
make clean > /dev/null
make >/dev/null 2>&1
sudo make install
sudo chmod 644 /usr/lib/php/20160303/swoole.so
sudo bash -c "echo 'extension=swoole.so' > /etc/php/7.1/mods-available/swoole.ini"
sudo rm -rf /etc/php/7.1/cli/conf.d/20-swoole.ini /etc/php/7.1/fpm/conf.d/20-swoole.ini
sudo ln -s /etc/php/7.1/mods-available/swoole.ini /etc/php/7.1/cli/conf.d/20-swoole.ini
sudo ln -s /etc/php/7.1/mods-available/swoole.ini /etc/php/7.1/fpm/conf.d/20-swoole.ini
sudo service php7.1-fpm restart

phpize7.2
./configure --with-php-config=/usr/bin/php-config7.2 --enable-openssl > /dev/null
make clean > /dev/null
make >/dev/null 2>&1
sudo make install
sudo chmod 644 /usr/lib/php/20160303/swoole.so
sudo bash -c "echo 'extension=swoole.so' > /etc/php/7.2/mods-available/swoole.ini"
sudo rm -rf /etc/php/7.2/cli/conf.d/20-swoole.ini /etc/php/7.2/fpm/conf.d/20-swoole.ini
sudo ln -s /etc/php/7.2/mods-available/swoole.ini /etc/php/7.2/cli/conf.d/20-swoole.ini
sudo ln -s /etc/php/7.2/mods-available/swoole.ini /etc/php/7.2/fpm/conf.d/20-swoole.ini
sudo service php7.2-fpm restart

phpize7.3
./configure --with-php-config=/usr/bin/php-config7.3 --enable-openssl > /dev/null
make clean > /dev/null
make >/dev/null 2>&1
sudo make install
sudo chmod 644 /usr/lib/php/20160303/swoole.so
sudo bash -c "echo 'extension=swoole.so' > /etc/php/7.3/mods-available/swoole.ini"
sudo rm -rf /etc/php/7.3/cli/conf.d/20-swoole.ini /etc/php/7.3/fpm/conf.d/20-swoole.ini
sudo ln -s /etc/php/7.3/mods-available/swoole.ini /etc/php/7.3/cli/conf.d/20-swoole.ini
sudo ln -s /etc/php/7.3/mods-available/swoole.ini /etc/php/7.3/fpm/conf.d/20-swoole.ini
sudo service php7.3-fpm restart
