{{list_articles length="6" constraints="section is 280" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<div class="front-blogs">
	<img class="title" alt="БЛОГИ" src="/templates/images/blogs-title.png" />
	<div class="nbs-column left">
{{/if}}
{{if $gimme->current_list->index==4}}
	</div><!-- /.nbs-column left -->
	<div class="nbs-column right">
{{/if}}
<div class="imaged">
	<a title="{{ $gimme->article->image1->description|strip_tags:true }}" href="{{ uri options="article" }}"><img class="pic" alt="{{ $gimme->article->image1->description|strip_tags:true }}" src="{{ uri options="image 1" }}" /></a>
	<h4>{{$gimme->article->author->name}}</h4>
	<p><a href="{{ uri options="article" }}" title="{{ $gimme->article->intro|strip_tags:false }}">{{ $gimme->article->name }}</a></p>
	<div class="clear"></div>
</div>
{{if $gimme->current_list->at_end}}
	</div><!-- /.nbs-column right -->
</div>
<div class="clear"></div>
{{/if}}
{{/list_articles}}
