{{include file="mobile_header.tpl"}}

<div class="article">
  {{if $gimme->article->has_image(1)}}<a href="{{uri options="image 1"}}"><img src="{{uri options="image 1 width 100"}}" alt="{{$gimme->article->name|escape:'html'}}" class="main-image"></a>{{/if}}
	<h1 class="title">{{$gimme->article->name}}</h1>
	<p class="date">{{$gimme->article->publish_date|date_format:"%d.%m.%Y, %H:%M"}}</p>
{{list_article_authors}}
  <p class="author">{{$gimme->author->type}}: {{$gimme->author->name}}</p>
{{/list_article_authors}}
	<div class="intro">{{$gimme->article->intro}}</div><!-- .intro -->
	<div class="full-text">{{$gimme->article->full_text}}</div><!-- .full-text -->

{{if $gimme->article->type_name=="photo"}}
<p><br></p>
{{list_article_images}}
  <p><a href="{{uri options="image"}}" title="{{$gimme->image->description|escape:'html'}}"><img src="{{uri options="image width 100"}}" alt="{{$gimme->image->description|escape:'html'}}"></a></p>
{{/list_article_images}}
{{/if}}

</div><!-- .article -->

<ul class="kinda-nav">
	<li><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->default_section->url_name}}/">Все статьи рубрики «{{$gimme->section->name}}»</a></li>
	<li><a href="/">Перейти на главную страницу</a></li>
</ul><!-- .kinda-nav -->

{{include file="mobile_footer.tpl"}}