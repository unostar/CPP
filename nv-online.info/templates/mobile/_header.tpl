<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/xhtml-mobile12.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="be">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="be" />
<meta name="MobileOptimized" content="240" />
<meta name="viewport" content="width=device-width" />
<title>{{$siteinfo.title}}{{if $gimme->article->defined}} - {{$gimme->article->name}}{{elseif $gimme->section->defined}} - {{$gimme->section->name}}{{/if}}</title>
<meta name="description" content="{{$siteinfo.description}}" />
<meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
<link rel="stylesheet" type="text/css" href="/templates/mobile/mobile.css" />
</head>
<body>
<div class="logo">
<a href="/"><img src="/templates/mobile/mobile-logo.gif" width="207" height="37" alt="Народная Воля - Мобильная версия" /></a><br />
{{$smaty.now|camp_date_format:"%e %M %Y г.<br /><span class=\"weekday\">%W</span>, <span class=\"time\">%k:%i</span>"}}
</div>
