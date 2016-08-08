{{ php }}
header("Content-Type: text/xml"); 
echo("<?xml version=\"1.0\" encoding=\"utf-8\"?>
");
{{ /php }}

<rss version="2.0">
    <channel>
        {{ set_current_issue }}
        <title>&quot;Брестская газета&quot; RSS-лента - рубрика &quot;Общество&quot;</title>
        <link>http://{{ $gimme->publication->site }}/ru/</link>
        <description>Интернет версия &quot;Брестской газеты&quot;</description>
        <language>ru</language>
        <generator>CS RSS 1.0</generator>
       {{ unset_topic }}
       {{ set_section number="30" }}
       {{ list_articles order="byNumber desc" constraints="type is Article" }}
        <item>
            <title>{{ $gimme->article->name }}</title>
            <guid>http://{{ $gimme->publication->site }}{{ uri options="article" }}</guid>
            <link>http://{{ $gimme->publication->site }}{{ uri options="article" }}</link>
            <description><![CDATA[{{ $gimme->article->intro }}]]></description>
            <pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</pubDate>
        </item>
    {{ /list_articles }}
    </channel>
</rss>