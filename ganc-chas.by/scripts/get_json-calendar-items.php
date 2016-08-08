<?php
$url = "http://ganc-chas.by/?tpl=_json-calendar-items.tpl&token=".time();
$data = @file_get_contents($url);
file_put_contents("/home/gancchas/www/templates/js/calendar-items.json", $data);

$url = "http://ganc-chas.by/?tpl=_json-pdf-items.tpl&token=".time();
$data = @file_get_contents($url);
file_put_contents("/home/gancchas/www/templates/js/pdf-items.json", $data);
?>
