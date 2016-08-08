<section class="new-in-section">
	<div class="new-in-section-inner">
		<h2>новае ў рубрыцы “{{$gimme->section->name}}”</h2>
		<ul>
{{list_articles length="7" constraints="type is video" ignore_issue="true" order="bypublishdate desc"}}
			<li>
				<figure>
					<a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="preview"><img src="{{uri options="image 1 width 130 height 95"}}" alt="{{$gimme->article->name|escape}}">{{if $gimme->article->length}}<span class="duration">{{$gimme->article->length}}</span>{{/if}}</a>
					<figcaption><h3><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name|truncate:55}}</a></h3></figcaption>
				</figure>
			</li>
{{/list_articles}}
		</ul>
	</div><!-- .new-in-section-inner -->
</section><!-- .new-in-section -->
