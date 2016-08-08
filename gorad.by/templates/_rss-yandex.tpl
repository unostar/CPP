{{dynamic}}
<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0" xmlns="http://backend.userland.com/rss2" xmlns:yandex="http://news.yandex.ru">
	<channel>
		<title>{{$gimme->publication->name}}</title>
		<link>http://{{$gimme->publication->site}}</link>
		<description>{{$siteinfo.description}}</description>
		<image>
			<url>http://{{$gimme->publication->site}}/templates/images/rss-logo.gif</url>
			<title>{{$gimme->publication->name}}</title>
			<link>http://{{$gimme->publication->site}}</link>
		</image>
{{list_articles length="20" constraints="section is 20 bel_lang is off" ignore_issue="true" order="bypublishdate desc"}}
{{ assign var = "dirty_article_name" value = $gimme->article->name|escape:'html':'utf-8' }}
{{ php }}
	$gimme = $this->get_template_vars('gimme');
	$article_title = $this->get_template_vars('dirty_article_name');

	$word_to_avoid = array("(видео)", "(дополнено)", "(обновлено)");

	$clean_article_title = trim(str_replace($word_to_avoid, "", $article_title));

	$this->assign('clean_article_title', $clean_article_title);
{{ /php }}
		<item>
			<title>{{$clean_article_title}}</title>
			<link>http://{{$gimme->publication->site}}/{{$gimme->language->code}}/{{$gimme->issue->url_name}}/{{$gimme->section->url_name}}/{{$gimme->article->number}}</link>
			<description>{{$gimme->article->intro|strip|escape:'html':'utf-8'}}</description>
{{list_article_images}}{{if $gimme->image->article_index > 1}}
			<enclosure url="{{$gimme->image->imageurl}}" type="image/jpeg" />
{{/if}}{{/list_article_images}}
{{if $gimme->article->author->name}}
			<author>{{$gimme->article->author->name|strip_tags|strip|escape:'html':'utf-8'}}</author>
{{/if}}
{{*			<category>{{$gimme->section->name}}</category>*}}
			<pubDate>{{$gimme->article->publish_date|date_format:"%a, %d %b %Y %H:%M:%S"}} +0300</pubDate>
			<yandex:full-text>{{$gimme->article->intro|strip|escape:'html':'utf-8'}} {{$gimme->article->full_text|strip|escape:'html':'utf-8'}}</yandex:full-text>
		</item>
{{/list_articles}}
	</channel>
</rss>
{{/dynamic}}