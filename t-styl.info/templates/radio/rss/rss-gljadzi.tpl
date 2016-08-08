{{ php }}
header("Content-Type: text/xml"); 
echo("<?xml version=\"1.0\" encoding=\"utf-8\"?>
");
{{ /php }}

<rss version="2.0">
    <channel>
        <title>&quot;Твой стыль&quot; - Рубрыка &quot;Глядзі&quot;</title>
        <link>http://t-styl.info/</link>
        <description>&quot;Твой стыль&quot; - радыё</description>
        <language>by</language>
        <generator>CS RSS 1.0</generator>
        {{ set_current_issue }}
        {{ set_section number="450" }}
        {{ list_articles order="bypublishdate desc" }}
        <item>
            <title>{{ $gimme->article->name }}</title>
            <guid>http://{{ $gimme->publication->site }}{{ uri options="article" }}</guid>
            <link>http://{{ $gimme->publication->site }}{{ uri options="article" }}</link>
            <description>
            {{if $gimme->article->has_image(2)}}
&lt;img src="{{$gimme->article->image2->thumbnailurl}}" width="64" height="47" border="0" align="left" hspace="5" /&gt;
{{/if}}
            <![CDATA[{{ $gimme->article->intro|strip_tags:false|strip|escape:'html':'utf-8' }}]]>
            &lt;br clear="all"&gt;
            </description>
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