<?php
$url = "http://belmarket.by:82/?tpl=_json-calendar-items.tpl";
$data = @file_get_contents($url);
file_put_contents("/var/www/belmarke/campsite/templates/javascript/calendar-items.json", $data);
?>
