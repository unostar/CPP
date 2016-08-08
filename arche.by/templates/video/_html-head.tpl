<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>{{$gimme->publication->name}}{{if $gimme->article->defined}} - {{$gimme->article->name}}{{elseif $gimme->section->defined}} - {{$gimme->section->name}}{{/if}}</title>
<meta name="description" content="{{$siteinfo.description}}">
<meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google-site-verification" content="1G0zzDWmeOWtJpUWvq_VnI8bqihBgWFhNsudwX2Qm1s" />
<link rel="shortcut icon" href="/templates/favicon.ico">

{{if $gimme->article->defined}}
<meta name="author" content="{{$gimme->article->author->name}}">
<meta property="og:title" content="{{$gimme->article->name}}">
<meta property="og:type" content="article">
<meta property="og:url" content="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}">
<meta property="og:image" content="{{url options="image 1"}}">
<meta property="og:site_name" content="{{$gimme->publication->name}}">
{{/if}}

<!--[if lt IE 9]><script src="/templates/arche/js/html5.js"></script><![endif]-->
<link rel="stylesheet" href="/templates/video/css/main.css">
<!--[if lte IE 8]><link rel="stylesheet" href="/templates/arche/css/ie.css"><![endif]-->
<!--[if lte IE 7]><link rel="stylesheet" href="/templates/arche/css/ie7.css"><![endif]-->
<link rel="stylesheet" href="/templates/video/css/add.css">

<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<script>window.jQuery || document.write("<script src='/templates/video/js/jquery-1.6.4.min.js'>\x3C/script>")</script>

<script src="http://openx.omniton.net/delivery/spcjs.php?id=18"></script>
<script src="/templates/video/js/plugins.js"></script>

<script src="/templates/video/js/scripts.js"></script>
</head>
<body>