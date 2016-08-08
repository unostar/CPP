{{if $smarty.get.page}}{{assign var="page" value=$smarty.get.page}}{{else}}{{assign var="page" value="1"}}{{/if}}
<div class="ticker">{{$gimme->section->name}} <a href="{{ uri options="template article-recently-commented.tpl" }}">Последние комментарии</a></div>
{{list_articles columns="12" length="108" ignore_issue="true"}}
{{if $gimme->current_list->row == $page}}

{{if $gimme->current_list->at_beginning}}
  <div class="main-news">{{if $gimme->article->has_image(2)}}<img src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description|replace:'"':''}}" border="0" />{{/if}}
  <h1><a href="{{uri options="article"}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h1>
  <p class="date">{{$gimme->article->publish_date|camp_date_format:"%d %M %Y" }} г. {{if $gimme->article->author->name!=""}}| Автор: <a href="{{uripath options="article"}}?{{ urlparameters options="template author.tpl"}}">{{$gimme->article->author->name}}</a>{{/if}}</p>
  {{$gimme->article->Intro}}
  <p><a href="{{uri options="article"}}" class="read">Далее</a>
  {{if $gimme->article->comments_enabled }}<a href="{{uri options="article"}}#comments-list" class="comment">Комментарии ({{$gimme->article->comment_count}})</a>{{/if}}</p>
  </div>
  <div class="title">{{if $gimme->section->number == "470" }}Другие карикатуры{{else}}Другие статьи рубрики &quot;{{$gimme->section->name}}&quot;{{/if}}</div>
{{else}}
<div class="rest-news">
{{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description|replace:'"':''}}" border="0" align="left" width="100" />{{/if}}
<h3 class="section-block"><a href="{{uri options="article"}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h3>
<p class="date">{{$gimme->article->publish_date|camp_date_format:"%d %M %Y" }} г. {{ if $gimme->article->author->name != ""}}| Автор: <a href="{{uripath options="article"}}?{{ urlparameters options="template author.tpl"}}">{{$gimme->article->author->name}}</a>{{/if}}</p>
{{$gimme->article->Intro}}
<p><a href="{{uri options="article"}}" class="read">Далее</a>
{{if $gimme->article->comments_enabled}}<a href="{{uri options="article"}}#comments-list" class="comment">Комментарии ({{$gimme->article->comment_count}})</a>{{/if}}</p>
</div>
{{/if}}

{{/if}}
{{ /list_articles }}
<br /><br />
<div class="rest-news">
{{list_articles columns="12" length="108" ignore_issue="true"}}
{{if $gimme->current_list->count > 12}}
{{if $gimme->current_list->column == 1}}
  {{if $gimme->current_list->row==$page}}<button class="ui-widget ui-state-active ui-corner-all">{{$gimme->current_list->row}}</button>
  {{else}}<a class="ui-button" href="{{uri options="section"}}?page={{$gimme->current_list->row}}"><button class="ui-widget ui-state-default ui-corner-all">{{$gimme->current_list->row}}</button></a>{{/if}}
{{/if}}
{{/if}}
{{/list_articles}}
&nbsp;<a class="ui-button" href="{{uri options="issue"}}1/"><button class="ui-widget ui-state-default ui-corner-all">Еще</button></a>
</div>