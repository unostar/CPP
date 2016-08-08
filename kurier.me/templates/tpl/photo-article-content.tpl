<article class="article">
	<h1>{{$gimme->article->name}}</h1>
	<div class="full_text">{{$gimme->article->intro}}</div>
	<ul class="photos">
{{list_article_images}}
		<li>
			<a class="fancybox photo" rel="photo-gallery" href="{{uri options="image"}}" title="{{$gimme->image->description|escape:'html'}}"><img src="{{uri options="image width 150"}}" alt="{{$gimme->image->description|escape:'html'}}" /></a>
			<span class="description">{{$gimme->image->description|escape:'html'}}</span>
		</li>
{{/list_article_images}}
	</ul>
	<footer>
		<p class="date"><time pubdate datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%dT%H:%M:%S+03:00"}}">{{$gimme->article->publish_date|date_format:"%H:%M | %d.%m.%Y"}}</time></p>
{{list_article_authors}}
		<p class="author">{{$gimme->author->type}}: <a href="/{{$gimme->language->code}}/page/author/?name={{$gimme->author->name|escape:'url':'utf-8'}}">{{$gimme->author->name}}</a></p>
{{/list_article_authors}}
		<h3 class="block-title"><span>{{$gimme->section->name}}</span></h3>
{{include file="tpl/article-services.tpl"}}
	</footer>
</article><!-- .article -->
