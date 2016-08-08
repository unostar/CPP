<?php
$url = "http://b-g.by:82/?tpl=641&token=".time(); // rss-yandex.tpl
$xml = '<?xml version="1.0" encoding="UTF-8" ?>';
$xml .= @file_get_contents($url);
file_put_contents("/var/www/bgby/campsite/yandex.xml", $xml);
?>