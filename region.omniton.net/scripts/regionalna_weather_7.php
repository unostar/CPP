<?php

require_once('include/functions.inc.php');

//Астравец weather
$rss_file = "http://rp5.by/rss/93/ru";
$rss_feed = simplexml_load_file( $rss_file );

$content = '';
$i=0; 
// Loop thru all the 'items' and print information for each
foreach($rss_feed->channel->item as $item ) {
    if($i++==1)
        break; 
$temp = explode (',',$item->description);
$cond = explode (' ', $temp[4]);
$enclosure = $item->enclosure[0]['url'];
    $content .= "<div class=\"mostitem\"><p class=\"mosttitle\"><a href=\"$item->link\" target=\"_blank\">Астравец $temp[0]</a></p></div>\n";
}
write($content, 'regionalna_weather_7.html');

?>