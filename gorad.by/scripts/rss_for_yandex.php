<?php

$url = "http://gorad.by/?tpl=_rss-yandex.tpl&token=".time();
$data = @file_get_contents($url);

if (strlen($data) > 1024) {
	file_put_contents("/home/goradby/public_html/templates/feed/rss-yandex.xml", $data);
}

?>