#!/bin/sh
cd /var/www/bgby/scripts

files=`ls *.php -1 -f`
for script in $files; do 
    php $script;
done