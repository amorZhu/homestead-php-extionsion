#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive

cd /tmp
if [ ! -e /tmp/pkg-config-0.29.2.tar.gz ]; then
    wget https://pkg-config.freedesktop.org/releases/pkg-config-0.29.2.tar.gz
    tar -zxf pkg-config-0.29.2.tar.gz
fi;
cd /tmp/pkg-config-0.29.2
./configure --with-internal-glib
make clean > /dev/null
make >/dev/null 2>&1
sudo make install

cd -
if [ ! -e ghostpdl-9.27.tar.gz ]; then
    wget https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs927/ghostpdl-9.27.tar.gz
    tar -zxf ghostpdl-9.27.tar.gz
fi;
cd ghostpdl-9.27
./configure
make clean > /dev/null
make >/dev/null 2>&1
sudo make install

cd -
if [ ! -e freetype-2.10.0.tar.gz ]; then
    wget http://download.savannah.gnu.org/releases/freetype/freetype-2.10.0.tar.gz
    tar -zxf freetype-2.10.0.tar.gz
fi;
cd freetype-2.10.0
./configure
make clean > /dev/null
make >/dev/null 2>&1
sudo make install

cd -
sudo DEBIAN_FRONTEND=noninteractive apt install -y libperl-dev
sudo DEBIAN_FRONTEND=noninteractive apt install -y imagemagick
if [ ! -e /tmp/ImageMagick.tar.gz ]; then
    wget http://www.imagemagick.org/download/ImageMagick.tar.gz
    tar -zxf ImageMagick.tar.gz
fi;
cd /tmp/ImageMagick-7.0.8-51
./configure --with-modules --enable-shared --with-perl
make clean > /dev/null
make >/dev/null 2>&1
sudo make install

cd -
if [ ! -e /tmp/imagick-3.4.4.tgz ]; then
    wget https://pecl.php.net/get/imagick-3.4.4.tgz
    tar -zxf imagick-3.4.4.tgz
fi;
cd /tmp/imagick-3.4.4

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install php5.6-dev
phpize5.6 
./configure --with-php-config=/usr/bin/php-config5.6 > /dev/null
make clean > /dev/null
make >/dev/null 2>&1
sudo make install
sudo chmod 644 /usr/lib/php/20131226/imagick.so
sudo bash -c "echo 'extension=imagick.so' > /etc/php/5.6/mods-available/imagick.ini"
sudo rm -rf /etc/php/5.6/cli/conf.d/20-imagick.ini /etc/php/5.6/fpm/conf.d/20-imagick.ini
sudo ln -s /etc/php/5.6/mods-available/imagick.ini /etc/php/5.6/cli/conf.d/20-imagick.ini
sudo ln -s /etc/php/5.6/mods-available/imagick.ini /etc/php/5.6/fpm/conf.d/20-imagick.ini
sudo service php5.6-fpm restart

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install php7.0-dev
phpize7.0
./configure --with-php-config=/usr/bin/php-config7.0 > /dev/null
make clean > /dev/null
make >/dev/null 2>&1
sudo make install
sudo chmod 644 /usr/lib/php/20151012/imagick.so
sudo bash -c "echo 'extension=imagick.so' > /etc/php/7.0/mods-available/imagick.ini"
sudo rm -rf /etc/php/7.0/cli/conf.d/20-imagick.ini /etc/php/7.0/fpm/conf.d/20-imagick.ini
sudo ln -s /etc/php/7.0/mods-available/imagick.ini /etc/php/7.0/cli/conf.d/20-imagick.ini
sudo ln -s /etc/php/7.0/mods-available/imagick.ini /etc/php/7.0/fpm/conf.d/20-imagick.ini
sudo service php7.0-fpm restart

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install php7.1-dev
phpize7.1
./configure --with-php-config=/usr/bin/php-config7.1 > /dev/null
make clean > /dev/null
make >/dev/null 2>&1
sudo make install
sudo chmod 644 /usr/lib/php/20160303/imagick.so
sudo bash -c "echo 'extension=imagick.so' > /etc/php/7.1/mods-available/imagick.ini"
sudo rm -rf /etc/php/7.1/cli/conf.d/20-imagick.ini /etc/php/7.1/fpm/conf.d/20-imagick.ini
sudo ln -s /etc/php/7.1/mods-available/imagick.ini /etc/php/7.1/cli/conf.d/20-imagick.ini
sudo ln -s /etc/php/7.1/mods-available/imagick.ini /etc/php/7.1/fpm/conf.d/20-imagick.ini
sudo service php7.1-fpm restart

phpize7.2
./configure --with-php-config=/usr/bin/php-config7.2 > /dev/null
make clean > /dev/null
make >/dev/null 2>&1
sudo make install
sudo chmod 644 /usr/lib/php/20160303/imagick.so
sudo bash -c "echo 'extension=imagick.so' > /etc/php/7.2/mods-available/imagick.ini"
sudo rm -rf /etc/php/7.2/cli/conf.d/20-imagick.ini /etc/php/7.2/fpm/conf.d/20-imagick.ini
sudo ln -s /etc/php/7.2/mods-available/imagick.ini /etc/php/7.2/cli/conf.d/20-imagick.ini
sudo ln -s /etc/php/7.2/mods-available/imagick.ini /etc/php/7.2/fpm/conf.d/20-imagick.ini
sudo service php7.2-fpm restart

phpize7.3
./configure --with-php-config=/usr/bin/php-config7.3 > /dev/null
make clean > /dev/null
make >/dev/null 2>&1
sudo make install
sudo chmod 644 /usr/lib/php/20160303/imagick.so
sudo bash -c "echo 'extension=imagick.so' > /etc/php/7.3/mods-available/imagick.ini"
sudo rm -rf /etc/php/7.3/cli/conf.d/20-imagick.ini /etc/php/7.3/fpm/conf.d/20-imagick.ini
sudo ln -s /etc/php/7.3/mods-available/imagick.ini /etc/php/7.3/cli/conf.d/20-imagick.ini
sudo ln -s /etc/php/7.3/mods-available/imagick.ini /etc/php/7.3/fpm/conf.d/20-imagick.ini
sudo service php7.3-fpm restart