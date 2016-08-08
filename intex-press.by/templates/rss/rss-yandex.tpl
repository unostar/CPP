{{set_current_issue}}
<rss version="2.0" xmlns:yandex="http://news.yandex.ru">
<channel>
<title>INTEX-PRESS Online</title>
<link>http://www.intex-press.by</link>
<description>Intex-Press Online - Интернет версия газеты Интекс-пресс (г. Барановичи)</description>
<language>ru</language>
<copyright>Copyright 2009, Intex-Press</copyright>
<pubDate>{{$gimme->issue->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0300</pubDate>
<lastBuildDate>{{$smarty.now|date_format:"%a, %d %b %Y %H:%M:%S"}} +0300</lastBuildDate>
<generator>Campsite</generator>
<image>
<url>http://intex-press.by/templates/images/rss_logo.gif</url>
<title>INTEX-PRESS Online</title>
<link>http://www.intex-press.by</link>
<width>100</width>
<height>35</height>
</image>
{{list_articles length="30" constraints="type is article section smaller 61 section not 5 topic not Белорусский\ язык:ru" ignore_issue="true" order="bypublishdate desc"}}
<item>
<title>{{$gimme->article->name|strip_tags:false|strip|replace:'.':''|replace:'«':'&quot;'|replace:'»':'&quot;'}}</title>
<link>{{url options="article"}}</link>
<description><![CDATA[{{$gimme->article->intro|strip_tags:false|strip|regex_replace:'/&(.*?)quo;/':'&quot;'}}]]></description>
{{if $gimme->article->author->name}}<author>{{$gimme->article->author->name}}</author>{{/if}}
<category>{{$gimme->section->name}}</category>
{{list_article_images}}{{if $gimme->image->article_index > 1}}
<enclosure url="{{$gimme->image->imageurl}}" type="image/jpeg"/>
{{/if}}{{/list_article_images}}
<pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0300</pubDate>
<yandex:genre>article</yandex:genre>
<yandex:full-text><![CDATA[{{$gimme->article->intro|strip|strip_tags:false|regex_replace:'/&(.*?)quo;/':'&quot;'}} {{$gimme->article->full_text|strip|strip_tags:false}}]]></yandex:full-text>
</item>
{{/list_articles}}
</channel>
</rss>