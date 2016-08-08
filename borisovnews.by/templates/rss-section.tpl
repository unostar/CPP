{{ php }}
header("Content-Type: text/xml"); 
echo("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
{{ /php }}
{{ assign var="sct" value=$gimme->section->number }}
{{ set_current_issue }}
{{ set_section number=$sct }}
<rss version="2.0">
    <channel>
        <title>Борисовские Новости. Общественно-политический еженедельник. - Рубрика http://www.borisovnews.by/ru/rss &quot;{{ $gimme->section->name }}&quot;</title>
        <link>http://www.borisovnews.by</link>
        <description>Общественно-политический еженедельник. Борисовские Новости. Букас медиа-центр. - он-лайн версия издания http://www.borisovnews.by/ru/rss</description>
        <language>ru</language>
        <generator>CS RSS 1.0</generator>
        {{ list_articles constraints="type is article" order="bypublishdate desc" }}
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