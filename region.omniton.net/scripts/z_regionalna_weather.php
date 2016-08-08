<?php

// includes general purpose functions
require_once('include/functions.inc.php');

$w1_temp = @file_get_contents('/var/www/xml-forest/regionalna_weather_1.html');
$w2_temp = @file_get_contents('/var/www/xml-forest/regionalna_weather_2.html');
$w3_temp = @file_get_contents('/var/www/xml-forest/regionalna_weather_3.html');
$w4_temp = @file_get_contents('/var/www/xml-forest/regionalna_weather_4.html');
$w5_temp = @file_get_contents('/var/www/xml-forest/regionalna_weather_5.html');
$w6_temp = @file_get_contents('/var/www/xml-forest/regionalna_weather_6.html');
$w7_temp = @file_get_contents('/var/www/xml-forest/regionalna_weather_7.html');

$html = $w1_temp . $w2_temp . $w3_temp . $w4_temp . $w5_temp . $w6_temp . $w7_temp;

// writes the content to the file
write($html, 'regionalna_weather.html');

?>
