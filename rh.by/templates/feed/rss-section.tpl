{{set_current_issue}}{{set_section number=$smarty.get.section}}
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/">
<channel>
<title>{{$gimme->publication->name}} - {{$gimme->section->name}}</title>
<link>http://{{$gimme->publication->site}}{{uri options="section"}}</link>
<description>{{$siteinfo.description}}</description>
<language>be</language>
<copyright>Copyright {{$smarty.now|date_format:"%Y"}}, {{$gimme->publication->name}}</copyright>
<lastBuildDate>{{$smarty.now|date_format:"%a, %d %b %Y %H:%M:%S"}} +0300</lastBuildDate>
<ttl>60</ttl>
<generator>Campsite</generator>
<image>
<url>http://{{$gimme->publication->site}}/templates/images/rss-logo.png</url>
<title>{{$gimme->publication->name}} - {{$gimme->section->name}}</title>
<link>http://{{$gimme->publication->site}}{{uri options="section"}}</link>
<width>144</width>
<height>40</height>
</image>
<atom:link href="http://{{$gimme->publication->site}}/feed/{{$smarty.get.section_name}}.rss" rel="self" type="application/rss+xml" />
{{list_articles length="20" constraints="section is `$smarty.get.section`" ignore_issue="true" order="bypublishdate desc"}}
<item>
<title>{{$gimme->article->name|html_entity_decode|regex_replace:'/&(.*?)quo;/':'&quot;'}}</title>
<link>http://{{$gimme->publication->site}}{{uri options="article"}}</link>
<description>
{{if $gimme->article->has_image(1)}}
&lt;img src="{{$gimme->article->image1->thumbnailurl}}" border="0" align="left" hspace="5" /&gt;
{{/if}}
{{$gimme->article->intro|strip_tags:false|strip|escape:'html':'utf-8'}}
&lt;br clear="all"&gt;
</description>
<category domain="http://{{$gimme->publication->site}}{{uri options="section"}}">{{$gimme->section->name}}</category>
{{* На всякий случай
{{list_article_images}}
<media:content url="{{$gimme->image->imageurl}}" medium="image" />
{{/list_article_images}}
{{list_article_attachments}}
<media:content url="{{url options="articleAttachment"}}" medium="{{$gimme->attachment->mime_type}}" />
{{/list_article_attachments}} *}}
{{if $gimme->article->author->name}}
<atom:author><atom:name>{{$gimme->article->author->name}}</atom:name></atom:author>
{{/if}}
<pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0300</pubDate>
<guid isPermaLink="true">http://{{$gimme->publication->site}}{{uri options="article"}}</guid>
</item>
{{/list_articles}}
</channel>
</rss>