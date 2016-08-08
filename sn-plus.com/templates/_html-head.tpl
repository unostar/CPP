{{ php }}header('X-UA-Compatible: IE=edge,chrome=1');{{ /php }}
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">

	<title>
{{ if $gimme->article->defined }}
	{{ $gimme->article->name }} — 
{{ elseif $gimme->section->defined }}
	{{ $gimme->section->name }} — 
{{ /if }}
{{ $gimme->publication->name }}</title>
	<meta name="description" content="{{ $siteinfo.description }}">
	<meta name="keywords" content="{{ if $gimme->article->keywords }}{{ $gimme->article->keywords }},{{ /if }}{{ $siteinfo.keywords }}">

{{ if $gimme->article->defined }}
	<meta name="author" content="{{ $gimme->article->author->name }}">
	<meta property="og:title" content="{{ $gimme->article->name }}">
	<meta property="og:description" content="{{ $gimme->article->intro|strip_tags:false|strip|escape:'html' }}" />
	<meta property="og:type" content="article">
	<meta property="og:url" content="http://{{ $gimme->publication->site }}/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}/">
	<meta property="og:image" content="{{ url options="image 1" }}">
{{ /if }}
	<meta property="og:site_name" content="{{ $gimme->publication->name }}">

	<link rel="alternate" type="application/rss+xml" title="{{ $gimme->publication->name }}" href="http://{{ $gimme->publication->site }}/{{ $gimme->language->code }}/page/rss/">
{{ if $gimme->section->defined && $gimme->section->number < 161 }}
	<link rel="alternate" type="application/rss+xml" title="{{ $gimme->section->name }} — {{ $gimme->publication->name }}" href="http://{{ $gimme->publication->site }}/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/?type=rss">
{{ /if }}

	<meta name="viewport" content="width=device-width">
	<link rel="shortcut icon" href="/templates/img/favicon.ico">

	<!--[if lt IE 9]><script src="/templates/js/html5.js"></script><![endif]-->

	<link rel="stylesheet" href="/templates/js/ui/jquery-ui.css">
	<link rel="stylesheet" href="/templates/main.css?v={{ php }}echo filemtime($_SERVER['DOCUMENT_ROOT'].'/templates/main.css');{{ /php }}">
	<link rel="stylesheet" href="/templates/add.css?v={{ php }}echo filemtime($_SERVER['DOCUMENT_ROOT'].'/templates/add.css');{{ /php }}">
	<!--[if lte IE 8]><link rel="stylesheet" href="/templates/ie.css"><![endif]-->
	<!--[if lte IE 7]><link rel="stylesheet" href="/templates/ie7.css"><![endif]-->

	<script src="http://openx.omniton.net/delivery/spcjs.php?id=17"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>
	<script>window.jQuery || document.write("<script src='/templates/js/jquery-1.7.2.min.js'>\x3C/script>")</script>
	<script src="/templates/js/plugins.js"></script>
	<script src="/templates/js/scripts.js"></script>
</head>
<body>
{{ set_issue number="1" }}{{ set_default_section }}{{ set_default_article }}{{ unset_topic }}
