#!/bin/sh
cd /var/www/intexpre/scripts
files=`ls *.php -1 -f`
for script in $files; do 
    php $script;
done