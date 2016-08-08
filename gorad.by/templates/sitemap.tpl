{{php}}
header("Content-Type: text/xml");
print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
";
{{/php}}
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
<url>
	<loc>http://{{$gimme->publication->site}}/</loc>
	<lastmod>{{$smarty.now|date_format:"%Y-%m-%d"}}</lastmod>
	<changefreq>hourly</changefreq>
	<priority>1.00</priority>
</url>
{{set_default_language}}
<url>
	<loc>http://{{$gimme->publication->site}}/{{$gimme->language->code}}/</loc>
	<lastmod>{{$smarty.now|date_format:"%Y-%m-%d"}}</lastmod>
	<changefreq>hourly</changefreq>
	<priority>1.00</priority>
</url>
{{set_issue number="1"}}
<url>
	<loc>http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/</loc>
	<lastmod>{{$smarty.now|date_format:"%Y-%m-%d"}}</lastmod>
	<changefreq>hourly</changefreq>
	<priority>1.00</priority>
</url>
{{list_sections constraints="number smaller 200"}}
<url>
	<loc>http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/</loc>
	<lastmod>{{$smarty.now|date_format:"%Y-%m-%d"}}</lastmod>
	<changefreq>daily</changefreq>
	<priority>0.90</priority>
</url>
{{list_articles ignore_issue="true" order="bypublishdate desc"}}
<url>
	<loc>http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}</loc>
	<lastmod>{{$gimme->article->last_update|date_format:"%Y-%m-%d"}}</lastmod>
	<changefreq>weekly</changefreq>
	<priority>0.80</priority>
</url>
{{/list_articles}}
{{/list_sections}}
</urlset>
