{{if $gimme->url->get_parameter(page)}}{{assign var="page" value=$gimme->url->get_parameter(page)}}{{else}}{{assign var="page" value="1"}}{{/if}}
{{assign var="main" value="0"}}
{{set_default_topic}}
<div class="article_box">
<h4>{{$gimme->section->name}}</h4>

{{if $page=="1" && $gimme->topic->defined}}
{{set_issue number="1"}}{{set_section number="130"}}
{{list_articles length="1" constraints="type is description"}}
<div class="section-description">{{$gimme->article->description}}</div>
{{/list_articles}}
{{set_default_issue}}{{set_default_section}}
{{elseif $page=="1"}}
{{set_issue number="1"}}{{set_section number=$gimme->default_section->number}}
{{if $gimme->section->description}}<div class="section-description">{{$gimme->section->description}}</div>{{/if}}
{{set_default_issue}}{{set_default_section}}
{{/if}}

{{list_articles length="1" ignore_issue="true" order="bypublishdate desc"}} {{* OnSection is on removed by reuest *}}
{{if $page=="1"}}
  <div class="main_news">
   {{if $gimme->article->has_image(2)||$gimme->article->has_image(1)}}
{{if $gimme->article->has_image(2)}}<span class="art_image">
<img src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description}}" 
title="{{$gimme->article->image2->description}}" /></span>{{else}}
<span class="art_image1"><img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" 
title="{{$gimme->article->image1->description}}" /></span>
{{/if}}
{{/if}}
      <h1><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></h1>
      <p class="date">{{if $gimme->article->has_topics}}{{list_article_topics length="1"}}<a href="{{uripath options="section"}}?tpid={{$gimme->topic->identifier}}">{{$gimme->topic->name}} &nbsp;&bull;&nbsp;</a> {{/list_article_topics}}{{/if}}{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}</p>      
      <p>{{$gimme->article->intro}}</p>
    <p class="more"><a href="{{uri options="article"}}" class="readmore">Чытаць увесь артыкул</a>{{if $gimme->article->comment_count}}Каментароу: <a href="{{uri options="article"}}#comments" class="comments">({{$gimme->article->comment_count}})</a>{{/if}}</p>
  </div>
{{/if}}
{{assign var="main" value=$gimme->article->number}}
{{/list_articles}}
{{if $gimme->prev_list_empty }}{{assign var="main" value="0"}}{{/if}}
</div>

<div class="article_box">
{{list_articles length="70" columns="7" constraints="number not $main" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->row==$page}}
  <div class="big_article section">
    <div class="big_article_data{{if $gimme->current_list->at_beginning}} first{{/if}}">
      <span class="art_image">{{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" title="{{$gimme->article->image1->description}}" />{{/if}}</span>
      <h2><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></h2>
      <p class="date">{{if $gimme->article->has_topics}}{{list_article_topics length="1"}}<a href="{{uripath options="section"}}?tpid={{$gimme->topic->identifier}}">{{$gimme->topic->name}} &nbsp;&bull;&nbsp;</a> {{/list_article_topics}}{{/if}}{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}</p>

    {{if $gimme->article->author->defined}}<p class="date">Аўтар: <span style="font-weight: bold">{{ $gimme->article->author->name }}</span></p>{{ /if }}    
    {{if $gimme->article->source != ""}}<p class="date"><span style="font-weight: bold"><a href="{{ $gimme->article->source_url }}">{{ $gimme->article->source }}</a></span></p>{{ /if }}      
      
      <p>{{$gimme->article->intro}}</p>
      <p class="more"><a href="{{uri options="article"}}" class="readmore">Чытаць увесь артыкул</a>{{if $gimme->article->comment_count}}Каментароу: <a href="{{uri options="article"}}#comments" class="comments">({{$gimme->article->comment_count}})</a>{{/if}}</p>
    </div>
  </div>
{{/if}}
{{/list_articles}}
{{if $gimme->prev_list_empty}}
<p class="date">Артыкулаў па дадзенай тэматыцы не знойдзена</p>
{{/if}}
</div>

{{if !$gimme->prev_list_empty}}
<div class="section-pages">
  <ul>
  <li>Старонкі :</li>
{{list_articles length="70" columns="7" constraints="number not $main" ignore_issue="true"}}
{{if $gimme->current_list->column==1}}
    <li{{if $gimme->current_list->row==$page}} class="selected"><a>{{else}}><a href="{{uripath options="section"}}?page={{$gimme->current_list->row}}{{if $gimme->url->get_parameter(tpid)}}&tpid={{$gimme->url->get_parameter(tpid)}}{{/if}}">{{/if}}{{$gimme->current_list->row}}</a></li>
{{/if}}
{{/list_articles}}
  </ul>
</div>
{{/if}}
{{unset_topic}}
{{ include file="section-column-1-banner.tpl" }}