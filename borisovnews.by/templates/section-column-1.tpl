<div id="column-1" class="clearfix">
<div class="h1">{{ $gimme->section->name }}</div>
{{ list_articles order="bySectionOrder asc" }}
<div class="section-digest clearfix">
<span class="date">{{$gimme->article->publish_date|camp_date_format:"%e %M %Y"}}</span>
<h2><a href="{{uri options="article"}}">{{ $gimme->article->name }}</a></h2>
{{ if $gimme->article->has_image(2) }}<a href="{{ uri options="image 2" }}" class="main-image"><img src="{{ uri options="image 2 width 310" }}" alt="{{$gimme->article->image2->description|escape}}" title="{{$gimme->article->image2->description|escape}}" /></a>{{ /if }}
<p>{{ $gimme->article->intro|strip_tags:false }}</p>
<div class="readmore"><a href="{{ uripath options="article" }}#comments">Комментарии</a><span>|</span><a href="{{ uri options="article" }}">Читать дальше &rsaquo;&rsaquo;</a></div><br/>
</div>
<hr class="section-divider" />
{{ /list_articles }}
<div class="h1 small">Из предыдущего номера</div>
<div class="section-digest clearfix">
<ul class="news-digest clearfix">
{{ assign var="count" value="1" }}
{{ assign var="allcount" value="1" }}
{{ list_articles length="45" columns="3" ignore_issue="true" order="byPublishdate desc"  }}
	{{* $gimme->default_issue->publish_date|camp_date_format:"%e %M %Y" }} -> {{ $gimme->article->issue->publish_date|camp_date_format:"%e %M %Y" *}}
	{{ if !$gimme->issue->is_current && $allcount <= 33 }}
		<li{{if $count=="3"}} class="last"{{/if}}>
			<h3><a href="{{uri options="article"}}">{{ $gimme->article->name }}</a></h3>
			{{ if $gimme->article->has_image(1) }}<img src="{{ uri options="image 1 width 100 height 70" }}" alt="{{$gimme->article->image1->description|escape}}" title="{{$gimme->article->image1->description|escape}}" />{{/if}}
			<p>{{$gimme->article->intro|strip_tags:false|truncate:300}}</p>
			<div class="readmore"><a href="{{ uripath options="article" }}#comments">Комментарии</a><span>|</span><a href="{{ uri options="article" }}">Читать дальше &rsaquo;&rsaquo;</a></div>
		</li>
		{{if $count == "3" && $gimme->current_list->count > 3 }}
			<li class="break"><!--break--></li>
		{{/if}}
		{{if $count=="3"}}{{ assign var="count" value="1" }}{{else}}{{ assign var="count" value=$count+1 }}{{/if}}
		{{ assign var="allcount" value=$allcount+1 }}
	{{/if}}
{{ /list_articles }}
</ul>
</div>
</div>