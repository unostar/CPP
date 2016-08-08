<?php

$url = "http://nv-online.info/?tpl=feed/yarss.tpl&token=".time();
$data = @file_get_contents($url);

if (strlen($data) > 1024) {
	file_put_contents("/var/www/nvolya/newscoop/templates/feed/yarss.xml", $data);
}

?>