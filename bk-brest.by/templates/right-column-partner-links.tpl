{{list_articles constraints="type is link issue is 1 section is 400" order="bysectionorder asc"}}
{{if $gimme->current_list->at_beginning}}
<div class="b-navi">
	<div class="b-bheader_black"><span>{{$gimme->section->name}}</span></div>
	<ul class="g-none list-linkslightgray">
{{/if}}
		<li><a href="{{$gimme->article->href}}" target="_blank">{{$gimme->article->name}}</a></li>
{{if $gimme->current_list->at_end}}
	</ul>
</div>
{{/if}}
{{/list_articles}}
