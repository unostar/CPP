<?php
$url = "http://b-g.by/?tpl=tagcloud.tpl";
$data = @file_get_contents($url);
$data = str_replace(array("\r\n", "\n", "\t"), "", $data);
file_put_contents("/home/bgby/public_html/templates/tagcloud-content.tpl", $data);
?>
