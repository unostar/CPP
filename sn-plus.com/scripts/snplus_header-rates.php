<?php

$rss_feed = simplexml_load_file("http://nbrb.by/Services/XmlExRates.aspx?ondate=".date("m/d/Y"));
if ($rss_feed) {
	foreach ($rss_feed->Currency as $cur) {
		switch (TRUE) {
			case ($cur['Id']==145): $usd = $cur->Rate; break;
			case ($cur['Id']==19): $eur = $cur->Rate; break;
			case ($cur['Id']==190): $rub = $cur->Rate; break;
		}
	}

	$rates = '
	<dl>
		<dt>Доллар США</dt>
		<dd>'.$usd.'</dd>

		<dt>Евро</dt>
		<dd>'.$eur.'</dd>

		<dt>Российский рубль</dt>
		<dd>'.$rub.'</dd>
	</dl>';

	file_put_contents("/var/www/newscoop/templates/tpl/header-rates.tpl", $rates);
}

?>
