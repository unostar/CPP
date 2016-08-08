<?php
$url = "http://svabodaby.net/?tpl=feed/rss.tpl&token=".time();
$xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
$xml .= @file_get_contents($url);
file_put_contents("/var/www/svaboda/campsite/templates/feed/index.rss", $xml);

$url = "http://svabodaby.net:82/?tpl=feed/special-rss.tpl&token=".time();
$xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
$xml .= @file_get_contents($url);
file_put_contents("/var/www/svaboda/campsite/templates/feed/special.rss", $xml);

$sections_array = array (
  11 => 'elections',
  20 => 'politics',
  30 => 'economics',
  40 => 'society',
  50 => 'regions',
  51 => 'culture',
  52 => 'sport',
  60 => 'photofact',
  70 => 'views'
);

foreach ($sections_array as $sect => $name) {
  $url = "http://svabodaby.net/?tpl=feed/rss.tpl&section=".$sect."&section_name=".$name."&token=".time();
  $xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
  $xml .= @file_get_contents($url);
  file_put_contents("/var/www/svaboda/campsite/templates/feed/".$name.".rss", $xml);
}

?>