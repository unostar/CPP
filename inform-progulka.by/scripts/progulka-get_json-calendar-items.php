<?php
$url = "http://inform-progulka.by/?tpl=_json-calendar-items.tpl&token=".time();
$data = @file_get_contents($url);
file_put_contents("/home/informpr/www/templates/js/calendar-items.json", $data);
?>
