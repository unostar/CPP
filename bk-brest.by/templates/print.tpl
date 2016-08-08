<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{$gimme->issue->language->code}}" lang="{{$gimme->issue->language->code}}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="{{$gimme->issue->language->code}}">
<meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
<meta name="description" content="{{$siteinfo.description}}" />
<title>{{$gimme->publication->name}} (версия для печати) - {{$gimme->article->name}}</title>
<link rel="shortcut icon" href="/templates/images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="/templates/css/print.css" type="text/css">
<!--[if lt IE 8]>
<link rel="stylesheet" href="/templates/css/print.ie.css" type="text/css">
<![endif]-->
</head>
<body>
<!-- Оболочки фона и всего содержимого -->
<div class="l-container">
<!-- Шапка -->
<div class="l-header">
<h1><img src="/templates/images/print-logo.gif" alt="Брестский курьер"></h1>
<strong>Опубликовано в  Брестском курьере (<a href="http://{{$gimme->publication->site}}">http://{{$gimme->publication->site}}</a>)</strong>
</div>
<!-- //шапка -->
<!-- Основное содержимое -->
<div class="l-content">
<h2>{{$gimme->article->name}}</h2>
<p>{{if $gimme->article->author->name}}Автор: {{$gimme->article->author->name}}<br />{{/if}}Опубликовано: {{$gimme->article->publish_date|camp_date_format:"%d %M %Y"}}</p>
{{if $gimme->article->has_image(2)}}<div class="img"><img src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description}}" width="440" /><br>{{$gimme->article->image2->description}}</div>{{/if}}
<p><strong>{{$gimme->article->intro}}</strong></p>
<p>{{$gimme->article->full_text|regex_replace:'#<blockquote>(.*)</blockquote>#s':'<div class="b-article_spravka m-navi_bgbottom"><span class="b-article_sprh">Справка &#171;Бресткого курьера&#187;</span>$1</div>'}}</p>
<form action="" class="mycomments">
  <fieldset>
    <legend>Мои комментарии:</legend>
    <textarea cols="1" rows="1"></textarea>
  </fieldset>
</form>
</div>
<!-- //основное содержимое -->
<!-- Подошва -->
<div class="l-footer">
<strong>{{$gimme->publication->site}}</strong>  /  источник URL: {{url options="article"}}
<br>© {{$smarty.now|camp_date_format:"%Y"}}, Бресткий курьер
</div>
<!-- //подошва -->
</div>
<!-- //оболочки фона и всего содержимого -->
</body>
</html>