{{ list_articles length="10" constraints="section is 20" ignore_issue="true" order="bypublishdate desc" }}

	{{ if $gimme->current_list->at_beginning }}
		<section class="news-list">
			<header>
				<h3><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/">{{ $gimme->section->name }}</a></h3>
			</header>

			<ul>
	{{ /if }}

	<li><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/">{{ $gimme->article->name }}</a></li>

	{{ if $gimme->current_list->at_end }}
			</ul>

			<p class="all"><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/">Все новости</a></p><!-- .all -->
		</section><!-- .news-list -->
	{{ /if }}

{{ /list_articles }}
