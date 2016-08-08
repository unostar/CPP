<?php
$url = "http://t-styl.info/?tpl=newspaper/tagcloud.tpl";
$data = @file_get_contents($url);
if (strlen($data) > 512) {
	file_put_contents("/var/www/tstyl/campsite/templates/newspaper/tagcloud-content.tpl", $data);
}
?>