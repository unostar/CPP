<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>{{$gimme->publication->name}}{{if $gimme->article->defined}} - {{$gimme->article->name}}{{elseif $gimme->section->defined}} - {{$gimme->section->name}}{{/if}}</title>
  <meta name="description" content="{{$siteinfo.description}}" />
  <meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
  <meta name="viewport" content="width=device-width" />
  <meta name="google-site-verification" content="1G0zzDWmeOWtJpUWvq_VnI8bqihBgWFhNsudwX2Qm1s" />
{{if $gimme->article->defined}}
  <meta name="author" content="{{$gimme->article->author->name}}" />
  <meta property="og:title" content="{{$gimme->article->name}}" />
  <meta property="og:type" content="article" />
  <meta property="og:url" content="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" />
  <meta property="og:image" content="{{url options="image 1"}}" />
  <meta property="og:site_name" content="{{$gimme->publication->name}}" />
{{/if}}
  <link rel="shortcut icon" href="/templates/favicon.ico" />
  <link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}}" href="http://feeds.feedburner.com/ArchePacatak" />
  <script type="text/javascript" src="http://openx.omniton.net/delivery/spcjs.php?id=4"></script>
  <!--[if lt IE 9]><script src="/templates/arche/js/html5.js"></script><![endif]-->
  <link rel="stylesheet" type="text/css" href="/templates/arche/css/main.css?v={{ php }}echo filemtime($_SERVER['DOCUMENT_ROOT'].'/templates/arche/css/main.css');{{ /php }}" />
  <!--[if lte IE 8]><link rel="stylesheet" type="text/css" href="/templates/arche/css/ie.css" /><![endif]-->
  <!--[if lte IE 7]><link rel="stylesheet" type="text/css" href="/templates/arche/css/ie7.css" /><![endif]-->
  <link rel="stylesheet" type="text/css" href="/templates/arche/css/add.css?v={{ php }}echo filemtime($_SERVER['DOCUMENT_ROOT'].'/templates/arche/css/add.css');{{ /php }}" />
  <script type="text/javascript" src="http://www.google.com/jsapi"></script>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
  <script>window.jQuery || document.write("<script src='/templates/arche/js/jquery-1.6.2.min.js' type='text/javascript'>\x3C/script>")</script>
{{if $gimme->template->name == "arche/archive.tpl"}}
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
  <script type="text/javascript" src="/templates/arche/js/datepicker.by.js"></script>
  <link rel="stylesheet" type="text/css" href="/templates/arche/js/ui/ui.css" />
{{/if}}
  <script type="text/javascript" src="/templates/arche/js/plugins.js"></script>
  <script type="text/javascript" src="/templates/arche/js/scripts.js"></script>
</head>
{{set_issue number="1"}}{{set_default_section}}{{set_default_article}}{{unset_topic}}