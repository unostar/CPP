<?php
$url = "http://nv-online.info/?tpl=feed/rss.tpl&token=".time();
$xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
$xml .= @file_get_contents($url);
file_put_contents("/var/www/nvolya/newscoop/templates/feed/index.rss", $xml);

$sections_array = array (
  10 => 'news',
  20 => 'politics',
  30 => 'economics',
  40 => 'society',
	50 => 'opinions',
  60 => 'world',
  80 => 'culture',
  87 => 'health',
  90 => 'sport',
  300 => 'printed'
);

foreach ($sections_array as $sect => $name) {
  $url = "http://nv-online.info/?tpl=feed/rss.tpl&section=".$sect."&section_name=".$name."&token=".time();
  $xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
  $xml .= @file_get_contents($url);
  file_put_contents("/var/www/nvolya/newscoop/templates/feed/".$name.".rss", $xml);
}

?>