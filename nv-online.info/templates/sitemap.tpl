{{php}}
header("Content-Type: text/xml");
print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
";
{{/php}}
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
{{set_publication identifier="1"}}
<url>
  <loc>http://{{$gimme->publication->site}}/</loc>
  <lastmod>{{$smarty.now|date_format:"%Y-%m-%d"}}</lastmod>
  <changefreq>hourly</changefreq>
  <priority>1.00</priority>
</url>

{{list_issues order="byPublishDate desc"}}
<url>
  <loc>{{url options="issue"}}</loc>
  <lastmod>{{$smarty.now|date_format:"%Y-%m-%d"}}</lastmod>
  <changefreq>hourly</changefreq>
  <priority>1.00</priority>
</url>
{{list_sections constraints="number smaller 200"}}
<url>
  <loc>{{url options="section"}}</loc>
  <lastmod>{{$smarty.now|date_format:"%Y-%m-%d"}}</lastmod>
  <changefreq>hourly</changefreq>
  <priority>0.90</priority>
</url>
{{list_articles order="bypublishdate desc"}}
<url>
  <loc>{{url options="article"}}</loc>
  <lastmod>{{$gimme->article->last_update|date_format:"%Y-%m-%d"}}</lastmod>
  <changefreq>daily</changefreq>
  <priority>0.80</priority>
</url>
{{/list_articles}}
{{/list_sections}}
{{/list_issues}}
</urlset>
