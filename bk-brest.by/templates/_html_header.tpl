<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{$gimme->issue->language->code}}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="{{$gimme->issue->language->code}}" />
<meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
<meta name="description" content="{{$siteinfo.description}}" />
<meta name='yandex-verification' content='51a4fa2a52ed3261' />
<title>{{$gimme->publication->name}}{{if $gimme->article->defined}} - {{$gimme->article->name}}{{elseif $gimme->section->defined}}: {{$gimme->section->name}}{{/if}}</title>
<link rel="shortcut icon" href="/templates/images/favicon.ico" type="image/vnd.microsoft.icon" />
<link rel="icon" href="/templates/images/favicon.png" type="image/png" />
<link rel="alternate" type="application/rss+xml" title="RSS {{$gimme->publication->name}}" href="http://{{$gimme->publication->site}}/feed/index.rss" />
<link rel="alternate" type="application/rss+xml" title="RSS {{$gimme->publication->name}} | Свежие новости" href="http://{{$gimme->publication->site}}/feed/news.rss" />
{{list_sections constraints="number smaller 100"}}
<link rel="alternate" type="application/rss+xml" title="RSS {{$gimme->publication->name}} | {{$gimme->section->name}}" href="http://{{$gimme->publication->site}}/feed/{{$gimme->section->url_name}}.rss" />
{{/list_sections}}
<link rel="stylesheet" href="/templates/css/main.css" type="text/css" media="screen,projection" />
<!--[if lt IE 8]>
<link rel="stylesheet" href="/templates/css/main.ie.css" type="text/css" media="screen,projection" />
<![endif]-->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/{{* 1.4 *}}1.6.1/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/{{* 1.7.2 *}}1.8.13/jquery-ui.min.js"></script>
<script type="text/javascript" src="/templates/javascript/functions.js"></script>
</head>
