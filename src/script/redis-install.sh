#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive

PHP_EXTENSION_NAME="redis"
PHP_EXTENSION_VERSION="5.0.0"

SYSTEM="linux"

if [ ! -e redis-5.0.0.tgz ]; then
    wget https://pecl.php.net/get/redis-5.0.0.tgz
    tar -zxf redis-5.0.0.tgz
fi;

cd redis-5.0.0

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install php7.0-dev
phpize7.0
./configure --with-php-config=/usr/bin/php-config7.0 > /dev/null
make clean > /dev/null
make >/dev/null 2>&1
sudo make install
sudo chmod 644 /usr/lib/php/20151012/redis.so
sudo bash -c "echo 'extension=redis.so' > /etc/php/7.0/mods-available/redis.ini"
sudo rm -rf /etc/php/7.0/cli/conf.d/20-redis.ini /etc/php/7.0/fpm/conf.d/20-redis.ini
sudo ln -s /etc/php/7.0/mods-available/redis.ini /etc/php/7.0/cli/conf.d/20-redis.ini
sudo ln -s /etc/php/7.0/mods-available/redis.ini /etc/php/7.0/fpm/conf.d/20-redis.ini
sudo service php7.0-fpm restart

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install php7.1-dev
phpize7.1
./configure --with-php-config=/usr/bin/php-config7.1 > /dev/null
make clean > /dev/null
make >/dev/null 2>&1
sudo make install
sudo chmod 644 /usr/lib/php/20160303/redis.so
sudo bash -c "echo 'extension=redis.so' > /etc/php/7.1/mods-available/redis.ini"
sudo rm -rf /etc/php/7.1/cli/conf.d/20-redis.ini /etc/php/7.1/fpm/conf.d/20-redis.ini
sudo ln -s /etc/php/7.1/mods-available/redis.ini /etc/php/7.1/cli/conf.d/20-redis.ini
sudo ln -s /etc/php/7.1/mods-available/redis.ini /etc/php/7.1/fpm/conf.d/20-redis.ini
sudo service php7.1-fpm restart

phpize7.2
./configure --with-php-config=/usr/bin/php-config7.2 > /dev/null
make clean > /dev/null
make >/dev/null 2>&1
sudo make install
sudo chmod 644 /usr/lib/php/20160303/redis.so
sudo bash -c "echo 'extension=redis.so' > /etc/php/7.2/mods-available/redis.ini"
sudo rm -rf /etc/php/7.2/cli/conf.d/20-redis.ini /etc/php/7.2/fpm/conf.d/20-redis.ini
sudo ln -s /etc/php/7.2/mods-available/redis.ini /etc/php/7.2/cli/conf.d/20-redis.ini
sudo ln -s /etc/php/7.2/mods-available/redis.ini /etc/php/7.2/fpm/conf.d/20-redis.ini
sudo service php7.2-fpm restart

phpize7.3
./configure --with-php-config=/usr/bin/php-config7.3 > /dev/null
make clean > /dev/null
make >/dev/null 2>&1
sudo make install
sudo chmod 644 /usr/lib/php/20160303/redis.so
sudo bash -c "echo 'extension=redis.so' > /etc/php/7.3/mods-available/redis.ini"
sudo rm -rf /etc/php/7.3/cli/conf.d/20-redis.ini /etc/php/7.3/fpm/conf.d/20-redis.ini
sudo ln -s /etc/php/7.3/mods-available/redis.ini /etc/php/7.3/cli/conf.d/20-redis.ini
sudo ln -s /etc/php/7.3/mods-available/redis.ini /etc/php/7.3/fpm/conf.d/20-redis.ini
sudo service php7.3-fpm restart
