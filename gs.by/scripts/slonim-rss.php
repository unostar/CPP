<?php
$url = "http://gs.by:82/?tpl=slonim/feed/rss-index.tpl&token=".time();
$xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
$xml .= @file_get_contents($url);
file_put_contents("/var/www/gsby/campsite/templates/slonim/feed/index.rss", $xml);

$sections_array = array (
  10 => 'slonim',
  20 => 'belarus',
  30 => 'world',
  40 => 'region',
  50 => 'sport',
  60 => 'reviews',
  80 => 'election',
  100 => 'relax',
  105 => 'rumors',
  110 => 'health',
  120 => 'kids',
  130 => 'sms',
  140 => 'history'
);

foreach ($sections_array as $sect => $name) {
  $url = "http://gs.by:82/?tpl=slonim/feed/rss-section.tpl&section=".$sect."&section_name=".$name."&token=".time();
  $xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
  $xml .= @file_get_contents($url);
  file_put_contents("/var/www/gsby/campsite/templates/slonim/feed/".$name.".rss", $xml);
}

?>