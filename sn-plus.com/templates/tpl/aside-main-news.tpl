{{ list_articles length="3" constraints="section is 10" ignore_issue="true" order="bypublishdate desc" }}
	{{ if $gimme->current_list->at_beginning }}
		<section class="main-news">
			<header>
				<h3><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/">{{ $gimme->section->name }}</a></h3>
				<p class="date">{{ $smarty.now|camp_date_format:"%d.%m.%Y" }}</p>
			</header>
			<div class="main-news-wrapper">
				<div class="main-news-inner">
	{{ /if }}

		<article>
			<h4><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/">{{ $gimme->article->name }}</a></h4>
			<div class="intro">{{ $gimme->article->intro|strip_tags|strip }}</div><!-- .intro -->
		</article>

	{{ if $gimme->current_list->at_end }}
				</div><!-- .main-news-inner -->
			</div><!-- .main-news-wrapper -->

		</section><!-- .main-news -->
	{{ /if }}
{{ /list_articles }}
