<?php

require_once('include/functions.inc.php');

//mirovnie novosti
$rss_file = "http://naviny.by/rss/index.rss?view=economic";
$rss_feed = simplexml_load_file( $rss_file );
//simple changing of week days via php
$content = '';
$i=0; 
// Loop thru all the 'items' and print information for each
foreach($rss_feed->channel->item as $item ) {
    if($i++==2)
        break; 
$time = explode (' ',$item->pubDate);
$hour = explode (':', $time[4]);
switch (TRUE){
case ($time[0] == "Mon,"): $time[0] = "Понедельник,"; break;
case ($time[0] == "Tue,"): $time[0] = "Вторник,"; break;
case ($time[0] == "Wed,"): $time[0] = "Среда,"; break;
case ($time[0] == "Thu,"): $time[0] = "Четверг,"; break;
case ($time[0] == "Fri,"): $time[0] = "Пятница,"; break;
case ($time[0] == "Sat,"): $time[0] = "Суббота,"; break;
case ($time[0] == "Sun,"): $time[0] = "Воскресенье,"; break;
}
switch (TRUE) {
case ($time[2] == "Jan" || $time[2] == "January"): $time[2] = "января"; break;
case ($time[2] == "Feb" || $time[2] == "February"): $time[2] = "февраля"; break;
case ($time[2] == "Mar" || $time[2] == "March"): $time[2] = "марта"; break;
case ($time[2] == "Apr" || $time[2] == "April"): $time[2] = "апреля"; break;
case ($time[2] == "May" || $time[2] == "May"): $time[2] = "мая"; break;
case ($time[2] == "Jun" || $time[2] == "June"): $time[2] = "июня"; break;
case ($time[2] == "Jul" || $time[2] == "July"): $time[2] = "июля"; break;
case ($time[2] == "Aug" || $time[2] == "August"): $time[2] = "августа"; break;
case ($time[2] == "Sep" || $time[2] == "September"): $time[2] = "сентября"; break;
case ($time[2] == "Oct" || $time[2] == "October"): $time[2] = "октября"; break;
case ($time[2] == "Nov" || $time[2] == "November"): $time[2] = "ноября"; break;
case ($time[2] == "Dec" || $time[2] == "December"): $time[2] = "декабря"; break;
} 
    $content .= "<a href=\"$item->link\" target=\"_blank\">$item->title &nbsp;<span class=\"index-date\">($time[1] $time[2] $time[3])</span></a><br/>\n";

}

write($content, 'brynok-feed-naviny-eco.html');

?>
