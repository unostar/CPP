<article class="article-full">
{{if $gimme->article->has_image(2)}}
<figure class="main-image">
  <a class="cover" title="{{$gimme->article->image2->description}}" href="{{uri options="image 2"}}"><img src="{{uri options="image 2 width 430 height 315"}}" width="430" height="315" alt="{{$gimme->article->image2->description}}" /></a>
  {{if $gimme->article->image2->description}}<figcaption>{{$gimme->article->image2->description}}</figcaption>{{/if}}
</figure>
{{/if}}
<header class="article-header">
  <h1>{{$gimme->article->name}}{{if $gimme->article->has_photo}} <span class="attachments photo" title="Фота">Фота</span>{{/if}}{{if $gimme->article->has_video}} <span class="attachments video" title="Відэа">Відэа</span>{{/if}}</h1>
</header><!-- .article-header -->

<footer class="article-footer">
<ul class="article-info">
{{list_article_authors}}
  <li>{{$gimme->author->type}}: <a href="/{{$gimme->language->code}}/page/author/?name={{$gimme->author->name|escape:'url'}}">{{$gimme->author->name}}</a></li>
{{/list_article_authors}}
{{if $gimme->article->source}}
  <li>крыніца: {{$gimme->article->source}}</li>
{{/if}}
  <li>апублікавана: <time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%dT%H:%i"}}">{{$gimme->article->publish_date|camp_date_format:"%H:%i %d/%m/%Y"}}</time></li>
</ul>

<ul class="service">
  <li><a href="/{{$gimme->language->code}}/page/print/{{$gimme->article->number}}" class="print" target="_blank">Друкаваць</a></li>
  <li><a href="#disqus_thread" class="comments-count" data-disqus-identifier="archeby-{{$gimme->article->number}}"></a></li>
</ul><!-- .service -->
</footer><!-- .article-footer -->

<div class="article-content">
  <div class="lead">{{$gimme->article->intro}}</div>
  {{$gimme->article->full_text}}
{{if $gimme->article->has_attachments}}
  <p><h4>Дадатак:</h4>
  {{list_article_attachments}}<a href="{{uri options="articleattachment"}}">{{$gimme->attachment->description}} ({{$gimme->attachment->file_name}}, {{$gimme->attachment->size_kb}}Kb)</a><br />{{/list_article_attachments}}
  </p>
{{/if}}
</div><!-- .article-content -->

{{if $gimme->article->has_photo}}{{include file="arche/tpl/article-image-gallery.tpl"}}{{/if}}
</article><!-- .article-full -->
