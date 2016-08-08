<?php
$url = "http://belmarket.by:82/?tpl=feed/yandex.tpl&token=".time(); // rss-yandex.tpl
$xml = '<?xml version="1.0" encoding="UTF-8" ?>';
$xml .= @file_get_contents($url);
file_put_contents("/var/www/belmarke/campsite/templates/feed/yandex.xml", $xml);
?>