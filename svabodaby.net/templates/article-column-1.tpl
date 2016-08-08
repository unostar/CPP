{{set_default_article}}
{{assign var="main" value=$gimme->article->number}}
<a name="top"></a>
<div class="article_box">
<h4>{{$gimme->section->name}}</h4>
  <div class="main_news">
    <h1>{{$gimme->article->name}}</h1>
    <p class="date">{{if $gimme->article->has_topics}}{{list_article_topics length="1"}}<a href="{{uripath options="section"}}?tpid={{$gimme->topic->identifier}}">{{$gimme->topic->name}} &nbsp;&bull;&nbsp;</a> {{/list_article_topics}}{{/if}}{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}</p>
    {{if $gimme->article->author->defined}}<p class="date">Аўтар: <span style="font-weight: bold">{{ $gimme->article->author->name }}</span></p>{{ /if }}    
    {{if $gimme->article->source != ""}}<p class="date"><span style="font-weight: bold"><a href="{{ $gimme->article->source_url }}">{{ $gimme->article->source }}</a></span></p>{{ /if }}    
  <span class="art_controls">
    Каментароў: <a class="comments" href="#comments">({{$gimme->article->comment_count}})</a>
    <a href="#" class="increase font" onclick="javascript:FontSize(+0.1);return false;">A</a>
    <a class="font">/</a>
    <a href="#" class="decrease font" onclick="javascript:FontSize(-0.1);return false;">A</a> Змяніць шрыфт
  </span>
    <span class="art_image">{{if $gimme->article->has_image(2)}}<img src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description}}" title="{{$gimme->article->image2->description}}" />{{else}}{{/if}}</span>
    <div id="intro">{{$gimme->article->intro}}</div>
    <div id="full_text">{{$gimme->article->full_text}}</div>
{{if $gimme->article->author->defined}}
    <p class="author">{{$gimme->article->author->name}}</p>
{{/if}}

{{ include file="article-gallery.tpl" }}

<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style ">
  <a href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=xa-4e19cbd114d65059" class="addthis_button_compact">Падзяліцца</a>
  <span class="addthis_separator">|</span>
  <a class="addthis_button_twitter"></a>
  <a class="addthis_button_facebook"></a>
  <a class="addthis_button_vk"></a>
</div>
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4e19cbd114d65059"></script>
<!-- AddThis Button END -->

    <span class="art_controls bottom">
      Каментароў: <a class="comments" href="#comments">({{$gimme->article->comment_count}})</a>
      <a href="{{uri options="template print.tpl"}}" target="_blank" class="print">Раздрукаваць</a>
      <a href="#top" class="goup">Уверх</a>
    </span>
  </div>
</div>
{{if $gimme->article->comments_enabled}}
{{ include file="article-column-1-comments.tpl" }}
{{/if}}
{{ include file="front-column-1-banner.tpl" }}
<div class="article_box other">
<h4>ЯШЧЭ АРТЫКУЛЫ ГЭТАЙ РУБРЫКІ</h4>
  <div class="main_news">
    <ul class="lists">
{{list_articles length="6" constraints="number not $main" order="byPublishDate desc" ignore_issue="true"}}
      <li><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></li>
{{/list_articles}}
    </ul>
  </div>
</div>