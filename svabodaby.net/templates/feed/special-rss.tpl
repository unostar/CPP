<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/">
<channel>
<title>{{$gimme->publication->name}} - Абранае</title>
<link>http://{{$gimme->publication->site}}</link>
<description>{{$siteinfo.description}}</description>
<language>be</language>
<copyright>Copyright {{$smarty.now|date_format:"%Y"}}, {{$gimme->publication->name}}</copyright>
<lastBuildDate>{{$smarty.now|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</lastBuildDate>
<ttl>60</ttl>
<generator>Campsite</generator>
<image>
<url>http://{{$gimme->publication->site}}/templates/img/logo_rss.gif</url>
<title>{{$gimme->publication->name}}</title>
<link>http://{{$gimme->publication->site}}</link>
<width>144</width>
<height>32</height>
</image>
<atom:link href="http://{{$gimme->publication->site}}/feed/special.rss" rel="self" type="application/rss+xml" />
{{list_articles length="20" constraints="section smaller 100 type is article special_rss is on" ignore_issue="true" order="bypublishdate desc"}}
<item>
<title>{{$gimme->article->name|html_entity_decode|regex_replace:'/&(.*?)quo;/':'&quot;'}}</title>
<link>http://{{$gimme->publication->site}}{{uri options="article"}}</link>
<description>
{{if $gimme->article->has_image(2)}}
&lt;img src="{{$gimme->article->image2->thumbnailurl}}" border="0" align="left" hspace="5" width="64" /&gt;
{{/if}}
{{$gimme->article->intro|strip_tags:false|strip|escape:'html':'utf-8'}}
&lt;br clear="all"&gt;
</description>
<category domain="http://{{$gimme->publication->site}}{{uri options="section"}}">{{$gimme->section->name}}</category>
{{list_article_images}}{{if $gimme->article->image->article_index > 1 }}<media:content url="{{$gimme->image->imageurl}}" medium="image" />{{/if}}{{/list_article_images}}
{{if $gimme->article->author->name}}
<atom:author><atom:name>{{$gimme->article->author->name}}</atom:name></atom:author>
{{/if}}
<pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0200</pubDate>
<guid isPermaLink="true">http://{{$gimme->publication->site}}{{uri options="article"}}</guid>
</item>
{{/list_articles}}
</channel>
</rss>