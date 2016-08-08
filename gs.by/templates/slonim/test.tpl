{{php}}
define('TRUSTLINK_USER', '9ef77e7579dfc04d07c2749657fa95eb88c8c0d1');
require_once('/home/gsby/public_html/'.TRUSTLINK_USER.'/trustlink.php');
$o['charset'] = 'utf-8';
$trustlink = new TrustlinkClient($o);
unset($o);
echo $trustlink->build_links();
{{/php}}