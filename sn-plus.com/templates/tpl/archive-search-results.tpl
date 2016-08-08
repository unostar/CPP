{{if $smarty.get.page}}{{assign var="page" value=$smarty.get.page}}{{elseif !$page}}{{assign var="page" value="1"}}{{/if}}
{{assign var="articles_per_page" value="10"}}

<h2>Результаты поиска {{if $gimme->search_articles_action->search_phrase}} "{{$gimme->search_articles_action->search_phrase}}"{{/if}}</h2>
<div class="search-results">
{{list_search_results columns=$articles_per_page order="bypublishdate desc"}}
{{if $gimme->current_list->row==$page}}
	<article class="news-item">
		<div>
			<h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h3>
			<p class="time">{{$gimme->article->publish_date|date_format:"%d.%m.%Y"}}</p><!-- .time -->
			<div class="intro"><p>{{$gimme->article->intro|strip_tags:false|strip|truncate:450}}</p></div><!-- .intro -->
		</div>
	</article><!-- .news-item -->
{{/if}}
{{/list_search_results}}
{{if $gimme->prev_list_empty}}
	<article class="news-item">
		<div><h3>С такими критериями поиска ничего не найдено.</h3></div>
	</article><!-- .news-item -->
{{/if}}
</div><!-- .search-results -->

{{list_search_results columns=$articles_per_page order="bypublishdate desc"}}
{{if $gimme->current_list->count > $articles_per_page}}
{{if $gimme->current_list->at_beginning}}
<ul class="pagination">
{{/if}}
{{if $gimme->current_list->column == 1}}
  {{if $gimme->current_list->row==$page}}
    <li class="current"><a>{{$gimme->current_list->row}}</a></li>
  {{else}}
    <li><a href="/{{$gimme->language->code}}/page/archive/?page={{$gimme->current_list->row}}&f_search_articles=true&f_search_level={{$gimme->search_articles_action->search_level}}&f_search_keywords={{$gimme->search_articles_action->search_phrase}}&f_search_issue={{$gimme->search_articles_action->search_issue}}&f_search_section={{$gimme->search_articles_action->search_section}}&f_search_start_date={{$gimme->search_articles_action->start_date}}&f_search_end_date={{$gimme->search_articles_action->end_date}}&f_search_topic={{$gimme->search_articles_action->topic_id}}&f_search_scope={{$gimme->search_articles_action->scope}}">{{$gimme->current_list->row}}</a></li>
  {{/if}}
{{/if}}
{{if $gimme->current_list->at_end}}
</ul><!-- .pagination -->
{{/if}}
{{/if}}
{{/list_search_results}}
