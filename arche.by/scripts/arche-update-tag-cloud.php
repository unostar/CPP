<?php
$url = "http://video.arche.by/?tpl=video/tpl/tagcloud.tpl";
$data = @file_get_contents($url);
if (strlen($data) > 512) {
	file_put_contents("/var/www/arche/campsite/templates/video/tpl/aside-tag-cloud.tpl", $data);
}
?>