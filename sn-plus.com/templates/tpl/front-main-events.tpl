{{ list_articles length="3" constraints="section is 10" ignore_issue="true" order="bypublishdate desc" }}
	{{ if $gimme->current_list->at_beginning }}
		<section class="main-events">
			<h2>{{ $gimme->section->name }} {{ $smarty.now|camp_date_format:"%d.%m.%Y" }}</h2>

			<ul class="photos">
	{{ /if }}

		<li><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/"><img src="{{ uri options="image 1 width 310 height 230" }}" alt="{{ $gimme->article->name|escape:'html' }}"></a></li>

	{{ if $gimme->current_list->at_end }}
			</ul><!-- .photos -->
	{{ /if }}
{{ /list_articles }}

{{ list_articles length="3" constraints="section is 10" ignore_issue="true" order="bypublishdate desc" }}
	{{ if $gimme->current_list->at_beginning }}
		<div class="events-wrapper">
			<div class="events">
	{{ /if }}

		<article class="event{{ if $gimme->current_list->index == 1}} current{{ /if }}">
			<a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/">
				<h3>{{ $gimme->article->name }}</h3>
				<p>{{ $gimme->article->intro|strip_tags|strip }}</p>
			</a>
		</article><!-- .event -->

	{{ if $gimme->current_list->at_end }}
				</div><!-- .events -->
			</div><!-- .events-wrapper -->
		</section><!-- .main-events -->
	{{ /if }}
{{ /list_articles }}
