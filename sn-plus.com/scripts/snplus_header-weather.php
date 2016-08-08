<?php

$rss_feed = simplexml_load_file("http://informer.gismeteo.by/rss/26850.xml");
if ($rss_feed){
	$text = $rss_feed->channel->item->description;
	preg_match('#температура(.*?)С#msi', $text, $temp);
	$img = $rss_feed->channel->item->enclosure[0]['url'];
	$content = '<img src="'.$img.'" height="24" title="'.$text.'">'.$temp[1].'&deg;C';
	file_put_contents("/var/www/newscoop/templates/tpl/header-weather.tpl", $content);
}

?>
