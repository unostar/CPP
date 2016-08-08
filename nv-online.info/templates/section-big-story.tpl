{{list_articles length="1" ignore_issue="true"}}
<div id="big-story">
<div id="big-story-inner">
<h2><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h2>
{{ if $gimme->article->has_image(2) }}<img id="big-story-image" alt="{{ $gimme->article->image2->description }}" src="{{ uri options="image 2" }}" />{{ /if }}
<div class="intro">{{ $gimme->article->intro }}{{ if $gimme->article->source_title == "Народная Воля" }}&nbsp;&nbsp;<img alt="НВ" src="/templates/images/mark_nv.png" />{{/if}}</div>
<div class="intro-tools">{{$gimme->article->publish_date|camp_date_format:"%e %M %Y г." }} <span class="tools-time">{{ $gimme->article->publish_date|camp_date_format:"%H:%i" }}</span> <a href="{{ uri options="article" }}#disqus_thread" data-disqus-identifier="nv-online-{{$gimme->article->number}}"></a></div>
</div>
</div><!-- /#big-story -->
{{ /list_articles }}