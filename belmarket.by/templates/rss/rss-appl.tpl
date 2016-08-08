{{ php }}
header("Content-Type: text/xml"); 
echo("<?xml version=\"1.0\" encoding=\"utf-8\"?>
");
{{ /php }}

<rss version="2.0">
<channel>
<title>&quot;Белорусы и Рынок&quot; - RSS раздела Еженедельного приложения</title>
<link>http://www.belmarket.by</link>
<description>On-line версия газеты &quot;Белорусы и Рынок&quot; (г. Минск)</description>
<language>ru</language>
<generator>CS RSS 1.0</generator>
{{ set_current_issue}}
{{ unset_topic }}
{{ list_sections constraints="number greater 149 number smaller 201" }}
{{ list_articles order="byNumber desc" constraints="type is Article" }}
<item>
            <title>{{ $gimme->article->name }}</title>
            <guid>http://{{ $gimme->publication->site }}{{ uri options="article" }}</guid>
            <link>http://{{ $gimme->publication->site }}{{ uri options="article" }}</link>
            <description><![CDATA[{{ $gimme->article->Lead }}]]></description>
            <pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</pubDate>
        </item>

{{ /list_articles }}
{{ /list_sections }}
</channel>
</rss>