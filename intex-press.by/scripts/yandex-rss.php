<?php
$url = "http://intex-press.by:82/?tpl=1458"; // rss-yandex.tpl
$xml = '<?xml version="1.0" encoding="UTF-8" ?>';
$xml .= @file_get_contents($url);
file_put_contents("/var/www/intexpre/campsite/yandex.xml", $xml);
?>