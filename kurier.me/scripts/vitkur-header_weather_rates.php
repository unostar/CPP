<?php
$rss_feed = simplexml_load_file("http://informer.gismeteo.by/rss/26666.xml");
if ($rss_feed){
	$text = $rss_feed->channel->item->description;
	preg_match ('#температура(.*?)С#msi', $text, $temp);
	$img = $rss_feed->channel->item->enclosure[0]['url'];
	$link = $rss_feed->channel->item->link;
	$content = '<li class="weather"><a href="'.$link.'" title="'.$text.'" target="_blank">В Витебске:</a> <img src="'.$img.'" height="25" title="'.$text.'" />'.$temp[1].'&deg;C</li>';
  if (strlen($content) > 512) file_put_contents("/var/www/xml-forest/vitkur-header_weather.html", $content);
}

$rss_feed = simplexml_load_file("http://nbrb.by/Services/XmlExRates.aspx");
if ($rss_feed){
  foreach ($rss_feed->Currency as $cur){
    switch (TRUE) {
      case ($cur['Id']==145): $usd = $cur->Rate;break;
      case ($cur['Id']==19): $eur = $cur->Rate;break;
    }
  }
$rates = '<li class="currency"><a title="Официальный курс белорусского рубля по отношению к иностранным валютам, устанавливаемый Национальным банком Республики Беларусь ежедневно, на '.date("d.m.Y", strtotime($rss_feed['Date'])).'" href="http://nbrb.by/statistics/rates/ratesDaily.asp" target="_blank">Курсы валют</a>: $'.$usd.' | &euro;'.$eur.'</li>';
if (strlen($rates) > 512) file_put_contents("/var/www/xml-forest/vitkur-header_rates.html", $rates);
}
?>
