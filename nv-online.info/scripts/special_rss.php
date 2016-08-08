<?php
$url = "http://nv-online.info/?tpl=feed/special_rss.tpl&token=".time();
$xml = '<?xml version="1.0" encoding="utf-8" ?>';
$xml .= @file_get_contents($url);
file_put_contents("/var/www/nvolya/newscoop/srss.xml", $xml);
?>