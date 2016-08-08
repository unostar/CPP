<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="copyright" content="Tvoy styl" />
<meta name="description" content="Твой стыль (Гродна) — он-лайн навiны, новости из Гродно, wiadomosci z Grodno, news from Hrodna"/>
<meta name="keywords" content="новости, комментарии, вести, рубрики, блоги, статья, экономика, политика, факты, Беларусь, Гродно, навiны, Гродна, Grodno, палітыка, эканоміка, трэці сектар, журналісты, журналистика, политика, культура, стыль жыцця, стиль, адукацыя, образование, падарожжы, мультимедиа, мультымедыя" />
<meta name="robots" content="all" />
<title>Твой стыль - версiя для друкавання</title>
<link href="/templates/newspaper/styles/reset.css" rel="stylesheet" type="text/css" />
<link href="/templates/newspaper/styles/print.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="logo">Апублікавана ў Штодыднёвiку &quot;Твой Стыль&quot;(<span class="date">http://{{ $gimme->publication->site}}</span>)</div>
<h2>{{ $gimme->article->name }}</h2>
<p class="data">{{ if $gimme->article->author->name != "" }}Піша {{ $gimme->article->author->name }}{{ /if }}<br/>{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }}</p>
{{ if $gimme->article->has_image(2) }}
        <img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" />
{{ /if }}
<div class="intro">{{ $gimme->article->Intro }}</div>
<div class="full_text">{{ $gimme->article->Full_text }}</div>
<h3 class="notice">Мае меркаваннi:</h3>
<form action="post">
    <textarea class="comments" cols="7" rows="100">Тут Вы можаце пакiнуць свае меркаваннi цi каменты</textarea>
</form>
<div class="footer">
<p><span class="ts">{{ $gimme->publication->site}}</span>&nbsp;/ Source URL: http://{{ $gimme->publication->site}}/{{ $gimme->section->number}}/{{ $gimme->article->number}}<br/>&copy; Copyright 2009 Твой Стыль</p>
</div>
</body>
</html>