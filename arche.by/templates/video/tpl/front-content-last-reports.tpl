{{list_articles length="4" constraints="type is video video_report is on section smaller_equal 100" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<section class="last-reports">
	<h2>апошнія відэарэпартажы</h2>
	<ul>
{{/if}}
		<li>
			<a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="preview"><img src="{{uri options="image 1 width 70 height 50" alt="{{$gimme->article->name|escape}}">{{if $gimme->article->length}}<span class="duration">{{$gimme->article->length}}</span>{{/if}}</a>
			<h3><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name|truncate:200}}</a>&nbsp;<small>({{$gimme->article->reads}})</small></h3>
		</li>
{{if $gimme->current_list->at_end}}
	</ul>
</section><!-- .last-reports -->
{{/if}}
{{/list_articles}}
