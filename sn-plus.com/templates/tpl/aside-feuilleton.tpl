{{ list_articles length="1" constraints="section is 140" ignore_issue="true" order="bypublishdate desc" }}

	{{ if $gimme->current_list->at_beginning }}
		<section class="feuilleton expandable">
			<header>
				<h3>{{ $gimme->section->name }}</h3>
			</header>

			<div>
	{{ /if }}

		<article>
			<h4><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/">{{ $gimme->article->name }}</a></h4>

			<div class="intro">{{ $gimme->article->intro|strip }}</div><!-- .intro -->

			<p class="all"><span class="more"><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/">Подробнее</a></span></p>
		</article>

	{{ if $gimme->current_list->at_end }}
			<p class="all"><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/">Все статьи рубрики</a></p><!-- .all -->

			</div>
		</section><!-- .feuilleton -->
	{{ /if }}

{{ /list_articles }}