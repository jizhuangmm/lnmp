#!/usr/bin/env bash

case $php_version in
     5.3.29)
        mkdir -p $install_dir/server/php/lib/php/extensions/no-debug-non-zts-20090626
        if [ ! -f yaf-3.0.4.tgz ];then
             wget http://pecl.php.net/get/yaf-3.0.4.tgz
        fi
        tar zxvf yaf-3.0.4.tgz
        cd yaf-3.0.4
        $install_dir/server/php/bin/phpize
        ./configure --with-php-config=$install_dir/server/php/bin/php-config
        make
        make install
        cd ..
        echo "[yaf]" >> $install_dir/server/php/etc/php.ini
        echo "extension=yaf.so" >> $install_dir/server/php/etc/php.ini
        echo "yaf.use_namespace=1" >> $install_dir/server/php/etc/php.ini
        echo "yaf.environ=develop" >> $install_dir/server/php/etc/php.ini
        ;;
     5.6.30)
        mkdir -p $install_dir/server/php/lib/php/extensions/no-debug-non-zts-20090626
        if [ ! -f yaf-3.0.4.tgz ];then
             wget http://pecl.php.net/get/yaf-3.0.4.tgz
        fi
        tar zxvf yaf-3.0.4.tgz
        cd yaf-3.0.4
        $install_dir/server/php/bin/phpize
        ./configure --with-php-config=$install_dir/server/php/bin/php-config
        make
        make install
        cd ..
        echo "[yaf]" >> $install_dir/server/php/etc/php.ini
        echo "extension=yaf.so" >> $install_dir/server/php/etc/php.ini
        echo "yaf.use_namespace=1" >> $install_dir/server/php/etc/php.ini
        echo "yaf.environ=develop" >> $install_dir/server/php/etc/php.ini
        ;;
     7.1.3)
        mkdir -p $install_dir/server/php/lib/php/extensions/no-debug-non-zts-20090626
        if [ ! -f yaf-3.0.4.tgz ];then
             wget http://pecl.php.net/get/yaf-3.0.4.tgz
        fi
        tar zxvf yaf-3.0.4.tgz
        cd yaf-3.0.4
        $install_dir/server/php/bin/phpize
        ./configure --with-php-config=$install_dir/server/php/bin/php-config
        make
        make install
        cd ..
        echo "[yaf]" >> $install_dir/server/php/etc/php.ini
        echo "extension=yaf.so" >> $install_dir/server/php/etc/php.ini
        echo "yaf.use_namespace=1" >> $install_dir/server/php/etc/php.ini
        echo "yaf.environ=develop" >> $install_dir/server/php/etc/php.ini
        ;;
esac
