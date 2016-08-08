{{if strpos($tag, " ") }}
  {{ assign var = "tag_sort" value = $tag|replace:' ':'\ ' }}
{{else}}
  {{ assign var = "tag_sort" value = $tag }}
{{/if}}

{{ list_articles length="1" ignore_issue="true" ignore_section="true" constraints="topic is $tag_sort:ru" }}
<div class="ticker">{{ $tag }}</div>  
 <div class="main-news"> 
{{ if $gimme->article->has_image(2) }}
<img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description|replace:'"':'' }}" border="0" />
{{ /if }}
        <h1><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h1>
        <p class="date">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }} г. {{ if $gimme->article->author->name == "" }}{{ else }}| Автор: <a href="{{ uri options="template author.tpl" }}">{{ $gimme->article->author->name }}</a>{{ /if }}</p>
        {{ assign var="n_article" value=$gimme->article->number }}
        {{ $gimme->article->Intro }}
        <p><a href="{{ uri options="article" }}" class="read">Далее</a>
{{ if $gimme->article->comments_enabled }}<a href="{{ uri options="article" }}#comments-list" class="comment">Комментарии ({{$gimme->article->comment_count}})</a>{{ /if }}
</p>
   </div>
{{ /list_articles }}

{{ list_articles length="25" ignore_issue="true" ignore_section="true" constraints="topic is $tag_sort:ru" }}
{{ if $gimme->current_list->at_beginning && $gimme->current_list->count >1 }}
  <div class="title">Другие статьи с тегом &quot;{{ $tag }}&quot;</div>
{{ /if }}
{{ if ($gimme->article->number == $n_article ) }}
{{ else }}
<div class="rest-news"> 
{{ if $gimme->article->has_image(1) }}
<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description|replace:'"':'' }}" border="0" align="left" width="100" />
{{ /if }}
        <h3 class="section-block"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h3>
        <p class="date">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }} г. {{ if $gimme->article->author->name != ""}}| Автор: <a href="{{ uri options="template author.tpl" }}">{{ $gimme->article->author->name }}</a>{{ /if }}</p>
        {{ $gimme->article->Intro }}
        <p><a href="{{ uri options="article" }}" class="read">Далее</a>
{{ if $gimme->article->comments_enabled }}
<a href="{{ uri options="article" }}#comments-list" class="comment">Комментарии ({{$gimme->article->comment_count}})</a>
{{ /if }}
</p>
</div>
{{ /if }}
{{ /list_articles }}