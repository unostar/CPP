#!/bin/sh
cd ~/scripts
unlink error_log > /dev/null 2>&1
files=`ls *.php -1 -f`
for script in $files; do 
    php $script;
done
