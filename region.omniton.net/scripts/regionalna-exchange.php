<?php

require_once('include/functions.inc.php');

//exchange
$rss_file = "http://www.bsb.by/rss.php?type=currency&traders=10";
$rss_feed = simplexml_load_file( $rss_file );
$desc = explode (' ',$rss_feed->channel->item->description);
$desc3 = explode ('<br/>',$desc[3]);
$desc6 = explode ('<br/>',$desc[6]);
$desc9 = explode ('<br/>',$desc[9]);
$date = explode (' ',$rss_feed->channel->item->title);

$content = '';
$i=0; 
// Loop thru all the 'items' and print information for each
foreach($rss_feed->channel->item as $item ) {
  if($i++==1)
    break; 
        $content .= "<div class=\"mostitem\"><p class=\"mosttitle\">EUR $desc3[0] </p></div>\n"
        	. "<div class=\"mostitem\"><p class=\"mosttitle\">USD $desc6[0] </p></div>\n"
        	. "<div class=\"mostitem\"><p class=\"mosttitle\">RUB $desc9[0] </p></div>\n"
              . "<div class=\"mostitem\"><p class=\"mosttitle\"><a href=\"http://www.nbrb.by\" target=\"_blank\">Усе курсы валют</a></p></div>";
}
write($content, 'regionalna-exchange.html');
?>
