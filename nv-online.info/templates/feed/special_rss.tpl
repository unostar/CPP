{{ dynamic }}
{{set_current_issue}}
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/">
<channel>
<title>Народная Воля</title>
<link>http://{{$gimme->publication->site}}</link>
<description>Народная Воля - специальный репортаж</description>
<language>be</language>
<copyright>Copyright {{$smarty.now|date_format:"%Y"}}, {{$gimme->publication->name}}</copyright>
<pubDate>{{$gimme->issue->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</pubDate>
<lastBuildDate>{{$smarty.now|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</lastBuildDate>
<generator>Campsite</generator>
<image>
<url>http://{{$gimme->publication->site}}/templates/images/logo-smallest.png</url>
<title>{{$gimme->publication->name}}</title>
<link>http://{{$gimme->publication->site}}</link>
<width>144</width>
<height>29</height>
</image>
<atom:link href="http://{{$gimme->publication->site}}/srss.xml" rel="self" type="application/rss+xml" />
{{list_articles length="100" constraints="topic is СпецRSS:by" ignore_issue="true" ignore_section="true" order="bypublishdate desc"}}
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
<pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0300</pubDate>
<guid isPermaLink="true">{{url options="article"}}</guid>
</item>
{{/list_articles}}
</channel>
</rss>
{{ /dynamic }}