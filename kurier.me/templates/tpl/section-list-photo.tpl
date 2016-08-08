{{if $smarty.get.page}}{{assign var="page" value=$smarty.get.page}}{{elseif !$page}}{{assign var="page" value="1"}}{{/if}}
{{assign var="articles_per_page" value="10"}}

{{if !$ajax}}<div id="section-content">{{/if}}

{{list_articles columns=$articles_per_page constraints="type is photo" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->row == $page}}
<article class="article-short">
  {{if $gimme->article->has_image(1)}}<p class="main-image"><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image 1 width 220"}}" width="220" alt="{{$gimme->article->name|escape:'html'}}" /></a></p>{{/if}}
	<h2><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h2>
  <p class="date"><time pubdate datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%dT%H:%M:%S+03:00"}}">{{$gimme->article->publish_date|date_format:"%H:%M | %d.%m.%Y"}}</time></p>
	<p>{{$gimme->article->intro|strip_tags:false|strip}}</p>
	<footer>
{{list_article_authors}}
		<p class="author">{{$gimme->author->type}}: <a href="/{{$gimme->language->code}}/page/author/?name={{$gimme->author->name|escape:'url':'utf-8'}}">{{$gimme->author->name}}</a></p>
{{/list_article_authors}}
{{if !$ajax}}
		<p class="comments"><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}#disqus_thread" data-disqus-identifier="vitkur-{{$gimme->article->number}}"></a></p>
{{/if}}
	</footer>
</article><!-- .article-short -->
{{/if}}
{{/list_articles}}

{{list_articles columns=$articles_per_page constraints="type is photo" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->count > $articles_per_page}}
  {{if $gimme->current_list->at_beginning}}
	<div class="section-pagination">
		<ol>
			<li class="direction prev">{{if $page-1 > 0}}<a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/?page={{$page-1}}"></a>{{/if}}</li>
  {{/if}}
  {{if $gimme->current_list->column == 1}}
    {{if $gimme->current_list->row==$page}}
			<li class="current"><a>{{$gimme->current_list->row}}</a></li>
    {{else}}
			<li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/?page={{$gimme->current_list->row}}">{{$gimme->current_list->row}}</a></li>
    {{/if}}
  {{/if}}
  {{if $gimme->current_list->at_end}}
			<li class="direction next">{{if $page+1 <= $gimme->current_list->row}}<a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/?page={{$page+1}}"></a>{{/if}}</li>
		</ol>
		<p><small>Всего {{$gimme->current_list->count/$articles_per_page|ceil}} страниц</small></p>
	</div><!-- .section-pagination -->
  {{/if}}
{{/if}}
{{/list_articles}}

{{if !$ajax}}</div><!-- #section-content -->{{/if}}