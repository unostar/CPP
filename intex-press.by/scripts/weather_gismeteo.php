<?php
$items=array(
0=>array('Барановичи','http://informer.gismeteo.ru/xml/26941_1.xml'),
1=>array('Пинск','http://informer.gismeteo.ru/xml/33019_1.xml'),
2=>array('Брест','http://informer.gismeteo.ru/xml/33008_1.xml'),
3=>array('Минск','http://informer.gismeteo.ru/xml/26850_1.xml')
);
$html="";
foreach ($items as $item){
$xml_file = $item[1];
$XML = @simplexml_load_file( $xml_file );
foreach ($XML->REPORT->TOWN->FORECAST as $FORECAST){
  if ($FORECAST['tod'] == 2){
    $temp_min=intval($FORECAST->TEMPERATURE['min']) > 0 ? '+'.$FORECAST->TEMPERATURE['min'] : $FORECAST->TEMPERATURE['min'];
    $temp_max=intval($FORECAST->TEMPERATURE['max']) > 0 ? '+'.$FORECAST->TEMPERATURE['max'] : $FORECAST->TEMPERATURE['max'];
  }
}
$html.="<p class=\"widget-item uppercase\">".$item[0]." ".$temp_min."..".$temp_max."</p>\n";
}
file_put_contents('/var/www/intexpre/campsite/templates/front-left-widgets-weather.tpl', $html);
?>