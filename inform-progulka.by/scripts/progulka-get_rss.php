<?php
$url = "http://inform-progulka.by/?tpl=223";
$xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
$xml .= @file_get_contents($url);
file_put_contents("/home/informpr/www/templates/feed/index.rss", $xml);

$sections_array = array (
10 => 'daily_news',
20 => 'politics',
30 => 'society',
40 => 'business',
50 => 'sports',
60 => 'travels',
70 => 'accident',
80 => 'lawyer',
90 => 'health',
100 => 'family',
110 => 'culture',
120 => 'creative_work',
130 => 'ecologics',
140 => 'history'
);
foreach ($sections_array as $sect => $name) {
$url ="http://progulka.omniton.net/?tpl=224&section=".$sect;
$xml ="<?xml version=\"1.0\" encoding=\"utf-8\"?>";
$xml .= @file_get_contents($url);
file_put_contents("/home/informpr/www/templates/feed/".$name.".rss", $xml);
}
?>
