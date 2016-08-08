<?php
require_once('/var/www/tstyl/campsite/templates/newspaper/php/getid3/getid3.php'); 
$filename = ('attachment/000000003.mp3');
$getID3 = new getID3; 
$ThisFileInfo = $getID3->analyze($filename);
getid3_lib::CopyTagsToComments($ThisFileInfo);
echo @$ThisFileInfo['playtime_string'];
echo @$ThisFileInfo['mime_type'];
$filename;
?>