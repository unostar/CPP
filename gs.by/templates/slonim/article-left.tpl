<div class="article">
<p class="date">{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}
{{ if $gimme->article->author}}<img src="/templates/slonim/images/footer-spacer.gif" alt="" /> Автор: {{ $gimme->article->author->name }}{{/if}} 
{{ if $gimme->article->comment_count}}<img src="/templates/slonim/images/footer-spacer.gif" alt="" /><a href="#comments" class="article-comments-link">Комментарии {{$gimme->article->comment_count}}</a></p>{{/if}}
<h1>{{ $gimme->article->name }}</h1>
<p class="extra">
<span class="print"><a href="{{ uri options="template slonim/print.tpl" }}" target="_blank">Напечатать</a></span>
<img src="/templates/slonim/images/footer-spacer.gif" alt="" />
<span class="email"><a class="fancy_page" href="{{ uri options="template slonim/phpscripts/sendtofriend/sendtofriend.php"}}">Отправить ссылку</a></span>
<img src="/templates/slonim/images/footer-spacer.gif" alt="" />
<span style="padding:0;"><a href="http://forum.gs.by" target="_blank" >Обсудить на форуме</a></span>
</p>
{{ if $gimme->article->has_image(2) }}<img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}"  class="article-pic" />{{ /if }}
<p class="intro">{{ $gimme->article->intro }}</p>
<p class="text">{{ $gimme->article->Full_text }}</p>

{{list_article_attachments}}
<p><a href="{{uri options="articleAttachment"}}">скачать {{$gimme->attachment->file_name}}, {{$gimme->attachment->size_kb}}(kb)</a></p><br />
{{/list_article_attachments}}

<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style ">
	<a href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=xa-4e19c7383f16c571" class="addthis_button_compact">Поделиться</a>
	<span class="addthis_separator">|</span>
	<a class="addthis_button_twitter"></a>
	<a class="addthis_button_facebook"></a>
	<a class="addthis_button_vk"></a>
</div>
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4e19c7383f16c571"></script>
<!-- AddThis Button END -->

{{if $gimme->section->number != "2"}}{{include file="slonim/article-left-comments.tpl"}}{{/if}}
</div>
