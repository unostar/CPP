<div id="more-stories">
{{ list_articles length="3" ignore_issue="true" }}
{{if $gimme->current_articles_list->index > 1 }}
<div class="more-stories-item{{if $gimme->current_articles_list->index == 2 }} top{{/if}}">
<h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
{{if $gimme->article->has_image(2)}}<img class="more-stories-image" alt="{{ $gimme->article->image2->description }}" src="{{ uri options="image 2" }}&ImageRatio=55" />{{/if}}
<div class="intro">{{ $gimme->article->intro }}{{if $gimme->article->source_title == "Народная Воля" }}&nbsp;&nbsp;<img alt="НВ" src="/templates/images/mark_nv.png" />{{/if}}</div>
<div class="intro-tools">{{$gimme->article->publish_date|camp_date_format:"%e %M %Y г."}} <span class="tools-time">{{$gimme->article->publish_date|camp_date_format:"%H:%i"}}</span>  <a href="{{ uri options="article" }}#disqus_thread" data-disqus-identifier="nv-online-{{$gimme->article->number}}"></a></div>
</div>
{{/if}}
{{/list_articles}}
</div><!-- /#more-stories -->