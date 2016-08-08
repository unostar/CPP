<?php
$url = "http://b-g.by:82/?tpl=feed/_rss.tpl&token=".time();
$xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
$xml .= @file_get_contents($url);
file_put_contents("/var/www/bgby/campsite/templates/feed/index.rss", $xml);

$sections_array = array (
  10 => 'news',
  20 => 'economics',
  25 => 'projector',
  30 => 'society',
  40 => 'incidents',
  50 => 'culture',
  60 => 'sport',
  70 => 'health'
);

foreach ($sections_array as $sect => $name) {
  $url = "http://b-g.by:82/?tpl=feed/_rss.tpl&section=".$sect."&section_name=".$name."&token=".time();
  $xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
  $xml .= @file_get_contents($url);
  file_put_contents("/var/www/bgby/campsite/templates/feed/".$name.".rss", $xml);
}

?>