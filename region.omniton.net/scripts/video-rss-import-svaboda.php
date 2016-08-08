<?php

$html = '<ul>';
$i = 0;
$xml = @simplexml_load_file("http://gdata.youtube.com/feeds/api/users/svabodavideo/uploads");

if ($xml) {
  foreach ($xml->entry as $news){

    $date = strtotime($news->updated);
    $date = '<time datetime="'.date('Y-m-d\TH:i', $date).'">('.date('d/m/Y H:i', $date).')</time>';

    $attrs = $news->link[0]->attributes();
    $href = $attrs['href']; 

    $html .= '<li><h4><a href="'.$href.'" target="_blank">'.$news->title.'</a></h4> '.$date.'</li>';
    if(++$i > 5) break;
  }
  $html .= '</ul>';

  if ( strlen($html) > 512) {file_put_contents("/var/www/xml-forest/video-rss-import-svaboda.html", $html);}
}

?>
