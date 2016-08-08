{{list_articles length="4" constraints="type is video video_news is on section smaller_equal 100" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<section class="video-news">
	<header>
		<h2>Відэанавіны</h2>
	</header>
	<ul>
{{/if}}
		<li>
			<a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="preview"><img src="{{uri options="image 1 width 130 height 95"}}" alt="{{$gimme->article->name|escape}}">{{if $gimme->article->length}}<span class="duration">{{$gimme->article->length}}</span>{{/if}}</a>
			<h3><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>&nbsp;<small>({{$gimme->article->reads}})</small></h3>
			<ul class="video-info">
				<li><time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%dT%H:%i"}}">{{$gimme->article->publish_date|camp_date_format:"%H:%i %d/%m/%Y"}}</time></li>
				<li><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}#disqus_thread" data-disqus-identifier="videoarche-{{$gimme->article->number}}" class="comments-count"></a></li>
			</ul><!-- .video-info -->
			<div class="text">{{$gimme->article->text|strip_tags:false|strip|truncate:100}} <a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="more">глядзець >></a></div>
		</li>
{{if $gimme->current_list->at_end}}
	</ul>
</section><!-- .video-news -->
{{/if}}
{{/list_articles}}
