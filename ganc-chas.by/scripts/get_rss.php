<?php
$url = "http://ganc-chas.by/?tpl=_rss-index.tpl&token=".time();
$xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
$xml .= @file_get_contents($url);
file_put_contents("/home/gancchas/www/templates/feed/index.rss", $xml);

$sections_array = array (
  10 => 'news',
  20 => 'life',
  30 => 'society',
  40 => 'world',
  50 => 'sport',
  60 => 'accident',
  100 => 'person',
  110 => 'story',
  120 => 'history'
);
foreach ($sections_array as $sect => $name) {
  $url = "http://ganc-chas.by/?tpl=_rss-section.tpl&section=".$sect."&token=".time();
  $xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
  $xml .= @file_get_contents($url);
  file_put_contents("/home/gancchas/www/templates/feed/".$name.".rss", $xml);
}

?>