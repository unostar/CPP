#!/bin/sh
cd /var/www/belmarke/scripts

files=`ls *.php -1 -f`
for script in $files; do 
    php $script;
done