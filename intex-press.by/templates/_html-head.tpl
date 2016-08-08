<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="Content-Language" content="ru" />
  <meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}},события,обозрения,статьи,он-лайн,новости,политика,экономика,Барановичи,Барановичи сайт,Барановичи газета,пресса,еженедельник,Барановичи объявления,Барановичский район,Барановичский регион,погода,Брестская область,Беларусь" />
  <meta name="description" content="{{$siteinfo.description}}" />
  <meta name="copyright" content="Intex press" />
  <meta name="akavita-verification" content="ab4f139f88f86b6e737e738eb2b4318f"> 
  <title>{{$siteinfo.title}}{{if $gimme->article->defined}} - {{$gimme->article->name}}{{elseif $gimme->section->defined}} - {{$gimme->section->name}}{{/if}}</title>
  <link rel="shortcut icon" href="http://{{$gimme->publication->site}}/favicon.ico" />
  <link rel="alternate" type="application/rss+xml" title="INTEX-PRESS Online" href="http://www.intex-press.by/feed/index.rss" />
  <link rel="alternate" type="application/rss+xml" title="INTEX-PRESS Online - Последние новости" href="http://www.intex-press.by/feed/news.rss" />
  <link rel="alternate" type="application/rss+xml" title="INTEX-PRESS Online - Политика" href="http://www.intex-press.by/feed/politics.rss" />
  <link rel="alternate" type="application/rss+xml" title="INTEX-PRESS Online - Экономика" href="http://www.intex-press.by/feed/economics.rss" />
  <link rel="alternate" type="application/rss+xml" title="INTEX-PRESS Online - Общество" href="http://www.intex-press.by/feed/society.rss" />
  <link rel="alternate" type="application/rss+xml" title="INTEX-PRESS Online - Происшествия" href="http://www.intex-press.by/feed/incidents.rss" />
  <link rel="alternate" type="application/rss+xml" title="INTEX-PRESS Online - Культура" href="http://www.intex-press.by/feed/culture.rss" />
  <link rel="alternate" type="application/rss+xml" title="INTEX-PRESS Online - Cпорт" href="http://www.intex-press.by/feed/sport.rss" />
  <link href="/templates/styles/intex.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
  <script type="text/javascript" src="/templates/javascript/functions.js"></script>
</head>
