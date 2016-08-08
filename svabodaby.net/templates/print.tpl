<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="{{$gimme->issue->language->code}}">
<meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
<meta name="description" content="{{$siteinfo.description}}" />
<title>{{$gimme->publication->name}} - {{$gimme->section->name}} - {{$gimme->article->name}}</title>
<link href="/templates/css/print.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="wrapper">
<img class="logo" src="/templates/img/header-logo.gif" alt="ТУТ І ЦЯПЕР (www.svabodaby.net)" />
<div class="publication"><p>Апублікована у выданні “Тут і цяпер”<br/>
<span>{{$gimme->article->publish_date|camp_date_format:"%e %M %Y г."}}</span></p></div>
<h1>{{$gimme->article->name}}</h1>
<h4>{{if $gimme->article->author->defined}}Аўтар: <span>{{$gimme->article->author->name}}</span>{{/if}}</h4>
{{if $gimme->article->has_image(2)}}<img class="picture" src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description}}" title="{{$gimme->article->image2->description}}" />{{/if}}
<p class="intro">{{$gimme->article->intro}}</p>
<p>{{$gimme->article->full_text}}</p>
<div class="divider">&nbsp;</div>
<textarea name="" class="notes">Тут Вы можаце пакінуць свае меркаванні ці каментары</textarea>
<div class="divider">&nbsp;</div>
<p class="footer">www.svabodaby.net   <span>|  URL: {{url options="article"}}<br/>
Copyright 2009 @ Тут і цяпер</span>  </p>
</div>
</body>
</html>
