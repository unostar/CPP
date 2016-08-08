<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/">
<channel>
<title>{{$gimme->publication->name}}</title>
<link>http://{{$gimme->publication->site}}</link>
<description>{{$siteinfo.description}}</description>
<language>be</language>
<copyright>Copyright {{$smarty.now|date_format:"%Y"}}, {{$gimme->publication->name}}</copyright>
<lastBuildDate>{{$smarty.now|date_format:"%a, %d %b %Y %H:%M:%S"}} +0300</lastBuildDate>
<ttl>60</ttl>
<generator>Campsite</generator>
<image>
<url>http://{{$gimme->publication->site}}/templates/images/rss-logo.jpg</url>
<title>{{$gimme->publication->name}}</title>
<link>http://{{$gimme->publication->site}}</link>
<width>144</width>
<height>58</height>
</image>
<atom:link href="http://{{$gimme->publication->site}}/feed/index.rss" rel="self" type="application/rss+xml" />
{{list_articles length="20" constraints="type is article issue greater 1 section not 100 section not 120 section not 140" order="bypublishdate desc"}}
<item>
<title>{{$gimme->article->name|html_entity_decode|regex_replace:'/&(.*?)quo;/':'&quot;'}}</title>
<link>http://{{$gimme->publication->site}}/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}</link>
<description>
{{if $gimme->section->number != "150"}}

	{{if $gimme->article->has_image(2)}}
		&lt;img src="{{$gimme->article->image2->imageurl}}" width="310" height="220" border="0" align="left" hspace="10" /&gt;
	{{/if}}

	&lt;p&gt;&lt;strong&gt;{{$gimme->article->intro|strip_tags:false|strip|escape:'html':'utf-8'}}&lt;/strong&gt;&lt;/p&gt;

	{{$gimme->article->full_text|truncate:700:"…"|escape:'html':'utf-8'}}

	&lt;p&gt;&lt;a href="http://{{$gimme->publication->site}}/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"&gt;Читать далее →&lt;/a&gt;&lt;/p&gt;

{{else}}

	{{if $gimme->article->has_image(3)}}
		&lt;a href="http://{{$gimme->publication->site}}/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"&gt;&lt;img src="{{$gimme->article->image3->imageurl}}" border="0" /&gt;&lt;/a&gt;
	{{/if}}

	{{$gimme->article->full_text|escape:'html':'utf-8'}}

	&lt;p&gt;&lt;a href="http://{{$gimme->publication->site}}/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"&gt;Смотреть другие фотографии этого репортажа →&lt;/a&gt;&lt;/p&gt;

{{/if}}
{{* Старая версия
{{if $gimme->article->has_image(2)}}
&lt;img src="{{$gimme->article->image2->thumbnailurl}}" width="64" height="47" border="0" align="left" hspace="5" /&gt;
{{/if}}
{{$gimme->article->intro|strip_tags:false|strip|escape:'html':'utf-8'}}
&lt;br clear="all"&gt;
*}}
</description>
<category domain="http://{{$gimme->publication->site}}/by/page/{{$gimme->section->url_name}}">{{$gimme->section->name}}</category>
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
<guid isPermaLink="true">http://{{$gimme->publication->site}}/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}</guid>
</item>
{{/list_articles}}
</channel>
</rss>