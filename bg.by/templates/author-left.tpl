{{if $smarty.get.page}}{{assign var="page" value=$smarty.get.page}}{{else}}{{assign var="page" value="1"}}{{/if}}
<div class="article-column" id="article-column">
<h1>Статьи автора:</h1>

{{list_articles columns="12" ignore_issue="true" ignore_section="true" order="bypublishdate desc" constraints="author is __current"}}
{{if $gimme->current_list->row == $page}}
<div class="rest-news"> 
{{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" border="0" align="left" width="100" />{{ /if }}
<h3 class="section-block"><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></h3>
<p class="date">{{$gimme->article->publish_date|camp_date_format:"%d %M %Y"}} г. {{if $gimme->article->author->name != ""}}| Автор: {{$gimme->article->author->name}}{{ /if }}</p>
{{ $gimme->article->Intro }}
<p><a href="{{uri options="article"}}" class="read">Далее</a>
{{if $gimme->article->comment_count}}<a href="{{uri options="article"}}#comments-list" class="comment">Комментарии ({{$gimme->article->comment_count}})</a>{{/if}}
</p>
</div>
{{/if}}
{{/list_articles}}

<div class="rest-news">
{{list_articles columns="12" ignore_issue="true" ignore_section="true" order="bypublishdate desc" constraints="author is __current"}}
{{if $gimme->current_list->count > 12}}
{{if $gimme->current_list->column == 1}}
  {{if $gimme->current_list->row==$page}}<button class="ui-widget ui-state-active ui-corner-all">{{$gimme->current_list->row}}</button>
  {{else}}<a class="ui-button" href="{{uripath options="article"}}?{{urlparameters options="template author.tpl"}}&page={{$gimme->current_list->row}}"><button class="ui-widget ui-state-default ui-corner-all">{{$gimme->current_list->row}}</button></a>{{/if}}
{{/if}}
{{/if}}
{{/list_articles}}
</div>


</div>
