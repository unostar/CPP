{{ list_sections constraints="number greater 29 number smaller 41" }}

	{{ list_articles length="1" ignore_issue="true" order="bypublishdate desc" }}

		<section class="block">
			<header>
				<h3><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/">{{ $gimme->section->name }}</a></h3>
				{{ list_article_authors lenght="1" }}
					<p class="author"><a href="/{{$gimme->language->code}}/page/authors/?name={{ $gimme->author->name|escape:'url':'utf-8' }}">{{ $gimme->author->name }}</a></p>
				{{ /list_article_authors }}
			</header>

			<article>
				<h1><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/">{{ $gimme->article->name }}</a></h1>

				<div class="intro">
					{{ list_article_authors lenght="1" }}
						<div class="image"><img src="{{ $gimme->author->picture->imageurl }}" alt="{{ $gimme->author->name|escape:'html' }}"></div><!-- .image -->
					{{ /list_article_authors }}

					{{ $gimme->article->intro|strip }}
				</div><!-- .intro -->

				<ul class="info">
					{{ if $gimme->article->has_photo }}<li class="has-media has-photo"></li>{{ /if }}
					{{ if $gimme->article->has_video }}<li class="has-media has-video"></li>{{ /if }}
					<li class="comment">
						{{ if $gimme->article->comment_count > 0 }}
							<a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/#comments">Комментирии</a> [{{ $gimme->article->comment_count }}]
						{{ else }}
							<a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/#add-comment">Комментировать</a>
						{{ /if }}
					</li>
					<li class="more"><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/">Подробнее</a></li>
				</ul><!-- .info -->
			</article>
		</section>

	{{ /list_articles }}

{{ /list_sections }}
