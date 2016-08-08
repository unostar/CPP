{{list_articles length="20" ignore_issue="true"}}
{{if $gimme->current_articles_list->index > 3}}
<div class="meat-item">
<div class="meat-item-inner">
{{ if $gimme->article->has_image(2) }}<img class="meat-item-image" alt="{{$gimme->article->image2->description}}" src="{{ uri options="image 2" }}" width="230px" />{{/if}}
<h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
<div class="intro">{{ $gimme->article->intro }}{{ if $gimme->article->source_title == "Народная Воля" }}&nbsp;&nbsp;<img alt="НВ" src="/templates/images/mark_nv.png" />{{/if}}</div>
<div class="intro-tools">{{ $gimme->article->publish_date|camp_date_format:"%e %M %Y г." }} <span class="tools-time">{{ $gimme->article->publish_date|camp_date_format:"%H:%i" }}</span>  <a href="{{ uri options="article" }}#disqus_thread" data-disqus-identifier="nv-online-{{$gimme->article->number}}"></a></div>
</div>
</div><!-- /.meat-item -->
{{/if}}
{{/list_articles}}