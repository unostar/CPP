{{assign var="author_const" value=$smarty.get.name|replace:' ':'\ '}}
{{if $smarty.get.page}}{{assign var="page" value=$smarty.get.page}}{{elseif !$page}}{{assign var="page" value="1"}}{{/if}}
{{if !$ajax}}<div class="authors-articles" id="section-content">{{/if}}
{{list_articles columns="12" constraints="author is `$author_const`" ignore_issue="true" ignore_section="true" order="bypublishdate desc"}}
{{if $gimme->current_list->row == $page}}
	<article class="article-short">
		<h2><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h2>
		<p class="date"><time pubdate datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%dT%H:%M:%S+03:00"}}">{{$gimme->article->publish_date|date_format:"%H:%M | %d.%m.%Y"}}</time></p>
		<p>{{$gimme->article->intro|strip_tags:false|strip}}</p>
		<footer>
			<p class="media">{{if $gimme->article->has_photo}}<span class="photo" title="Фото"></span>{{/if}}{{if $gimme->article->has_video}}<span class="video" title="Видео"></span>{{/if}}</p><!-- .media -->
			<p class="comments"><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}#disqus_thread" data-disqus-identifier="vitkur-{{$gimme->article->number}}"></a></p>
		</footer>
	</article><!-- .article-short -->
{{/if}}
{{/list_articles}}

{{list_articles columns="12" constraints="author is `$author_const`" ignore_issue="true" ignore_section="true" order="bypublishdate desc"}}
{{if $gimme->current_list->count > 12}}
  {{if $gimme->current_list->at_beginning}}
	<div class="section-pagination">
		<ol>
			<li class="direction prev">{{if $page-1 > 0}}<a href="/{{$gimme->language->code}}/page/author/?page={{$page-1}}&amp;name={{$smarty.get.name|escape:'url':'utf-8'}}"></a>{{/if}}</li>
  {{/if}}
  {{if $gimme->current_list->column == 1}}
    {{if $gimme->current_list->row==$page}}
			<li class="current"><a>{{$gimme->current_list->row}}</a></li>
    {{else}}
			<li><a href="/{{$gimme->language->code}}/page/author/?page={{$gimme->current_list->row}}&amp;name={{$smarty.get.name|escape:'url':'utf-8'}}">{{$gimme->current_list->row}}</a></li>
    {{/if}}
  {{/if}}
  {{if $gimme->current_list->at_end}}
			<li class="direction next">{{if $page+1 <= $gimme->current_list->row}}<a href="/{{$gimme->language->code}}/page/author/?page={{$page+1}}&amp;name={{$smarty.get.name|escape:'url':'utf-8'}}"></a>{{/if}}</li>
		</ol>
		<p><small>Всего {{$gimme->current_list->count/12|ceil}} страниц</small></p>
	</div><!-- .section-pagination -->
  {{/if}}
{{/if}}
{{/list_articles}}
{{if !$ajax}}</div><!-- .authors-articles -->{{/if}}