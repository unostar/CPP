{{ dynamic }}
{{set_default_article}}
{{ /dynamic }}

<a href="{{uri options="section"}}" title="Перайсці да рубрыкі"><div id="section-name"><p>{{ $gimme->section->name }}{{ if $gimme->section->number== "300" }} - {{ $gimme->issue->name }} {{ if $gimme->article->rubric }} - &quot;{{ $gimme->article->rubric }}&quot;{{ /if }}{{ /if }}</p></div></a>
<div id="story">
  <div id="article-tools-top" class="article-tools">
{{ include file="article-tools.tpl" }}
  </div><!-- /.article-tools -->
<div id="story_content">
<h4 style="color:#726E64;">{{ $gimme->article->rubric }}</h4>
<h1>{{ $gimme->article->name }}</h1>

{{*<h4 style="color:#ff6600;">{{ $gimme->article->description }}</h4>*}}

{{ if !($gimme->article->type_name == "static") }}
<div id="article-prop">
  {{ if $gimme->article->source_title == "Народная Воля" }}<img alt="NV exclusive" style="float:left;" src="/templates/images/mark_nv.png" />&nbsp;&nbsp;{{ /if }}
  {{ if !($gimme->article->author->name == "") }}Аўтар: <span class="article-author-name">{{$gimme->article->author->name}}</span>  I {{ /if }}
  {{ $gimme->article->publish_date|camp_date_format:"%e %M %Y г." }}
  {{ if $gimme->article->type_name == daily_text }}<span class="tools-time">{{ $gimme->article->publish_date|camp_date_format:"%H:%i" }}</span>{{ /if }}
  <a href="{{ uri options="article" }}#disqus_thread" data-disqus-identifier="nv-online-{{$gimme->article->number}}"></a>
  {{ if $gimme->article->has_image(2) }}<img id="big-story-image" alt="{{ $gimme->article->image2->description }}" src="{{ uri options="image 2" }}" />{{/if }}
</div>

<div class="intro">{{ $gimme->article->intro }}</div>
{{ /if }}

{{ dynamic }}
<div class="full-text">{{ $gimme->article->full_text }}</div>
{{ /dynamic }}

{{ if $gimme->article->source }}<div class="full-text">Крынiца: <a href="http://{{ $gimme->article->source|replace:"http://":'' }}" target="_blank">{{ $gimme->article->source_title }}</a></div>{{ /if }}

{{if $gimme->article->has_topics}}
<b>Тэмы: </b> 
{{list_article_topics}}
{{if $gimme->topic->name!="1" && $gimme->topic->name!="2" && $gimme->topic->name!="3" && $gimme->topic->name!="4" && $gimme->topic->name!="5" && $gimme->topic->name!="6" && $gimme->topic->name!="7" && $gimme->topic->name!="8"}}
<a href="{{url options="issue"}}?{{urlparameters options="template list-topics.tpl"}}">{{$gimme->topic->name}}</a>{{if !$gimme->current_list->at_end}}, {{/if}}
{{/if}}
{{/list_article_topics}}
{{/if}}

</div>

<div id="article-tools-bottom" class="article-tools">
{{ include file="article-tools.tpl" }}
</div><!-- /.article-tools -->

<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style ">
<a href="http://www.addthis.com/bookmark.php?v=250&amp;username=nvonline" class="addthis_button_compact">Share</a>
<span class="addthis_separator">|</span>
<a class="addthis_button_preferred_1"></a>
<a class="addthis_button_preferred_2"></a>
<a class="addthis_button_preferred_3"></a>
<a class="addthis_button_preferred_4"></a>
</div>
<script type="text/javascript">var addthis_config = {"data_track_clickback":true};</script>
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#username=nvonline"></script>
<!-- AddThis Button END -->

{{ include file="article-comments.tpl" }}

</div><!-- /#story -->