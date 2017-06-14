#!/usr/bin/env bash

case $php_version in
     5.3.29)
        mkdir -p $install_dir/server/php/lib/php/extensions/no-debug-non-zts-20090626
        if [ ! -f SeasLog-1.6.9.tgz ];then
             wget http://pecl.php.net/get/SeasLog-1.6.9.tgz
        fi
        tar zxvf SeasLog-1.6.9.tgz
        cd SeasLog-1.6.9
        $install_dir/server/php/bin/phpize
        ./configure --with-php-config=$install_dir/server/php/bin/php-config
        make
        make install
        cd ..
        echo "extension=seaslog.so" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.default_basepath = /data/logs/seaslog" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.default_logger = wwwroot" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.disting_type = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.disting_by_hour = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.use_buffer = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.buffer_size = 100" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.level = 0" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.trace_error = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.trace_exception = 0" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.default_datetime_format = "Y:m:d H:i:s"" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.appender = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.level = 0" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.remote_host = 127.0.0.1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.remote_port = 514" >> $install_dir/server/php/etc/php.ini
        ;;
     5.6.30)
        mkdir -p $install_dir/server/php/lib/php/extensions/no-debug-non-zts-20090626
        if [ ! -f SeasLog-1.6.9.tgz ];then
             wget http://pecl.php.net/get/SeasLog-1.6.9.tgz
        fi
        tar zxvf SeasLog-1.6.9.tgz
        cd SeasLog-1.6.9
        $install_dir/server/php/bin/phpize
        ./configure --with-php-config=$install_dir/server/php/bin/php-config
        make
        make install
        cd ..
        echo "extension=seaslog.so" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.default_basepath = /data/logs/seaslog" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.default_logger = wwwroot" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.disting_type = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.disting_by_hour = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.use_buffer = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.buffer_size = 100" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.level = 0" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.trace_error = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.trace_exception = 0" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.default_datetime_format = "Y:m:d H:i:s"" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.appender = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.level = 0" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.remote_host = 127.0.0.1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.remote_port = 514" >> $install_dir/server/php/etc/php.ini
        ;;
     7.1.3)
        mkdir -p $install_dir/server/php/lib/php/extensions/no-debug-non-zts-20090626
        if [ ! -f SeasLog-1.6.9.tgz ];then
             wget http://pecl.php.net/get/SeasLog-1.6.9.tgz
        fi
        tar zxvf SeasLog-1.6.9.tgz
        cd SeasLog-1.6.9
        $install_dir/server/php/bin/phpize
        ./configure --with-php-config=$install_dir/server/php/bin/php-config
        make
        make install
        cd ..
        echo "extension=seaslog.so" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.default_basepath = /data/logs/seaslog" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.default_logger = wwwroot" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.disting_type = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.disting_by_hour = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.use_buffer = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.buffer_size = 100" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.level = 0" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.trace_error = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.trace_exception = 0" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.default_datetime_format = "Y:m:d H:i:s"" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.appender = 1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.level = 0" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.remote_host = 127.0.0.1" >> $install_dir/server/php/etc/php.ini &&  \
        echo "seaslog.remote_port = 514" >> $install_dir/server/php/etc/php.ini
        ;;
esac
