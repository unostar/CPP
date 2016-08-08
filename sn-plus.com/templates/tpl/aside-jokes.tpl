{{ list_articles length="2" constraints="section is 160" ignore_issue="true" order="bypublishdate desc" }}

	{{ if $gimme->current_list->at_beginning }}
		<section class="jokes{{ if $gimme->template->name != "front.tpl" }} expandable{{ /if }}">
			<header>
				<h3>{{ $gimme->section->name }}</h3>
			</header>

			<div>
	{{ /if }}

		<article>
			{{ $gimme->article->intro }}
		</article>

	{{ if $gimme->current_list->at_end }}
				<p class="all"><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/">Все анекдоты</a></p><!-- .all -->

			</div>
		</section><!-- .jokes -->
	{{ /if }}

{{ /list_articles }}
