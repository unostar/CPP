{{assign var="main" value="0"}}
<div class="article_box">
<div class="big_article">
<h4>Тэма</h4>
  <div class="main_news">
{{list_articles length="6" constraints="OnFrontPage is on OnSection is on" ignore_issue="true" ignore_section="true" order="byPublishDate desc"}}
{{if $gimme->article->OnFrontPageMain && !$main}}{{assign var="main" value=$gimme->article->number}}
    <span class="art_image">{{if $gimme->article->has_image(2)}}<img src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description}}" title="{{$gimme->article->image2->description}}" />{{/if}}</span>
      <h3><a href="{{uri options="section"}}">{{$gimme->article->section->name}}</a></h3>
      <h1><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></h1>
      <p class="date">{{if $gimme->article->has_topics}}{{list_article_topics length="1"}}<a href="{{uripath options="section"}}?tpid={{$gimme->topic->identifier}}">{{$gimme->topic->name}} &nbsp;&bull;&nbsp;</a> {{/list_article_topics}}{{/if}}{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}</p>

    {{if $gimme->article->author->defined}}<p class="date">Аўтар: <span style="font-weight: bold">{{ $gimme->article->author->name }}</span></p>{{ /if }}    
    {{if $gimme->article->source != ""}}<p class="date"><span style="font-weight: bold"><a href="{{ $gimme->article->source_url }}">{{ $gimme->article->source }}</a></span></p>{{ /if }}      

      <p>{{$gimme->article->intro}}</p>
    <p class="more"><a href="{{uri options="article"}}" class="readmore">Чытаць увесь артыкул</a>{{if $gimme->article->comment_count}}Каментароў: <a href="{{uri options="article"}}#comments" class="comments">({{$gimme->article->comment_count}})</a>{{/if}}</p>
{{/if}}
{{/list_articles}}
  </div>
</div>
<div class="article_list">
<h4>Апошнія артыкулы</h4>
<div class="article_list_data last_published">
  <ul class="lists">
{{list_articles length="7" constraints="type is article" ignore_issue="true" order="byPublishDate desc"}}
    <li><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></li>
{{/list_articles}}
  </ul>
</div>
</div>


  <div class="sub_main_news">
{{list_articles length="2" constraints="OnFrontPage is on OnSection is on number not $main" ignore_issue="true" ignore_section="true" order="byPublishDate desc"}}
{{if !$gimme->article->OnFrontPageMain}}
    <div class="x2{{if $gimme->current_list->at_end}} r{{/if}}">
      <span class="art_image">{{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" title="{{$gimme->article->image1->description}}" />{{/if}}</span>
      <h3><a href="{{uri options="section"}}">{{$gimme->article->section->name}}</a></h3>
      <h2><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></h2>
      <p class="date">{{if $gimme->article->has_topics}}{{list_article_topics length="1"}}<a href="{{uripath options="section"}}?tpid={{$gimme->topic->identifier}}">{{$gimme->topic->name}} &nbsp;&bull;&nbsp;</a> {{/list_article_topics}}{{/if}}{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}</p>

    {{if $gimme->article->author->defined}}<p class="date">Аўтар: <span style="font-weight: bold">{{ $gimme->article->author->name }}</span></p>{{ /if }}    
    {{if $gimme->article->source != ""}}<p class="date"><span style="font-weight: bold"><a href="{{ $gimme->article->source_url }}">{{ $gimme->article->source }}</a></span></p>{{ /if }}      

      <p>{{$gimme->article->intro}}</p>
      <p class="more"><a href="{{uri options="article"}}" class="readmore">Чытаць увесь артыкул</a>{{if $gimme->article->comment_count}}Каментароў: <a href="{{uri options="article"}}#comments" class="comments">({{$gimme->article->comment_count}})</a>{{/if}}</p>
    </div>
{{/if}}
{{/list_articles}}
  </div>
{{include file="front-column-1-top_banner.tpl"}}
</div>
{{list_sections constraints="number greater 9 number smaller 59"}}
<div class="article_box">
  <div class="big_article">
  <h4>{{$gimme->section->name}}</h4>
    <div class="big_article_data">
{{list_articles length="1" constraints="OnSection is off OnFrontPage is off" ignore_issue="true" order="byPublishDate desc"}}{{* OnSection is on removed by request *}}
      <span class="art_image">{{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" title="{{$gimme->article->image1->description}}" />{{/if}}</span>
      <h2><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></h2>
      <p class="date">{{if $gimme->article->has_topics}}{{list_article_topics length="1"}}<a href="{{uripath options="section"}}?tpid={{$gimme->topic->identifier}}">{{$gimme->topic->name}} &nbsp;&bull;&nbsp;</a> {{/list_article_topics}}{{/if}}{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}</p>

    {{if $gimme->article->author->defined}}<p class="date">Аўтар: <span style="font-weight: bold">{{ $gimme->article->author->name }}</span></p>{{ /if }}    
    {{if $gimme->article->source != ""}}<p class="date"><span style="font-weight: bold"><a href="{{ $gimme->article->source_url }}">{{ $gimme->article->source }}</a></span></p>{{ /if }}      
      
      <p>{{$gimme->article->intro}}</p>
      <p class="more"><a href="{{uri options="article"}}" class="readmore">Чытаць увесь артыкул</a>{{if $gimme->article->comment_count}}Каментароў: <a href="{{uri options="article"}}#comments" class="comments">({{$gimme->article->comment_count}})</a>{{/if}}</p>
{{/list_articles}}
    </div>
  </div>
  <div class="article_list">
  <p class="article_list_title">Апошнiя артыкулы раздзела<br />&ldquo;{{$gimme->section->name}}&rdquo;</p>
    <div class="article_list_data">
      <ul class="lists">
{{list_articles length="5" constraints="OnSection is off OnFrontPage is off" ignore_issue="true" order="byPublishDate desc"}}
{{ if $gimme->current_articles_list->index gt 1 }}
        <li><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></li>
{{/if}}
{{/list_articles}}
      </ul>
      <a href="{{uri options="section"}}" class="readmore">Усе артыкулы раздзела</a>
    </div>
  </div>
</div>
{{/list_sections}}
{{* include file="photofact-tape.tpl" *}}
{{ include file="front-column-1-banner.tpl" }}