{{ php }}
header("Content-Type: text/xml"); 
echo("<?xml version=\"1.0\" encoding=\"utf-8\"?>
");{{ /php }}

<rss version="2.0">
<channel>
<title>&quot;Белорусы и Рынок&quot; - RSS всех статей</title>
<link>http://www.belmarket.by</link>
<description>On-line версия газеты &quot;Белорусы и Рынок&quot; (г. Минск)</description>
<language>ru</language>
<generator>Campsite</generator>
{{ set_current_issue}}
{{ unset_topic }}
{{ list_sections constraints="number greater 9 number smaller 201" }}
{{ list_articles order="byNumber desc" constraints="type is Article" }}
{{ if $gimme->Article->Article_text != "" }}
<item>
  <title>{{ $gimme->article->name }}</title>
  <author>{{ $gimme->article->author->name }}</author>
  <guid>http://{{ $gimme->publication->site }}{{ uri options="article" }}</guid>
  <link>http://{{ $gimme->publication->site }}{{ uri options="article" }}</link>
  <description><![CDATA[{{ $gimme->article->Article_text }}]]></description>
  <pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</pubDate>
</item>
{{ /if }}
{{ /list_articles }}
{{ /list_sections }}
</channel>
</rss>