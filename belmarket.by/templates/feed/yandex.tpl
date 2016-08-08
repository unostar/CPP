<rss version="2.0" xmlns:yandex="http://news.yandex.ru">
<channel>
<title>{{$siteinfo.title}}</title>
<link>http://{{$gimme->publication->site}}</link>
<description>{{$siteinfo.description}}</description>
<language>ru</language>
<copyright>Copyright {{$smarty.now|date_format:"%Y"}}, {{$gimme->publication->name}}</copyright>
<lastBuildDate>{{$smarty.now|date_format:"%a, %d %b %Y %H:%M:%S %z"}}</lastBuildDate>
<ttl>60</ttl>
<generator>Newscoop</generator>
<image>
<url>http://{{$gimme->publication->site}}/templates/images/rss-logo-yandex.gif</url>
<title>{{$siteinfo.title}}</title>
<link>http://{{$gimme->publication->site}}</link>
<width>100</width>
<height>21</height>
</image>
{{list_articles length="20" constraints="type is article section greater 9 section smaller 200" order="bypublishdate desc" ignore_issue="true"}}
<item>
<title>{{$gimme->article->name|html_entity_decode|regex_replace:'/&(.*?)quo;/':'&quot;'}}</title>
<link>{{url options="article"}}</link>
<description>{{$gimme->article->Lead|strip_tags:false|strip|escape:'html':'utf-8'}}</description>
{{if $gimme->article->author->name}}<author>{{$gimme->article->author->name}}</author>{{/if}}
<category domain="http://{{$gimme->publication->site}}{{uri options="section"}}">{{$gimme->section->name}}</category>
{{list_article_images}}{{if $gimme->image->article_index > 1}}
<enclosure url="{{$gimme->image->imageurl}}" type="image/jpeg" />
{{/if}}{{/list_article_images}}
<pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S %z"}}</pubDate>
<yandex:genre>article</yandex:genre>
<yandex:full-text><![CDATA[{{$gimme->article->Lead|strip_tags:false|strip|escape:'html':'utf-8'}} {{$gimme->article->Article_text|strip_tags:false|strip}}]]></yandex:full-text>
</item>
{{/list_articles}}
</channel>
</rss>
