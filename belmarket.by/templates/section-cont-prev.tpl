{{ set_default_section }}
{{ assign var="section" value=$gimme->section->number }}
{{ assign var="counter" value="1" }}
<div class="art_from_previous">
<div class="art_from_previous-content">
<h2 class="top-news">&quot;{{ $gimme->section->name }}&quot; из предыдущих 
номеров</h2>
<div class="list-articles">
{{ list_issues order="bypublishdate desc" }}
{{ if $gimme->issue->is_current }}
{{ else }}
{{ list_sections constraints="number is $section"}}
{{ list_articles order="bypublishdate desc" }}
{{ if ($counter < 6) }}
{{ php }}
$flag = $this->get_template_vars('counter');
$this->assign('counter',$flag+1);
{{ /php }}
<p class="br-article">
<a href="{{ uri options="article" }}">{{ $gimme->article->name }}&nbsp;<span 
class="index-date">({{ $gimme->article->author->name }}{{$gimme->article->extended_author}}, {{ $gimme->issue->name 
}})</span></a><br/></p>
{{ /if }}
{{ /list_articles }}
{{ /list_sections }}
{{ /if }}
{{ /list_issues }}
<div class="all-previous"><a href="{{ uri options="template all-articles-prev.tpl" }}" target="_self">Все статьи рубрики &quot;{{ $gimme->section->name }}&quot;</a></div>
</div>
</div>
</div>
