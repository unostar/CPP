<?php
$url = "http://b-g.by:82/?tpl=tagcloud.tpl";
$data = @file_get_contents($url);
$data = str_replace(array("\r\n", "\n", "\t"), "", $data);
if (strlen($data) > 512) {
	file_put_contents("/var/www/bgby/campsite/templates/sidebar-tagcloud-content.tpl", $data);
}

$url = "http://b-g.by:82/?tpl=tagcloud.tpl&type=full";
$data = @file_get_contents($url);
$data = str_replace(array("\r\n", "\n", "\t"), "", $data);
if (strlen($data) > 512) {
	file_put_contents("/var/www/bgby/campsite/templates/tagcloud-content.tpl", $data);
}
?>
