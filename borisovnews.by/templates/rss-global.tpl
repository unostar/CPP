{{ php }}
header("Content-Type: text/xml"); 
echo("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
{{ /php }}
{{ set_current_issue }}
<rss version="2.0">
    <channel>
        <title>Борисовские Новости - RSS всех статей выпуска</title>
        <link>http://www.borisovnews.by</link>
        <description>Общественно-политический еженедельник. Борисовские Новости. Букас медиа-центр. - он-лайн версия издания</description>
        <language>ru</language>
        <generator>CS RSS 1.0</generator>
        {{ list_sections constraints="number greater 9 number smaller 61" }}
        {{ list_articles constraints="type is article" order="bypublishdate desc" }}
        <item>
            <title>{{ $gimme->article->name }}</title>
            <guid>http://{{ $gimme->publication->site }}{{ uri options="article" }}</guid>
            <link>http://{{ $gimme->publication->site }}{{ uri options="article" }}</link>
            <description><![CDATA[{{ $gimme->article->intro }}]]></description>
            <pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</pubDate>
        </item>
        {{ /list_articles }}
        {{ /list_sections }}
    </channel>
</rss>