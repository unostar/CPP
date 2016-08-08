#!/bin/sh
cd /var/www/scripts

files=`ls *.php -1 -f`
for script in $files; do 
    php $script > /dev/null; 
done