<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="Content-Language" content="ru" />
  <title>{{$siteinfo.title}}{{if $gimme->article->defined}} - {{$gimme->article->name}}{{elseif $gimme->section->defined}} - {{$gimme->section->name}}{{/if}}</title>
  <meta name="description" content="{{$siteinfo.description}}" />
  <meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
  <meta name="a7d2c78e54e2af5a193bba835e4a5a03" content="" />
{{if $gimme->article->defined}}
  <meta property="og:title" content="{{$gimme->article->name|escape:'html':'utf-8'}}" />
  <meta property="og:description" content="{{$gimme->article->intro|strip_tags:false|strip|escape:'html':'utf-8'}}" />
  <meta property="og:image" content="{{url options="image 2"}}" />
  <meta property="og:url" content="{{ url options="article" }}" />
  <meta property="og:type" content="article" />
{{/if}}
  <meta property="og:site_name" content="Народная Воля" />
  <meta name="generator" content="Newscoop" />
  <meta name="google-site-verification" content="Yw4iqH8fALT1RUH9V0KUWowqN472YYImLCwv9q2UhD0" />
  <link rel="shortcut icon" href="http://{{$gimme->publication->site}}/templates/images/favicon.ico" />
  <link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}}" href="http://{{$gimme->publication->site}}/feed/index.rss" />
  <link rel="alternate" type="application/rss+xml" title="Народная Воля - Друкаванае выданне" href="http://nv-online.info/feed/printed.rss" />
  <link rel="alternate" type="application/rss+xml" title="Народная Воля - Навіны" href="http://nv-online.info/feed/news.rss" />
  <link rel="alternate" type="application/rss+xml" title="Народная Воля - Палітыка" href="http://nv-online.info/feed/politics.rss" />
  <link rel="alternate" type="application/rss+xml" title="Народная Воля - Эканоміка" href="http://nv-online.info/feed/economics.rss" />
  <link rel="alternate" type="application/rss+xml" title="Народная Воля - Грамадства" href="http://nv-online.info/feed/society.rss" />
  <link rel="alternate" type="application/rss+xml" title="Народная Воля - У свеце" href="http://nv-online.info/feed/world.rss" />
  <link rel="alternate" type="application/rss+xml" title="Народная Воля - Культура" href="http://nv-online.info/feed/culture.rss" />
  <link rel="alternate" type="application/rss+xml" title="Народная Воля - Свецкая хроніка" href="http://nv-online.info/feed/gossips.rss" />
  <link rel="alternate" type="application/rss+xml" title="Народная Воля - Здароўе" href="http://nv-online.info/feed/health.rss" />
  <link rel="alternate" type="application/rss+xml" title="Народная Воля - Спорт" href="http://nv-online.info/feed/sport.rss" />
  <link rel="stylesheet" type="text/css" media="screen, projection" href="/templates/styles/screen.css?v={{ php }}echo filemtime($_SERVER['DOCUMENT_ROOT'].'/templates/styles/screen.css');{{ /php }}" />
  <link rel="stylesheet" type="text/css" media="print" href="/templates/styles/print.css" />
{{if $gimme->template->name == "archive.tpl"}}
  <link href="/templates/js/calendar/calendar-big.css" rel="stylesheet" type="text/css" />
{{else}}
  <link href="/templates/js/calendar/calendar.css" rel="stylesheet" type="text/css" />
{{/if}}
  <link href="/templates/js/calendar/fonts-min.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.1/jquery-ui.min.js"></script>
  <script type="text/javascript" src="/templates/js/calendar/yahoo-dom-event.js"></script>
  <script type="text/javascript" src="/templates/js/calendar/calendar-min.js"></script>
  <script type="text/javascript" src="http://{{$gimme->publication->site}}/templates/js/functions.js"></script>
  <script type="text/javascript">
  var tickercontent=new Array();
  {{ render file="_ticker.tpl" issue=off section=off article=off cache=3600 }}
  </script>
  <script src="http://{{$gimme->publication->site}}/templates/js/ticker-script.js"></script>
  <script type="text/javascript">
  var disqus_shortname = 'nv-online';
  (function () {
    var s = document.createElement('script'); s.async = true;
    s.type = 'text/javascript';
    s.src = 'http://disqus.com/forums/' + disqus_shortname + '/count.js';
    (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
  }());
  </script>
</head>