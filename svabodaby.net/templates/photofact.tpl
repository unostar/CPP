{{set_default_article}}
{{assign var="main" value=$gimme->article->number}}
<div class="article_box">
<h4>{{$gimme->section->name}}</h4>
  <div class="main_news">
    <h1>{{$gimme->article->name}}</h1>
    <p class="date">{{if $gimme->article->has_topics}}{{list_article_topics length="1"}}<a href="{{uripath options="section"}}?tpid={{$gimme->topic->identifier}}">{{$gimme->topic->name}} &nbsp;&bull;&nbsp;</a> {{/list_article_topics}}{{/if}}{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}</p>
    <span class="art_image">{{if $gimme->article->has_image(2)}}<a rel="lightbox-photo" href="{{uri options="image 2"}}" title="{{$gimme->article->image2->description}}"><img src="{{uri options="image 2"}}&ImageRatio=40" alt="{{$gimme->article->image2->description}}" /></a>{{/if}}</span>
    <div id="intro">{{$gimme->article->intro}}</div>
{{if $gimme->article->author->defined}}
    <p class="author">{{$gimme->article->author->name}}</p>
{{/if}}
    <div class="photos">
{{list_article_images}}
{{if $gimme->image->article_index > 2}}
<a rel="lightbox-photo" href="{{uri options="image"}}" title="{{$gimme->image->description}}"><img src="{{uri options="image"}}&ImageRatio=20" alt="{{$gimme->image->description}}" />
<b>{{$gimme->image->description}}</b><br />
{{if $gimme->image->photographer}}Фота: {{$gimme->image->photographer}}<br />{{/if}}
{{if $gimme->image->place}}Месца: {{$gimme->image->place}}<br />{{/if}}
Дата: {{$gimme->image->date|camp_date_format:"%Y-%m-%d"}}</a>
{{/if}}
{{/list_article_images}}
    </div>
  </div>
</div>
{{if $gimme->article->comments_enabled}}
{{ include file="article-column-1-comments.tpl" }}
{{/if}}
{{ include file="front-column-1-banner.tpl" }}
<div class="article_box other">
<h4>ЯШЧЭ ФОТАФАКТЫ</h4>
  <div class="main_news">
    <ul class="lists">
{{list_articles length="6" constraints="number not $main" order="byPublishDate desc" ignore_issue="true"}}
      <li><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></li>
{{/list_articles}}
    </ul>
  </div>
</div>