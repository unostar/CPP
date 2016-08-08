<?php
require_once('include/functions.inc.php');
$rss_file = "http://informer.gismeteo.ru/rss/26850.xml";
$rss_feed = simplexml_load_file( $rss_file );
$text = $rss_feed->channel->item->description;
$img = $rss_feed->channel->item->enclosure[0]['url'];
$link = $rss_feed->channel->item->link;
$content = '<div class="weather"><img src="'.$img.'" /><p>'.$text.'</p><a class="readmore" href="'.$link.'" target="_blank">Падрабязней</a></div>';
write($content, 'header_weather.html');
?>
