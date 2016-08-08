<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>{{if $gimme->article->defined}}{{$gimme->article->name}} - {{elseif $gimme->section->defined}}{{$gimme->section->name}} - {{/if}}{{$gimme->publication->name}} - Витебский Курьер</title>
	<meta name="HandheldFriendly" content="True">
	<meta name="MobileOptimized" content="240">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="http://{{$gimme->publication->site}}/favicon.ico" />
	<link rel="stylesheet" href="/templates/style/mobile.css">
</head>
<body>
<div class="header">
	<h1 class="logo">
		<a href="/"><img src="/templates/img/logo-mobile.png" alt="Витебский курьер"><small>Мобильная версия</small></a>
	</h1>
	<p class="today">{{$smaty.now|camp_date_format:"%d.%m.%Y <span>%W</span>"}}</p>
	<p class="go-to-nav"><small><a href="#nav">Прокрутить к навигации</a></small></p>
</div><!-- .header -->
