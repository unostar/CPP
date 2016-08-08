<?php
$url = "http://bk-brest.by/?tpl=_rss.tpl&token=".time();
$xml = '<?xml version="1.0" encoding="utf-8"?>';
$xml .= @file_get_contents($url);
file_put_contents("/home/bkbrestb/www/templates/feed/index.rss", $xml);

$url = "http://bk-brest.by/?tpl=_newsrss.tpl&token=".time();
$xml = '<?xml version="1.0" encoding="utf-8"?>';
$xml .= @file_get_contents($url);
file_put_contents("/home/bkbrestb/www/templates/feed/news.rss", $xml);

$sections_array = array (
  10 => 'politics',
  20 => 'economics',
  30 => 'society',
  40 => 'crime',
  50 => 'culture',
  60 => 'education',
  70 => 'history',
  80 => 'health',
  90 => 'sport'
);

foreach ($sections_array as $sect => $name) {
  $url = "http://bk-brest.by/?tpl=_sectionrss.tpl&section=".$sect."&section_name=".$name."&token=".time();
  $xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
  $xml .= @file_get_contents($url);
  file_put_contents("/home/bkbrestb/www/templates/feed/".$name.".rss", $xml);
}

?>