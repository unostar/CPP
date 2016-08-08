<?php

$html = '<ul>';
$i = 0;
$xml = @simplexml_load_file("http://www.charter97.org/be/rss/all/");

if ($xml) {
  foreach ($xml->channel->item as $news){
    $date = strtotime($news->pubDate);
    if (date('Y-m-d',$date) == date('Y-m-d')) {$date = '<time datetime="'.date('Y-m-d\TH:i', $date).'">('.date('H:i', $date).')</time>';}
    else {$date = '<time datetime="'.date('Y-m-d\TH:i', $date).'">('.date('d/m/Y', $date).')</time>';}
    $html .= '<li><h4><a href="'.htmlentities($news->link).'" target="_blank">'.$news->title.'</a></h4> '.$date.'</li>';
    if(++$i > 6) break;
  }
  $html .= '</ul>';
  if ( strlen($html) > 512) {file_put_contents("/var/www/xml-forest/arche-rss-import-charter97.html", $html);}
}

?>
