<?php
$url = "http://inform-progulka.by/?tpl=left-ourpubs.tpl&token=".time();
$data = @file_get_contents($url);
file_put_contents("/home/informpr/www/templates/left-scroll.tpl", $data);
?>
