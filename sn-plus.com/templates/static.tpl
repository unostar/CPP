{{ include file="_html-head.tpl" }}

{{ include file="header.tpl" }}

<h2>{{ $gimme->section->name }}</h2>

<div class="main">
	{{ list_articles length="1" }}
		<article class="article">
			<h1>{{ $gimme->article->name }}</h1>

			{{ if $gimme->article->has_image(1) }}
				<p class="main-image">
					<img src="{{ uri options="image 1" }}" alt="{{ if $gimme->article->image1->description }}{{ $gimme->article->image1->description|escape:'html' }}{{ else }}{{ $gimme->article->name|escape:'html' }}{{ /if }}">
				</p><!-- .main-image -->
			{{ /if }}

			<div class="intro">{{ if $gimme->article->intro != "" }}{{ $gimme->article->intro }}{{ /if }}</div><!-- .intro -->
			<div class="full-text">{{ $gimme->article->full_text }}</div><!-- .full-text -->

			<footer>
				<p class="date"><time pubDate datetime="{{ $gimme->article->publish_date|date_format:"%Y-%m-%dT%H:%M:%S+03:00" }}">{{ $gimme->article->publish_date|date_format:"%d.%m.%Y" }}</time></p><!-- .date -->

				{{ include file="tpl/article-actions.tpl" }}
				{{ include file="tpl/article-actions.tpl" }}
			</footer>
		</article><!-- .article -->
	{{ /list_articles }}
</div><!-- .main -->

{{ include file="aside.tpl" }}

{{ include file="footer.tpl" }}
