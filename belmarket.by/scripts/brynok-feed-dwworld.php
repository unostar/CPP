<?php

require_once('include/functions.inc.php');

//mirovnie novosti
$rss_file = "http://rss.dw-world.de/atom/rss-ru-eco";
$rss_feed = simplexml_load_file( $rss_file );
//simple changing of week days via php
$content = '';
$i=0; 
// Loop thru all the 'items' and print information for each
foreach($rss_feed->entry as $item ) {
    if($i++==3)
        break; 
$time = explode ('T',$item->published);
$date = explode ('-', $time[0]);
switch (TRUE){
case ($date[0] == "Mon,"): $time[0] = "Понедельник,"; break;
case ($date[0] == "Tue,"): $time[0] = "Вторник,"; break;
case ($date[0] == "Wed,"): $time[0] = "Среда,"; break;
case ($date[0] == "Thu,"): $time[0] = "Четверг,"; break;
case ($date[0] == "Fri,"): $time[0] = "Пятница,"; break;
case ($date[0] == "Sat,"): $time[0] = "Суббота,"; break;
case ($date[0] == "Sun,"): $time[0] = "Воскресенье,"; break;
}
switch (TRUE) {
case ($date[1] == "01" || $date[1] == "January"): $date[1] = "января"; break;
case ($date[1] == "02" || $date[1] == "February"): $date[1] = "февраля"; break;
case ($date[1] == "03" || $date[1] == "March"): $date[1] = "марта"; break;
case ($date[1] == "04" || $date[1] == "April"): $date[1] = "апреля"; break;
case ($date[1] == "05" || $date[1] == "May"): $date[1] = "мая"; break;
case ($date[1] == "06" || $date[1] == "June"): $date[1] = "июня"; break;
case ($date[1] == "07" || $date[1] == "July"): $date[1] = "июля"; break;
case ($date[1] == "08" || $date[1] == "August"): $date[1] = "августа"; break;
case ($date[1] == "09" || $date[1] == "September"): $date[1] = "сентября"; break;
case ($date[1] == "10" || $date[1] == "October"): $date[1] = "октября"; break;
case ($date[1] == "11" || $date[1] == "November"): $date[1] = "ноября"; break;
case ($date[1] == "12" || $date[1] == "December"): $date[1] = "декабря"; break;
} 
    $content .= "<a href=\"$item->id\" target=\"_blank\">$item->title &nbsp;<span class=\"index-date\">($date[2] $date[1] $date[0] )</span></a><br/>\n";

}

write($content, 'brynok-feed-dwworld.html');

?>
