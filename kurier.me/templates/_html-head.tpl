{{php}}header('X-UA-Compatible: IE=edge,chrome=1');{{/php}}
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>{{$gimme->publication->name}}{{if $gimme->article->defined}} - {{$gimme->article->name}}{{elseif $gimme->section->defined}} - {{$gimme->section->name}}{{/if}}</title>
  <meta name="description" content="{{$siteinfo.description}}" />
  <meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
{{if $gimme->template->name=="article.tpl"}}
  <meta name="author" content="{{$gimme->article->author->name}}" />
  <meta property="og:title" content="{{$gimme->article->name}}" />
  <meta property="og:type" content="article" />
  <meta property="og:url" content="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" />
  <meta property="og:image" content="{{url options="image 1"}}" />
  <meta property="og:site_name" content="{{$gimme->publication->name}}" />
{{/if}}
  <link rel="shortcut icon" href="http://{{$gimme->publication->site}}/favicon.ico" />
  <link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}}" href="http://feeds.feedburner.com/vitebsk-kurier" />
  <!--[if lt IE 9]><script src="/templates/js/html5.js"></script><![endif]-->
  <link rel="stylesheet" href="/templates/js/ui/jquery-ui.css">
  <link rel="stylesheet" href="/templates/style/main.css" />
  <!--[if lte IE 8]><link rel="stylesheet" href="/templates/style/ie.css"><![endif]-->
  <!--[if lte IE 7]><link rel="stylesheet" href="/templates/style/ie7.css"><![endif]-->
  <link rel="stylesheet" href="/templates/style/add.css" />
  <script src="http://openx.omniton.net/delivery/spcjs.php?id=17"></script>
  <script src="http://www.google.com/jsapi"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
  <script>window.jQuery || document.write("<script type='text/javascript' src='/templates/js/jquery-1.6.4.min.js'>\x3C/script><script src='/templates/js/jquery-ui-1.8.16.min.js'>\x3C/script>")</script>
  <script type="text/javascript" src="/templates/js/plugins.js"></script>
  <script type="text/javascript" src="/templates/js/scripts.js?v=1205141247"></script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
var pp_gemius_identifier = new String('ctVLaYM7NO4NgrgZnu3JLae1XkFshYcUXIqUeFtYRfT.S7');
var pp_gemius_hitcollector = 'gaby.hit.gemius.pl';
//--><!]]>
</script>
<script type="text/javascript" src="/xgemius.js"></script>
</head>
<body>
{{set_issue number="1"}}{{set_default_section}}{{set_default_article}}{{unset_topic}}
