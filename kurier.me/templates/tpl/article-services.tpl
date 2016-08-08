<div class="actions bottom">
	<ul class="share">
		<li><div class="fb-like" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false" data-action="recommend"></div></li>
		<li><a href="http://twitter.com/share" class="twitter-share-button" data-lang="ru" data-url="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"></a></li>
		<li><div class="addthis_toolbox addthis_default_style "><a class="addthis_counter addthis_pill_style"></a></div></li>
	</ul><!-- .share -->
{{if $gimme->section->number!=520}}
	<p class="font-size">Размер текста: <a href="+" title="Увеличить" class="increase" data-target="article.article"></a> <a href="-" title="Уменьшить" class="decrease" data-target="article.article"></a></p><!-- .font-size -->
	<p class="print"><a href="/{{$gimme->language->code}}/page/print/{{$gimme->article->number}}">{{if $gimme->language->code=="ru"}}Печать{{else}}Print{{/if}}</a></p><!-- .print -->
{{/if}}
</div><!-- .actions -->

<div class="actions top">
	<ul class="share">
		<li><div class="fb-like" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false" data-action="recommend"></div></li>
		<li><a href="http://twitter.com/share" class="twitter-share-button" data-lang="ru" data-url="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"></a></li>
		<li><div class="addthis_toolbox addthis_default_style "><a class="addthis_counter addthis_pill_style"></a></div></li>
	</ul><!-- .share -->
{{if $gimme->section->number!=520}}
	<p class="font-size">Размер текста: <a href="+" title="Увеличить" class="increase" data-target="article.article"></a> <a href="-" title="Уменьшить" class="decrease" data-target="article.article"></a></p><!-- .font-size -->
	<p class="print"><a href="/{{$gimme->language->code}}/page/print/{{$gimme->article->number}}">{{if $gimme->language->code=="ru"}}Печать{{else}}Print{{/if}}</a></p><!-- .print -->
{{/if}}
</div><!-- .actions -->
