{{php}}
$login = 'cppbyweb';
$appkey = 'R_907680e328a4bdf41c374f3382564cdd';

$gimme = $this->get_template_vars('gimme');
$url = 'http://' . $gimme->publication->site . '/' . $gimme->language->code . '/page/' . $gimme->section->url_name . '/' . $gimme->article->number;

$short_url = @file_get_contents('http://api.bit.ly/v3/shorten?login='.$login.'&apiKey='.$appkey.'&uri='.urlencode($url).'&format=txt');
$url = $short_url ? $short_url : $url;

echo ($url);
{{/php}}