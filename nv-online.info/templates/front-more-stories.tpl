<div id="more-stories">
{{ set_default_issue }}
{{ list_articles length="4" ignore_issue="true" ignore_section="true" constraints="OnFrontPage is off OnSection is on" order="bypublishdate desc" }}
  <div class="more-stories-item"{{if $gimme->current_articles_list->index == 1}} style="border-top: 0px;"{{/if}}>
    <h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
    {{ if $gimme->article->has_image(3) }}<img class="more-stories-image" alt="{{ $gimme->article->image3->description }}" src="{{ uri options="image 3" }}" />{{ /if }}
    <div class="intro">{{ $gimme->article->intro }}{{ if $gimme->article->source_title == "Народная Воля" }}
&nbsp;&nbsp;<img alt="NV exclusive" src="/templates/images/mark_nv.png" />
{{ /if }}</div>
    <div class="intro-tools">{{ $gimme->article->publish_date|camp_date_format:"%e %M %Y г." }} <span class="tools-time">{{ $gimme->article->publish_date|camp_date_format:"%H:%i" }}</span>  <a href="{{ uri options="article" }}#disqus_thread" data-disqus-identifier="nv-online-{{$gimme->article->number}}"></a></div>
  </div>
{{ /list_articles }}
{{ unset_topic }}
</div><!-- /#more-stories -->