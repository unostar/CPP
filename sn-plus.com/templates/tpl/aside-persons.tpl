{{ list_articles length="$persons_count" constraints="section is 130" ignore_issue="true" order="bypublishdate desc" }}

	{{ if $gimme->current_list->at_beginning }}
		<section class="persons">
			<header>
				<h3>{{ $gimme->section->name }}</h3>
			</header>

			<div>
	{{ /if }}

		<article>
			{{ if $gimme->article->has_image(1) }}<a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/" class="photo"><img src="{{ uri options="image 1 width 70 height 70" }}" alt="{{ $gimme->article->name|escape:'html' }}"></a>{{ /if }}

			<h4><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/">{{ $gimme->article->name }}</a></h4>

			<div class="intro">{{ $gimme->article->intro|strip }}</div><!-- .intro -->

			<p class="all"><span class="more"><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/">Подробнее</a></span></p>
		</article>

	{{ if $gimme->current_list->at_end }}
			<p class="all"><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/">Все статьи рубрики</a></p><!-- .all -->

			</div>
		</section><!-- .persons -->
	{{ /if }}

{{ /list_articles }}
