{{list_articles length="5" constraints="number not `$gimme->article->number` section is `$gimme->article->section->number`" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<section class="articles-by-section">
	<h3 class="block-title"><span>{{if $gimme->language->code=="ru"}}Другие статьи рубрики{{else}}Other articles{{/if}}</span></h3><!-- .block-title -->
	<ul>
{{/if}}
		<li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></li>
{{if $gimme->current_list->at_end}}
	</ul>
</section><!-- .articles-by-section -->
{{/if}}
{{/list_articles}}
