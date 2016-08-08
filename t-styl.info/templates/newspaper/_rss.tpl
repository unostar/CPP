{{set_current_issue}}
{{if $smarty.get.id}}{{assign var="section_id" value="section is `$smarty.get.id`"}}{{assign var="id" value="?id=`$smarty.get.id`"}}{{set_section number=$smarty.get.id}}{{else}}{{assign var="section_id" value="section smaller 200"}}{{/if}}
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/">
<channel>
<title>Твой стыль {{if $gimme->section->defined}}- {{$gimme->section->name}}{{else}}- RSS усiх артыкулаў сайта{{/if}}</title>
<link>http://t-styl.info</link>
<description>Твой стыль - он-лайн версiя друкаванага выдання</description>
<language>be</language>
<copyright>Copyright {{$smarty.now|date_format:"%Y"}}, {{$gimme->publication->name}}</copyright>
<lastBuildDate>{{$smarty.now|date_format:"%a, %d %b %Y %H:%M:%S"}} +0300</lastBuildDate>
<generator>Campsite</generator>
<image>
<url>http://t-styl.info/templates/newspaper/images/footer-logo.gif</url>
<title>Твой стыль {{if $gimme->section->defined}}- {{$gimme->section->name}}{{else}}- RSS усiх артыкулаў сайта{{/if}}</title>
<link>http://t-styl.info</link>
<width>106</width>
<height>50</height>
</image>
<atom:link href="http://t-styl.info/index.rss{{$id}}" rel="self" type="application/rss+xml" />
{{list_articles length="20" constraints="type is Article `$section_id`" ignore_issue="true" order="bypublishdate desc"}}
<item>
<title>{{$gimme->article->name|html_entity_decode|replace:'&':''|regex_replace:'/&(.*?)quo;/':'&quot;'}}</title>
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
{{list_article_attachments}}
{{ if $gimme->attachment->extension == "mp3" }}
<enclosure url="{{ uri options="articleattachment" }}" length="{{ $gimme->attachment->size_b }}" type="{{$gimme->attachment->mime_type}}"/>
{{ /if }}
{{/list_article_attachments}}
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