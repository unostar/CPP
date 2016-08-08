{{ list_articles length="1" columns="5" ignore_issue="true" order="bypublishdate desc" }}
	<div class="last-bigpicture">
		<a href="/by/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}" class="c-preview_header">
			<h3>{{ $gimme->article->name|escape:'html' }}</h3>
			<img src="{{ uri options="image 4" }}" alt="{{ $gimme->article->image4->description }}" width="900" height="600" {{ if $gimme->article->image4->photographer }}title="Фота: {{ $gimme->article->image4->photographer|escape }}"{{ /if }} />
		</a>
	</div><!-- .last-bigpicture -->
{{ /list_articles }}

<div class="columns">
{{ set_topic name="Bigpicture:by" }}
{{ list_subtopics }}
	<div class="column{{ if $gimme->current_list->at_end }} last{{ /if }}">
		<h2>{{ $gimme->topic->name }}</h2>
		{{ list_articles columns="5" ignore_issue="true" order="bypublishdate desc" }}
			{{ if $gimme->current_list->column == 1 }}
				<ul class="articles">
			{{ /if }}
					<li>
						<a href="/by/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}">
							<h3>{{ $gimme->article->name|escape:'html' }}</h3>
							{{ if $gimme->current_list->row == 1 }}
								<img src="{{ uri options="image 3 width 286" }}" width="286" height="191" alt="{{ $gimme->article->image3->description|escape }}" {{ if $gimme->article->image3->photographer }}title="Фота: {{ $gimme->article->image3->photographer|escape }}"{{ /if }} />
							{{ /if }}
						</a>
					</li>
			{{ if $gimme->current_list->column == 5 || $gimme->current_list->at_end }}
				</ul><!-- .articles -->
			{{ /if }}
		{{ /list_articles }}
	</div><!-- .column -->
{{ /list_subtopics }}
</div><!-- .columns -->

<p class="show-more"><span>Ещё…</span></p>
