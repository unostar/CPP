{{set_current_issue}}
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/">
<channel>
<title>INTEX-PRESS Online</title>
<link>http://www.intex-press.by</link>
<description>Intex-Press Online - Интернет версия газеты Интекс-пресс (г. Барановичи)</description>
<language>ru</language>
<copyright>Copyright {{$smarty.now|date_format:"%Y"}}, Intex-Press</copyright>
<pubDate>{{$gimme->issue->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</pubDate>
<lastBuildDate>{{$smarty.now|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</lastBuildDate>
<generator>Campsite</generator>
<image>
<url>http://intex-press.by/templates/images/rss_logo.gif</url>
<title>INTEX-PRESS Online</title>
<link>http://www.intex-press.by</link>
<width>100</width>
<height>35</height>
</image>
<atom:link href="http://intex-press.by/rss.xml" rel="self" type="application/rss+xml" />
{{list_articles length="50" constraints="type is article section smaller 61 section not 5 topic not Белорусский\ язык:ru" ignore_issue="true" order="bypublishdate desc"}}
<item>
<title>{{$gimme->article->name|html_entity_decode|regex_replace:'/&(.*?)quo;/':'&quot;'}}</title>
<link>{{url options="article"}}</link>
<description>{{$gimme->article->intro|strip_tags:false|strip|escape:'htmlall':'utf-8'}}</description>
<category domain="{{url options="section"}}">{{$gimme->section->name}}</category>
{{list_article_images}}<media:content url="{{$gimme->image->imageurl}}" medium="image" />{{/list_article_images}}
{{if $gimme->article->author->name}}
<atom:author>
<atom:name>{{$gimme->article->author->name}}</atom:name>
</atom:author>
{{/if}}
<pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</pubDate>
<guid isPermaLink="true">{{url options="article"}}</guid>
</item>
{{/list_articles}}
</channel>
</rss>
