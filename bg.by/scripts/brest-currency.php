<?php
$xml = @file_get_contents("http://nbrb.by/publications/wmastersd.asp");
$xml = mb_convert_encoding($xml, "utf-8", "windows-1251");
preg_match("#<table.*?>.*</table>#msi", $xml, $match);

$xml = str_replace(array(
' style="margin:3px" border=0',
'<b>',
'<font color="#9C0000">',
'<tr><td colspan=4 align=right><a href="http://nbrb.by/statistics/rates/RatesDaily.asp" target=_blank style="font-size:90%">подробнее</a>',
' id=line'
), "", $match[0]);

if (strlen($xml) > 100) {
	file_put_contents("/var/www/bgby/campsite/templates/sidebar-currency-content.tpl", $xml);
}
?>