<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="copyright" content="Газета Слонiмская" />
<meta name="description" content="{{$siteinfo.description}}" />
<meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
<title>{{$siteinfo.title}}{{if $gimme->article->defined}} - {{$gimme->article->name}}{{/if}}</title>
<link href="/templates/slonim/styles/reset.css" rel="stylesheet" type="text/css" />
<link href="/templates/slonim/styles/print.css" rel="stylesheet" type="text/css" />
</head>
<body>
<img src="/templates/slonim/images/logo.gif" alt="" />
<p class="copy">Апублікавана ў Газета Слонимская (<span class="link">http://gs.by</a>)</span>

<h1>{{ $gimme->article->name }}</h1>

<p class="byline">{{ $gimme->article->Author }}<br/>
{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }} г.</p>

   {{ if $gimme->article->has_image(2) }}
    <div class="imgfloater"><img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" /><p>{{ $gimme->article->image2->description }}</p></div>
    {{ /if }}
<p><strong>{{ $gimme->article->Intro }}</strong><br/><br/>
{{ $gimme->article->Full_text }}
</p>

<div class="footer">
<p><strong>gs.by</strong>
<p>Источник: http://gs.by{{ uri options="article"}}</p>
<p>© Copyright {{ $smarty.now|camp_date_format:"%Y" }} Газета Слонимская</p>
</div>
</body>
</html>