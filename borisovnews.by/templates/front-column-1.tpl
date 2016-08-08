<div id="column-1" class="clearfix">

{{ list_sections constraints="number greater_equal 10 number smaller_equal 60" }}
<div class="section-digest clearfix">
  <h1>{{ $gimme->section->name }}</h1>
  <div class="section-link"><a href="{{ uri options="section" }}">Подробнее в разделе &rsaquo;&rsaquo;</a><span>|</span><a href="http://{{ $gimme->publication->site }}/ru/rss/{{ $gimme->section->url_name }}" class="rss-link">RSS</a></div>
{{ list_articles length="1" constraints="OnFrontPage is on OnSection is on" order="bypublishdate desc" ignore_issue="true" }}
<span class="date">{{$gimme->article->publish_date|camp_date_format:"%e %M %Y"}}</span>
<h2><a href="{{uri options="article"}}">{{ $gimme->article->name }}</a></h2>
{{ if $gimme->article->has_image(2) }}
<a href="{{ uri options="image 2" }}" class="main-image"><img src="{{ uri options="image 2 width 310" }}" alt="{{$gimme->article->image2->description|escape}}" title="{{$gimme->article->image2->description|escape}}" /></a>
{{ /if }}
<p>{{ $gimme->article->intro|strip_tags:false}}</p>
<div class="readmore"><a href="{{ uripath options="article" }}#comments">Комментарии</a><span>|</span><a href="{{ uri options="article" }}">Читать дальше &rsaquo;&rsaquo;</a></div>
{{ /list_articles }}
<hr />
<ul class="news-digest clearfix">
{{ list_articles length="3" columns="3" constraints="OnFrontPage is off" order="byPublishdate desc" ignore_issue="true" }}
  <li{{if $gimme->current_list->column=="3"}} class="last"{{/if}}>
    <h3><a href="{{uri options="article"}}">{{ $gimme->article->name }}</a></h3>
{{ if $gimme->article->has_image(1) }}
    <img src="{{ uri options="image 1 width 100 height 70" }}" alt="{{$gimme->article->image1->description|escape}}" title="{{$gimme->article->image1->description|escape}}" />
{{ /if }}
    <p>{{ $gimme->article->intro|strip_tags:false|truncate:300}}</p>
    <div class="readmore"><a href="{{ uripath options="article" }}#comments">Комментарии</a><span>|</span><a href="{{ uri options="article" }}">Читать дальше &rsaquo;&rsaquo;</a></div>
  </li>
{{ /list_articles }}
</ul>
</div>
{{ if !$gimme->current_list->at_end }}
<hr class="section-divider black" />
{{ /if }}
{{ /list_sections }}
</div>
