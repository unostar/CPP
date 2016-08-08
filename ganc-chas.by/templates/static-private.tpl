<div class="b-main">
	<dl class="ui-accordion ui-widget">
{{list_articles length="1" constraints="type is plain_text section is 240" ignore_issue="true"}}{{assign var="last_published" value=$gimme->article->issue->number}}{{/list_articles}}
{{list_articles constraints="type is plain_text section is 240 issue is $last_published"}}
		<dt class="ui-accordion-header ui-state-default">{{$gimme->article->name}}</dt>
		<dd class="ui-accordion-content">{{$gimme->article->full_text}}</dd>
{{/list_articles}}
	</dl>
</div>