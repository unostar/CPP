{{if $gimme->article->has_topics}}
<section class="articles-by-topic">
	<h3 class="block-title"><span>{{if $gimme->language->code=="ru"}}Другие статьи по теме{{else}}Other articles on topic{{/if}}</span></h3><!-- .block-title -->
{{list_article_topics}}{{assign var="topic_cond" value="`$topic_cond` topic is `$gimme->topic->identifier` "}}{{/list_article_topics}}
{{list_articles length="3" constraints="number not `$gimme->article->number` `$topic_cond` matchAnyTopic" ignore_issue="true" ignore_section="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
	<ul>
{{/if}}
		<li>
			{{if $gimme->article->author->picture->imageurl}}<a href="/{{$gimme->language->code}}/page/author/?name={{$gimme->article->author->name|escape:'url':'utf-8'}}"><img src="{{$gimme->article->author->picture->imageurl}}" width="45" height="45" alt="{{$gimme->article->author->name|escape:'html'}}" /></a>{{/if}}
			<a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>
		</li>
{{if $gimme->current_list->at_end}}
	</ul>
{{/if}}
{{/list_articles}}
	<dl>
		<dt>{{if $gimme->language->code=="ru"}}Темы{{else}}Topics{{/if}}:</dt>
		<dd>{{list_article_topics}}<a href="/{{$gimme->language->code}}/page/topic/?{{urlparameters}}">{{$gimme->topic->name}}</a>{{if !$gimme->current_list->at_end}}, {{/if}}{{/list_article_topics}}</dd>
	</dl>
</section><!-- .articles-by-topic -->
{{/if}}
