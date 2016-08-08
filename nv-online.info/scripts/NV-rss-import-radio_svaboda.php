<?php

$html = '';
$full_html = '';
$anchor = 'radio_svaboda';
$local_page = '/?tpl=222#'.$anchor;
$i = 1;
$xml = @simplexml_load_file("http://www.svaboda.org/rss/?count=3");

if ($xml) {
  foreach ($xml->channel->item as $news){

  if ($i <= 1) {
    $date = strtotime($news->pubDate);
    if (date('Y-m-d',$date) == date('Y-m-d')) {$date = '<time datetime="'.date('Y-m-d\TH:i', $date).'">('.date('H:i', $date).')</time>';}
    else {$date = '<time datetime="'.date('Y-m-d\TH:i', $date).'">('.date('d/m/Y', $date).')</time>';}
    $html .= '<li><a href="'.$local_page.$i.'">'.$news->title.'</a> '.$date.'</li>';
  }

    $date = strtotime($news->pubDate);
    $full_html .= '<div class="meat-item"><div class="meat-item-inner">';
    $full_html .= '<h3><a name="'.$anchor.$i.'" href="'.htmlentities($news->link).'" target="_blank" rel="nofollow">'.$news->title.'</a></h3>';
    $full_html .= '<div class="intro">'.$news->description.'</div>';
    $full_html .= '<div class="intro-tools"><time datetime="'.date('Y-m-d\TH:i', $date).'">'.date('d.m.Y г.', $date).' <span class="tools-time">'.date('H:i', $date).'</span></time></div>';
    $full_html .= '</div></div><!-- /.meat-item -->';

    if(++$i > 3) break;
  }

  if ( strlen($html) > 128) {
    file_put_contents('/var/www/xml-forest/NV-rss-import-'.$anchor.'.html', $html);
    file_put_contents('/var/www/xml-forest/NV-rss-import-'.$anchor.'-full.html', $full_html);
  }
}

?>
