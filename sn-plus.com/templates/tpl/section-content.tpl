{{ if $smarty.get.page }}{{ assign var="page" value=$smarty.get.page }}{{ elseif !$page }}{{ assign var="page" value="1" }}{{ /if }}

{{ list_articles columns="10" ignore_issue="true" order="bypublishdate desc" }}

	{{ if $gimme->current_list->row == $page }}
		<article class="news-item">
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
	{{ /if }}

{{ /list_articles }}

{{ list_articles columns="10" ignore_issue="true" order="bypublishdate desc" }}
	{{ if $gimme->current_list->count > 10 }}
		{{ if $gimme->current_list->at_beginning }}
			<ul class="pagination">
				<li class="direction">{{ if $page-1 > 0 }}<a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/?page={{ $page-1 }}">&larr;</a>{{ else }}&larr;{{ /if }}</li>
		{{ /if }}
		{{ if $gimme->current_list->column == 1 }}			
				<li{{ if $gimme->current_list->row==$page }} class="current"{{ /if }}><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/?page={{ $gimme->current_list->row }}">{{ $gimme->current_list->row }}</a></li>
		{{ /if }}
		{{ if $gimme->current_list->at_end }}
				<li class="direction">{{ if $page+1 <= $gimme->current_list->row }}<a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/?page={{ $page+1 }}">&rarr;</a>{{ else }}&rarr;{{ /if }}</li>
			</ul><!-- .pagination -->
		{{ /if }}
	{{ /if }}
{{ /list_articles }}
