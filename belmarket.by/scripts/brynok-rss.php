<?php
$url = "http://belmarket.by:82/?tpl=feed/rss.tpl&token=".time();
$xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
$xml .= @file_get_contents($url);
file_put_contents("/home/belmarke/public_html/templates/feed/index.rss", $xml);

$sections_array = array (1,2,10,15,16,20,25,30,35,50,55,60,65,70,75,80,85,100,110,115,120,125,127,130,140,150,160,170,171,180,190,200,230);

foreach ($sections_array as $sect) {
  $url = "http://belmarket.by:82/?tpl=feed/rss.tpl&section=".$sect."&token=".time();
  $xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
  $xml .= @file_get_contents($url);
  file_put_contents("/var/www/belmarke/campsite/templates/feed/".$sect.".rss", $xml);
}

?>