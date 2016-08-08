{{set_current_issue}}
<rss version="2.0" xmlns:yandex="http://news.yandex.ru">
<channel>
<title>Брестская Газета</title>
<link>http://www.b-g.by</link>
<description>Брестская Газета - Газета для всей семьи</description>
<language>ru</language>
<copyright>Copyright 2009, Брестская Газета</copyright>
<pubDate>{{$gimme->issue->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</pubDate>
<lastBuildDate>{{$smarty.now|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</lastBuildDate>
<generator>Campsite</generator>
<image>
<url>http://b-g.by/templates/images/rss_logo.gif</url>
<title>Брестская Газета</title>
<link>http://www.b-g.by</link>
<width>100</width>
<height>29</height>
</image>
{{list_articles length="30" constraints="type is article section greater 1 section smaller 121" order="bypublishdate desc" ignore_issue="true"}}
<item>
<title>{{$gimme->article->name|escape|strip_tags:false|strip|replace:'.':''|replace:'«':'&quot;'|replace:'»':'&quot;'|replace:'(ФОТО)':''}}</title>
<link>{{url options="article"}}</link>
<description><![CDATA[{{$gimme->article->intro|strip_tags:false|strip|regex_replace:'/&(.*?)quo;/':'&quot;'}}]]></description>
{{if $gimme->article->author->name}}<author>{{$gimme->article->author->name}}</author>{{/if}}
<category>{{$gimme->section->name}}</category>
{{list_article_images}}{{if $gimme->image->article_index > 1}}
<enclosure url="{{$gimme->image->imageurl}}" type="image/jpeg"/>
{{/if}}{{/list_article_images}}
<pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</pubDate>
<yandex:genre>article</yandex:genre>
<yandex:full-text><![CDATA[{{$gimme->article->full_text|strip|strip_tags:false}}]]></yandex:full-text>
</item>
{{/list_articles}}
</channel>
</rss>