<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>"Брестская газета" - {{ $gimme->section->name }}</title>
{{ include file="_html_head.tpl" }}
</head>
<body>
<div id="wrapper">
  {{ include file="_header.tpl" }}
  <div id="main-content" class="clearfix">
  <div class="section-left-content">

{{set_section number="110"}}
<div class="ticker">{{ $gimme->section->name }}</div>
<img src="/templates/images/kolonka_red.jpg" alt="колонка редактора Брестская газета" width="600px" />
{{ assign var="section" value=$gimme->section->number }}
{{ list_articles length="1" }}
 <div class="main-news"> 
{{ if $gimme->article->has_image(2) }}
<img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description|replace:'"':'' }}" border="0" />
{{ /if }}
        <h1><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h1>
        <p class="date">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }} г. {{ if $gimme->article->author->name == "" }}{{ else }}| Автор: <a href="{{ uri options="template author.tpl" }}">{{ $gimme->article->author->name }}</a>{{ /if }}</p>
        {{ assign var="n_article" value=$gimme->article->number }}
        {{ $gimme->article->Intro }}
        <p><a href="{{ uri options="article" }}" class="read">Далее</a>
{{ if $gimme->article->comments_enabled }}
<a href="{{ uri options="article" }}#comments-list" class="comment">Комментарии
{{ list_article_comments order="bydate asc"}}
  {{ if $gimme->current_list->at_beginning }} ({{ $gimme->current_list->count }}) {{ /if }}
{{ /list_article_comments }}
{{ if $gimme->prev_list_empty }}(0){{ /if }}
</a>
{{ /if }}
</p>
      </div>
{{ /list_articles }}

{{ list_articles length="25" ignore_issue="true" }} {{* requested in Task #00657 *}}
{{ if $gimme->current_list->at_beginning && $gimme->current_list->count >1 }}
  <div class="title">{{ if $gimme->section->number == "470" }}Другие карикатуры{{else}}Cтатьи рубрики &quot;{{ $gimme->section->name }}&quot;{{ /if }}</div>
{{ /if }}
{{ if ($gimme->article->number == $n_article ) }}
{{ else }}
<div class="rest-news"> 
{{ if $gimme->article->has_image(1) }}
<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description|replace:'"':'' }}" border="0" align="left" width="100" />
{{ /if }}
        <h3 class="section-block"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
        <p class="date">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }} г. {{ if $gimme->article->author->name == "" }}{{ else }}| Автор: <a href="{{ uri options="template author.tpl" }}">{{ $gimme->article->author->name }}</a>{{ /if }}</p>
        {{ $gimme->article->Intro }}
        <p><a href="{{ uri options="article" }}" class="read">Далее</a>
{{ if $gimme->article->comments_enabled }}
<a href="{{ uri options="article" }}#comments-list" class="comment">Комментарии
{{ list_article_comments order="bydate asc"}}
  {{ if $gimme->current_list->at_beginning }} ({{ $gimme->current_list->count }}) {{ /if }}
{{ /list_article_comments }}
{{ if $gimme->prev_list_empty }}(0){{ /if }}
</a>
{{ /if }}
</p>

      </div>
{{ /if }}
{{ /list_articles }}
{{set_default_issue}}
{{set_default_section}}
  </div>
      {{ include file="section-cont-right.tpl" }}
  </div>
  {{ include file="_footer.tpl" }}
</div>
</body>
</html>
