{{ php }}
header("Content-Type: text/xml"); 
echo("<?xml version=\"1.0\" encoding=\"utf-8\"?>
");
{{ /php }}

<rss version="2.0">
    <channel>
        {{ set_current_issue }}
        <title>&quot;Брестская газета&quot; RSS-лента</title>
        <link>http://{{ $gimme->publication->site }}/ru/</link>
        <description>Интернет версия &quot;Брестской газеты&quot;</description>
        <language>ru</language>
        <generator>CS RSS 1.0</generator>
        
        {{ list_articles constraints="type is Article" order="bypublishdate desc" }}
{{ if $gimme->section->number > 71 || $gimme->section->number < 10 }}
{{ else }}
        <item>
            <title>{{ $gimme->article->name }}</title>
            <guid>http://{{ $gimme->publication->site }}{{ uri options="article" }}</guid>
            <link>http://{{ $gimme->publication->site }}{{ uri options="article" }}</link>
            <description><![CDATA[{{ $gimme->article->intro }}]]></description>
            <pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</pubDate>
        </item>
{{ /if }}
        {{ /list_articles }}
    </channel>
</rss>