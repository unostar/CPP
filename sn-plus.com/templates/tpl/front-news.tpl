{{ list_articles length="10" constraints="section greater 45 section smaller 155 section not 130" ignore_issue="true" order="bypublishdate desc" }}

	<article class="news-item">
		<h2 class="section-name"><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/">{{ $gimme->section->name }}</a></h2>

		{{ if $gimme->article->has_image(1) }}<a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/" class="photo"><span><img src="{{ uri options="image 1 height 130" }}" alt="{{ $gimme->article->name|escape:'html' }}"></span></a>{{ /if }}

		<div>
			<h3><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/">{{ $gimme->article->name }}</a></h3>

			<p class="time">{{$gimme->article->publish_date|date_format:"%d.%m.%Y"}}</p><!-- .time -->

			<div class="intro">{{ $gimme->article->intro|strip }}</div><!-- .intro -->

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
		</div>
	</article><!-- .news-item -->

{{ /list_articles }}
