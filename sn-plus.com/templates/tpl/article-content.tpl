<h1>{{ $gimme->article->name }}</h1>

{{ if $gimme->article->has_image(1) }}
	<p class="main-image">
		<img src="{{ uri options="image 1" }}" alt="{{ if $gimme->article->image1->description }}{{ $gimme->article->image1->description|escape:'html' }}{{ else }}{{ $gimme->article->name|escape:'html' }}{{ /if }}">
	</p><!-- .main-image -->
{{ /if }}

<div class="intro">
	{{ $gimme->article->intro }}
</div><!-- .intro -->

<div class="full-text">
	{{ $gimme->article->full_text }}
</div><!-- .full-text -->

<footer>
	<p class="date"><time pubDate datetime="{{ $gimme->article->publish_date|date_format:"%Y-%m-%dT%H:%M:%S+03:00" }}">{{ $gimme->article->publish_date|date_format:"%d.%m.%Y" }}</time></p><!-- .date -->

	{{ list_article_authors lenght="1" }}
		<p class="author">Автор: <a href="/{{$gimme->language->code}}/page/authors/?name={{ $gimme->author->name|escape:'url':'utf-8' }}">{{ $gimme->author->name }}</a></p>
	{{ /list_article_authors }}

	{{ include file="tpl/article-actions.tpl" }}
	{{ include file="tpl/article-actions.tpl" }}

</footer>
