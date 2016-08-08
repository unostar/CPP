<?php
$url = "http://www.intex-press.by:82/?tpl=feed/rss.tpl&token=".time();
$xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
$xml .= @file_get_contents($url);
file_put_contents("/var/www/intexpre/campsite/templates/feed/index.rss", $xml);

$sections_array = array (
  1 => 'news',
  10 => 'politics',
  20 => 'economics',
  30 => 'society',
  40 => 'incidents',
  50 => 'culture',
  60 => 'sport'
);

foreach ($sections_array as $sect => $name) {
  $url = "http://www.intex-press.by:82/?tpl=feed/rss.tpl&section=".$sect."&section_name=".$name."&token=".time();
  $xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
  $xml .= @file_get_contents($url);
  file_put_contents("/var/www/intexpre/campsite/templates/feed/".$name.".rss", $xml);
}

?>