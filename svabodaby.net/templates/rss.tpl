{{set_current_issue}}
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
<channel>
<atom:link href="http://{{ $gimme->publication->site }}/rss.xml" rel="self" type="application/rss+xml" />
<title>{{$gimme->publication->name}}</title>
<link>http://{{ $gimme->publication->site }}</link>
<description>{{$siteinfo.description}}</description>
<language>be</language>
<copyright>Copyright © 2009 {{ $gimme->publication->site }}</copyright>
<lastBuildDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0300</lastBuildDate>
<generator>Campsite</generator>
<image>
<url>http://{{ $gimme->publication->site }}/templates/img/logo_rss.gif</url>
<title>{{$gimme->publication->name}}</title>
<link>http://{{ $gimme->publication->site }}</link>
<width>144</width>
<height>32</height>
</image>
{{list_articles length="20" order="bypublishdate desc" ignore_issue="true" constraints="type is article"}}
<item>
<title>{{$gimme->article->name}}</title>
<description><![CDATA[{{$gimme->article->intro}}]]></description>
<link>{{url options="article"}}</link>
<pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0300</pubDate>
<guid isPermaLink="true">{{url options="article"}}</guid>
</item>
{{/list_articles}}
</channel>
</rss>