<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{{if $gimme->article->defined}}{{$gimme->article->name}} - {{elseif $gimme->section->defined}}{{$gimme->section->name}} - {{/if}}Рэгіянальная газета</title>
<link rel="stylesheet" type="text/css" media="screen, projection, print" href="/templates/styles/screen.css" />
{{*<link rel="shortcut icon" type="image/x-icon" href="http://{{$gimme->publication->site}}/favicon.ico" />*}}
{{include file="feed/_html-head-feed.tpl"}}
{{ if $gimme->template->name == "search.tpl" || $gimme->template->name == "archive.tpl"}}
<link href="/templates/js/calendar/calendar-big.css" rel="stylesheet" type="text/css" />
{{ else }}
<link href="/templates/js/calendar/calendar.css" rel="stylesheet" type="text/css" />
{{ /if }}
<link href="/templates/js/calendar/fonts-min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/templates/js/calendar/yahoo-dom-event.js"></script>
<script type="text/javascript" src="/templates/js/calendar/calendar-min.js"></script>
<script type="text/javascript" src="/templates/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="/templates/js/jquery-ui-1.7.1.custom.min.js"></script>
<script type="text/javascript" src="/templates/js/functions.js"></script>
<meta name="keywords" content="новости, Молодечно, Вилейка, Сморгонь, Воложин, Мядель, Ошмяны, Островец, события, происшествия, авария, ГАИ, ДТП, ДАІ, ДТЗ, аварыя, здарэнні, крымінал, падзеі, криминал, проишествия, расписание движения автобусов, расписание движения поездов, автобус Минск-Молодечно, автобус Молодечно-Минск, автобус Минск-Вилейка, автобус Вилейка-Минск, автобус Вилейка-Молодечно, автобус Молодечно-Вилейка, история, экономика, общество, спорт, культура, грамадства, новости Молодечно, эканоміка, гісторыя, расписание электричек, погода в Молодечно, погода, Региональная газета, Регианальная газета, Рэгиянальная газета, Рэгіянальная газета, Арыгінальная газета, Вилейское водохранилище" />
<meta name="description" content="Навіны рэгіёна: Маладзечна, Вілейка, Смаргонь, Ашмяны, Валожын, Мядзел, Астравец" />
<meta name="generator" content="Newscoop" />
{{ if $gimme->article->defined }}
  <meta name="author" content="{{ $gimme->article->author->name }}" />
  <meta property="og:title" content="{{ $gimme->article->name }}" />
  <meta property="og:description" content="{{ $gimme->article->intro|strip_tags:false|strip|escape:'html' }}" />
  <meta property="og:type" content="article" />
  <meta property="og:url" content="http://{{ $gimme->publication->site }}{{ uri options="article" }}" />
  <meta property="og:image" content="{{ url options="image 1" }}" />
{{ /if }}
  <meta property="og:site_name" content="{{ $gimme->publication->name }}" />
</head>
