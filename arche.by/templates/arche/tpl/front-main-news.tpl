<section class="main-news">
{{list_articles length="3" constraints="type is article OnFrontPage is on OnSection is on section greater 20 section smaller 80" ignore_issue="true" order="bypublishdate desc"}}
  <article class="article{{if $gimme->current_list->at_beginning}} article-visible{{/if}}">
    <header class="article-header">
      <h2><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name|truncate:120}}</a>{{if $gimme->article->has_photo}} <span class="attachments photo" title="Фота">Фота</span>{{/if}}{{if $gimme->article->has_video}} <span class="attachments video" title="Відэа">Відэа</span>{{/if}}</h2>
    </header><!-- .article-header -->
    <footer class="article-footer">
      {{if $gimme->article->author->name}}<p><a href="/{{$gimme->language->code}}/page/author/?name={{$gimme->article->author->name|escape:"url"}}" class="author">{{$gimme->article->author->name}}</a></p>{{/if}}
      <p><time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%dT%H:%i"}}">{{$gimme->article->publish_date|camp_date_format:"%H:%i %d/%m/%Y"}}</time> <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}#disqus_thread" data-disqus-identifier="archeby-{{$gimme->article->number}}" class="comments-count"></a></p>
    </footer><!-- .article-footer -->
    <p class="lead">{{$gimme->article->intro|strip_tags:false|strip|truncate:300}} <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="more">далей &gt;&gt;</a></p>
    <img src="{{uri options="image 2 width 430 height 315"}}" width="430" height="315" alt="{{$gimme->article->name|escape:"html"}}" class="image" />
  </article><!--.article -->
{{/list_articles}}
<div class="thumbs-bg"></div>
<ul class="articles-list">
{{list_articles length="3" constraints="type is article OnFrontPage is on OnSection is on section greater 20 section smaller 80" ignore_issue="true" order="bypublishdate desc"}}
  <li class="thumbnail-{{$gimme->current_list->index}}">
    <a href="javascript:;">{{$gimme->article->name|truncate:120}}</a>
    <a href="javascript:;" class="thumb"><img src="{{uri options="image 1 width 130 height 95"}}" width="130" height="95" alt="" /></a>
  </li>
{{/list_articles}}
</ul><!-- .articles-list -->
</section><!-- .main-news -->
