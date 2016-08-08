<article class="article">
	<h1>{{$gimme->article->name}}</h1>
	{{if $gimme->article->has_image(1)}}<a class="fancybox" title="{{$gimme->article->image(1)->description|escape:'html'}}" href="{{uri options="image 1"}}"><img src="{{uri options="image 1 width 370"}}" alt="{{$gimme->article->image(1)->description|escape:'html'}}" class="main-image" /></a>{{/if}}
	<div class="intro">{{$gimme->article->intro}}</div>
	<div class="full_text">{{$gimme->article->full_text}}</div>
	<footer>
		<p class="date"><time pubdate datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%dT%H:%M:%S+03:00"}}">{{$gimme->article->publish_date|date_format:"%H:%M | %d.%m.%Y"}}</time></p>
{{list_article_authors}}
		<p class="author">{{$gimme->author->type}}: <a href="/{{$gimme->language->code}}/page/author/?name={{$gimme->author->name|escape:'url':'utf-8'}}">{{$gimme->author->name}}</a></p>
{{/list_article_authors}}
	<h3 class="block-title"><span>{{$gimme->section->name}}</span></h3>
{{include file="tpl/article-services.tpl"}}
	</footer>
</article><!-- .article -->
