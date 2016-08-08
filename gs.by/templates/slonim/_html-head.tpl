<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="Content-Language" content="ru" />
  <meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
  <meta name="description" content="{{$siteinfo.description}}" />
  <meta name="copyright" content="Газета Слонiмская" />
  <meta name="robots" content="all" />
  <title>{{$siteinfo.title}}{{if $gimme->article->defined}} - {{$gimme->article->name}}{{elseif $gimme->section->defined}} - {{$gimme->section->name}}{{/if}}</title>
  <link rel="shortcut icon" href="http://{{$gimme->publication->site}}/favicon.ico" />
  <link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}} - Все статьи сайта" href="http://{{$gimme->publication->site}}/feed/index.rss" />
{{list_sections constraints="number greater 9 number smaller 141"}}
  <link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}} - {{$gimme->section->name}}" href="http://{{$gimme->publication->site}}/feed/{{$gimme->section->url_name}}.rss" />
{{/list_sections}}
  <link href="/templates/slonim/styles/reset.css" rel="stylesheet" type="text/css" />
  <link href="/templates/slonim/styles/main.css?v={{ php }}echo filemtime($_SERVER['DOCUMENT_ROOT'].'/templates/slonim/styles/main.css');{{ /php }}" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
  <script src="/templates/slonim/javascript/functions.js" type="text/javascript"></script>
  <script type='text/javascript' src='http://openx.omniton.net/delivery/spcjs.php?id=10'></script>
</head>
