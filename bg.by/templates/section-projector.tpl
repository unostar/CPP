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

{{set_current_issue}}
{{set_section number="25"}}
{{ set_topic identifier="1" }}
<div class="ticker">{{ $gimme->section->name }}</div>
<span style="font-weight:bold">Мы решили, используя принцип прожектора, «высвечивать» в «Брестской газете» ситуацию, связанную с мировым экономическим кризисом. Смотрите! Читайте! Делайте выводы!</span><br/><br/>
<img src="/templates/images/prozhektor11-mini.jpg" alt="прожектор кризиса Брестская газета" width="600px" />
{{ list_subtopics length="3" }}
<div class="title">{{ $gimme->topic->name }}</div>
  {{ list_articles order="bySectionOrder asc" }}
  <div class="rest-news"> 
  {{ if $gimme->article->has_image(1) }}<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" border="0" align="left" width="100" alt="фото Брестская газета" />{{ /if }}
  <h3 class="section-block"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
  <p class="date">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }} г. {{ if $gimme->article->author->name != "" }}| Автор: <a href="{{ uri options="template author.tpl" }}">{{ $gimme->article->author->name }}</a>{{ /if }}</p>
  {{ $gimme->article->Intro }}
    <p><a href="{{ uri options="article" }}" class="read">Далее</a>
      {{ if $gimme->article->comments_enabled }}
      <a href="{{ uri options="article" }}#comments-list" class="comment">Комментарии
        {{ list_article_comments order="bydate asc"}}
        {{ if $gimme->current_list->at_beginning }}({{ $gimme->current_list->count }}){{ /if }}
        {{ /list_article_comments }}
        {{ if $gimme->prev_list_empty }}(0){{ /if }}
      </a>
      {{ /if }}
    </p>
  </div>
  {{ /list_articles }}
{{ /list_subtopics }}
{{set_default_issue}}
{{set_default_section}}
  </div>
      {{ include file="section-cont-right.tpl" }}
  </div>
  {{ include file="_footer.tpl" }}
</div>
</body>
</html>
