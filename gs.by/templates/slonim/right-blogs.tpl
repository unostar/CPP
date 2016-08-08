{{list_articles length="10" constraints="section is 180" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<div class="blogs">
<p class="title margin-top-20">Блоги</p>
{{/if}}
<img src="{{uri options="image 1 width 60 height 60"}}" alt="{{$gimme->article->image(1)->description}}" />
<a href="{{uri options="article"}}">{{$gimme->article->name}}</a>
<p>{{$gimme->article->intro}}</p>
<br />
{{if $gimme->current_list->at_end}}
</div>
{{/if}}
{{/list_articles}}
