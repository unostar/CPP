<!-- Блок контекстной рекламы -->

<!-- klinks -->
{{php}}include("/home/gsby/public_html/klinks/klinks.php");{{/php}}
<!-- /klinks -->

<!-- trustlink -->
{{php}}
define('TRUSTLINK_USER', '9ef77e7579dfc04d07c2749657fa95eb88c8c0d1');
require_once('/home/gsby/public_html/'.TRUSTLINK_USER.'/trustlink.php');
$o['charset'] = 'utf-8';
$trustlink = new TrustlinkClient($o);
unset($o);
echo $trustlink->build_links();
{{/php}}
<!-- /trustlink -->

<!-- sape -->
{{php}}
if (!defined('_SAPE_USER')){
  define('_SAPE_USER', '027c8357a1e5079b279f09a19a49d2fb'); 
}
require_once('/home/gsby/public_html/'._SAPE_USER.'/sape.php'); 
$o['force_show_code'] = true;
$o['host'] = 'gs.by'; 
$sape = new SAPE_client($o);
unset($o); 
echo $sape->return_links();
{{/php}}
<!-- /sape -->

<!-- Конец блока контекстной рекламы -->
