<?php

require_once('include/functions.inc.php');

//exchange
$rss_file = "http://www.bsb.by/rss.php?type=currency&traders=10";
$rss_feed = simplexml_load_file( $rss_file );
$desc = explode (' ',$rss_feed->channel->item->description);
$desc3 = explode ('<br/>',$desc[3]);
$desc6 = explode ('<br/>',$desc[6]);
$desc9 = explode ('<br/>',$desc[9]);

$content = '';
$i=0; 
// Loop thru all the 'items' and print information for each
foreach($rss_feed->channel->item as $item ) {
  if($i++==1)
    break; 
        $content .= "<p class=\"content-top\">EUR&nbsp;&nbsp;&nbsp;$desc3[0]</p><br/>\n"
        	. "<p class=\"content-top\">USD&nbsp;&nbsp;&nbsp;$desc6[0]</p><br/>\n"
        	. "<p class=\"content-top\">RUB&nbsp;&nbsp;&nbsp;$desc9[0]</p><br/>\n";
}
write($content, 'rynok-exchange.html');
?>
