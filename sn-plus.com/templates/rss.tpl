{{ php }}header("Content-Type: application/rss+xml"); print "<?xml version=\"1.0\" encoding=\"utf-8\"?>
";{{ /php }}
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/">
<channel>
<title>{{ if $gimme->section->defined && $gimme->section->url_name != "rss" }}{{ $gimme->section->name }} — {{ /if }}{{ $gimme->publication->name }}</title>
<link>http://{{ $gimme->publication->site }}{{ if $gimme->section->defined && $gimme->section->url_name != "rss" }}/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ /if }}</link>
<description>{{ $siteinfo.description }}</description>
<language>{{ $gimme->language->code }}</language>
<copyright>Copyright {{ $smarty.now|date_format:"%Y" }}, {{ $gimme->publication->name }}</copyright>
<lastBuildDate>{{ $smarty.now|date_format:"%a, %d %b %Y %H:%M:%S %z" }}</lastBuildDate>
<ttl>60</ttl>
<generator>Newscoop</generator>
<image>
<url>http://{{ $gimme->publication->site }}/templates/img/logo.png</url>
<title>{{ if $gimme->section->defined && $gimme->section->url_name != "rss" }}{{ $gimme->section->name }} — {{ /if }}{{ $gimme->publication->name }}</title>
<link>http://{{ $gimme->publication->site }}{{ if $gimme->section->defined && $gimme->section->url_name != "rss" }}/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ /if }}</link>
<width>393</width>
<height>96</height>
</image>
<atom:link href="{{ url }}" rel="self" type="application/rss+xml" />
{{ if $gimme->section->defined && $gimme->section->url_name != "rss" }}{{ assign var="const" value="section is `$gimme->section->number`" }}{{ else }}{{ assign var="const" value="section greater 1 section smaller 161" }}{{ /if }}
{{ list_articles length="20" constraints=$const ignore_issue="true" order="bypublishdate desc" }}
<item>
<title>{{ $gimme->article->name|html_entity_decode|regex_replace:'/&(.*?)quo;/':'&quot;' }}</title>
<link>http://{{ $gimme->publication->site }}/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/</link>
<description>
{{ if $gimme->article->has_image(1) }}
&lt;img src="{{ $gimme->article->image1->thumbnailurl }}" border="0" align="left" hspace="5" /&gt;
{{ /if }}
{{ $gimme->article->intro|strip_tags:false|strip|escape:'html':'utf-8' }}
&lt;br clear="all"&gt;
</description>
<category domain="http://{{ $gimme->publication->site }}/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/">{{ $gimme->section->name }}</category>
{{ if $gimme->article->author->name }}
<atom:author><atom:name>{{ $gimme->article->author->name }}</atom:name></atom:author>
{{ /if }}
<pubDate>{{ $gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S %z" }}</pubDate>
<guid isPermaLink="true">http://{{ $gimme->publication->site }}/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}</guid>
</item>
{{ /list_articles }}
</channel>
</rss>