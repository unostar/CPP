<?php

require_once('include/functions.inc.php');

//mirovnie novosti
$rss_file = "http://informer.gismeteo.by/rss/26850.xml";
$rss_feed = simplexml_load_file( $rss_file );
//simple changing of week days via php
$content = '';
$i=0; 
// Loop thru all the 'items' and print information for each
foreach($rss_feed->channel->item as $item ) {
    preg_match("/температура (.*) С,/", $item->description, $temperature);
    $enclosure = $item->enclosure[0]['url'];
    $content .= '<img id="weather-sign" src="'.$enclosure.'" />';
    $content .= "Надвор'е: ".date("d.m.Y")."<br/><span>$temperature[1]</span>";
    break;
}
write($content, 'willy_weather.html');

?>
