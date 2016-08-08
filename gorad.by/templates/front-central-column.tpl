<div class="b-maincontent">
<h2 class="header-block m-header-block-blue">
	<b class="bg-header-block-l"></b><b class="bg-header-block-r"></b>
	<span class="header-block-i">Навіны па рубрыках</span>
</h2>
<div class="b-maincontent-il"><div class="b-maincontent-ir"><div class="b-maincontent-i">
{{list_sections constraints="number smaller 100"}}
<div class="c-newsmain">
	<h3 class="c-newsmain_header">
		<a href="/by/page/{{$gimme->section->url_name}}">{{$gimme->section->name}}</a>
		<a class="feed" href="/feed/{{$gimme->section->url_name}}.rss"><i class="ico ico-rss"></i>RSS</a>
	</h3>
	<div class="c-newsmain-3cols g-tjustify">
	{{list_articles length="1" order="bypublishdate desc" ignore_issue="true"}}
		<div class="c-newsmain-first g-dbjustify">
			<div class="c-preview">
				<h4><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="c-preview_header">
					{{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description|escape}}" {{if $gimme->article->image1->photographer}}title="Фота: {{$gimme->article->image1->photographer|escape}}"{{/if}} width="88" height="88" />{{/if}}
					{{$gimme->article->name}}{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}
				</a></h4>
				{{$gimme->article->intro|strip_tags:false}}
				{{*if $gimme->article->comment_count}}<span class="c-preview-comments"><i class="ico"></i>{{$gimme->article->comment_count}}</span>{{/if*}}
			</div>
		</div>
	{{/list_articles}}
	{{list_articles length="4" order="bypublishdate desc" ignore_issue="true"}}
	{{if $gimme->current_list->count > 1}}
		{{if $gimme->current_list->at_beginning}}
			<div class="c-newsmain-col3 g-dbjustify">
				<ul class="list-linkarrow">
		{{/if}}
		{{if $gimme->current_list->index > 1}}
					<li><h4><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><span class="list-linkarrow-i">{{$gimme->article->name}}{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}</span></a></h4></li>
		{{/if}}
		{{if $gimme->current_list->at_end}}
				</ul>
			</div>
		{{/if}}
	{{/if}}
	{{/list_articles}}
	<span class="g-tjustfix"></span>
	</div>
</div>
{{/list_sections}}
</div></div></div>
<span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>

