<div class="article-recent-articles">
{{ assign var="n_article" value=$gimme->article->number }}
{{ local }}
{{ set_default_issue }}
{{ set_default_section }}

	{{* определяем есть ли в списке последних пяти статей текущая статья *}}
	{{ assign var="article_list_length" value="5" }}
	{{ list_articles length="5" ignore_issue="true" }}
		{{ if ($gimme->article->number == $n_article ) }}
			{{ assign var="article_list_length" value="6" }}
		{{ /if }}
	{{ /list_articles }}

	{{ list_articles length=$article_list_length ignore_issue="true" }}
		{{ if $gimme->current_list->at_beginning && $gimme->current_list->count > 1 }}
			<h3 class="article-recent-articles-title">Iншыя артыкулы рубрыкi:</h3>
			<ul>
		{{ /if }}

		{{ if ($gimme->article->number == $n_article ) }}
		{{ else }}
			<li><a href="{{ uri }}">{{ $gimme->article->name }}</a> ({{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }})</li>
		{{ /if }}

		{{ if $gimme->current_list->at_end }}
			</ul>
		{{ /if }}
	{{ /list_articles }}
{{ /local }}
</div>