{{assign var="author_const" value=$smarty.get.name|replace:' ':'\ '}}
<div class="about-author">
	<h3 class="block-title"><span>{{if $gimme->language->code=="ru"}}Страница автора{{else}}Author Page{{/if}}</span></h3>
{{list_articles length="1" constraints="author is `$author_const`" ignore_issue="true" ignore_section="true"}}
{{list_article_authors}}{{if $gimme->author->name == $smarty.get.name}}
{{if $gimme->author->picture->defined}}<img src="{{$gimme->author->picture->imageurl}}" alt="{{$gimme->author->name|escape:'html'}}" class="author-photo" />{{/if}}
	<h1>{{$gimme->author->name}}</h1>
	<p>{{$gimme->author->biography->text|htmlspecialchars_decode}}</p>
	<p><a href="/?{{urlparameters options="template tpl/sendmail.tpl"}}&amp;type=author" class="send-message sendmail_author">Написать автору</a></p>
<div class="actions">
	<ul class="share">
		<li><div class="fb-like" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false" data-action="recommend"></div></li>
		<li><a href="http://twitter.com/share" class="twitter-share-button" data-lang="ru" data-url="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/author/?name={{$gimme->author->name|escape:'url':'utf-8'}}"></a></li>
		<li><div class="addthis_toolbox addthis_default_style "><a class="addthis_counter addthis_pill_style"></a></div></li>
	</ul><!-- .share -->
</div><!-- .actions -->
{{/if}}{{/list_article_authors}}
{{/list_articles}}
</div><!-- .about-author -->
{{include file="tpl/author-content-list.tpl"}}
