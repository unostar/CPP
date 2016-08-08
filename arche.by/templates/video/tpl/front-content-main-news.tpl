<section class="main-news">
	<h2>ГАЛОЎНАЕ</h2>
	<ul>
{{list_articles length="7" constraints="type is video OnFrontPage is on" ignore_section="true" ignore_issue="true" order="bypublishdate desc"}}
		<li>
			<figure>
				<a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="preview"><img src="{{if $gimme->current_list->at_beginning}}{{uri options="image 1 width 328 height 240"}}{{else}}{{uri options="image 1 width 130 height 95"}}{{/if}}" alt="{{$gimme->article->name|escape}}">{{if $gimme->article->length}}<span class="duration">{{$gimme->article->length}}</span>{{/if}}</a>
				<figcaption><h3><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name|truncate:55}}</a>&nbsp;<small>({{$gimme->article->reads}})</small></h3></figcaption>
			</figure>
		</li>
{{/list_articles}}
	</ul>
</section><!-- .main-news -->
