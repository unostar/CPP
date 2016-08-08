{{set_current_issue}}{{set_section number="210"}}<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/">
<channel>
<title>{{$gimme->publication->name}} | {{$gimme->section->name}}</title>
<link>http://{{$gimme->publication->site}}</link>
<description>{{$siteinfo.description}}</description>
<language>{{$gimme->issue->language->code}}</language>
<copyright>Copyright {{$smarty.now|date_format:"%Y"}}, {{$gimme->publication->name}}</copyright>
<lastBuildDate>{{$smarty.now|date_format:"%a, %d %b %Y %H:%M:%S"}} +0300</lastBuildDate>
<ttl>60</ttl>
<generator>Campsite</generator>
<image>
<url>http://{{$gimme->publication->site}}/templates/images/rss-logo.png</url>
<title>{{$gimme->publication->name}} | {{$gimme->section->name}}</title>
<link>http://{{$gimme->publication->site}}</link>
<width>144</width>
<height>27</height>
</image>
<atom:link href="http://{{$gimme->publication->site}}/news.rss" rel="self" type="application/rss+xml" />
{{list_articles length="20" constraints="type is article section is 210" ignore_issue="true" order="bypublishdate desc"}}
<item>
<title>{{$gimme->article->name|html_entity_decode|regex_replace:'/&(.*?)quo;/':'&quot;'}}</title>
<link>{{url options="article"}}</link>
<description>
{{if $gimme->article->has_image(1)}}&lt;img src="{{$gimme->article->image1->imageurl}}" width="100" height="100" border="0" align="left" hspace="5" /&gt;{{/if}}
{{$gimme->article->intro|strip_tags:false|strip|escape:'html':'utf-8'}}
&lt;br clear="all"&gt;
</description>
<category domain="{{url options="section"}}">{{$gimme->section->name}}</category>
{{list_article_images}}{{if $gimme->image->article_index > 1}}
<media:content url="{{$gimme->image->imageurl}}" medium="image" />
{{/if}}{{/list_article_images}}
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