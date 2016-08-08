<?php

$towns = array(7=>"Ганцавічы",5=>"Брэст",55=>"Мiнск");
$regex = "#<table.*?>.*</table>#msi";
$regex_ban = "#<tr><td height=26 colspan=3>.*?<table.*?>.*?</table>.*?</td>.*?</tr>#msi";

foreach ($towns as $id => $town) {
$rp5 = @file_get_contents("http://rp5.by/htmla.php?id=".$id."&sc=2");
preg_match ($regex, $rp5, $match);
$rp5 = preg_replace ($regex_ban, '', $match[0]);
// $rp5 = mb_convert_encoding($rp5,'UTF-8', 'windows-1251');
$html .= '<div><label>'.$town.'</label>'.$rp5.'</div>';
if ($id!=55) $html.='<div class="break"></div>';
}
$html .= '<p><a href="http://rp5.by" target="_blank">rp5.by</a></p>';

if ( strlen($html) > 512) {file_put_contents("/home/gancchas/www/templates/feed/weather.html", $html);}

?>