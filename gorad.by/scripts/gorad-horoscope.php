<?php
$xml = @file_get_contents("http://astroscope.ru/goroscopes.php?".time());
$xml = mb_convert_encoding ($xml, "utf-8", "windows-1251");
preg_match_all ('#<div .*?><img src="http://astroscope\.ru/img/.*?>.*?</div>#msi', $xml, $match);
$xml="";
foreach ($match[0] as $var){
preg_match ('#alt="(.*?)"#msi', $var, $sign);
$xml .= preg_replace('|<img src="http://astroscope\.ru/img/(.*?)>|msi','<img src="http://astroscope.ru/img/$1 /><b>'.$sign[1].'</b><br />',$var);
}
file_put_contents("/home/goradby/public_html/templates/horoscope.tpl", $xml);
?>
