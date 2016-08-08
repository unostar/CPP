{{ php }}
header("Content-Type: text/xml"); 
echo("<?xml version=\"1.0\" encoding=\"utf-8\"?>
");
{{ /php }}

<rss version="2.0">
    <channel>
        <title>&quot;Твой стыль&quot; - Рубрыка &quot;Стыльная Кухня&quot;</title>
        <link>http://t-styl.info/</link>
        <description>&quot;Твой стыль&quot; - радыё</description>
        <language>by</language>
        <generator>CS RSS 1.0</generator>
        {{ set_current_issue }}
        {{ set_section number="100" }}
        {{ list_articles order="bypublishdate desc" }}
        <item>
            <title>{{ $gimme->article->name }}</title>
            <guid>http://{{ $gimme->publication->site }}{{ uri options="article" }}</guid>
            <link>http://{{ $gimme->publication->site }}{{ uri options="article" }}</link>
            <description><![CDATA[{{ $gimme->article->intro }}]]></description>
{{list_article_attachments}}
{{ if $gimme->attachment->extension == "mp3" }}
<enclosure url="{{ uri options="articleattachment" }}" length="{{ $gimme->attachment->size_b }}" type="{{$gimme->attachment->mime_type}}"/>
{{ /if }}
{{/list_article_attachments}}              
            <pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</pubDate>
        </item>
        {{ /list_articles }}
    </channel>
</rss>