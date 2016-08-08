<ul class="news-digest clearfix">
{{ assign var="current" value=$gimme->article->number }}
{{ list_articles length="30" columns="3" constraints="number not $current" order="byPublishdate desc" ignore_issue="true" }}
  <li{{if $gimme->current_list->column=="3"}} class="last"{{/if}}>
    <h3><a href="{{uri options="article"}}">{{ $gimme->article->name }}</a></h3>
{{ if $gimme->article->has_image(1) }}
    <img src="{{ uri options="image 1 width 100 height 70" }}" alt="{{$gimme->article->image1->description|escape}}" title="{{$gimme->article->image1->description|escape}}" />
{{ /if }}
    <p>{{$gimme->article->intro|truncate:100|strip_tags:false}}</p>
    <div class="readmore"><a href="{{ uri options="article" }}#comments">Комментарии</a><span>|</span><a href="{{ uri options="article" }}">Читать дальше &rsaquo;&rsaquo;</a></div>
  </li>
{{if $gimme->current_list->column == "3" && $gimme->current_list->count > 3 }}
<li class="break"><!--break--></li>
{{/if}}
{{ /list_articles }}
</ul>