#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive

PHP_EXTENSION_NAME="swoole"
PHP_EXTENSION_VERSION="4.4.1"
PHP_EXTENSION_FILE_TYPE=".tgz"

SYSTEM="linux"

# PHP Version: PHP 7.1.0 or newer
# PEAR Package: PEAR 1.4.0 or newer

if [ ! -e swoole-4.4.1.tgz ]; then
    wget https://pecl.php.net/get/swoole-4.4.1.tgz
    tar -zxf swoole-4.4.1.tgz
fi;

cd swoole-4.4.1

# sudo DEBIAN_FRONTEND=noninteractive apt-get -y install php5.6-dev
# phpize5.6 
# ./configure --with-php-config=/usr/bin/php-config5.6 > /dev/null
# make clean > /dev/null
# make >/dev/null 2>&1
# sudo make install
# sudo chmod 644 /usr/lib/php/20131226/swoole.so
# sudo bash -c "echo 'extension=swoole.so' > /etc/php/5.6/mods-available/swoole.ini"
# sudo rm -rf /etc/php/5.6/cli/conf.d/20-swoole.ini /etc/php/5.6/fpm/conf.d/20-swoole.ini
# sudo ln -s /etc/php/5.6/mods-available/swoole.ini /etc/php/5.6/cli/conf.d/20-swoole.ini
# sudo ln -s /etc/php/5.6/mods-available/swoole.ini /etc/php/5.6/fpm/conf.d/20-swoole.ini
# sudo service php5.6-fpm restart

# sudo DEBIAN_FRONTEND=noninteractive apt-get -y install php7.0-dev
# phpize7.0
# ./configure --with-php-config=/usr/bin/php-config7.0 > /dev/null
# make clean > /dev/null
# make >/dev/null 2>&1
# sudo make install
# sudo chmod 644 /usr/lib/php/20151012/swoole.so
# sudo bash -c "echo 'extension=swoole.so' > /etc/php/7.0/mods-available/swoole.ini"
# sudo rm -rf /etc/php/7.0/cli/conf.d/20-swoole.ini /etc/php/7.0/fpm/conf.d/20-swoole.ini
# sudo ln -s /etc/php/7.0/mods-available/swoole.ini /etc/php/7.0/cli/conf.d/20-swoole.ini
# sudo ln -s /etc/php/7.0/mods-available/swoole.ini /etc/php/7.0/fpm/conf.d/20-swoole.ini
# sudo service php7.0-fpm restart

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install php7.1-dev
phpize7.1
./configure --with-php-config=/usr/bin/php-config7.1 > /dev/null
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
./configure --with-php-config=/usr/bin/php-config7.2 > /dev/null
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
./configure --with-php-config=/usr/bin/php-config7.3 > /dev/null
make clean > /dev/null
make >/dev/null 2>&1
sudo make install
sudo chmod 644 /usr/lib/php/20160303/swoole.so
sudo bash -c "echo 'extension=swoole.so' > /etc/php/7.3/mods-available/swoole.ini"
sudo rm -rf /etc/php/7.3/cli/conf.d/20-swoole.ini /etc/php/7.3/fpm/conf.d/20-swoole.ini
sudo ln -s /etc/php/7.3/mods-available/swoole.ini /etc/php/7.3/cli/conf.d/20-swoole.ini
sudo ln -s /etc/php/7.3/mods-available/swoole.ini /etc/php/7.3/fpm/conf.d/20-swoole.ini
sudo service php7.3-fpm restart
