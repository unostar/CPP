<?php
$xml = @file_get_contents("http://nbrb.by/publications/wmastersd.asp?datatype=0");
$xml = mb_convert_encoding ($xml, "utf-8", "windows-1251");
preg_match ("#<table.*?>.*</table>#msi", $xml, $match);
$xml = preg_replace("/Курсы валют/msi", "Па сводкам нац.банка РБ", $match[0]);
file_put_contents("/home/goradby/public_html/templates/nbrb.tpl", $xml);
?>