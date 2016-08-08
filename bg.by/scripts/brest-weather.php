<?php

require_once('include/functions.inc.php');

//mirovnie novosti
$rss_file = "http://rp5.by/rss/5/ru";
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
    $content .= "<span class=\"dropcap\">$temp[0]</span>\n"
			 . "<noindex><nofollow><a href=\"http://www.rp5.ru/town.php?id=5\" target=\"_blank\">Брест</a></nofollow></noindex>, <noindex><nofollow><a href=\"http://www.rp5.ru/index.php?r=2\" target=\"_blank\">Брестская область</a></nofollow></noindex>, <noindex><nofollow><a href=\"http://www.rp5.ru/index.php?c=1\" target=\"_blank\">Беларусь</a></nofollow></noindex>\n"
			 . "<br/>\n"
			 . "<noindex><nofollow><a href=\"http://www.rp5.ru/town.php?id=5\" class=\"weather-bullet\" target=\"_blank\">$cond[1] $cond[2], далее</a></nofollow></noindex>"	;
}
write($content, 'brest-weather.html');

?>