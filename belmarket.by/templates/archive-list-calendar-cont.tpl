{{assign var="get_date" value=$smarty.get.date|date_format:"%Y-%m-%d"}}
{{ list_issues constraints="number greater 1 publish_date is $get_date" }}
{{ assign var="iss" value=$gimme->issue->number }}
{{ /list_issues }}

{{ local }}
{{ set_issue number=$iss }}
<div class="home-column-middle">
  <div class="content-middle">
 <h3 class="top-title-article">Архив газеты &quot;Белорусы и Рынок&quot;</h3><br/>
 <p class="archive">{{ $gimme->issue->name }}</p>
 
 <div class="archive-list">
 {{ set_section number="1" }}
 <h2 class="main">БР новости</h2>
 {{ list_articles order="bypublishdate desc" }}
{{ if $gimme->article->author->name == "" }}
 <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ else }}
 <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p><h2>({{ $gimme->article->author->name }}{{$gimme->article->extended_author}})</h2>
{{ /if }}

 {{ /list_articles }}
 </div>

 <div class="archive-list" style="padding-top:20px; clear:both;">
 <h2 class="main">Актуалии</h2>
 {{ list_sections constraints="number greater 9 number smaller 41" }}
 {{ list_articles order="bypublishdate desc" }}
 {{ if $gimme->current_list->at_beginning }}
 <h2 style="font-size:14px;margin-top:10px; text-decoration:underline;">{{ $gimme->section->name }}</h2>
 {{ /if }}
 {{ /list_articles }}
 {{ list_articles order="bypublishdate desc" }}
 {{ if $gimme->article->author->name == "" }}
 <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ else }}
<p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p><h2>({{ $gimme->article->author->name }}{{$gimme->article->extended_author}})</h2>
{{ /if }}
 {{ /list_articles }}
 {{ /list_sections }}
 </div>

 <div class="archive-list" style="padding-top:20px; clear:both;">
 <h2 class="main">Экономикс</h2>
 {{ list_sections constraints="number greater 49 number smaller 90" }}
 {{ list_articles order="bypublishdate desc" }}
 {{ if $gimme->current_list->at_beginning }}
 <h2 style="font-size:14px;margin-top:10px; text-decoration:underline;">{{ $gimme->section->name }}</h2>
 {{ /if }}
 {{ /list_articles }}
 {{ list_articles order="bypublishdate desc" }}
{{ if $gimme->article->author->name == "" }}
 <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ else }}
 <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p><h2>({{ $gimme->article->author->name }}{{$gimme->article->extended_author}})</h2>
{{ /if }}

 {{ /list_articles }}
 {{ /list_sections }}
 </div>

 <div class="archive-list" style="padding-top:20px; clear:both;">
 <h2 class="main">Общество</h2>
 {{ list_sections constraints="number greater 99 number smaller 131" }}
 {{ list_articles order="bypublishdate desc" }}
 {{ if $gimme->current_list->at_beginning }}
 <h2 style="font-size:14px;margin-top:10px; text-decoration:underline;">{{ $gimme->section->name }}</h2>
 {{ /if }}
 {{ /list_articles }}
 {{ list_articles order="bypublishdate desc" }}
 {{ if $gimme->article->author->name == "" }}
 <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ else }}
<p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p><h2>({{ $gimme->article->author->name }}{{$gimme->article->extended_author}})</h2>
{{ /if }}
 
 {{ /list_articles }}
 {{ /list_sections }}
 </div>
 
 <div class="archive-list" style="padding-top:20px; clear:both;">
 <h2 class="main">Авторская колонка</h2>
 {{ list_sections constraints="number greater 131 number smaller 149" }}
 {{ list_articles order="bypublishdate desc" }}
 {{ if $gimme->article->author->name == "" }}
 <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ else }}
<p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p><h2>({{ $gimme->article->author->name }}{{$gimme->article->extended_author}})</h2>
{{ /if }}
 
 {{ /list_articles }}
 {{ /list_sections }}
 </div>

 <div class="archive-list" style="padding-top:20px; clear:both;">
 {{ list_sections constraints="number greater 149 number smaller 201" }}
 {{ list_articles order="bypublishdate desc" }}
 {{ if $gimme->current_list->at_beginning }}
  <h2 class="main">{{ $gimme->section->name }}</h2>
 {{ /if }}
 {{ /list_articles }}
 {{ list_articles order="bypublishdate desc" }}
 {{ if $gimme->article->author->name == "" }}
 <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ else }}
<p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p><h2>({{ $gimme->article->author->name }}{{$gimme->article->extended_author}})</h2>
{{ /if }}
  
 {{ /list_articles }}
 {{ /list_sections }}
 </div>
 <div class="archive-list" style="padding-top:20px; clear:both;">
 <h2 class="main">Сервисы сайта</h2>
 {{ list_sections constraints="number greater 269 number smaller 350" }}
 {{ list_articles order="bypublishdate desc" }}
 {{ if $gimme->current_list->at_beginning }}
 <h2 style="font-size:14px;margin-top:10px; text-decoration:underline;">{{ $gimme->section->name }}</h2>
 {{ /if }}
 {{ /list_articles }}
 {{ list_articles order="bypublishdate desc" }}
 {{ if $gimme->article->author->name == "" }}
 <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
 {{ else }}
 <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
 <h2>({{ $gimme->article->author->name }}{{$gimme->article->extended_author}})</h2>
 {{ /if }}
 
 {{ /list_articles }}
 {{ /list_sections }}
 </div>

  
 </div>
</div>

{{ /local }}