<div class="home-column-middle">
  <div class="content-middle">
 <h3 class="top-title-article">Все статьи рубрики &quot;{{ $gimme->section->name }}&quot;</h3><br/>
<div class="archive-list" style="padding-top:20px; clear:both;">
{{ assign var="section" value=$gimme->section->number }}
{{ if $section<150 }}
{{ list_issues length="10" order="bypublishdate desc" constraints="number greater 1" }}
{{ if $gimme->issue->is_current }}
{{ else }}
{{ list_sections constraints="number is $section"}}
{{ list_articles order="bypublishdate desc" }}
{{ if $gimme->current_list->at_beginning }}
<h2 class="main">{{ $gimme->issue->name }}</h2>
{{ /if }}
{{ if $gimme->article->author->name == "" }}
 <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ else }}
 <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p><h2>({{ $gimme->article->author->name }}{{$gimme->article->extended_author}})</h2>
{{ /if }}
{{ /list_articles }}
{{ /list_sections }}
{{ /if }}
{{ /list_issues }}
{{ else}}
{{ list_issues length="40" order="bypublishdate desc" constraints="number greater 1" }}
{{ if $gimme->issue->is_current }}
{{ else }}
{{ list_sections constraints="number is $section"}}
{{ list_articles order="bypublishdate desc" }}
{{ if $gimme->current_list->at_beginning }}
<h2 class="main">{{ $gimme->issue->name }}</h2>
{{ /if }}
{{ if $gimme->article->author->name == "" }}
 <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ else }}
 <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p><h2>({{ $gimme->article->author->name }}{{$gimme->article->extended_author}})</h2>
{{ /if }}
{{ /list_articles }}
{{ /list_sections }}
{{ /if }}
{{ /list_issues }}
{{ /if }}

</div>

</div>
</div>