<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="be">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="Content-Language" content="be" />
  <meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
  <meta name="description" content="{{$siteinfo.description}}" />
  <meta name="spr-verification" content="061b62e85965a5b" /> 
  <meta name="21ade4befd217c7493b051fbee70767a" content="">
  <title>{{$gimme->publication->name}}{{if $gimme->article->defined}} - {{$gimme->article->name}}{{elseif $gimme->section->defined}}: {{$gimme->section->name}}{{/if}}</title>
  <link rel="shortcut icon" href="http://{{$gimme->publication->site}}/templates/images/icon.ico" />
  <link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}}" href="http://{{$gimme->publication->site}}/feed/index.rss" />
  {{list_sections constraints="number smaller 100"}}
  <link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}} - {{$gimme->section->name}}" href="http://{{$gimme->publication->site}}/feed/{{$gimme->section->url_name}}.rss" />
  {{/list_sections}}
  <link rel="stylesheet" href="http://{{$gimme->publication->site}}/templates/css/main.css?v={{ php }}echo filemtime($_SERVER['DOCUMENT_ROOT'].'/templates/css/main.css');{{ /php }}" type="text/css" />
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>
  <script type="text/javascript" src="http://{{$gimme->publication->site}}/templates/js/functions.js?v={{ php }}echo filemtime($_SERVER['DOCUMENT_ROOT'].'/templates/js/functions.js');{{ /php }}"></script>

</head>
