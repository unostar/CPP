<?php
$url = "http://rh.by/?tpl=feed/rss-index.tpl&token=".time();
$xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
$xml .= @file_get_contents($url);
file_put_contents("/var/www/village/campsite/templates/feed/index.rss", $xml);

$sections_array = array (
  10 => 'events',
  20 => 'culture',
  30 => 'bazar',
  40 => 'accident',
  50 => 'society',
  60 => 'sports',
  100 => 'feedback',
  110 => 'youth',
  120 => 'history',
  130 => 'ecology',
  140 => 'health',
  150 => 'kaleidoscope'
);

foreach ($sections_array as $sect => $name) {
  $url = "http://rh.by/?tpl=feed/rss-section.tpl&section=".$sect."&section_name=".$name."&token=".time();
  $xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
  $xml .= @file_get_contents($url);
  file_put_contents("/var/www/village/campsite/templates/feed/".$name.".rss", $xml);
}

?>