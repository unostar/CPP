<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="copyright" content="Белорусы и рынок" />
{{ if $gimme->article->keywords != '' }}
<meta name="keywords" content="{{$gimme->article->keywords}}" />
{{ /if }}
<meta name="keywords" content="Беларусь, РБ, БР, белорусские, белорусский, цены, цена, банк, банки, рынок, предприятия, предприятие, компания, правительство, экономика, государства, президента, президент, президентом, газ, нефть, валюта, финансы, право, власти, власть, Минск" />
<title>{{$gimme->article->name}} - Белорусы и рынок. Еженедельная аналитическая газета для деловых людей.</title>
<link href="/templates/styles/reset.css" rel="stylesheet" type="text/css" />
<link href="/templates/styles/print.css" rel="stylesheet" type="text/css" />
</head>
<body>
{{ local }}
    {{* set_current_issue *}}
    {{ set_section number="5" }}
    {{ list_articles length="1" }}
        {{ assign var="number_iss" value=$gimme->article->name }}
        {{ assign var="date_iss" value=$gimme->article->Lead }}
    {{ /list_articles }}
    {{ /local }}
{{ local }}
{{ set_default_article }}
<div class="logo-img"><img src="/templates/images/logo.gif" alt="logo" border="0" /><br/>
   <p>Eженедельная аналитическая газета для деловых людей</p></div>
<h1>{{ $gimme->article->name }}</h1>
<p>№{{ $number_iss }}, {{ $date_iss }}</p>
<p>http://{{ $gimme->publication->site }}/ru/{{ $gimme->issue->number }}/{{ $gimme->section->number }}/{{ $gimme->article->number }}</p>
<p class="byline">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
{{ if $gimme->article->has_image(2) }}
    <div class="imgfloater"><img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" /><p>{{ $gimme->article->image2->description }}</p></div>
{{ /if }}
<p><strong>{{ $gimme->article->Lead }}</strong></p><br/>
<p>{{ $gimme->article->Related }}<br/></p>
<div class="print-page">
{{ $gimme->article->Article_text->all_subtitles }}<br/><br/>
</div>
{{ list_article_images }}
  {{ if $gimme->article->image->article_index < 20 }}
  {{ else }}
  <img src="{{ uri options="image" }}" alt="{{ $gimme->article->image->description }}" width="600" /><br/><br/>
  {{ /if }}
  {{ /list_article_images }}
{{ /local }}
<div class="footer">
<p>&copy; ЗАО &quot;Медиарынок&quot;, {{ $smarty.now|camp_date_format:"%Y" }} г. Все права защищены.<br/>При использовании материалов сайта ссылка (для Интернет-изданий -- гиперссылка) на источник обязательна.</p>
</div>
</body>
</html>