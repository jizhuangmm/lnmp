#!/usr/bin/env bash

case $php_version in
     5.3.29)
        mkdir -p $install_dir/server/php/lib/php/extensions/no-debug-non-zts-20090626
        if [ ! -f ZendGuardLoader-php-5.3-linux-glibc23-x86_64.tar.gz ];then
             wget http://pecl.php.net/get/yaf-3.0.4.tgz
        fi
        tar zxvf yaf-3.0.4.tgz
        cd yaf-3.0.4.tgz
        $install_dir/server/php/bin/phpize
        ./configure --with-php-config=$install_dir/server/php/bin/php-config
        make
        make install
        cd ..
        echo "extension=redis.so" >> $install_dir/server/php/etc/php.ini
        ;;
     5.6.30)
        mkdir -p $install_dir/server/php/lib/php/extensions/no-debug-non-zts-20090626
        if [ ! -f ZendGuardLoader-php-5.3-linux-glibc23-x86_64.tar.gz ];then
             wget http://pecl.php.net/get/yaf-3.0.4.tgz
        fi
        tar zxvf yaf-3.0.4.tgz
        cd yaf-3.0.4.tgz
        $install_dir/server/php/bin/phpize
        ./configure --with-php-config=$install_dir/server/php/bin/php-config
        make
        make install
        cd ..
        echo "extension=redis.so" >> $install_dir/server/php/etc/php.ini
        ;;
     7.1.3)
        mkdir -p $install_dir/server/php/lib/php/extensions/no-debug-non-zts-20090626
        if [ ! -f ZendGuardLoader-php-5.3-linux-glibc23-x86_64.tar.gz ];then
             wget http://pecl.php.net/get/yaf-3.0.4.tgz
        fi
        tar zxvf yaf-3.0.4.tgz
        cd yaf-3.0.4.tgz
        $install_dir/server/php/bin/phpize
        ./configure --with-php-config=$install_dir/server/php/bin/php-config
        make
        make install
        cd ..
        echo "extension=redis.so" >> $install_dir/server/php/etc/php.ini
        ;;
esac
