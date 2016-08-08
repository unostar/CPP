<?php
$url = "http://gorad.by/?tpl=_rss-index.tpl&token=".time();
$xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
$xml .= @file_get_contents($url);
file_put_contents("/home/goradby/public_html/templates/feed/index.rss", $xml);

$sections_array = array (
  10 => 'world',
  20 => 'town',
  30 => 'finance',
  40 => 'society',
  50 => 'accident',
  60 => 'leisure',
  70 => 'health',
  80 => 'sport',
  110 => 'interest',
  135 => 'itkava',
  150 => 'bigpicture'
);
foreach ($sections_array as $sect => $name) {
  $url = "http://gorad.by/?tpl=_rss-section.tpl&section=".$sect."&token=".time();
  $xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>";
  $xml .= @file_get_contents($url);
  file_put_contents("/home/goradby/public_html/templates/feed/".$name.".rss", $xml);
}


file_put_contents("/home/goradby/public_html/templates/archive-content-list.tpl", @file_get_contents("http://gorad.by/?tpl=_archive-content-list.tpl&token=".time()));

?>
