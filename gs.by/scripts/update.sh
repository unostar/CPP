#!/bin/sh
cd /var/www/gsby/scripts
files=`ls *.php -1 -f`
for script in $files; do 
    php $script;
done