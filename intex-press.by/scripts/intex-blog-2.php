<?

require_once('include/functions.inc.php');

//blog rss
$url = "http://tamarasavich.wordpress.com/feed/";
$handle = fopen($url, "rb");
$contents = '';
while (!feof($handle)) {
  $contents .= fread($handle, 8192);
}
$contents = str_replace("<dc:creator>","<creator>",$contents);
$contents = str_replace("</dc:creator>","</creator>",$contents);
write($contents, 'intex-blog-rss.html');
fclose($handle);
$rss_file = "/home/intexpre/xml-forest/intex-blog-rss.html";
$rss_feed =  simplexml_load_file($rss_file);
$time = explode (' ',$rss_feed->channel->item->pubDate);
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
?>

<?
$content = '';
$i=0; 
// Loop thru all the items and print information for each
foreach($rss_feed->channel->item as $item ) {
  if($i++==1)
    break; 
        $content .= "<h4><strong><a href=\"http://tamarasavich.wordpress.com\" target=\"_blank\">$item->creator</a></strong></h4>"
	         . "\n"
                 . "<h4><a href=\"$item->link\" target=\"_blank\">$item->title</a></h4>"
             . "\n"
                 . "<p class=\"container-date\">$time[1] $time[2] $time[3] г.</p>"
	         . "\n";
}
//                 . "<p><a href=\"$item->link\" target=\"_blank\">$item->description</a></p>"     // they asked to remove this, see https://pdz.omniton.net/supporter/index.php?t=tupd&id=104
write($content, 'intex-blog-2.html');
?>