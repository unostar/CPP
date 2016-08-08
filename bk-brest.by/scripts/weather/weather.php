<?php

$gis=array();
$gis['name_tod']=array('night','morning','day','evening');
$gis['name_tod_rus']=array('ночь','утро','день','вечер');
$gis['html_name_tod_rus']=array('Ночь','Утро','День','Вечер');
$gis['weekday']=array(
  1=>'Воскресенье',
  2=>'Понедельник',
  3=>'Вторник',
  4=>'Среда',
  5=>'Четверг',
  6=>'Пятница',
  7=>'Суббота'
);
$gis['cloudiness']=array(
  0=>'Ясно,',
  1=>'Малооблачно,',
  2=>'Облачно,',
  3=>'Пасмурно,'
);
$gis['precipitation']=array(
  4=>' дождь, ',
  5=>' ливень, ',
  6=>' снег, ',
  7=>' сильный снег, ',
  8=>' гроза, ',
  10=>' без осадков, '
);
$gis['proximity']=array(
  4=>array(' возможен'),
  5=>array(' возможен'),
  6=>array(' возможен'),
  7=>array(' возможен'),
  8=>array(' возможна')
);
$gis['wind']=array(
  0=>'северный',
  1=>'северо-восточный',
  2=>'восточный',
  3=>'юго-восточный',
  4=>'южный',
  5=>'юго-западный',
  6=>'западный',
  7=>'северо-западный'
);

$gis[0]=array(
  4=>array('10','08'),
  5=>array('10','05'),
  6=>array('10','07'),
  7=>array('10','07'),
  8=>array('10','11'),
  9=>array('06','06'),
  10=>array('01','01')
);

$gis[1]=array(
  4=>array('10','08'),
  5=>array('10','05'),
  6=>array('10','07'),
  7=>array('10','07'),
  8=>array('10','11'),
  9=>array('06','06'),
  10=>array('02','02')
);

$gis[2]=array(
  4=>array('03','08'),
  5=>array('03','05'),
  6=>array('03','12'),
  7=>array('03','12'),
  8=>array('03','13'),
  9=>array('04','04'),
  10=>array('09','09')
);

$gis[3]=array(
  4=>array('03','08'),
  5=>array('03','05'),
  6=>array('03','12'),
  7=>array('03','12'),
  8=>array('03','13'),
  9=>array('04','04'),
  10=>array('03','03')
);

$font = '/home/bkbrestb/scripts/weather/DejaVuSansCondensed-Bold.ttf';
$ico_path = '/home/bkbrestb/scripts/weather/img/';
$ico_output = '/home/bkbrestb/public_html/templates/images/weather/';
$ico_html_output = '/templates/images/weather/';
$html_output = '/home/bkbrestb/public_html/templates/_weather.tpl';
$html = "";

$xml_file = "http://informer.gismeteo.ru/xml/33008_1.xml";
$XML = @simplexml_load_file( $xml_file );

foreach ($XML->REPORT->TOWN->FORECAST as $forecast){
$tod=intval($forecast['tod']);
$cloud=intval($forecast->PHENOMENA['cloudiness']);
$rain=intval($forecast->PHENOMENA['precipitation']);
$power=intval(($rain=='8'?$forecast->PHENOMENA['spower']:$forecast->PHENOMENA['rpower']));

$img=$ico_path.$gis[$cloud][$rain][$power].'.png';
$ico=$ico_output.$gis['name_tod'][$tod].'.gif';
$ico_html=$ico_html_output.$gis['name_tod'][$tod].'.gif';
$temp_min=intval($forecast->TEMPERATURE['min']) > 0 ? '+'.$forecast->TEMPERATURE['min'] : $forecast->TEMPERATURE['min'];
$temp_max=intval($forecast->TEMPERATURE['max']) > 0 ? '+'.$forecast->TEMPERATURE['max'] : $forecast->TEMPERATURE['max'];
$text = $gis['html_name_tod_rus'][$tod].': '.$temp_min.'..'.$temp_max.'&#0176;C';

$im = imagecreatefrompng($img);
imagealphablending($im, true);
imagesavealpha($im, true);
$color = imagecolorallocate($im, 12, 71, 144);
imagettftext($im, 9, 0, 0, 97, $color, $font, $text);
imagegif($im,$ico);
imagedestroy($im);

$caption='Погода в '.mb_convert_encoding(urldecode($XML->REPORT->TOWN['sname']),'UTF-8','windows-1251').'е. '.$gis['weekday'][intval($forecast['weekday'])].' ('.$forecast['day'].'.'.$forecast['month'].'.'.$forecast['year'].', '.$gis['name_tod_rus'][$tod].'): ';
$caption.=$gis['cloudiness'][$cloud].($power?$gis['precipitation'][$rain]:'');
$caption.='температура воздуха '.$forecast->TEMPERATURE['min'].'..'.$forecast->TEMPERATURE['max'].'&#0176;C, ';
$caption.='атмосферное давление '.round(($forecast->PRESSURE['max']+$forecast->PRESSURE['min'])/2).' мм.рт.ст., относительная влажность '.round(($forecast->RELWET['max']+$forecast->RELWET['min'])/2).'%, ';
$caption.='ветер - '.$gis['wind'][intval($forecast->WIND['direction'])].' '.round(($forecast->WIND['max']+$forecast->WIND['min'])/2).' м/c.';

$html.='<img src="'.$ico_html.'" width="110" height="110" title="'.$caption.'" alt="'.$caption.'" />'."\r\n";
}

if (strlen($html) > 512) {
  file_put_contents($html_output, $html);
}

?>