{{ list_articles length="80" ignore_issue="true" ignore_section="true" order="bypublishdate desc" }}
	{{ if $gimme->current_list->at_beginning }}
		<div class="gallery">
			<div class="slides">

			{{ assign var="page_counter" value=1 }}
	{{ /if }}

	{{ if $gimme->article->has_image(1) }}

		{{ if $page_counter == 1 }}
			<ul class="slides-page">
		{{ /if }}

			<li class="slide">
				<a href="{{ uri options="article" }}">
					<span class="image"><img src="{{ uri options="image 1 width 126" }}" alt="{{ $gimme->article->name|escape:'html' }}"></span>
					<span class="title">{{ $gimme->article->name }}</span>
				</a>
			</li>

		{{ if $page_counter == 6 }}
			</ul><!-- .slides-page -->
			{{ assign var="page_counter" value=1 }}
		{{ else }}
			{{ assign var="page_counter" value=$page_counter+1 }}
		{{ /if }}

	{{ /if }}

	{{ if $gimme->current_list->at_end }}
			</div><!-- .slides -->
		</div><!-- .gallery -->
	{{ /if }}
{{ /list_articles }}